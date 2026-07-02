
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	b4013103          	ld	sp,-1216(sp) # 8000bb40 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	71c060ef          	jal	ra,80006738 <start>

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
    80001090:	22d000ef          	jal	ra,80001abc <handleSupervisorTrap>

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

0000000080001388 <_Z4pingP7_thread>:

int ping(thread_t handle) {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00113423          	sd	ra,8(sp)
    80001390:	00813023          	sd	s0,0(sp)
    80001394:	01010413          	addi	s0,sp,16
    80001398:	00050593          	mv	a1,a0
    return doSyscall(0x50,(uint64)handle);
    8000139c:	00000713          	li	a4,0
    800013a0:	00000693          	li	a3,0
    800013a4:	00000613          	li	a2,0
    800013a8:	05000513          	li	a0,80
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	e18080e7          	jalr	-488(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013b4:	0005051b          	sext.w	a0,a0
    800013b8:	00813083          	ld	ra,8(sp)
    800013bc:	00013403          	ld	s0,0(sp)
    800013c0:	01010113          	addi	sp,sp,16
    800013c4:	00008067          	ret

00000000800013c8 <_Z15thread_dispatchv>:

void thread_dispatch() {
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00113423          	sd	ra,8(sp)
    800013d0:	00813023          	sd	s0,0(sp)
    800013d4:	01010413          	addi	s0,sp,16
    doSyscall(0x13);
    800013d8:	00000713          	li	a4,0
    800013dc:	00000693          	li	a3,0
    800013e0:	00000613          	li	a2,0
    800013e4:	00000593          	li	a1,0
    800013e8:	01300513          	li	a0,19
    800013ec:	00000097          	auipc	ra,0x0
    800013f0:	dd8080e7          	jalr	-552(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f4:	00813083          	ld	ra,8(sp)
    800013f8:	00013403          	ld	s0,0(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z8sem_openPP4_semj>:
int sem_open(sem_t* handle, unsigned init) {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00113423          	sd	ra,8(sp)
    8000140c:	00813023          	sd	s0,0(sp)
    80001410:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    80001414:	00000713          	li	a4,0
    80001418:	00000693          	li	a3,0
    8000141c:	02059613          	slli	a2,a1,0x20
    80001420:	02065613          	srli	a2,a2,0x20
    80001424:	00050593          	mv	a1,a0
    80001428:	02100513          	li	a0,33
    8000142c:	00000097          	auipc	ra,0x0
    80001430:	d98080e7          	jalr	-616(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001434:	0005051b          	sext.w	a0,a0
    80001438:	00813083          	ld	ra,8(sp)
    8000143c:	00013403          	ld	s0,0(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00113423          	sd	ra,8(sp)
    80001450:	00813023          	sd	s0,0(sp)
    80001454:	01010413          	addi	s0,sp,16
    80001458:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    8000145c:	00000713          	li	a4,0
    80001460:	00000693          	li	a3,0
    80001464:	00000613          	li	a2,0
    80001468:	02200513          	li	a0,34
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	d58080e7          	jalr	-680(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001474:	0005051b          	sext.w	a0,a0
    80001478:	00813083          	ld	ra,8(sp)
    8000147c:	00013403          	ld	s0,0(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00113423          	sd	ra,8(sp)
    80001490:	00813023          	sd	s0,0(sp)
    80001494:	01010413          	addi	s0,sp,16
    80001498:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    8000149c:	00000713          	li	a4,0
    800014a0:	00000693          	li	a3,0
    800014a4:	00000613          	li	a2,0
    800014a8:	02300513          	li	a0,35
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	d18080e7          	jalr	-744(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813083          	ld	ra,8(sp)
    800014bc:	00013403          	ld	s0,0(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00113423          	sd	ra,8(sp)
    800014d0:	00813023          	sd	s0,0(sp)
    800014d4:	01010413          	addi	s0,sp,16
    800014d8:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    800014dc:	00000713          	li	a4,0
    800014e0:	00000693          	li	a3,0
    800014e4:	00000613          	li	a2,0
    800014e8:	02400513          	li	a0,36
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	cd8080e7          	jalr	-808(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014f4:	0005051b          	sext.w	a0,a0
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00113423          	sd	ra,8(sp)
    80001510:	00813023          	sd	s0,0(sp)
    80001514:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001518:	00000713          	li	a4,0
    8000151c:	00000693          	li	a3,0
    80001520:	02059613          	slli	a2,a1,0x20
    80001524:	02065613          	srli	a2,a2,0x20
    80001528:	00050593          	mv	a1,a0
    8000152c:	02500513          	li	a0,37
    80001530:	00000097          	auipc	ra,0x0
    80001534:	c94080e7          	jalr	-876(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001538:	0005051b          	sext.w	a0,a0
    8000153c:	00813083          	ld	ra,8(sp)
    80001540:	00013403          	ld	s0,0(sp)
    80001544:	01010113          	addi	sp,sp,16
    80001548:	00008067          	ret

000000008000154c <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    8000154c:	ff010113          	addi	sp,sp,-16
    80001550:	00113423          	sd	ra,8(sp)
    80001554:	00813023          	sd	s0,0(sp)
    80001558:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    8000155c:	00000713          	li	a4,0
    80001560:	00000693          	li	a3,0
    80001564:	02059613          	slli	a2,a1,0x20
    80001568:	02065613          	srli	a2,a2,0x20
    8000156c:	00050593          	mv	a1,a0
    80001570:	02600513          	li	a0,38
    80001574:	00000097          	auipc	ra,0x0
    80001578:	c50080e7          	jalr	-944(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000157c:	0005051b          	sext.w	a0,a0
    80001580:	00813083          	ld	ra,8(sp)
    80001584:	00013403          	ld	s0,0(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_Z10time_sleepm>:
int time_sleep(time_t time) {
    80001590:	ff010113          	addi	sp,sp,-16
    80001594:	00113423          	sd	ra,8(sp)
    80001598:	00813023          	sd	s0,0(sp)
    8000159c:	01010413          	addi	s0,sp,16
    800015a0:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    800015a4:	00000713          	li	a4,0
    800015a8:	00000693          	li	a3,0
    800015ac:	00000613          	li	a2,0
    800015b0:	03100513          	li	a0,49
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	c10080e7          	jalr	-1008(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015bc:	0005051b          	sext.w	a0,a0
    800015c0:	00813083          	ld	ra,8(sp)
    800015c4:	00013403          	ld	s0,0(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_Z4getcv>:

char getc() {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00113423          	sd	ra,8(sp)
    800015d8:	00813023          	sd	s0,0(sp)
    800015dc:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    800015e0:	00000713          	li	a4,0
    800015e4:	00000693          	li	a3,0
    800015e8:	00000613          	li	a2,0
    800015ec:	00000593          	li	a1,0
    800015f0:	04100513          	li	a0,65
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	bd0080e7          	jalr	-1072(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015fc:	0ff57513          	andi	a0,a0,255
    80001600:	00813083          	ld	ra,8(sp)
    80001604:	00013403          	ld	s0,0(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_Z4putcc>:

void putc(char c) {
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00113423          	sd	ra,8(sp)
    80001618:	00813023          	sd	s0,0(sp)
    8000161c:	01010413          	addi	s0,sp,16
    80001620:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    80001624:	00000713          	li	a4,0
    80001628:	00000693          	li	a3,0
    8000162c:	00000613          	li	a2,0
    80001630:	04200513          	li	a0,66
    80001634:	00000097          	auipc	ra,0x0
    80001638:	b90080e7          	jalr	-1136(ra) # 800011c4 <_ZL9doSyscallmmmmm>
    8000163c:	00813083          	ld	ra,8(sp)
    80001640:	00013403          	ld	s0,0(sp)
    80001644:	01010113          	addi	sp,sp,16
    80001648:	00008067          	ret

000000008000164c <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00813423          	sd	s0,8(sp)
    80001654:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001658:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    8000165c:	00655513          	srli	a0,a0,0x6
    80001660:	00813403          	ld	s0,8(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    8000166c:	fe010113          	addi	sp,sp,-32
    80001670:	00113c23          	sd	ra,24(sp)
    80001674:	00813823          	sd	s0,16(sp)
    80001678:	00913423          	sd	s1,8(sp)
    8000167c:	01213023          	sd	s2,0(sp)
    80001680:	02010413          	addi	s0,sp,32
    80001684:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	594080e7          	jalr	1428(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    80001690:	00050493          	mv	s1,a0
    80001694:	00090513          	mv	a0,s2
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	fb4080e7          	jalr	-76(ra) # 8000164c <_ZL23blocksForBytesSemaphorem>
    800016a0:	00050593          	mv	a1,a0
    800016a4:	00048513          	mv	a0,s1
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	5f4080e7          	jalr	1524(ra) # 80002c9c <_ZN15MemoryAllocator6mallocEm>
}
    800016b0:	01813083          	ld	ra,24(sp)
    800016b4:	01013403          	ld	s0,16(sp)
    800016b8:	00813483          	ld	s1,8(sp)
    800016bc:	00013903          	ld	s2,0(sp)
    800016c0:	02010113          	addi	sp,sp,32
    800016c4:	00008067          	ret

00000000800016c8 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    800016c8:	04050263          	beqz	a0,8000170c <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    800016cc:	fe010113          	addi	sp,sp,-32
    800016d0:	00113c23          	sd	ra,24(sp)
    800016d4:	00813823          	sd	s0,16(sp)
    800016d8:	00913423          	sd	s1,8(sp)
    800016dc:	02010413          	addi	s0,sp,32
    800016e0:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	538080e7          	jalr	1336(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    800016ec:	00048593          	mv	a1,s1
    800016f0:	00001097          	auipc	ra,0x1
    800016f4:	708080e7          	jalr	1800(ra) # 80002df8 <_ZN15MemoryAllocator4freeEPv>
}
    800016f8:	01813083          	ld	ra,24(sp)
    800016fc:	01013403          	ld	s0,16(sp)
    80001700:	00813483          	ld	s1,8(sp)
    80001704:	02010113          	addi	sp,sp,32
    80001708:	00008067          	ret
    8000170c:	00008067          	ret

0000000080001710 <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00813423          	sd	s0,8(sp)
    80001718:	01010413          	addi	s0,sp,16
    val = (int)init;
    8000171c:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001720:	00050223          	sb	zero,4(a0)
    head = nullptr;
    80001724:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    80001728:	00053823          	sd	zero,16(a0)
}
    8000172c:	00813403          	ld	s0,8(sp)
    80001730:	01010113          	addi	sp,sp,16
    80001734:	00008067          	ret

0000000080001738 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    80001738:	fe010113          	addi	sp,sp,-32
    8000173c:	00113c23          	sd	ra,24(sp)
    80001740:	00813823          	sd	s0,16(sp)
    80001744:	00913423          	sd	s1,8(sp)
    80001748:	01213023          	sd	s2,0(sp)
    8000174c:	02010413          	addi	s0,sp,32
    80001750:	00050913          	mv	s2,a0
    return new _sem(init);
    80001754:	01800513          	li	a0,24
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	f14080e7          	jalr	-236(ra) # 8000166c <_ZN4_semnwEm>
    80001760:	00050493          	mv	s1,a0
    80001764:	00090593          	mv	a1,s2
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	fa8080e7          	jalr	-88(ra) # 80001710 <_ZN4_semC1Ej>
}
    80001770:	00048513          	mv	a0,s1
    80001774:	01813083          	ld	ra,24(sp)
    80001778:	01013403          	ld	s0,16(sp)
    8000177c:	00813483          	ld	s1,8(sp)
    80001780:	00013903          	ld	s2,0(sp)
    80001784:	02010113          	addi	sp,sp,32
    80001788:	00008067          	ret

000000008000178c <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    8000178c:	02050863          	beqz	a0,800017bc <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00113423          	sd	ra,8(sp)
    80001798:	00813023          	sd	s0,0(sp)
    8000179c:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	f28080e7          	jalr	-216(ra) # 800016c8 <_ZN4_semdlEPv>
    return 0;
    800017a8:	00000513          	li	a0,0
}
    800017ac:	00813083          	ld	ra,8(sp)
    800017b0:	00013403          	ld	s0,0(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret
        return -1;
    800017bc:	fff00513          	li	a0,-1
}
    800017c0:	00008067          	ret

00000000800017c4 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    800017c4:	ff010113          	addi	sp,sp,-16
    800017c8:	00813423          	sd	s0,8(sp)
    800017cc:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    800017d0:	00058e63          	beqz	a1,800017ec <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    800017d4:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    800017d8:	00853783          	ld	a5,8(a0)
    800017dc:	00078e63          	beqz	a5,800017f8 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    800017e0:	01053783          	ld	a5,16(a0)
    800017e4:	00b7b823          	sd	a1,16(a5)
        tail = node;
    800017e8:	00b53823          	sd	a1,16(a0)
    }
}
    800017ec:	00813403          	ld	s0,8(sp)
    800017f0:	01010113          	addi	sp,sp,16
    800017f4:	00008067          	ret
        head = node;
    800017f8:	00b53423          	sd	a1,8(a0)
        tail = node;
    800017fc:	00b53823          	sd	a1,16(a0)
    80001800:	fedff06f          	j	800017ec <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

0000000080001804 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001804:	0000a797          	auipc	a5,0xa
    80001808:	32c7b783          	ld	a5,812(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000180c:	0007b783          	ld	a5,0(a5)
    80001810:	08078a63          	beqz	a5,800018a4 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001814:	00454703          	lbu	a4,4(a0)
    80001818:	08071a63          	bnez	a4,800018ac <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    8000181c:	08058c63          	beqz	a1,800018b4 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001820:	00853703          	ld	a4,8(a0)
    80001824:	06070263          	beqz	a4,80001888 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    80001828:	fd010113          	addi	sp,sp,-48
    8000182c:	02113423          	sd	ra,40(sp)
    80001830:	02813023          	sd	s0,32(sp)
    80001834:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    80001838:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    8000183c:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    80001840:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    80001844:	fe043423          	sd	zero,-24(s0)
    block(&node);
    80001848:	fd840593          	addi	a1,s0,-40
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	f78080e7          	jalr	-136(ra) # 800017c4 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    80001854:	00300593          	li	a1,3
    80001858:	0000a797          	auipc	a5,0xa
    8000185c:	2d87b783          	ld	a5,728(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001860:	0007b503          	ld	a0,0(a5)
    80001864:	00001097          	auipc	ra,0x1
    80001868:	b50080e7          	jalr	-1200(ra) # 800023b4 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	980080e7          	jalr	-1664(ra) # 800021ec <_ZN7_thread8dispatchEv>
    return node.status;
    80001874:	fe442503          	lw	a0,-28(s0)
}
    80001878:	02813083          	ld	ra,40(sp)
    8000187c:	02013403          	ld	s0,32(sp)
    80001880:	03010113          	addi	sp,sp,48
    80001884:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001888:	00052703          	lw	a4,0(a0)
    8000188c:	0005869b          	sext.w	a3,a1
    80001890:	f8d74ce3          	blt	a4,a3,80001828 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    80001894:	40d7073b          	subw	a4,a4,a3
    80001898:	00e52023          	sw	a4,0(a0)
        return 0;
    8000189c:	00000513          	li	a0,0
    800018a0:	00008067          	ret
        return -1;
    800018a4:	fff00513          	li	a0,-1
    800018a8:	00008067          	ret
        return -1;
    800018ac:	fff00513          	li	a0,-1
    800018b0:	00008067          	ret
        return 0;
    800018b4:	00000513          	li	a0,0
}
    800018b8:	00008067          	ret

00000000800018bc <_ZN4_sem4waitEv>:
int _sem::wait() {
    800018bc:	ff010113          	addi	sp,sp,-16
    800018c0:	00113423          	sd	ra,8(sp)
    800018c4:	00813023          	sd	s0,0(sp)
    800018c8:	01010413          	addi	s0,sp,16
    return waitN(1);
    800018cc:	00100593          	li	a1,1
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	f34080e7          	jalr	-204(ra) # 80001804 <_ZN4_sem5waitNEj>
}
    800018d8:	00813083          	ld	ra,8(sp)
    800018dc:	00013403          	ld	s0,0(sp)
    800018e0:	01010113          	addi	sp,sp,16
    800018e4:	00008067          	ret

00000000800018e8 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    800018e8:	fe010113          	addi	sp,sp,-32
    800018ec:	00113c23          	sd	ra,24(sp)
    800018f0:	00813823          	sd	s0,16(sp)
    800018f4:	00913423          	sd	s1,8(sp)
    800018f8:	01213023          	sd	s2,0(sp)
    800018fc:	02010413          	addi	s0,sp,32
    80001900:	00050913          	mv	s2,a0
    80001904:	0240006f          	j	80001928 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001908:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    8000190c:	0084a703          	lw	a4,8(s1)
    80001910:	40e787bb          	subw	a5,a5,a4
    80001914:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    80001918:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    8000191c:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001920:	0004b503          	ld	a0,0(s1)
    80001924:	02051463          	bnez	a0,8000194c <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    80001928:	00893483          	ld	s1,8(s2)
    8000192c:	02048e63          	beqz	s1,80001968 <_ZN4_sem12unblockReadyEv+0x80>
    80001930:	00092783          	lw	a5,0(s2)
    80001934:	0084a703          	lw	a4,8(s1)
    80001938:	02e7c863          	blt	a5,a4,80001968 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    8000193c:	0104b703          	ld	a4,16(s1)
    80001940:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    80001944:	fc0714e3          	bnez	a4,8000190c <_ZN4_sem12unblockReadyEv+0x24>
    80001948:	fc1ff06f          	j	80001908 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    8000194c:	00100593          	li	a1,1
    80001950:	00001097          	auipc	ra,0x1
    80001954:	a64080e7          	jalr	-1436(ra) # 800023b4 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001958:	0004b503          	ld	a0,0(s1)
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	c04080e7          	jalr	-1020(ra) # 80002560 <_ZN9Scheduler3putEP7_thread>
    80001964:	fc5ff06f          	j	80001928 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    80001968:	01813083          	ld	ra,24(sp)
    8000196c:	01013403          	ld	s0,16(sp)
    80001970:	00813483          	ld	s1,8(sp)
    80001974:	00013903          	ld	s2,0(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <_ZN4_sem7signalNEj>:
    if (closed) {
    80001980:	00454783          	lbu	a5,4(a0)
    80001984:	04079463          	bnez	a5,800019cc <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    80001988:	00059663          	bnez	a1,80001994 <_ZN4_sem7signalNEj+0x14>
        return 0;
    8000198c:	00000513          	li	a0,0
}
    80001990:	00008067          	ret
int _sem::signalN(unsigned n) {
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00113423          	sd	ra,8(sp)
    8000199c:	00813023          	sd	s0,0(sp)
    800019a0:	01010413          	addi	s0,sp,16
    val += (int)n;
    800019a4:	00052783          	lw	a5,0(a0)
    800019a8:	00b785bb          	addw	a1,a5,a1
    800019ac:	00b52023          	sw	a1,0(a0)
    unblockReady();
    800019b0:	00000097          	auipc	ra,0x0
    800019b4:	f38080e7          	jalr	-200(ra) # 800018e8 <_ZN4_sem12unblockReadyEv>
    return 0;
    800019b8:	00000513          	li	a0,0
}
    800019bc:	00813083          	ld	ra,8(sp)
    800019c0:	00013403          	ld	s0,0(sp)
    800019c4:	01010113          	addi	sp,sp,16
    800019c8:	00008067          	ret
        return -1;
    800019cc:	fff00513          	li	a0,-1
    800019d0:	00008067          	ret

00000000800019d4 <_ZN4_sem6signalEv>:
int _sem::signal() {
    800019d4:	ff010113          	addi	sp,sp,-16
    800019d8:	00113423          	sd	ra,8(sp)
    800019dc:	00813023          	sd	s0,0(sp)
    800019e0:	01010413          	addi	s0,sp,16
    return signalN(1);
    800019e4:	00100593          	li	a1,1
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	f98080e7          	jalr	-104(ra) # 80001980 <_ZN4_sem7signalNEj>
}
    800019f0:	00813083          	ld	ra,8(sp)
    800019f4:	00013403          	ld	s0,0(sp)
    800019f8:	01010113          	addi	sp,sp,16
    800019fc:	00008067          	ret

0000000080001a00 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001a00:	fe010113          	addi	sp,sp,-32
    80001a04:	00113c23          	sd	ra,24(sp)
    80001a08:	00813823          	sd	s0,16(sp)
    80001a0c:	00913423          	sd	s1,8(sp)
    80001a10:	01213023          	sd	s2,0(sp)
    80001a14:	02010413          	addi	s0,sp,32
    80001a18:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001a1c:	00893483          	ld	s1,8(s2)
    80001a20:	02048e63          	beqz	s1,80001a5c <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001a24:	0104b783          	ld	a5,16(s1)
    80001a28:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001a2c:	fff00793          	li	a5,-1
    80001a30:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001a34:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001a38:	0004b503          	ld	a0,0(s1)
    80001a3c:	fe0500e3          	beqz	a0,80001a1c <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001a40:	00100593          	li	a1,1
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	970080e7          	jalr	-1680(ra) # 800023b4 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a4c:	0004b503          	ld	a0,0(s1)
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	b10080e7          	jalr	-1264(ra) # 80002560 <_ZN9Scheduler3putEP7_thread>
    80001a58:	fc5ff06f          	j	80001a1c <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001a5c:	00093823          	sd	zero,16(s2)
    80001a60:	01813083          	ld	ra,24(sp)
    80001a64:	01013403          	ld	s0,16(sp)
    80001a68:	00813483          	ld	s1,8(sp)
    80001a6c:	00013903          	ld	s2,0(sp)
    80001a70:	02010113          	addi	sp,sp,32
    80001a74:	00008067          	ret

0000000080001a78 <_ZN4_sem5closeEv>:
    if (closed) {
    80001a78:	00454783          	lbu	a5,4(a0)
    80001a7c:	02079c63          	bnez	a5,80001ab4 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001a80:	ff010113          	addi	sp,sp,-16
    80001a84:	00113423          	sd	ra,8(sp)
    80001a88:	00813023          	sd	s0,0(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    closed = true;
    80001a90:	00100793          	li	a5,1
    80001a94:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	f68080e7          	jalr	-152(ra) # 80001a00 <_ZN4_sem10unblockAllEv>
    return 0;
    80001aa0:	00000513          	li	a0,0
}
    80001aa4:	00813083          	ld	ra,8(sp)
    80001aa8:	00013403          	ld	s0,0(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret
        return -1;
    80001ab4:	fff00513          	li	a0,-1
}
    80001ab8:	00008067          	ret

0000000080001abc <handleSupervisorTrap>:
#include "../lib/console.h"
#include "../test/printing.hpp"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001abc:	fd010113          	addi	sp,sp,-48
    80001ac0:	02113423          	sd	ra,40(sp)
    80001ac4:	02813023          	sd	s0,32(sp)
    80001ac8:	00913c23          	sd	s1,24(sp)
    80001acc:	01213823          	sd	s2,16(sp)
    80001ad0:	01313423          	sd	s3,8(sp)
    80001ad4:	03010413          	addi	s0,sp,48
    80001ad8:	00050493          	mv	s1,a0
    static const uint64 SSTATUS_SPIE = (1UL << 5);
    static const uint64 SSTATUS_SPP = (1UL << 8);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001adc:	14202973          	csrr	s2,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001ae0:	ff890713          	addi	a4,s2,-8
    80001ae4:	00100793          	li	a5,1
    80001ae8:	02e7f863          	bgeu	a5,a4,80001b18 <handleSupervisorTrap+0x5c>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001aec:	fff00793          	li	a5,-1
    80001af0:	03f79793          	slli	a5,a5,0x3f
    80001af4:	00178793          	addi	a5,a5,1
    80001af8:	2cf90063          	beq	s2,a5,80001db8 <handleSupervisorTrap+0x2fc>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001afc:	fff00793          	li	a5,-1
    80001b00:	03f79793          	slli	a5,a5,0x3f
    80001b04:	00978793          	addi	a5,a5,9
    80001b08:	2af90e63          	beq	s2,a5,80001dc4 <handleSupervisorTrap+0x308>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001b0c:	00200793          	li	a5,2
    80001b10:	2cf90063          	beq	s2,a5,80001dd0 <handleSupervisorTrap+0x314>
        frame->sepc += 4;
        Riscv::w_sepc(frame->sepc);
        return;
    }

    while (true) {}
    80001b14:	0000006f          	j	80001b14 <handleSupervisorTrap+0x58>
        uint64 syscallCode = frame->a0;
    80001b18:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b1c:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b20:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b24:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001b28:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001b2c:	05000713          	li	a4,80
    80001b30:	26f76e63          	bltu	a4,a5,80001dac <handleSupervisorTrap+0x2f0>
    80001b34:	00279793          	slli	a5,a5,0x2
    80001b38:	00007717          	auipc	a4,0x7
    80001b3c:	50070713          	addi	a4,a4,1280 # 80009038 <CONSOLE_STATUS+0x28>
    80001b40:	00e787b3          	add	a5,a5,a4
    80001b44:	0007a783          	lw	a5,0(a5)
    80001b48:	00e787b3          	add	a5,a5,a4
    80001b4c:	00078067          	jr	a5
                void* ptr= MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	0cc080e7          	jalr	204(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    80001b58:	00090593          	mv	a1,s2
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	140080e7          	jalr	320(ra) # 80002c9c <_ZN15MemoryAllocator6mallocEm>
    80001b64:	00050993          	mv	s3,a0
                _thread::running->addAllocatedBlocks((size_t)arg1);
    80001b68:	00090593          	mv	a1,s2
    80001b6c:	0000a797          	auipc	a5,0xa
    80001b70:	fc47b783          	ld	a5,-60(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001b74:	0007b503          	ld	a0,0(a5)
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	524080e7          	jalr	1316(ra) # 8000209c <_ZN7_thread18addAllocatedBlocksEm>
                frame->a0 = (uint64)ptr;
    80001b80:	0534b023          	sd	s3,64(s1)
        frame->sepc += 4;
    80001b84:	0f04b783          	ld	a5,240(s1)
    80001b88:	00478793          	addi	a5,a5,4
    80001b8c:	0ef4b823          	sd	a5,240(s1)
    80001b90:	02813083          	ld	ra,40(sp)
    80001b94:	02013403          	ld	s0,32(sp)
    80001b98:	01813483          	ld	s1,24(sp)
    80001b9c:	01013903          	ld	s2,16(sp)
    80001ba0:	00813983          	ld	s3,8(sp)
    80001ba4:	03010113          	addi	sp,sp,48
    80001ba8:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	070080e7          	jalr	112(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    80001bb4:	00090593          	mv	a1,s2
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	240080e7          	jalr	576(ra) # 80002df8 <_ZN15MemoryAllocator4freeEPv>
    80001bc0:	04a4b023          	sd	a0,64(s1)
                break;
    80001bc4:	fc1ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001bc8:	00090663          	beqz	s2,80001bd4 <handleSupervisorTrap+0x118>
    80001bcc:	00050463          	beqz	a0,80001bd4 <handleSupervisorTrap+0x118>
    80001bd0:	00061863          	bnez	a2,80001be0 <handleSupervisorTrap+0x124>
                    frame->a0 = (uint64)-1;
    80001bd4:	fff00793          	li	a5,-1
    80001bd8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bdc:	fa9ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	534080e7          	jalr	1332(ra) # 80002114 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001be8:	00050c63          	beqz	a0,80001c00 <handleSupervisorTrap+0x144>
                *handle = thread;//korisnik dobija rucku nove niti
    80001bec:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	970080e7          	jalr	-1680(ra) # 80002560 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001bf8:	0404b023          	sd	zero,64(s1)
                break;
    80001bfc:	f89ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                    frame->a0 = (uint64)-1;
    80001c00:	fff00793          	li	a5,-1
    80001c04:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c08:	f7dff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->sepc += 4;
    80001c0c:	0f04b783          	ld	a5,240(s1)
    80001c10:	00478793          	addi	a5,a5,4
    80001c14:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	6c8080e7          	jalr	1736(ra) # 800022e0 <_ZN7_thread4exitEv>
    80001c20:	04a4b023          	sd	a0,64(s1)
                return;
    80001c24:	f6dff06f          	j	80001b90 <handleSupervisorTrap+0xd4>
                frame->sepc += 4;
    80001c28:	0f04b783          	ld	a5,240(s1)
    80001c2c:	00478793          	addi	a5,a5,4
    80001c30:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	5b8080e7          	jalr	1464(ra) # 800021ec <_ZN7_thread8dispatchEv>
                return;
    80001c3c:	f55ff06f          	j	80001b90 <handleSupervisorTrap+0xd4>
                unsigned init = (unsigned)arg2;
    80001c40:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001c44:	00091863          	bnez	s2,80001c54 <handleSupervisorTrap+0x198>
                    frame->a0 = (uint64)-1;
    80001c48:	fff00793          	li	a5,-1
    80001c4c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c50:	f35ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                _sem* sem = _sem::createSemaphore(init);
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	ae4080e7          	jalr	-1308(ra) # 80001738 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001c5c:	00050863          	beqz	a0,80001c6c <handleSupervisorTrap+0x1b0>
                *handle = sem;
    80001c60:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001c64:	0404b023          	sd	zero,64(s1)
                break;
    80001c68:	f1dff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                    frame->a0 = (uint64)-1;
    80001c6c:	fff00793          	li	a5,-1
    80001c70:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c74:	f11ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                target->setPinged(true);
    80001c78:	00100593          	li	a1,1
    80001c7c:	00090513          	mv	a0,s2
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	45c080e7          	jalr	1116(ra) # 800020dc <_ZN7_thread9setPingedEb>
                frame->a0 = 0;
    80001c88:	0404b023          	sd	zero,64(s1)
                break;
    80001c8c:	ef9ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                if (sem == nullptr) {
    80001c90:	00091863          	bnez	s2,80001ca0 <handleSupervisorTrap+0x1e4>
                    frame->a0 = (uint64)-1;
    80001c94:	fff00793          	li	a5,-1
    80001c98:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c9c:	ee9ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                int ret = sem->close();
    80001ca0:	00090513          	mv	a0,s2
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	dd4080e7          	jalr	-556(ra) # 80001a78 <_ZN4_sem5closeEv>
    80001cac:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001cb0:	00050663          	beqz	a0,80001cbc <handleSupervisorTrap+0x200>
                frame->a0 = (uint64)ret;
    80001cb4:	0534b023          	sd	s3,64(s1)
                break;
    80001cb8:	ecdff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                    _sem::destroySemaphore(sem);
    80001cbc:	00090513          	mv	a0,s2
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	acc080e7          	jalr	-1332(ra) # 8000178c <_ZN4_sem16destroySemaphoreEPS_>
    80001cc8:	fedff06f          	j	80001cb4 <handleSupervisorTrap+0x1f8>
                if (sem == nullptr) {
    80001ccc:	00091863          	bnez	s2,80001cdc <handleSupervisorTrap+0x220>
                    frame->a0 = (uint64)-1;
    80001cd0:	fff00793          	li	a5,-1
    80001cd4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd8:	eadff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->sepc += 4;
    80001cdc:	0f04b783          	ld	a5,240(s1)
    80001ce0:	00478793          	addi	a5,a5,4
    80001ce4:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001ce8:	00090513          	mv	a0,s2
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	bd0080e7          	jalr	-1072(ra) # 800018bc <_ZN4_sem4waitEv>
    80001cf4:	04a4b023          	sd	a0,64(s1)
                return;
    80001cf8:	e99ff06f          	j	80001b90 <handleSupervisorTrap+0xd4>
                if (sem == nullptr) {
    80001cfc:	00091863          	bnez	s2,80001d0c <handleSupervisorTrap+0x250>
                    frame->a0 = (uint64)-1;
    80001d00:	fff00793          	li	a5,-1
    80001d04:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d08:	e7dff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->a0 = (uint64)sem->signal();
    80001d0c:	00090513          	mv	a0,s2
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	cc4080e7          	jalr	-828(ra) # 800019d4 <_ZN4_sem6signalEv>
    80001d18:	04a4b023          	sd	a0,64(s1)
                break;
    80001d1c:	e69ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                unsigned n = (unsigned)arg2;
    80001d20:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d24:	00091863          	bnez	s2,80001d34 <handleSupervisorTrap+0x278>
                    frame->a0 = (uint64)-1;
    80001d28:	fff00793          	li	a5,-1
    80001d2c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d30:	e55ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->sepc += 4;
    80001d34:	0f04b783          	ld	a5,240(s1)
    80001d38:	00478793          	addi	a5,a5,4
    80001d3c:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d40:	00090513          	mv	a0,s2
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	ac0080e7          	jalr	-1344(ra) # 80001804 <_ZN4_sem5waitNEj>
    80001d4c:	04a4b023          	sd	a0,64(s1)
                return;
    80001d50:	e41ff06f          	j	80001b90 <handleSupervisorTrap+0xd4>
                unsigned n = (unsigned)arg2;
    80001d54:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d58:	00091863          	bnez	s2,80001d68 <handleSupervisorTrap+0x2ac>
                    frame->a0 = (uint64)-1;
    80001d5c:	fff00793          	li	a5,-1
    80001d60:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d64:	e21ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->a0 = (uint64)sem->signalN(n);
    80001d68:	00090513          	mv	a0,s2
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	c14080e7          	jalr	-1004(ra) # 80001980 <_ZN4_sem7signalNEj>
    80001d74:	04a4b023          	sd	a0,64(s1)
                break;
    80001d78:	e0dff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->a0 = (uint64)-1;
    80001d7c:	fff00793          	li	a5,-1
    80001d80:	04f4b023          	sd	a5,64(s1)
                break;
    80001d84:	e01ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->a0 = (uint64)__getc();
    80001d88:	00007097          	auipc	ra,0x7
    80001d8c:	ab0080e7          	jalr	-1360(ra) # 80008838 <__getc>
    80001d90:	04a4b023          	sd	a0,64(s1)
                break;
    80001d94:	df1ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                __putc((char)arg1);
    80001d98:	0ff97513          	andi	a0,s2,255
    80001d9c:	00007097          	auipc	ra,0x7
    80001da0:	a60080e7          	jalr	-1440(ra) # 800087fc <__putc>
                frame->a0 = 0;
    80001da4:	0404b023          	sd	zero,64(s1)
                break;
    80001da8:	dddff06f          	j	80001b84 <handleSupervisorTrap+0xc8>
                frame->a0 = (uint64)-1;
    80001dac:	fff00793          	li	a5,-1
    80001db0:	04f4b023          	sd	a5,64(s1)
                break;
    80001db4:	dd1ff06f          	j	80001b84 <handleSupervisorTrap+0xc8>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001db8:	00200793          	li	a5,2
    80001dbc:	1447b073          	csrc	sip,a5
        return;
    80001dc0:	dd1ff06f          	j	80001b90 <handleSupervisorTrap+0xd4>
        console_handler();
    80001dc4:	00007097          	auipc	ra,0x7
    80001dc8:	aac080e7          	jalr	-1364(ra) # 80008870 <console_handler>
        return;
    80001dcc:	dc5ff06f          	j	80001b90 <handleSupervisorTrap+0xd4>
        printString("ERROR, scause: ");
    80001dd0:	00007517          	auipc	a0,0x7
    80001dd4:	25050513          	addi	a0,a0,592 # 80009020 <CONSOLE_STATUS+0x10>
    80001dd8:	00004097          	auipc	ra,0x4
    80001ddc:	864080e7          	jalr	-1948(ra) # 8000563c <_Z11printStringPKc>
        printInt(scause);
    80001de0:	00000613          	li	a2,0
    80001de4:	00a00593          	li	a1,10
    80001de8:	0009051b          	sext.w	a0,s2
    80001dec:	00004097          	auipc	ra,0x4
    80001df0:	a00080e7          	jalr	-1536(ra) # 800057ec <_Z8printIntiii>
        printString(",sepc ");
    80001df4:	00007517          	auipc	a0,0x7
    80001df8:	23c50513          	addi	a0,a0,572 # 80009030 <CONSOLE_STATUS+0x20>
    80001dfc:	00004097          	auipc	ra,0x4
    80001e00:	840080e7          	jalr	-1984(ra) # 8000563c <_Z11printStringPKc>
        printInt(frame->sepc);
    80001e04:	00000613          	li	a2,0
    80001e08:	00a00593          	li	a1,10
    80001e0c:	0f04a503          	lw	a0,240(s1)
    80001e10:	00004097          	auipc	ra,0x4
    80001e14:	9dc080e7          	jalr	-1572(ra) # 800057ec <_Z8printIntiii>
        printString("\n");
    80001e18:	00007517          	auipc	a0,0x7
    80001e1c:	51050513          	addi	a0,a0,1296 # 80009328 <CONSOLE_STATUS+0x318>
    80001e20:	00004097          	auipc	ra,0x4
    80001e24:	81c080e7          	jalr	-2020(ra) # 8000563c <_Z11printStringPKc>
        frame->sepc += 4;
    80001e28:	0f04b783          	ld	a5,240(s1)
    80001e2c:	00478793          	addi	a5,a5,4
    80001e30:	0ef4b823          	sd	a5,240(s1)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001e34:	14179073          	csrw	sepc,a5
        return;
    80001e38:	d59ff06f          	j	80001b90 <handleSupervisorTrap+0xd4>

0000000080001e3c <_ZL14blocksForBytesm>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"
_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001e3c:	ff010113          	addi	sp,sp,-16
    80001e40:	00813423          	sd	s0,8(sp)
    80001e44:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e48:	03f50513          	addi	a0,a0,63
}
    80001e4c:	00655513          	srli	a0,a0,0x6
    80001e50:	00813403          	ld	s0,8(sp)
    80001e54:	01010113          	addi	sp,sp,16
    80001e58:	00008067          	ret

0000000080001e5c <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80001e5c:	ff010113          	addi	sp,sp,-16
    80001e60:	00113423          	sd	ra,8(sp)
    80001e64:	00813023          	sd	s0,0(sp)
    80001e68:	01010413          	addi	s0,sp,16
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001e6c:	0000a797          	auipc	a5,0xa
    80001e70:	cb47b783          	ld	a5,-844(a5) # 8000bb20 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001e74:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001e78:	10000793          	li	a5,256
    80001e7c:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001e80:	02000793          	li	a5,32
    80001e84:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001e88:	10200073          	sret
    Riscv::popSppSpie();

    if (running != nullptr && running->body != nullptr) {
    80001e8c:	0000a797          	auipc	a5,0xa
    80001e90:	d147b783          	ld	a5,-748(a5) # 8000bba0 <_ZN7_thread7runningE>
    80001e94:	00078a63          	beqz	a5,80001ea8 <_ZN7_thread13threadWrapperEv+0x4c>
    80001e98:	0007b703          	ld	a4,0(a5)
    80001e9c:	00070663          	beqz	a4,80001ea8 <_ZN7_thread13threadWrapperEv+0x4c>
        running->body(running->arg);
    80001ea0:	0087b503          	ld	a0,8(a5)
    80001ea4:	000700e7          	jalr	a4
    }

    thread_exit();
    80001ea8:	fffff097          	auipc	ra,0xfffff
    80001eac:	4a0080e7          	jalr	1184(ra) # 80001348 <_Z11thread_exitv>
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001ec0:	fe010113          	addi	sp,sp,-32
    80001ec4:	00113c23          	sd	ra,24(sp)
    80001ec8:	00813823          	sd	s0,16(sp)
    80001ecc:	00913423          	sd	s1,8(sp)
    80001ed0:	01213023          	sd	s2,0(sp)
    80001ed4:	02010413          	addi	s0,sp,32
    80001ed8:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001edc:	00001097          	auipc	ra,0x1
    80001ee0:	d40080e7          	jalr	-704(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    80001ee4:	00050493          	mv	s1,a0
    80001ee8:	00090513          	mv	a0,s2
    80001eec:	00000097          	auipc	ra,0x0
    80001ef0:	f50080e7          	jalr	-176(ra) # 80001e3c <_ZL14blocksForBytesm>
    80001ef4:	00050593          	mv	a1,a0
    80001ef8:	00048513          	mv	a0,s1
    80001efc:	00001097          	auipc	ra,0x1
    80001f00:	da0080e7          	jalr	-608(ra) # 80002c9c <_ZN15MemoryAllocator6mallocEm>
}
    80001f04:	01813083          	ld	ra,24(sp)
    80001f08:	01013403          	ld	s0,16(sp)
    80001f0c:	00813483          	ld	s1,8(sp)
    80001f10:	00013903          	ld	s2,0(sp)
    80001f14:	02010113          	addi	sp,sp,32
    80001f18:	00008067          	ret

0000000080001f1c <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001f1c:	fe010113          	addi	sp,sp,-32
    80001f20:	00113c23          	sd	ra,24(sp)
    80001f24:	00813823          	sd	s0,16(sp)
    80001f28:	00913423          	sd	s1,8(sp)
    80001f2c:	01213023          	sd	s2,0(sp)
    80001f30:	02010413          	addi	s0,sp,32
    80001f34:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	ce4080e7          	jalr	-796(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    80001f40:	00050493          	mv	s1,a0
    80001f44:	00090513          	mv	a0,s2
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	ef4080e7          	jalr	-268(ra) # 80001e3c <_ZL14blocksForBytesm>
    80001f50:	00050593          	mv	a1,a0
    80001f54:	00048513          	mv	a0,s1
    80001f58:	00001097          	auipc	ra,0x1
    80001f5c:	d44080e7          	jalr	-700(ra) # 80002c9c <_ZN15MemoryAllocator6mallocEm>
}
    80001f60:	01813083          	ld	ra,24(sp)
    80001f64:	01013403          	ld	s0,16(sp)
    80001f68:	00813483          	ld	s1,8(sp)
    80001f6c:	00013903          	ld	s2,0(sp)
    80001f70:	02010113          	addi	sp,sp,32
    80001f74:	00008067          	ret

0000000080001f78 <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    80001f78:	04050263          	beqz	a0,80001fbc <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001f7c:	fe010113          	addi	sp,sp,-32
    80001f80:	00113c23          	sd	ra,24(sp)
    80001f84:	00813823          	sd	s0,16(sp)
    80001f88:	00913423          	sd	s1,8(sp)
    80001f8c:	02010413          	addi	s0,sp,32
    80001f90:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	c88080e7          	jalr	-888(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    80001f9c:	00048593          	mv	a1,s1
    80001fa0:	00001097          	auipc	ra,0x1
    80001fa4:	e58080e7          	jalr	-424(ra) # 80002df8 <_ZN15MemoryAllocator4freeEPv>
}
    80001fa8:	01813083          	ld	ra,24(sp)
    80001fac:	01013403          	ld	s0,16(sp)
    80001fb0:	00813483          	ld	s1,8(sp)
    80001fb4:	02010113          	addi	sp,sp,32
    80001fb8:	00008067          	ret
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    80001fc0:	04050263          	beqz	a0,80002004 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001fc4:	fe010113          	addi	sp,sp,-32
    80001fc8:	00113c23          	sd	ra,24(sp)
    80001fcc:	00813823          	sd	s0,16(sp)
    80001fd0:	00913423          	sd	s1,8(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    80001fd8:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	c40080e7          	jalr	-960(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    80001fe4:	00048593          	mv	a1,s1
    80001fe8:	00001097          	auipc	ra,0x1
    80001fec:	e10080e7          	jalr	-496(ra) # 80002df8 <_ZN15MemoryAllocator4freeEPv>
}
    80001ff0:	01813083          	ld	ra,24(sp)
    80001ff4:	01013403          	ld	s0,16(sp)
    80001ff8:	00813483          	ld	s1,8(sp)
    80001ffc:	02010113          	addi	sp,sp,32
    80002000:	00008067          	ret
    80002004:	00008067          	ret

0000000080002008 <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00813423          	sd	s0,8(sp)
    80002010:	01010413          	addi	s0,sp,16
    this->body = body;
    80002014:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80002018:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    8000201c:	06068a63          	beqz	a3,80002090 <_ZN7_threadC1EPFvPvES0_S0_+0x88>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80002020:	fffff7b7          	lui	a5,0xfffff
    80002024:	00f687b3          	add	a5,a3,a5
    80002028:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    8000202c:	02d53023          	sd	a3,32(a0)
    this->context.s0 = 0;
    80002030:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    80002034:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    80002038:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    8000203c:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    80002040:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    80002044:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    80002048:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    8000204c:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    80002050:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    80002054:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    80002058:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    8000205c:	08053023          	sd	zero,128(a0)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    80002060:	00000797          	auipc	a5,0x0
    80002064:	dfc78793          	addi	a5,a5,-516 # 80001e5c <_ZN7_thread13threadWrapperEv>
    80002068:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    8000206c:	00200793          	li	a5,2
    80002070:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80002074:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    80002078:	0a053423          	sd	zero,168(a0)
    this->pinged = false;
    8000207c:	0a050023          	sb	zero,160(a0)
    this->allocatedBlocks = 0;
    80002080:	08053c23          	sd	zero,152(a0)
}
    80002084:	00813403          	ld	s0,8(sp)
    80002088:	01010113          	addi	sp,sp,16
    8000208c:	00008067          	ret
        this->stack = nullptr;
    80002090:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80002094:	02053023          	sd	zero,32(a0)
    80002098:	f99ff06f          	j	80002030 <_ZN7_threadC1EPFvPvES0_S0_+0x28>

000000008000209c <_ZN7_thread18addAllocatedBlocksEm>:
void _thread::addAllocatedBlocks(size_t blocks) {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00813423          	sd	s0,8(sp)
    800020a4:	01010413          	addi	s0,sp,16
    allocatedBlocks += blocks;
    800020a8:	09853783          	ld	a5,152(a0)
    800020ac:	00b787b3          	add	a5,a5,a1
    800020b0:	08f53c23          	sd	a5,152(a0)
}
    800020b4:	00813403          	ld	s0,8(sp)
    800020b8:	01010113          	addi	sp,sp,16
    800020bc:	00008067          	ret

00000000800020c0 <_ZN7_thread18getAllocatedBlocksEv>:
uint64 _thread::getAllocatedBlocks() {
    800020c0:	ff010113          	addi	sp,sp,-16
    800020c4:	00813423          	sd	s0,8(sp)
    800020c8:	01010413          	addi	s0,sp,16
}
    800020cc:	09853503          	ld	a0,152(a0)
    800020d0:	00813403          	ld	s0,8(sp)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret

00000000800020dc <_ZN7_thread9setPingedEb>:
void _thread::setPinged(bool value) {
    800020dc:	ff010113          	addi	sp,sp,-16
    800020e0:	00813423          	sd	s0,8(sp)
    800020e4:	01010413          	addi	s0,sp,16
    pinged = value;
    800020e8:	0ab50023          	sb	a1,160(a0)
}
    800020ec:	00813403          	ld	s0,8(sp)
    800020f0:	01010113          	addi	sp,sp,16
    800020f4:	00008067          	ret

00000000800020f8 <_ZN7_thread8isPingedEv>:
bool _thread::isPinged() {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16
}
    80002104:	0a054503          	lbu	a0,160(a0)
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80002114:	fd010113          	addi	sp,sp,-48
    80002118:	02113423          	sd	ra,40(sp)
    8000211c:	02813023          	sd	s0,32(sp)
    80002120:	00913c23          	sd	s1,24(sp)
    80002124:	01213823          	sd	s2,16(sp)
    80002128:	01313423          	sd	s3,8(sp)
    8000212c:	01413023          	sd	s4,0(sp)
    80002130:	03010413          	addi	s0,sp,48
    80002134:	00050913          	mv	s2,a0
    80002138:	00058993          	mv	s3,a1
    8000213c:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    80002140:	0b000513          	li	a0,176
    80002144:	00000097          	auipc	ra,0x0
    80002148:	d7c080e7          	jalr	-644(ra) # 80001ec0 <_ZN7_threadnwEm>
    8000214c:	00050493          	mv	s1,a0
    80002150:	000a0693          	mv	a3,s4
    80002154:	00098613          	mv	a2,s3
    80002158:	00090593          	mv	a1,s2
    8000215c:	00000097          	auipc	ra,0x0
    80002160:	eac080e7          	jalr	-340(ra) # 80002008 <_ZN7_threadC1EPFvPvES0_S0_>
}
    80002164:	00048513          	mv	a0,s1
    80002168:	02813083          	ld	ra,40(sp)
    8000216c:	02013403          	ld	s0,32(sp)
    80002170:	01813483          	ld	s1,24(sp)
    80002174:	01013903          	ld	s2,16(sp)
    80002178:	00813983          	ld	s3,8(sp)
    8000217c:	00013a03          	ld	s4,0(sp)
    80002180:	03010113          	addi	sp,sp,48
    80002184:	00008067          	ret

0000000080002188 <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    80002188:	04050e63          	beqz	a0,800021e4 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    8000218c:	fe010113          	addi	sp,sp,-32
    80002190:	00113c23          	sd	ra,24(sp)
    80002194:	00813823          	sd	s0,16(sp)
    80002198:	00913423          	sd	s1,8(sp)
    8000219c:	02010413          	addi	s0,sp,32
    800021a0:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    800021a4:	01053783          	ld	a5,16(a0)
    800021a8:	00078c63          	beqz	a5,800021c0 <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	a70080e7          	jalr	-1424(ra) # 80002c1c <_ZN15MemoryAllocator11getInstanceEv>
    800021b4:	0104b583          	ld	a1,16(s1)
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	c40080e7          	jalr	-960(ra) # 80002df8 <_ZN15MemoryAllocator4freeEPv>
    delete thread;
    800021c0:	00048513          	mv	a0,s1
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	db4080e7          	jalr	-588(ra) # 80001f78 <_ZN7_threaddlEPv>
    return 0;
    800021cc:	00000513          	li	a0,0
}
    800021d0:	01813083          	ld	ra,24(sp)
    800021d4:	01013403          	ld	s0,16(sp)
    800021d8:	00813483          	ld	s1,8(sp)
    800021dc:	02010113          	addi	sp,sp,32
    800021e0:	00008067          	ret
        return -1;
    800021e4:	fff00513          	li	a0,-1
}
    800021e8:	00008067          	ret

00000000800021ec <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    800021ec:	fe010113          	addi	sp,sp,-32
    800021f0:	00113c23          	sd	ra,24(sp)
    800021f4:	00813823          	sd	s0,16(sp)
    800021f8:	00913423          	sd	s1,8(sp)
    800021fc:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80002200:	0000a497          	auipc	s1,0xa
    80002204:	9a04b483          	ld	s1,-1632(s1) # 8000bba0 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80002208:	00048c63          	beqz	s1,80002220 <_ZN7_thread8dispatchEv+0x34>
    8000220c:	0904a783          	lw	a5,144(s1)
    80002210:	00400713          	li	a4,4
    80002214:	00e78663          	beq	a5,a4,80002220 <_ZN7_thread8dispatchEv+0x34>
    80002218:	00300713          	li	a4,3
    8000221c:	04e79e63          	bne	a5,a4,80002278 <_ZN7_thread8dispatchEv+0x8c>
    _thread* next = Scheduler::get();
    80002220:	00000097          	auipc	ra,0x0
    80002224:	3ac080e7          	jalr	940(ra) # 800025cc <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    80002228:	06050063          	beqz	a0,80002288 <_ZN7_thread8dispatchEv+0x9c>
    running = next;
    8000222c:	0000a797          	auipc	a5,0xa
    80002230:	96a7ba23          	sd	a0,-1676(a5) # 8000bba0 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002234:	00200793          	li	a5,2
    80002238:	08f52823          	sw	a5,144(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    8000223c:	02048463          	beqz	s1,80002264 <_ZN7_thread8dispatchEv+0x78>
    80002240:	02a48263          	beq	s1,a0,80002264 <_ZN7_thread8dispatchEv+0x78>
        if (old->pinged) {
    80002244:	0a04c783          	lbu	a5,160(s1)
    80002248:	04079e63          	bnez	a5,800022a4 <_ZN7_thread8dispatchEv+0xb8>
        contextSwitch(&old->context, &running->context);
    8000224c:	0000a597          	auipc	a1,0xa
    80002250:	9545b583          	ld	a1,-1708(a1) # 8000bba0 <_ZN7_thread7runningE>
    80002254:	01858593          	addi	a1,a1,24
    80002258:	01848513          	addi	a0,s1,24
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	ed4080e7          	jalr	-300(ra) # 80001130 <contextSwitch>
}
    80002264:	01813083          	ld	ra,24(sp)
    80002268:	01013403          	ld	s0,16(sp)
    8000226c:	00813483          	ld	s1,8(sp)
    80002270:	02010113          	addi	sp,sp,32
    80002274:	00008067          	ret
        Scheduler::put(old);
    80002278:	00048513          	mv	a0,s1
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	2e4080e7          	jalr	740(ra) # 80002560 <_ZN9Scheduler3putEP7_thread>
    80002284:	f9dff06f          	j	80002220 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    80002288:	fc048ee3          	beqz	s1,80002264 <_ZN7_thread8dispatchEv+0x78>
    8000228c:	0904a703          	lw	a4,144(s1)
    80002290:	00200793          	li	a5,2
    80002294:	fcf718e3          	bne	a4,a5,80002264 <_ZN7_thread8dispatchEv+0x78>
            running = old;
    80002298:	0000a797          	auipc	a5,0xa
    8000229c:	9097b423          	sd	s1,-1784(a5) # 8000bba0 <_ZN7_thread7runningE>
        return;
    800022a0:	fc5ff06f          	j	80002264 <_ZN7_thread8dispatchEv+0x78>
            printString("PING: thread allocated ");
    800022a4:	00007517          	auipc	a0,0x7
    800022a8:	edc50513          	addi	a0,a0,-292 # 80009180 <CONSOLE_STATUS+0x170>
    800022ac:	00003097          	auipc	ra,0x3
    800022b0:	390080e7          	jalr	912(ra) # 8000563c <_Z11printStringPKc>
            printInt(old->allocatedBlocks);
    800022b4:	00000613          	li	a2,0
    800022b8:	00a00593          	li	a1,10
    800022bc:	0984a503          	lw	a0,152(s1)
    800022c0:	00003097          	auipc	ra,0x3
    800022c4:	52c080e7          	jalr	1324(ra) # 800057ec <_Z8printIntiii>
            printString(" blocks before losing context\n");
    800022c8:	00007517          	auipc	a0,0x7
    800022cc:	ed050513          	addi	a0,a0,-304 # 80009198 <CONSOLE_STATUS+0x188>
    800022d0:	00003097          	auipc	ra,0x3
    800022d4:	36c080e7          	jalr	876(ra) # 8000563c <_Z11printStringPKc>
            old->pinged = false;
    800022d8:	0a048023          	sb	zero,160(s1)
    800022dc:	f71ff06f          	j	8000224c <_ZN7_thread8dispatchEv+0x60>

00000000800022e0 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    800022e0:	0000a797          	auipc	a5,0xa
    800022e4:	8c07b783          	ld	a5,-1856(a5) # 8000bba0 <_ZN7_thread7runningE>
    800022e8:	02078c63          	beqz	a5,80002320 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00113423          	sd	ra,8(sp)
    800022f4:	00813023          	sd	s0,0(sp)
    800022f8:	01010413          	addi	s0,sp,16
    running->state = FINISHED;
    800022fc:	00400713          	li	a4,4
    80002300:	08e7a823          	sw	a4,144(a5)
    dispatch();
    80002304:	00000097          	auipc	ra,0x0
    80002308:	ee8080e7          	jalr	-280(ra) # 800021ec <_ZN7_thread8dispatchEv>
    return 0;
    8000230c:	00000513          	li	a0,0
}
    80002310:	00813083          	ld	ra,8(sp)
    80002314:	00013403          	ld	s0,0(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret
        return -1;
    80002320:	fff00513          	li	a0,-1
}
    80002324:	00008067          	ret

0000000080002328 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    80002328:	ff010113          	addi	sp,sp,-16
    8000232c:	00813423          	sd	s0,8(sp)
    80002330:	01010413          	addi	s0,sp,16
}
    80002334:	00053503          	ld	a0,0(a0)
    80002338:	00813403          	ld	s0,8(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
}
    80002350:	00853503          	ld	a0,8(a0)
    80002354:	00813403          	ld	s0,8(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret

0000000080002360 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    80002360:	ff010113          	addi	sp,sp,-16
    80002364:	00813423          	sd	s0,8(sp)
    80002368:	01010413          	addi	s0,sp,16
}
    8000236c:	01053503          	ld	a0,16(a0)
    80002370:	00813403          	ld	s0,8(sp)
    80002374:	01010113          	addi	sp,sp,16
    80002378:	00008067          	ret

000000008000237c <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00813423          	sd	s0,8(sp)
    80002384:	01010413          	addi	s0,sp,16
}
    80002388:	01850513          	addi	a0,a0,24
    8000238c:	00813403          	ld	s0,8(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00813423          	sd	s0,8(sp)
    800023a0:	01010413          	addi	s0,sp,16
}
    800023a4:	09052503          	lw	a0,144(a0)
    800023a8:	00813403          	ld	s0,8(sp)
    800023ac:	01010113          	addi	sp,sp,16
    800023b0:	00008067          	ret

00000000800023b4 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00813423          	sd	s0,8(sp)
    800023bc:	01010413          	addi	s0,sp,16
    this->state = state;
    800023c0:	08b52823          	sw	a1,144(a0)
}
    800023c4:	00813403          	ld	s0,8(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    800023d0:	ff010113          	addi	sp,sp,-16
    800023d4:	00813423          	sd	s0,8(sp)
    800023d8:	01010413          	addi	s0,sp,16
}
    800023dc:	08853503          	ld	a0,136(a0)
    800023e0:	00813403          	ld	s0,8(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800023ec:	fe010113          	addi	sp,sp,-32
    800023f0:	00113c23          	sd	ra,24(sp)
    800023f4:	00813823          	sd	s0,16(sp)
    800023f8:	00913423          	sd	s1,8(sp)
    800023fc:	01213023          	sd	s2,0(sp)
    80002400:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80002404:	00007517          	auipc	a0,0x7
    80002408:	db450513          	addi	a0,a0,-588 # 800091b8 <CONSOLE_STATUS+0x1a8>
    8000240c:	00003097          	auipc	ra,0x3
    80002410:	230080e7          	jalr	560(ra) # 8000563c <_Z11printStringPKc>
    int test = getc() - '0';
    80002414:	fffff097          	auipc	ra,0xfffff
    80002418:	1bc080e7          	jalr	444(ra) # 800015d0 <_Z4getcv>
    8000241c:	00050913          	mv	s2,a0
    80002420:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	1ac080e7          	jalr	428(ra) # 800015d0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000242c:	fcb9091b          	addiw	s2,s2,-53
    80002430:	00100793          	li	a5,1
    80002434:	0327f463          	bgeu	a5,s2,8000245c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80002438:	00800793          	li	a5,8
    8000243c:	1097e863          	bltu	a5,s1,8000254c <_Z8userMainv+0x160>
    80002440:	00249493          	slli	s1,s1,0x2
    80002444:	00007717          	auipc	a4,0x7
    80002448:	f8c70713          	addi	a4,a4,-116 # 800093d0 <CONSOLE_STATUS+0x3c0>
    8000244c:	00e484b3          	add	s1,s1,a4
    80002450:	0004a783          	lw	a5,0(s1)
    80002454:	00e787b3          	add	a5,a5,a4
    80002458:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000245c:	00007517          	auipc	a0,0x7
    80002460:	d7c50513          	addi	a0,a0,-644 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002464:	00003097          	auipc	ra,0x3
    80002468:	1d8080e7          	jalr	472(ra) # 8000563c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000246c:	01813083          	ld	ra,24(sp)
    80002470:	01013403          	ld	s0,16(sp)
    80002474:	00813483          	ld	s1,8(sp)
    80002478:	00013903          	ld	s2,0(sp)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00008067          	ret
            Threads_C_API_test();
    80002484:	00003097          	auipc	ra,0x3
    80002488:	830080e7          	jalr	-2000(ra) # 80004cb4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000248c:	00007517          	auipc	a0,0x7
    80002490:	d7c50513          	addi	a0,a0,-644 # 80009208 <CONSOLE_STATUS+0x1f8>
    80002494:	00003097          	auipc	ra,0x3
    80002498:	1a8080e7          	jalr	424(ra) # 8000563c <_Z11printStringPKc>
            break;
    8000249c:	fd1ff06f          	j	8000246c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	6f4080e7          	jalr	1780(ra) # 80003b94 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800024a8:	00007517          	auipc	a0,0x7
    800024ac:	da050513          	addi	a0,a0,-608 # 80009248 <CONSOLE_STATUS+0x238>
    800024b0:	00003097          	auipc	ra,0x3
    800024b4:	18c080e7          	jalr	396(ra) # 8000563c <_Z11printStringPKc>
            break;
    800024b8:	fb5ff06f          	j	8000246c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800024bc:	00001097          	auipc	ra,0x1
    800024c0:	f2c080e7          	jalr	-212(ra) # 800033e8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800024c4:	00007517          	auipc	a0,0x7
    800024c8:	dc450513          	addi	a0,a0,-572 # 80009288 <CONSOLE_STATUS+0x278>
    800024cc:	00003097          	auipc	ra,0x3
    800024d0:	170080e7          	jalr	368(ra) # 8000563c <_Z11printStringPKc>
            break;
    800024d4:	f99ff06f          	j	8000246c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800024d8:	00003097          	auipc	ra,0x3
    800024dc:	b20080e7          	jalr	-1248(ra) # 80004ff8 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800024e0:	00007517          	auipc	a0,0x7
    800024e4:	df850513          	addi	a0,a0,-520 # 800092d8 <CONSOLE_STATUS+0x2c8>
    800024e8:	00003097          	auipc	ra,0x3
    800024ec:	154080e7          	jalr	340(ra) # 8000563c <_Z11printStringPKc>
            break;
    800024f0:	f7dff06f          	j	8000246c <_Z8userMainv+0x80>
            System_Mode_test();
    800024f4:	00004097          	auipc	ra,0x4
    800024f8:	e28080e7          	jalr	-472(ra) # 8000631c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800024fc:	00007517          	auipc	a0,0x7
    80002500:	e3450513          	addi	a0,a0,-460 # 80009330 <CONSOLE_STATUS+0x320>
    80002504:	00003097          	auipc	ra,0x3
    80002508:	138080e7          	jalr	312(ra) # 8000563c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000250c:	00007517          	auipc	a0,0x7
    80002510:	e4450513          	addi	a0,a0,-444 # 80009350 <CONSOLE_STATUS+0x340>
    80002514:	00003097          	auipc	ra,0x3
    80002518:	128080e7          	jalr	296(ra) # 8000563c <_Z11printStringPKc>
            break;
    8000251c:	f51ff06f          	j	8000246c <_Z8userMainv+0x80>
            mod();
    80002520:	00001097          	auipc	ra,0x1
    80002524:	bd4080e7          	jalr	-1068(ra) # 800030f4 <_Z3modv>
            printString("Test se nije uspesno zavrsio\n");
    80002528:	00007517          	auipc	a0,0x7
    8000252c:	e0850513          	addi	a0,a0,-504 # 80009330 <CONSOLE_STATUS+0x320>
    80002530:	00003097          	auipc	ra,0x3
    80002534:	10c080e7          	jalr	268(ra) # 8000563c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002538:	00007517          	auipc	a0,0x7
    8000253c:	e1850513          	addi	a0,a0,-488 # 80009350 <CONSOLE_STATUS+0x340>
    80002540:	00003097          	auipc	ra,0x3
    80002544:	0fc080e7          	jalr	252(ra) # 8000563c <_Z11printStringPKc>
            break;
    80002548:	f25ff06f          	j	8000246c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    8000254c:	00007517          	auipc	a0,0x7
    80002550:	e5c50513          	addi	a0,a0,-420 # 800093a8 <CONSOLE_STATUS+0x398>
    80002554:	00003097          	auipc	ra,0x3
    80002558:	0e8080e7          	jalr	232(ra) # 8000563c <_Z11printStringPKc>
    8000255c:	f11ff06f          	j	8000246c <_Z8userMainv+0x80>

0000000080002560 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00813423          	sd	s0,8(sp)
    80002568:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    8000256c:	04050063          	beqz	a0,800025ac <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    80002570:	09052783          	lw	a5,144(a0)
    80002574:	ffd7879b          	addiw	a5,a5,-3
    80002578:	00100713          	li	a4,1
    8000257c:	02f77863          	bgeu	a4,a5,800025ac <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    80002580:	00100793          	li	a5,1
    80002584:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    80002588:	0a053423          	sd	zero,168(a0)

    if (head == nullptr) {
    8000258c:	00009797          	auipc	a5,0x9
    80002590:	61c7b783          	ld	a5,1564(a5) # 8000bba8 <_ZN9Scheduler4headE>
    80002594:	02078263          	beqz	a5,800025b8 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002598:	00009797          	auipc	a5,0x9
    8000259c:	61078793          	addi	a5,a5,1552 # 8000bba8 <_ZN9Scheduler4headE>
    800025a0:	0087b703          	ld	a4,8(a5)
    800025a4:	0aa73423          	sd	a0,168(a4)
        tail = thread;
    800025a8:	00a7b423          	sd	a0,8(a5)
    }
}
    800025ac:	00813403          	ld	s0,8(sp)
    800025b0:	01010113          	addi	sp,sp,16
    800025b4:	00008067          	ret
        head = thread;
    800025b8:	00009797          	auipc	a5,0x9
    800025bc:	5f078793          	addi	a5,a5,1520 # 8000bba8 <_ZN9Scheduler4headE>
    800025c0:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    800025c4:	00a7b423          	sd	a0,8(a5)
    800025c8:	fe5ff06f          	j	800025ac <_ZN9Scheduler3putEP7_thread+0x4c>

00000000800025cc <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00813423          	sd	s0,8(sp)
    800025d4:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    800025d8:	00009517          	auipc	a0,0x9
    800025dc:	5d053503          	ld	a0,1488(a0) # 8000bba8 <_ZN9Scheduler4headE>
    800025e0:	00050c63          	beqz	a0,800025f8 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    800025e4:	0a853783          	ld	a5,168(a0)
    800025e8:	00009717          	auipc	a4,0x9
    800025ec:	5cf73023          	sd	a5,1472(a4) # 8000bba8 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    800025f0:	00078a63          	beqz	a5,80002604 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    800025f4:	0a053423          	sd	zero,168(a0)

    return thread;
}
    800025f8:	00813403          	ld	s0,8(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret
        tail = nullptr;
    80002604:	00009797          	auipc	a5,0x9
    80002608:	5a07b623          	sd	zero,1452(a5) # 8000bbb0 <_ZN9Scheduler4tailE>
    8000260c:	fe9ff06f          	j	800025f4 <_ZN9Scheduler3getEv+0x28>

0000000080002610 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002610:	ff010113          	addi	sp,sp,-16
    80002614:	00813423          	sd	s0,8(sp)
    80002618:	01010413          	addi	s0,sp,16
    return head == nullptr;
    8000261c:	00009517          	auipc	a0,0x9
    80002620:	58c53503          	ld	a0,1420(a0) # 8000bba8 <_ZN9Scheduler4headE>
    80002624:	00153513          	seqz	a0,a0
    80002628:	00813403          	ld	s0,8(sp)
    8000262c:	01010113          	addi	sp,sp,16
    80002630:	00008067          	ret

0000000080002634 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00113423          	sd	ra,8(sp)
    8000263c:	00813023          	sd	s0,0(sp)
    80002640:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	bb4080e7          	jalr	-1100(ra) # 800011f8 <_Z9mem_allocm>
}
    8000264c:	00813083          	ld	ra,8(sp)
    80002650:	00013403          	ld	s0,0(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_Znam>:

void* operator new[](size_t size) {
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00113423          	sd	ra,8(sp)
    80002664:	00813023          	sd	s0,0(sp)
    80002668:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000266c:	fffff097          	auipc	ra,0xfffff
    80002670:	b8c080e7          	jalr	-1140(ra) # 800011f8 <_Z9mem_allocm>
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_ZdlPv>:

void operator delete(void* ptr) {
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002694:	fffff097          	auipc	ra,0xfffff
    80002698:	bb0080e7          	jalr	-1104(ra) # 80001244 <_Z8mem_freePv>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_ZdaPv>:

void operator delete[](void* ptr) {
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800026bc:	fffff097          	auipc	ra,0xfffff
    800026c0:	b88080e7          	jalr	-1144(ra) # 80001244 <_Z8mem_freePv>
    800026c4:	00813083          	ld	ra,8(sp)
    800026c8:	00013403          	ld	s0,0(sp)
    800026cc:	01010113          	addi	sp,sp,16
    800026d0:	00008067          	ret

00000000800026d4 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00113423          	sd	ra,8(sp)
    800026dc:	00813023          	sd	s0,0(sp)
    800026e0:	01010413          	addi	s0,sp,16
    userMain();
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	d08080e7          	jalr	-760(ra) # 800023ec <_Z8userMainv>
    userMainFinished = true;
    800026ec:	00100793          	li	a5,1
    800026f0:	00009717          	auipc	a4,0x9
    800026f4:	4cf70423          	sb	a5,1224(a4) # 8000bbb8 <_ZL16userMainFinished>
    thread_exit();
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	c50080e7          	jalr	-944(ra) # 80001348 <_Z11thread_exitv>
}
    80002700:	00813083          	ld	ra,8(sp)
    80002704:	00013403          	ld	s0,0(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret

0000000080002710 <main>:

int main() {
    80002710:	f2010113          	addi	sp,sp,-224
    80002714:	0c113c23          	sd	ra,216(sp)
    80002718:	0c813823          	sd	s0,208(sp)
    8000271c:	0c913423          	sd	s1,200(sp)
    80002720:	0e010413          	addi	s0,sp,224
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002724:	00009797          	auipc	a5,0x9
    80002728:	4147b783          	ld	a5,1044(a5) # 8000bb38 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    8000272c:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    80002730:	00200793          	li	a5,2
    80002734:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    80002738:	00000693          	li	a3,0
    8000273c:	00000613          	li	a2,0
    80002740:	00000593          	li	a1,0
    80002744:	f3040493          	addi	s1,s0,-208
    80002748:	00048513          	mv	a0,s1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	8bc080e7          	jalr	-1860(ra) # 80002008 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    80002754:	00200593          	li	a1,2
    80002758:	00048513          	mv	a0,s1
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	c58080e7          	jalr	-936(ra) # 800023b4 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    80002764:	00009797          	auipc	a5,0x9
    80002768:	3cc7b783          	ld	a5,972(a5) # 8000bb30 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000276c:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    80002770:	f2043423          	sd	zero,-216(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    80002774:	00000613          	li	a2,0
    80002778:	00000597          	auipc	a1,0x0
    8000277c:	f5c58593          	addi	a1,a1,-164 # 800026d4 <_ZL15userMainWrapperPv>
    80002780:	f2840513          	addi	a0,s0,-216
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	b00080e7          	jalr	-1280(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    8000278c:	00054663          	bltz	a0,80002798 <main+0x88>
    80002790:	f2843783          	ld	a5,-216(s0)
    80002794:	02079063          	bnez	a5,800027b4 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    80002798:	00100737          	lui	a4,0x100
    8000279c:	000057b7          	lui	a5,0x5
    800027a0:	5557879b          	addiw	a5,a5,1365
    800027a4:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    800027a8:	02c0006f          	j	800027d4 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    800027ac:	fffff097          	auipc	ra,0xfffff
    800027b0:	c1c080e7          	jalr	-996(ra) # 800013c8 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    800027b4:	00009797          	auipc	a5,0x9
    800027b8:	4047c783          	lbu	a5,1028(a5) # 8000bbb8 <_ZL16userMainFinished>
    800027bc:	fe0788e3          	beqz	a5,800027ac <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    800027c0:	00100737          	lui	a4,0x100
    800027c4:	000057b7          	lui	a5,0x5
    800027c8:	5557879b          	addiw	a5,a5,1365
    800027cc:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    800027d0:	00000513          	li	a0,0
}
    800027d4:	0d813083          	ld	ra,216(sp)
    800027d8:	0d013403          	ld	s0,208(sp)
    800027dc:	0c813483          	ld	s1,200(sp)
    800027e0:	0e010113          	addi	sp,sp,224
    800027e4:	00008067          	ret

00000000800027e8 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00813423          	sd	s0,8(sp)
    800027f0:	01010413          	addi	s0,sp,16
}
    800027f4:	00813403          	ld	s0,8(sp)
    800027f8:	01010113          	addi	sp,sp,16
    800027fc:	00008067          	ret

0000000080002800 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002800:	02050863          	beqz	a0,80002830 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002804:	ff010113          	addi	sp,sp,-16
    80002808:	00113423          	sd	ra,8(sp)
    8000280c:	00813023          	sd	s0,0(sp)
    80002810:	01010413          	addi	s0,sp,16
        t->run();
    80002814:	00053783          	ld	a5,0(a0)
    80002818:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    8000281c:	000780e7          	jalr	a5
    }
}
    80002820:	00813083          	ld	ra,8(sp)
    80002824:	00013403          	ld	s0,0(sp)
    80002828:	01010113          	addi	sp,sp,16
    8000282c:	00008067          	ret
    80002830:	00008067          	ret

0000000080002834 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002834:	ff010113          	addi	sp,sp,-16
    80002838:	00113423          	sd	ra,8(sp)
    8000283c:	00813023          	sd	s0,0(sp)
    80002840:	01010413          	addi	s0,sp,16
}
    80002844:	00000097          	auipc	ra,0x0
    80002848:	e40080e7          	jalr	-448(ra) # 80002684 <_ZdlPv>
    8000284c:	00813083          	ld	ra,8(sp)
    80002850:	00013403          	ld	s0,0(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret

000000008000285c <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    8000285c:	00009797          	auipc	a5,0x9
    80002860:	0fc78793          	addi	a5,a5,252 # 8000b958 <_ZTV9Semaphore+0x10>
    80002864:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    80002868:	00853503          	ld	a0,8(a0)
    8000286c:	02050663          	beqz	a0,80002898 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00113423          	sd	ra,8(sp)
    80002878:	00813023          	sd	s0,0(sp)
    8000287c:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	bc8080e7          	jalr	-1080(ra) # 80001448 <_Z9sem_closeP4_sem>
    }
}
    80002888:	00813083          	ld	ra,8(sp)
    8000288c:	00013403          	ld	s0,0(sp)
    80002890:	01010113          	addi	sp,sp,16
    80002894:	00008067          	ret
    80002898:	00008067          	ret

000000008000289c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000289c:	fe010113          	addi	sp,sp,-32
    800028a0:	00113c23          	sd	ra,24(sp)
    800028a4:	00813823          	sd	s0,16(sp)
    800028a8:	00913423          	sd	s1,8(sp)
    800028ac:	02010413          	addi	s0,sp,32
    800028b0:	00050493          	mv	s1,a0
}
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	fa8080e7          	jalr	-88(ra) # 8000285c <_ZN9SemaphoreD1Ev>
    800028bc:	00048513          	mv	a0,s1
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	dc4080e7          	jalr	-572(ra) # 80002684 <_ZdlPv>
    800028c8:	01813083          	ld	ra,24(sp)
    800028cc:	01013403          	ld	s0,16(sp)
    800028d0:	00813483          	ld	s1,8(sp)
    800028d4:	02010113          	addi	sp,sp,32
    800028d8:	00008067          	ret

00000000800028dc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    800028dc:	ff010113          	addi	sp,sp,-16
    800028e0:	00813423          	sd	s0,8(sp)
    800028e4:	01010413          	addi	s0,sp,16
    800028e8:	00009797          	auipc	a5,0x9
    800028ec:	04878793          	addi	a5,a5,72 # 8000b930 <_ZTV6Thread+0x10>
    800028f0:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800028f4:	00053423          	sd	zero,8(a0)
    this->body = body;
    800028f8:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800028fc:	00c53c23          	sd	a2,24(a0)
}
    80002900:	00813403          	ld	s0,8(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00813423          	sd	s0,8(sp)
    80002914:	01010413          	addi	s0,sp,16
    80002918:	00009797          	auipc	a5,0x9
    8000291c:	01878793          	addi	a5,a5,24 # 8000b930 <_ZTV6Thread+0x10>
    80002920:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002924:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80002928:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    8000292c:	00053c23          	sd	zero,24(a0)
}
    80002930:	00813403          	ld	s0,8(sp)
    80002934:	01010113          	addi	sp,sp,16
    80002938:	00008067          	ret

000000008000293c <_ZN6Thread5startEv>:
int Thread::start() {
    8000293c:	ff010113          	addi	sp,sp,-16
    80002940:	00113423          	sd	ra,8(sp)
    80002944:	00813023          	sd	s0,0(sp)
    80002948:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    8000294c:	01053583          	ld	a1,16(a0)
    80002950:	02058263          	beqz	a1,80002974 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80002954:	01853603          	ld	a2,24(a0)
    80002958:	00850513          	addi	a0,a0,8
    8000295c:	fffff097          	auipc	ra,0xfffff
    80002960:	928080e7          	jalr	-1752(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002964:	00813083          	ld	ra,8(sp)
    80002968:	00013403          	ld	s0,0(sp)
    8000296c:	01010113          	addi	sp,sp,16
    80002970:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    80002974:	00050613          	mv	a2,a0
    80002978:	00000597          	auipc	a1,0x0
    8000297c:	e8858593          	addi	a1,a1,-376 # 80002800 <_ZN6Thread13threadWrapperEPv>
    80002980:	00850513          	addi	a0,a0,8
    80002984:	fffff097          	auipc	ra,0xfffff
    80002988:	900080e7          	jalr	-1792(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    8000298c:	fd9ff06f          	j	80002964 <_ZN6Thread5startEv+0x28>

0000000080002990 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00113423          	sd	ra,8(sp)
    80002998:	00813023          	sd	s0,0(sp)
    8000299c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800029a0:	fffff097          	auipc	ra,0xfffff
    800029a4:	a28080e7          	jalr	-1496(ra) # 800013c8 <_Z15thread_dispatchv>
}
    800029a8:	00813083          	ld	ra,8(sp)
    800029ac:	00013403          	ld	s0,0(sp)
    800029b0:	01010113          	addi	sp,sp,16
    800029b4:	00008067          	ret

00000000800029b8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800029b8:	ff010113          	addi	sp,sp,-16
    800029bc:	00113423          	sd	ra,8(sp)
    800029c0:	00813023          	sd	s0,0(sp)
    800029c4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	bc8080e7          	jalr	-1080(ra) # 80001590 <_Z10time_sleepm>
}
    800029d0:	00813083          	ld	ra,8(sp)
    800029d4:	00013403          	ld	s0,0(sp)
    800029d8:	01010113          	addi	sp,sp,16
    800029dc:	00008067          	ret

00000000800029e0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    800029e0:	ff010113          	addi	sp,sp,-16
    800029e4:	00113423          	sd	ra,8(sp)
    800029e8:	00813023          	sd	s0,0(sp)
    800029ec:	01010413          	addi	s0,sp,16
    800029f0:	00009797          	auipc	a5,0x9
    800029f4:	f6878793          	addi	a5,a5,-152 # 8000b958 <_ZTV9Semaphore+0x10>
    800029f8:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    800029fc:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002a00:	00850513          	addi	a0,a0,8
    80002a04:	fffff097          	auipc	ra,0xfffff
    80002a08:	a00080e7          	jalr	-1536(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    80002a0c:	00813083          	ld	ra,8(sp)
    80002a10:	00013403          	ld	s0,0(sp)
    80002a14:	01010113          	addi	sp,sp,16
    80002a18:	00008067          	ret

0000000080002a1c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002a1c:	ff010113          	addi	sp,sp,-16
    80002a20:	00113423          	sd	ra,8(sp)
    80002a24:	00813023          	sd	s0,0(sp)
    80002a28:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002a2c:	00853503          	ld	a0,8(a0)
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	a58080e7          	jalr	-1448(ra) # 80001488 <_Z8sem_waitP4_sem>
}
    80002a38:	00813083          	ld	ra,8(sp)
    80002a3c:	00013403          	ld	s0,0(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002a48:	ff010113          	addi	sp,sp,-16
    80002a4c:	00113423          	sd	ra,8(sp)
    80002a50:	00813023          	sd	s0,0(sp)
    80002a54:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002a58:	00853503          	ld	a0,8(a0)
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	a6c080e7          	jalr	-1428(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    80002a64:	00813083          	ld	ra,8(sp)
    80002a68:	00013403          	ld	s0,0(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	01213023          	sd	s2,0(sp)
    80002a88:	02010413          	addi	s0,sp,32
    80002a8c:	00050493          	mv	s1,a0
    80002a90:	00058913          	mv	s2,a1
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	e78080e7          	jalr	-392(ra) # 8000290c <_ZN6ThreadC1Ev>
    80002a9c:	00009797          	auipc	a5,0x9
    80002aa0:	e6478793          	addi	a5,a5,-412 # 8000b900 <_ZTV14PeriodicThread+0x10>
    80002aa4:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002aa8:	0324b023          	sd	s2,32(s1)
}
    80002aac:	01813083          	ld	ra,24(sp)
    80002ab0:	01013403          	ld	s0,16(sp)
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	00013903          	ld	s2,0(sp)
    80002abc:	02010113          	addi	sp,sp,32
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002ac4:	ff010113          	addi	sp,sp,-16
    80002ac8:	00813423          	sd	s0,8(sp)
    80002acc:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002ad0:	00813403          	ld	s0,8(sp)
    80002ad4:	01010113          	addi	sp,sp,16
    80002ad8:	00008067          	ret

0000000080002adc <_ZN7Console4getcEv>:

char Console::getc() {
    80002adc:	ff010113          	addi	sp,sp,-16
    80002ae0:	00113423          	sd	ra,8(sp)
    80002ae4:	00813023          	sd	s0,0(sp)
    80002ae8:	01010413          	addi	s0,sp,16
    return ::getc();
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	ae4080e7          	jalr	-1308(ra) # 800015d0 <_Z4getcv>
}
    80002af4:	00813083          	ld	ra,8(sp)
    80002af8:	00013403          	ld	s0,0(sp)
    80002afc:	01010113          	addi	sp,sp,16
    80002b00:	00008067          	ret

0000000080002b04 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00113423          	sd	ra,8(sp)
    80002b0c:	00813023          	sd	s0,0(sp)
    80002b10:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	afc080e7          	jalr	-1284(ra) # 80001610 <_Z4putcc>
    80002b1c:	00813083          	ld	ra,8(sp)
    80002b20:	00013403          	ld	s0,0(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN6Thread3runEv>:
    static int sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00813423          	sd	s0,8(sp)
    80002b34:	01010413          	addi	s0,sp,16
    80002b38:	00813403          	ld	s0,8(sp)
    80002b3c:	01010113          	addi	sp,sp,16
    80002b40:	00008067          	ret

0000000080002b44 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00813423          	sd	s0,8(sp)
    80002b4c:	01010413          	addi	s0,sp,16
    80002b50:	00813403          	ld	s0,8(sp)
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00008067          	ret

0000000080002b5c <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00813423          	sd	s0,8(sp)
    80002b64:	01010413          	addi	s0,sp,16
    80002b68:	00009797          	auipc	a5,0x9
    80002b6c:	d9878793          	addi	a5,a5,-616 # 8000b900 <_ZTV14PeriodicThread+0x10>
    80002b70:	00f53023          	sd	a5,0(a0)
    80002b74:	00813403          	ld	s0,8(sp)
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00008067          	ret

0000000080002b80 <_ZN14PeriodicThreadD0Ev>:
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00113423          	sd	ra,8(sp)
    80002b88:	00813023          	sd	s0,0(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    80002b90:	00009797          	auipc	a5,0x9
    80002b94:	d7078793          	addi	a5,a5,-656 # 8000b900 <_ZTV14PeriodicThread+0x10>
    80002b98:	00f53023          	sd	a5,0(a0)
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	ae8080e7          	jalr	-1304(ra) # 80002684 <_ZdlPv>
    80002ba4:	00813083          	ld	ra,8(sp)
    80002ba8:	00013403          	ld	s0,0(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00813423          	sd	s0,8(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    80002bc0:	00053023          	sd	zero,0(a0)
    80002bc4:	00050423          	sb	zero,8(a0)
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002bd4:	00100793          	li	a5,1
    80002bd8:	00f50463          	beq	a0,a5,80002be0 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002bdc:	00008067          	ret
    80002be0:	000107b7          	lui	a5,0x10
    80002be4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002be8:	fef59ae3          	bne	a1,a5,80002bdc <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002bec:	ff010113          	addi	sp,sp,-16
    80002bf0:	00113423          	sd	ra,8(sp)
    80002bf4:	00813023          	sd	s0,0(sp)
    80002bf8:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002bfc:	00009517          	auipc	a0,0x9
    80002c00:	fc450513          	addi	a0,a0,-60 # 8000bbc0 <_ZN15MemoryAllocator8instanceE>
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	fb0080e7          	jalr	-80(ra) # 80002bb4 <_ZN15MemoryAllocatorC1Ev>
    80002c0c:	00813083          	ld	ra,8(sp)
    80002c10:	00013403          	ld	s0,0(sp)
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	00008067          	ret

0000000080002c1c <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002c1c:	ff010113          	addi	sp,sp,-16
    80002c20:	00813423          	sd	s0,8(sp)
    80002c24:	01010413          	addi	s0,sp,16
}
    80002c28:	00009517          	auipc	a0,0x9
    80002c2c:	f9850513          	addi	a0,a0,-104 # 8000bbc0 <_ZN15MemoryAllocator8instanceE>
    80002c30:	00813403          	ld	s0,8(sp)
    80002c34:	01010113          	addi	sp,sp,16
    80002c38:	00008067          	ret

0000000080002c3c <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00813423          	sd	s0,8(sp)
    80002c44:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002c48:	00854783          	lbu	a5,8(a0)
    80002c4c:	04079263          	bnez	a5,80002c90 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002c50:	00009797          	auipc	a5,0x9
    80002c54:	ed87b783          	ld	a5,-296(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002c58:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002c5c:	00009797          	auipc	a5,0x9
    80002c60:	eec7b783          	ld	a5,-276(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002c64:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002c68:	40e787b3          	sub	a5,a5,a4
    80002c6c:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002c70:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002c74:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002c78:	00053783          	ld	a5,0(a0)
    80002c7c:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002c80:	00053783          	ld	a5,0(a0)
    80002c84:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002c88:	00100793          	li	a5,1
    80002c8c:	00f50423          	sb	a5,8(a0)
}
    80002c90:	00813403          	ld	s0,8(sp)
    80002c94:	01010113          	addi	sp,sp,16
    80002c98:	00008067          	ret

0000000080002c9c <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002c9c:	fe010113          	addi	sp,sp,-32
    80002ca0:	00113c23          	sd	ra,24(sp)
    80002ca4:	00813823          	sd	s0,16(sp)
    80002ca8:	00913423          	sd	s1,8(sp)
    80002cac:	01213023          	sd	s2,0(sp)
    80002cb0:	02010413          	addi	s0,sp,32
    80002cb4:	00050913          	mv	s2,a0
    80002cb8:	00058493          	mv	s1,a1
    init();
    80002cbc:	00000097          	auipc	ra,0x0
    80002cc0:	f80080e7          	jalr	-128(ra) # 80002c3c <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002cc4:	0c048863          	beqz	s1,80002d94 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002cc8:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002ccc:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002cd0:	00050a63          	beqz	a0,80002ce4 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002cd4:	00053783          	ld	a5,0(a0)
    80002cd8:	00b7f663          	bgeu	a5,a1,80002ce4 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002cdc:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002ce0:	ff1ff06f          	j	80002cd0 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002ce4:	04050063          	beqz	a0,80002d24 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002ce8:	00053783          	ld	a5,0(a0)
    80002cec:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002cf0:	00100713          	li	a4,1
    80002cf4:	04f76463          	bltu	a4,a5,80002d3c <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002cf8:	01053783          	ld	a5,16(a0)
    80002cfc:	08078663          	beqz	a5,80002d88 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002d00:	00853703          	ld	a4,8(a0)
    80002d04:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002d08:	00853783          	ld	a5,8(a0)
    80002d0c:	00078663          	beqz	a5,80002d18 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002d10:	01053703          	ld	a4,16(a0)
    80002d14:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002d18:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002d1c:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002d20:	04050513          	addi	a0,a0,64
}
    80002d24:	01813083          	ld	ra,24(sp)
    80002d28:	01013403          	ld	s0,16(sp)
    80002d2c:	00813483          	ld	s1,8(sp)
    80002d30:	00013903          	ld	s2,0(sp)
    80002d34:	02010113          	addi	sp,sp,32
    80002d38:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002d3c:	00659713          	slli	a4,a1,0x6
    80002d40:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002d44:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002d48:	00853783          	ld	a5,8(a0)
    80002d4c:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002d50:	01053783          	ld	a5,16(a0)
    80002d54:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002d58:	02078463          	beqz	a5,80002d80 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002d5c:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002d60:	00853783          	ld	a5,8(a0)
    80002d64:	00078463          	beqz	a5,80002d6c <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002d68:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002d6c:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002d70:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002d74:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002d78:	04050513          	addi	a0,a0,64
    80002d7c:	fa9ff06f          	j	80002d24 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002d80:	00e93023          	sd	a4,0(s2)
    80002d84:	fddff06f          	j	80002d60 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002d88:	00853783          	ld	a5,8(a0)
    80002d8c:	00f93023          	sd	a5,0(s2)
    80002d90:	f79ff06f          	j	80002d08 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002d94:	00000513          	li	a0,0
    80002d98:	f8dff06f          	j	80002d24 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002d9c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002d9c:	ff010113          	addi	sp,sp,-16
    80002da0:	00813423          	sd	s0,8(sp)
    80002da4:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002da8:	00058e63          	beqz	a1,80002dc4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002dac:	0085b783          	ld	a5,8(a1)
    80002db0:	00078a63          	beqz	a5,80002dc4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002db4:	0005b683          	ld	a3,0(a1)
    80002db8:	00669713          	slli	a4,a3,0x6
    80002dbc:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002dc0:	00e78863          	beq	a5,a4,80002dd0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002dc4:	00813403          	ld	s0,8(sp)
    80002dc8:	01010113          	addi	sp,sp,16
    80002dcc:	00008067          	ret
        block->size += nextBlock->size;
    80002dd0:	0007b703          	ld	a4,0(a5)
    80002dd4:	00e686b3          	add	a3,a3,a4
    80002dd8:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002ddc:	0087b703          	ld	a4,8(a5)
    80002de0:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002de4:	00070463          	beqz	a4,80002dec <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002de8:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002dec:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002df0:	0007b823          	sd	zero,16(a5)
    80002df4:	fd1ff06f          	j	80002dc4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002df8 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002df8:	fd010113          	addi	sp,sp,-48
    80002dfc:	02113423          	sd	ra,40(sp)
    80002e00:	02813023          	sd	s0,32(sp)
    80002e04:	00913c23          	sd	s1,24(sp)
    80002e08:	01213823          	sd	s2,16(sp)
    80002e0c:	01313423          	sd	s3,8(sp)
    80002e10:	03010413          	addi	s0,sp,48
    80002e14:	00050993          	mv	s3,a0
    80002e18:	00058913          	mv	s2,a1
    init();
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	e20080e7          	jalr	-480(ra) # 80002c3c <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002e24:	0e090863          	beqz	s2,80002f14 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002e28:	00009797          	auipc	a5,0x9
    80002e2c:	d007b783          	ld	a5,-768(a5) # 8000bb28 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002e30:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002e34:	00009797          	auipc	a5,0x9
    80002e38:	d147b783          	ld	a5,-748(a5) # 8000bb48 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e3c:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002e40:	04068793          	addi	a5,a3,64
    80002e44:	0cf96c63          	bltu	s2,a5,80002f1c <_ZN15MemoryAllocator4freeEPv+0x124>
    80002e48:	0cc97e63          	bgeu	s2,a2,80002f24 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002e4c:	40d907b3          	sub	a5,s2,a3
    80002e50:	03f7f793          	andi	a5,a5,63
    80002e54:	0c079c63          	bnez	a5,80002f2c <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002e58:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002e5c:	fc093783          	ld	a5,-64(s2)
    80002e60:	00100713          	li	a4,1
    80002e64:	0cf77863          	bgeu	a4,a5,80002f34 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002e68:	00058713          	mv	a4,a1
    80002e6c:	0cd5e863          	bltu	a1,a3,80002f3c <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002e70:	00679793          	slli	a5,a5,0x6
    80002e74:	00f586b3          	add	a3,a1,a5
    80002e78:	0cd66663          	bltu	a2,a3,80002f44 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002e7c:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002e80:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002e84:	00078a63          	beqz	a5,80002e98 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002e88:	00e7f863          	bgeu	a5,a4,80002e98 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002e8c:	00078493          	mv	s1,a5
        current = current->next;
    80002e90:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002e94:	ff1ff06f          	j	80002e84 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002e98:	00048a63          	beqz	s1,80002eac <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002e9c:	0004b603          	ld	a2,0(s1)
    80002ea0:	00661613          	slli	a2,a2,0x6
    80002ea4:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002ea8:	0ac76263          	bltu	a4,a2,80002f4c <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002eac:	00078463          	beqz	a5,80002eb4 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002eb0:	0ad7e263          	bltu	a5,a3,80002f54 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002eb4:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002eb8:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002ebc:	04048863          	beqz	s1,80002f0c <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002ec0:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002ec4:	00078463          	beqz	a5,80002ecc <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002ec8:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002ecc:	00098513          	mv	a0,s3
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	ecc080e7          	jalr	-308(ra) # 80002d9c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002ed8:	08048263          	beqz	s1,80002f5c <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002edc:	00048593          	mv	a1,s1
    80002ee0:	00098513          	mv	a0,s3
    80002ee4:	00000097          	auipc	ra,0x0
    80002ee8:	eb8080e7          	jalr	-328(ra) # 80002d9c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002eec:	00000513          	li	a0,0
}
    80002ef0:	02813083          	ld	ra,40(sp)
    80002ef4:	02013403          	ld	s0,32(sp)
    80002ef8:	01813483          	ld	s1,24(sp)
    80002efc:	01013903          	ld	s2,16(sp)
    80002f00:	00813983          	ld	s3,8(sp)
    80002f04:	03010113          	addi	sp,sp,48
    80002f08:	00008067          	ret
        freeHead = block;
    80002f0c:	00b9b023          	sd	a1,0(s3)
    80002f10:	fb5ff06f          	j	80002ec4 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002f14:	fff00513          	li	a0,-1
    80002f18:	fd9ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f1c:	fff00513          	li	a0,-1
    80002f20:	fd1ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002f24:	fff00513          	li	a0,-1
    80002f28:	fc9ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f2c:	fff00513          	li	a0,-1
    80002f30:	fc1ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f34:	fff00513          	li	a0,-1
    80002f38:	fb9ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f3c:	fff00513          	li	a0,-1
    80002f40:	fb1ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f44:	fff00513          	li	a0,-1
    80002f48:	fa9ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f4c:	fff00513          	li	a0,-1
    80002f50:	fa1ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f54:	fff00513          	li	a0,-1
    80002f58:	f99ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80002f5c:	00000513          	li	a0,0
    80002f60:	f91ff06f          	j	80002ef0 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080002f64 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80002f64:	ff010113          	addi	sp,sp,-16
    80002f68:	00113423          	sd	ra,8(sp)
    80002f6c:	00813023          	sd	s0,0(sp)
    80002f70:	01010413          	addi	s0,sp,16
    80002f74:	000105b7          	lui	a1,0x10
    80002f78:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002f7c:	00100513          	li	a0,1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	c54080e7          	jalr	-940(ra) # 80002bd4 <_Z41__static_initialization_and_destruction_0ii>
    80002f88:	00813083          	ld	ra,8(sp)
    80002f8c:	00013403          	ld	s0,0(sp)
    80002f90:	01010113          	addi	sp,sp,16
    80002f94:	00008067          	ret

0000000080002f98 <_ZL12pingBusyWaiti>:

struct PingThreadArg {
    char name;
};

static void pingBusyWait(int value) {
    80002f98:	fe010113          	addi	sp,sp,-32
    80002f9c:	00813c23          	sd	s0,24(sp)
    80002fa0:	02010413          	addi	s0,sp,32
    volatile int counter = 0;
    80002fa4:	fe042623          	sw	zero,-20(s0)

    for (int i = 0; i < 1000 + value * 500; i++) {
    80002fa8:	00000713          	li	a4,0
    80002fac:	1f400793          	li	a5,500
    80002fb0:	02a787bb          	mulw	a5,a5,a0
    80002fb4:	3e77879b          	addiw	a5,a5,999
    80002fb8:	00e7cc63          	blt	a5,a4,80002fd0 <_ZL12pingBusyWaiti+0x38>
        counter++;
    80002fbc:	fec42783          	lw	a5,-20(s0)
    80002fc0:	0017879b          	addiw	a5,a5,1
    80002fc4:	fef42623          	sw	a5,-20(s0)
    for (int i = 0; i < 1000 + value * 500; i++) {
    80002fc8:	0017071b          	addiw	a4,a4,1
    80002fcc:	fe1ff06f          	j	80002fac <_ZL12pingBusyWaiti+0x14>
    }
}
    80002fd0:	01813403          	ld	s0,24(sp)
    80002fd4:	02010113          	addi	sp,sp,32
    80002fd8:	00008067          	ret

0000000080002fdc <_ZL10pingWorkerPv>:

static void pingWorker(void* arg) {
    80002fdc:	fe010113          	addi	sp,sp,-32
    80002fe0:	00113c23          	sd	ra,24(sp)
    80002fe4:	00813823          	sd	s0,16(sp)
    80002fe8:	00913423          	sd	s1,8(sp)
    80002fec:	01213023          	sd	s2,0(sp)
    80002ff0:	02010413          	addi	s0,sp,32
    PingThreadArg* threadArg = (PingThreadArg*)arg;
    char name = threadArg->name;
    80002ff4:	00054903          	lbu	s2,0(a0)

    for (int i = 0; i <= 10; i++) {
    80002ff8:	00000493          	li	s1,0
    80002ffc:	03c0006f          	j	80003038 <_ZL10pingWorkerPv+0x5c>
        printString("\n");
        void* p = mem_alloc(64);
        (void)p;//da ne baci warning da se p nigde ne koristi

        if (name == 'C' && i == 5) {
            printString("Thread C pings thread A\n");
    80003000:	00006517          	auipc	a0,0x6
    80003004:	41050513          	addi	a0,a0,1040 # 80009410 <CONSOLE_STATUS+0x400>
    80003008:	00002097          	auipc	ra,0x2
    8000300c:	634080e7          	jalr	1588(ra) # 8000563c <_Z11printStringPKc>
            ping(threadA);
    80003010:	00009517          	auipc	a0,0x9
    80003014:	bc053503          	ld	a0,-1088(a0) # 8000bbd0 <_ZL7threadA>
    80003018:	ffffe097          	auipc	ra,0xffffe
    8000301c:	370080e7          	jalr	880(ra) # 80001388 <_Z4pingP7_thread>
        }

        pingBusyWait(i);
    80003020:	00048513          	mv	a0,s1
    80003024:	00000097          	auipc	ra,0x0
    80003028:	f74080e7          	jalr	-140(ra) # 80002f98 <_ZL12pingBusyWaiti>

        thread_dispatch();
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	39c080e7          	jalr	924(ra) # 800013c8 <_Z15thread_dispatchv>
    for (int i = 0; i <= 10; i++) {
    80003034:	0014849b          	addiw	s1,s1,1
    80003038:	00a00793          	li	a5,10
    8000303c:	0697ca63          	blt	a5,s1,800030b0 <_ZL10pingWorkerPv+0xd4>
        printString("Thread ");
    80003040:	00006517          	auipc	a0,0x6
    80003044:	3b850513          	addi	a0,a0,952 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	5f4080e7          	jalr	1524(ra) # 8000563c <_Z11printStringPKc>
        putc(name);
    80003050:	00090513          	mv	a0,s2
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	5bc080e7          	jalr	1468(ra) # 80001610 <_Z4putcc>
        printString(", iteration ");
    8000305c:	00006517          	auipc	a0,0x6
    80003060:	3a450513          	addi	a0,a0,932 # 80009400 <CONSOLE_STATUS+0x3f0>
    80003064:	00002097          	auipc	ra,0x2
    80003068:	5d8080e7          	jalr	1496(ra) # 8000563c <_Z11printStringPKc>
        printInt(i);
    8000306c:	00000613          	li	a2,0
    80003070:	00a00593          	li	a1,10
    80003074:	00048513          	mv	a0,s1
    80003078:	00002097          	auipc	ra,0x2
    8000307c:	774080e7          	jalr	1908(ra) # 800057ec <_Z8printIntiii>
        printString("\n");
    80003080:	00006517          	auipc	a0,0x6
    80003084:	2a850513          	addi	a0,a0,680 # 80009328 <CONSOLE_STATUS+0x318>
    80003088:	00002097          	auipc	ra,0x2
    8000308c:	5b4080e7          	jalr	1460(ra) # 8000563c <_Z11printStringPKc>
        void* p = mem_alloc(64);
    80003090:	04000513          	li	a0,64
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	164080e7          	jalr	356(ra) # 800011f8 <_Z9mem_allocm>
        if (name == 'C' && i == 5) {
    8000309c:	04300793          	li	a5,67
    800030a0:	f8f910e3          	bne	s2,a5,80003020 <_ZL10pingWorkerPv+0x44>
    800030a4:	00500793          	li	a5,5
    800030a8:	f6f49ce3          	bne	s1,a5,80003020 <_ZL10pingWorkerPv+0x44>
    800030ac:	f55ff06f          	j	80003000 <_ZL10pingWorkerPv+0x24>
    }

    printString("Thread ");
    800030b0:	00006517          	auipc	a0,0x6
    800030b4:	34850513          	addi	a0,a0,840 # 800093f8 <CONSOLE_STATUS+0x3e8>
    800030b8:	00002097          	auipc	ra,0x2
    800030bc:	584080e7          	jalr	1412(ra) # 8000563c <_Z11printStringPKc>
    putc(name);
    800030c0:	00090513          	mv	a0,s2
    800030c4:	ffffe097          	auipc	ra,0xffffe
    800030c8:	54c080e7          	jalr	1356(ra) # 80001610 <_Z4putcc>
    printString(" finished\n");
    800030cc:	00006517          	auipc	a0,0x6
    800030d0:	36450513          	addi	a0,a0,868 # 80009430 <CONSOLE_STATUS+0x420>
    800030d4:	00002097          	auipc	ra,0x2
    800030d8:	568080e7          	jalr	1384(ra) # 8000563c <_Z11printStringPKc>
}
    800030dc:	01813083          	ld	ra,24(sp)
    800030e0:	01013403          	ld	s0,16(sp)
    800030e4:	00813483          	ld	s1,8(sp)
    800030e8:	00013903          	ld	s2,0(sp)
    800030ec:	02010113          	addi	sp,sp,32
    800030f0:	00008067          	ret

00000000800030f4 <_Z3modv>:

void mod() {
    800030f4:	fc010113          	addi	sp,sp,-64
    800030f8:	02113c23          	sd	ra,56(sp)
    800030fc:	02813823          	sd	s0,48(sp)
    80003100:	02913423          	sd	s1,40(sp)
    80003104:	04010413          	addi	s0,sp,64
    printString("PING test started\n");
    80003108:	00006517          	auipc	a0,0x6
    8000310c:	33850513          	addi	a0,a0,824 # 80009440 <CONSOLE_STATUS+0x430>
    80003110:	00002097          	auipc	ra,0x2
    80003114:	52c080e7          	jalr	1324(ra) # 8000563c <_Z11printStringPKc>

    PingThreadArg argA;
    PingThreadArg argB;
    PingThreadArg argC;

    argA.name = 'A';
    80003118:	04100793          	li	a5,65
    8000311c:	fcf40c23          	sb	a5,-40(s0)
    argB.name = 'B';
    80003120:	04200793          	li	a5,66
    80003124:	fcf40823          	sb	a5,-48(s0)
    argC.name = 'C';
    80003128:	04300793          	li	a5,67
    8000312c:	fcf40423          	sb	a5,-56(s0)

    thread_create(&threadA, pingWorker, &argA);
    80003130:	fd840613          	addi	a2,s0,-40
    80003134:	00000597          	auipc	a1,0x0
    80003138:	ea858593          	addi	a1,a1,-344 # 80002fdc <_ZL10pingWorkerPv>
    8000313c:	00009517          	auipc	a0,0x9
    80003140:	a9450513          	addi	a0,a0,-1388 # 8000bbd0 <_ZL7threadA>
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	140080e7          	jalr	320(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threadB, pingWorker, &argB);
    8000314c:	fd040613          	addi	a2,s0,-48
    80003150:	00000597          	auipc	a1,0x0
    80003154:	e8c58593          	addi	a1,a1,-372 # 80002fdc <_ZL10pingWorkerPv>
    80003158:	00009517          	auipc	a0,0x9
    8000315c:	a8050513          	addi	a0,a0,-1408 # 8000bbd8 <_ZL7threadB>
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	124080e7          	jalr	292(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threadC, pingWorker, &argC);
    80003168:	fc840613          	addi	a2,s0,-56
    8000316c:	00000597          	auipc	a1,0x0
    80003170:	e7058593          	addi	a1,a1,-400 # 80002fdc <_ZL10pingWorkerPv>
    80003174:	00009517          	auipc	a0,0x9
    80003178:	a6c50513          	addi	a0,a0,-1428 # 8000bbe0 <_ZL7threadC>
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	108080e7          	jalr	264(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    for (int i = 0; i < 1000; i++) {
    80003184:	00000493          	li	s1,0
    80003188:	3e700793          	li	a5,999
    8000318c:	0097ca63          	blt	a5,s1,800031a0 <_Z3modv+0xac>
        thread_dispatch();
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	238080e7          	jalr	568(ra) # 800013c8 <_Z15thread_dispatchv>
    for (int i = 0; i < 1000; i++) {
    80003198:	0014849b          	addiw	s1,s1,1
    8000319c:	fedff06f          	j	80003188 <_Z3modv+0x94>
    }

    printString("PING test finished\n");
    800031a0:	00006517          	auipc	a0,0x6
    800031a4:	2b850513          	addi	a0,a0,696 # 80009458 <CONSOLE_STATUS+0x448>
    800031a8:	00002097          	auipc	ra,0x2
    800031ac:	494080e7          	jalr	1172(ra) # 8000563c <_Z11printStringPKc>
    800031b0:	03813083          	ld	ra,56(sp)
    800031b4:	03013403          	ld	s0,48(sp)
    800031b8:	02813483          	ld	s1,40(sp)
    800031bc:	04010113          	addi	sp,sp,64
    800031c0:	00008067          	ret

00000000800031c4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800031c4:	fe010113          	addi	sp,sp,-32
    800031c8:	00113c23          	sd	ra,24(sp)
    800031cc:	00813823          	sd	s0,16(sp)
    800031d0:	00913423          	sd	s1,8(sp)
    800031d4:	01213023          	sd	s2,0(sp)
    800031d8:	02010413          	addi	s0,sp,32
    800031dc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800031e0:	00000913          	li	s2,0
    800031e4:	00c0006f          	j	800031f0 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	1e0080e7          	jalr	480(ra) # 800013c8 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	3e0080e7          	jalr	992(ra) # 800015d0 <_Z4getcv>
    800031f8:	0005059b          	sext.w	a1,a0
    800031fc:	01b00793          	li	a5,27
    80003200:	02f58a63          	beq	a1,a5,80003234 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003204:	0084b503          	ld	a0,8(s1)
    80003208:	00003097          	auipc	ra,0x3
    8000320c:	2ac080e7          	jalr	684(ra) # 800064b4 <_ZN6Buffer3putEi>
        i++;
    80003210:	0019071b          	addiw	a4,s2,1
    80003214:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003218:	0004a683          	lw	a3,0(s1)
    8000321c:	0026979b          	slliw	a5,a3,0x2
    80003220:	00d787bb          	addw	a5,a5,a3
    80003224:	0017979b          	slliw	a5,a5,0x1
    80003228:	02f767bb          	remw	a5,a4,a5
    8000322c:	fc0792e3          	bnez	a5,800031f0 <_ZL16producerKeyboardPv+0x2c>
    80003230:	fb9ff06f          	j	800031e8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003234:	00100793          	li	a5,1
    80003238:	00009717          	auipc	a4,0x9
    8000323c:	9af72823          	sw	a5,-1616(a4) # 8000bbe8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003240:	02100593          	li	a1,33
    80003244:	0084b503          	ld	a0,8(s1)
    80003248:	00003097          	auipc	ra,0x3
    8000324c:	26c080e7          	jalr	620(ra) # 800064b4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003250:	0104b503          	ld	a0,16(s1)
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	274080e7          	jalr	628(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	00813483          	ld	s1,8(sp)
    80003268:	00013903          	ld	s2,0(sp)
    8000326c:	02010113          	addi	sp,sp,32
    80003270:	00008067          	ret

0000000080003274 <_ZL8producerPv>:

static void producer(void *arg) {
    80003274:	fe010113          	addi	sp,sp,-32
    80003278:	00113c23          	sd	ra,24(sp)
    8000327c:	00813823          	sd	s0,16(sp)
    80003280:	00913423          	sd	s1,8(sp)
    80003284:	01213023          	sd	s2,0(sp)
    80003288:	02010413          	addi	s0,sp,32
    8000328c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003290:	00000913          	li	s2,0
    80003294:	00c0006f          	j	800032a0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003298:	ffffe097          	auipc	ra,0xffffe
    8000329c:	130080e7          	jalr	304(ra) # 800013c8 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800032a0:	00009797          	auipc	a5,0x9
    800032a4:	9487a783          	lw	a5,-1720(a5) # 8000bbe8 <_ZL9threadEnd>
    800032a8:	02079e63          	bnez	a5,800032e4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800032ac:	0004a583          	lw	a1,0(s1)
    800032b0:	0305859b          	addiw	a1,a1,48
    800032b4:	0084b503          	ld	a0,8(s1)
    800032b8:	00003097          	auipc	ra,0x3
    800032bc:	1fc080e7          	jalr	508(ra) # 800064b4 <_ZN6Buffer3putEi>
        i++;
    800032c0:	0019071b          	addiw	a4,s2,1
    800032c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800032c8:	0004a683          	lw	a3,0(s1)
    800032cc:	0026979b          	slliw	a5,a3,0x2
    800032d0:	00d787bb          	addw	a5,a5,a3
    800032d4:	0017979b          	slliw	a5,a5,0x1
    800032d8:	02f767bb          	remw	a5,a4,a5
    800032dc:	fc0792e3          	bnez	a5,800032a0 <_ZL8producerPv+0x2c>
    800032e0:	fb9ff06f          	j	80003298 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800032e4:	0104b503          	ld	a0,16(s1)
    800032e8:	ffffe097          	auipc	ra,0xffffe
    800032ec:	1e0080e7          	jalr	480(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    800032f0:	01813083          	ld	ra,24(sp)
    800032f4:	01013403          	ld	s0,16(sp)
    800032f8:	00813483          	ld	s1,8(sp)
    800032fc:	00013903          	ld	s2,0(sp)
    80003300:	02010113          	addi	sp,sp,32
    80003304:	00008067          	ret

0000000080003308 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003308:	fd010113          	addi	sp,sp,-48
    8000330c:	02113423          	sd	ra,40(sp)
    80003310:	02813023          	sd	s0,32(sp)
    80003314:	00913c23          	sd	s1,24(sp)
    80003318:	01213823          	sd	s2,16(sp)
    8000331c:	01313423          	sd	s3,8(sp)
    80003320:	03010413          	addi	s0,sp,48
    80003324:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003328:	00000993          	li	s3,0
    8000332c:	01c0006f          	j	80003348 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	098080e7          	jalr	152(ra) # 800013c8 <_Z15thread_dispatchv>
    80003338:	0500006f          	j	80003388 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000333c:	00a00513          	li	a0,10
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	2d0080e7          	jalr	720(ra) # 80001610 <_Z4putcc>
    while (!threadEnd) {
    80003348:	00009797          	auipc	a5,0x9
    8000334c:	8a07a783          	lw	a5,-1888(a5) # 8000bbe8 <_ZL9threadEnd>
    80003350:	06079063          	bnez	a5,800033b0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003354:	00893503          	ld	a0,8(s2)
    80003358:	00003097          	auipc	ra,0x3
    8000335c:	1ec080e7          	jalr	492(ra) # 80006544 <_ZN6Buffer3getEv>
        i++;
    80003360:	0019849b          	addiw	s1,s3,1
    80003364:	0004899b          	sext.w	s3,s1
        putc(key);
    80003368:	0ff57513          	andi	a0,a0,255
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	2a4080e7          	jalr	676(ra) # 80001610 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003374:	00092703          	lw	a4,0(s2)
    80003378:	0027179b          	slliw	a5,a4,0x2
    8000337c:	00e787bb          	addw	a5,a5,a4
    80003380:	02f4e7bb          	remw	a5,s1,a5
    80003384:	fa0786e3          	beqz	a5,80003330 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003388:	05000793          	li	a5,80
    8000338c:	02f4e4bb          	remw	s1,s1,a5
    80003390:	fa049ce3          	bnez	s1,80003348 <_ZL8consumerPv+0x40>
    80003394:	fa9ff06f          	j	8000333c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003398:	00893503          	ld	a0,8(s2)
    8000339c:	00003097          	auipc	ra,0x3
    800033a0:	1a8080e7          	jalr	424(ra) # 80006544 <_ZN6Buffer3getEv>
        putc(key);
    800033a4:	0ff57513          	andi	a0,a0,255
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	268080e7          	jalr	616(ra) # 80001610 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800033b0:	00893503          	ld	a0,8(s2)
    800033b4:	00003097          	auipc	ra,0x3
    800033b8:	21c080e7          	jalr	540(ra) # 800065d0 <_ZN6Buffer6getCntEv>
    800033bc:	fca04ee3          	bgtz	a0,80003398 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800033c0:	01093503          	ld	a0,16(s2)
    800033c4:	ffffe097          	auipc	ra,0xffffe
    800033c8:	104080e7          	jalr	260(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    800033cc:	02813083          	ld	ra,40(sp)
    800033d0:	02013403          	ld	s0,32(sp)
    800033d4:	01813483          	ld	s1,24(sp)
    800033d8:	01013903          	ld	s2,16(sp)
    800033dc:	00813983          	ld	s3,8(sp)
    800033e0:	03010113          	addi	sp,sp,48
    800033e4:	00008067          	ret

00000000800033e8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800033e8:	f9010113          	addi	sp,sp,-112
    800033ec:	06113423          	sd	ra,104(sp)
    800033f0:	06813023          	sd	s0,96(sp)
    800033f4:	04913c23          	sd	s1,88(sp)
    800033f8:	05213823          	sd	s2,80(sp)
    800033fc:	05313423          	sd	s3,72(sp)
    80003400:	05413023          	sd	s4,64(sp)
    80003404:	03513c23          	sd	s5,56(sp)
    80003408:	03613823          	sd	s6,48(sp)
    8000340c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003410:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003414:	00006517          	auipc	a0,0x6
    80003418:	05c50513          	addi	a0,a0,92 # 80009470 <CONSOLE_STATUS+0x460>
    8000341c:	00002097          	auipc	ra,0x2
    80003420:	220080e7          	jalr	544(ra) # 8000563c <_Z11printStringPKc>
    getString(input, 30);
    80003424:	01e00593          	li	a1,30
    80003428:	fa040493          	addi	s1,s0,-96
    8000342c:	00048513          	mv	a0,s1
    80003430:	00002097          	auipc	ra,0x2
    80003434:	294080e7          	jalr	660(ra) # 800056c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003438:	00048513          	mv	a0,s1
    8000343c:	00002097          	auipc	ra,0x2
    80003440:	360080e7          	jalr	864(ra) # 8000579c <_Z11stringToIntPKc>
    80003444:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003448:	00006517          	auipc	a0,0x6
    8000344c:	04850513          	addi	a0,a0,72 # 80009490 <CONSOLE_STATUS+0x480>
    80003450:	00002097          	auipc	ra,0x2
    80003454:	1ec080e7          	jalr	492(ra) # 8000563c <_Z11printStringPKc>
    getString(input, 30);
    80003458:	01e00593          	li	a1,30
    8000345c:	00048513          	mv	a0,s1
    80003460:	00002097          	auipc	ra,0x2
    80003464:	264080e7          	jalr	612(ra) # 800056c4 <_Z9getStringPci>
    n = stringToInt(input);
    80003468:	00048513          	mv	a0,s1
    8000346c:	00002097          	auipc	ra,0x2
    80003470:	330080e7          	jalr	816(ra) # 8000579c <_Z11stringToIntPKc>
    80003474:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003478:	00006517          	auipc	a0,0x6
    8000347c:	03850513          	addi	a0,a0,56 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003480:	00002097          	auipc	ra,0x2
    80003484:	1bc080e7          	jalr	444(ra) # 8000563c <_Z11printStringPKc>
    80003488:	00000613          	li	a2,0
    8000348c:	00a00593          	li	a1,10
    80003490:	00090513          	mv	a0,s2
    80003494:	00002097          	auipc	ra,0x2
    80003498:	358080e7          	jalr	856(ra) # 800057ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    8000349c:	00006517          	auipc	a0,0x6
    800034a0:	02c50513          	addi	a0,a0,44 # 800094c8 <CONSOLE_STATUS+0x4b8>
    800034a4:	00002097          	auipc	ra,0x2
    800034a8:	198080e7          	jalr	408(ra) # 8000563c <_Z11printStringPKc>
    800034ac:	00000613          	li	a2,0
    800034b0:	00a00593          	li	a1,10
    800034b4:	00048513          	mv	a0,s1
    800034b8:	00002097          	auipc	ra,0x2
    800034bc:	334080e7          	jalr	820(ra) # 800057ec <_Z8printIntiii>
    printString(".\n");
    800034c0:	00006517          	auipc	a0,0x6
    800034c4:	02050513          	addi	a0,a0,32 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800034c8:	00002097          	auipc	ra,0x2
    800034cc:	174080e7          	jalr	372(ra) # 8000563c <_Z11printStringPKc>
    if(threadNum > n) {
    800034d0:	0324c463          	blt	s1,s2,800034f8 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800034d4:	03205c63          	blez	s2,8000350c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800034d8:	03800513          	li	a0,56
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	158080e7          	jalr	344(ra) # 80002634 <_Znwm>
    800034e4:	00050a13          	mv	s4,a0
    800034e8:	00048593          	mv	a1,s1
    800034ec:	00003097          	auipc	ra,0x3
    800034f0:	f2c080e7          	jalr	-212(ra) # 80006418 <_ZN6BufferC1Ei>
    800034f4:	0300006f          	j	80003524 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800034f8:	00006517          	auipc	a0,0x6
    800034fc:	ff050513          	addi	a0,a0,-16 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003500:	00002097          	auipc	ra,0x2
    80003504:	13c080e7          	jalr	316(ra) # 8000563c <_Z11printStringPKc>
        return;
    80003508:	0140006f          	j	8000351c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000350c:	00006517          	auipc	a0,0x6
    80003510:	01c50513          	addi	a0,a0,28 # 80009528 <CONSOLE_STATUS+0x518>
    80003514:	00002097          	auipc	ra,0x2
    80003518:	128080e7          	jalr	296(ra) # 8000563c <_Z11printStringPKc>
        return;
    8000351c:	000b0113          	mv	sp,s6
    80003520:	1500006f          	j	80003670 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003524:	00000593          	li	a1,0
    80003528:	00008517          	auipc	a0,0x8
    8000352c:	6c850513          	addi	a0,a0,1736 # 8000bbf0 <_ZL10waitForAll>
    80003530:	ffffe097          	auipc	ra,0xffffe
    80003534:	ed4080e7          	jalr	-300(ra) # 80001404 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003538:	00391793          	slli	a5,s2,0x3
    8000353c:	00f78793          	addi	a5,a5,15
    80003540:	ff07f793          	andi	a5,a5,-16
    80003544:	40f10133          	sub	sp,sp,a5
    80003548:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    8000354c:	0019071b          	addiw	a4,s2,1
    80003550:	00171793          	slli	a5,a4,0x1
    80003554:	00e787b3          	add	a5,a5,a4
    80003558:	00379793          	slli	a5,a5,0x3
    8000355c:	00f78793          	addi	a5,a5,15
    80003560:	ff07f793          	andi	a5,a5,-16
    80003564:	40f10133          	sub	sp,sp,a5
    80003568:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    8000356c:	00191613          	slli	a2,s2,0x1
    80003570:	012607b3          	add	a5,a2,s2
    80003574:	00379793          	slli	a5,a5,0x3
    80003578:	00f987b3          	add	a5,s3,a5
    8000357c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003580:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003584:	00008717          	auipc	a4,0x8
    80003588:	66c73703          	ld	a4,1644(a4) # 8000bbf0 <_ZL10waitForAll>
    8000358c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003590:	00078613          	mv	a2,a5
    80003594:	00000597          	auipc	a1,0x0
    80003598:	d7458593          	addi	a1,a1,-652 # 80003308 <_ZL8consumerPv>
    8000359c:	f9840513          	addi	a0,s0,-104
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	ce4080e7          	jalr	-796(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800035a8:	00000493          	li	s1,0
    800035ac:	0280006f          	j	800035d4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800035b0:	00000597          	auipc	a1,0x0
    800035b4:	c1458593          	addi	a1,a1,-1004 # 800031c4 <_ZL16producerKeyboardPv>
                      data + i);
    800035b8:	00179613          	slli	a2,a5,0x1
    800035bc:	00f60633          	add	a2,a2,a5
    800035c0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800035c4:	00c98633          	add	a2,s3,a2
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	cbc080e7          	jalr	-836(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800035d0:	0014849b          	addiw	s1,s1,1
    800035d4:	0524d263          	bge	s1,s2,80003618 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800035d8:	00149793          	slli	a5,s1,0x1
    800035dc:	009787b3          	add	a5,a5,s1
    800035e0:	00379793          	slli	a5,a5,0x3
    800035e4:	00f987b3          	add	a5,s3,a5
    800035e8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800035ec:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800035f0:	00008717          	auipc	a4,0x8
    800035f4:	60073703          	ld	a4,1536(a4) # 8000bbf0 <_ZL10waitForAll>
    800035f8:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800035fc:	00048793          	mv	a5,s1
    80003600:	00349513          	slli	a0,s1,0x3
    80003604:	00aa8533          	add	a0,s5,a0
    80003608:	fa9054e3          	blez	s1,800035b0 <_Z22producerConsumer_C_APIv+0x1c8>
    8000360c:	00000597          	auipc	a1,0x0
    80003610:	c6858593          	addi	a1,a1,-920 # 80003274 <_ZL8producerPv>
    80003614:	fa5ff06f          	j	800035b8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003618:	ffffe097          	auipc	ra,0xffffe
    8000361c:	db0080e7          	jalr	-592(ra) # 800013c8 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003620:	00000493          	li	s1,0
    80003624:	00994e63          	blt	s2,s1,80003640 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003628:	00008517          	auipc	a0,0x8
    8000362c:	5c853503          	ld	a0,1480(a0) # 8000bbf0 <_ZL10waitForAll>
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	e58080e7          	jalr	-424(ra) # 80001488 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003638:	0014849b          	addiw	s1,s1,1
    8000363c:	fe9ff06f          	j	80003624 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003640:	00008517          	auipc	a0,0x8
    80003644:	5b053503          	ld	a0,1456(a0) # 8000bbf0 <_ZL10waitForAll>
    80003648:	ffffe097          	auipc	ra,0xffffe
    8000364c:	e00080e7          	jalr	-512(ra) # 80001448 <_Z9sem_closeP4_sem>
    delete buffer;
    80003650:	000a0e63          	beqz	s4,8000366c <_Z22producerConsumer_C_APIv+0x284>
    80003654:	000a0513          	mv	a0,s4
    80003658:	00003097          	auipc	ra,0x3
    8000365c:	000080e7          	jalr	ra # 80006658 <_ZN6BufferD1Ev>
    80003660:	000a0513          	mv	a0,s4
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	020080e7          	jalr	32(ra) # 80002684 <_ZdlPv>
    8000366c:	000b0113          	mv	sp,s6

}
    80003670:	f9040113          	addi	sp,s0,-112
    80003674:	06813083          	ld	ra,104(sp)
    80003678:	06013403          	ld	s0,96(sp)
    8000367c:	05813483          	ld	s1,88(sp)
    80003680:	05013903          	ld	s2,80(sp)
    80003684:	04813983          	ld	s3,72(sp)
    80003688:	04013a03          	ld	s4,64(sp)
    8000368c:	03813a83          	ld	s5,56(sp)
    80003690:	03013b03          	ld	s6,48(sp)
    80003694:	07010113          	addi	sp,sp,112
    80003698:	00008067          	ret
    8000369c:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800036a0:	000a0513          	mv	a0,s4
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	fe0080e7          	jalr	-32(ra) # 80002684 <_ZdlPv>
    800036ac:	00048513          	mv	a0,s1
    800036b0:	00009097          	auipc	ra,0x9
    800036b4:	658080e7          	jalr	1624(ra) # 8000cd08 <_Unwind_Resume>

00000000800036b8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800036b8:	fe010113          	addi	sp,sp,-32
    800036bc:	00113c23          	sd	ra,24(sp)
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00913423          	sd	s1,8(sp)
    800036c8:	01213023          	sd	s2,0(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800036d4:	00100793          	li	a5,1
    800036d8:	02a7f863          	bgeu	a5,a0,80003708 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800036dc:	00a00793          	li	a5,10
    800036e0:	02f577b3          	remu	a5,a0,a5
    800036e4:	02078e63          	beqz	a5,80003720 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800036e8:	fff48513          	addi	a0,s1,-1
    800036ec:	00000097          	auipc	ra,0x0
    800036f0:	fcc080e7          	jalr	-52(ra) # 800036b8 <_ZL9fibonaccim>
    800036f4:	00050913          	mv	s2,a0
    800036f8:	ffe48513          	addi	a0,s1,-2
    800036fc:	00000097          	auipc	ra,0x0
    80003700:	fbc080e7          	jalr	-68(ra) # 800036b8 <_ZL9fibonaccim>
    80003704:	00a90533          	add	a0,s2,a0
}
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	00013903          	ld	s2,0(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	ca8080e7          	jalr	-856(ra) # 800013c8 <_Z15thread_dispatchv>
    80003728:	fc1ff06f          	j	800036e8 <_ZL9fibonaccim+0x30>

000000008000372c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000372c:	fe010113          	addi	sp,sp,-32
    80003730:	00113c23          	sd	ra,24(sp)
    80003734:	00813823          	sd	s0,16(sp)
    80003738:	00913423          	sd	s1,8(sp)
    8000373c:	01213023          	sd	s2,0(sp)
    80003740:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003744:	00000913          	li	s2,0
    80003748:	0380006f          	j	80003780 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	c7c080e7          	jalr	-900(ra) # 800013c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003754:	00148493          	addi	s1,s1,1
    80003758:	000027b7          	lui	a5,0x2
    8000375c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003760:	0097ee63          	bltu	a5,s1,8000377c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003764:	00000713          	li	a4,0
    80003768:	000077b7          	lui	a5,0x7
    8000376c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003770:	fce7eee3          	bltu	a5,a4,8000374c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003774:	00170713          	addi	a4,a4,1
    80003778:	ff1ff06f          	j	80003768 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000377c:	00190913          	addi	s2,s2,1
    80003780:	00900793          	li	a5,9
    80003784:	0527e063          	bltu	a5,s2,800037c4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003788:	00006517          	auipc	a0,0x6
    8000378c:	dd050513          	addi	a0,a0,-560 # 80009558 <CONSOLE_STATUS+0x548>
    80003790:	00002097          	auipc	ra,0x2
    80003794:	eac080e7          	jalr	-340(ra) # 8000563c <_Z11printStringPKc>
    80003798:	00000613          	li	a2,0
    8000379c:	00a00593          	li	a1,10
    800037a0:	0009051b          	sext.w	a0,s2
    800037a4:	00002097          	auipc	ra,0x2
    800037a8:	048080e7          	jalr	72(ra) # 800057ec <_Z8printIntiii>
    800037ac:	00006517          	auipc	a0,0x6
    800037b0:	b7c50513          	addi	a0,a0,-1156 # 80009328 <CONSOLE_STATUS+0x318>
    800037b4:	00002097          	auipc	ra,0x2
    800037b8:	e88080e7          	jalr	-376(ra) # 8000563c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037bc:	00000493          	li	s1,0
    800037c0:	f99ff06f          	j	80003758 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	d9c50513          	addi	a0,a0,-612 # 80009560 <CONSOLE_STATUS+0x550>
    800037cc:	00002097          	auipc	ra,0x2
    800037d0:	e70080e7          	jalr	-400(ra) # 8000563c <_Z11printStringPKc>
    finishedA = true;
    800037d4:	00100793          	li	a5,1
    800037d8:	00008717          	auipc	a4,0x8
    800037dc:	42f70023          	sb	a5,1056(a4) # 8000bbf8 <_ZL9finishedA>
}
    800037e0:	01813083          	ld	ra,24(sp)
    800037e4:	01013403          	ld	s0,16(sp)
    800037e8:	00813483          	ld	s1,8(sp)
    800037ec:	00013903          	ld	s2,0(sp)
    800037f0:	02010113          	addi	sp,sp,32
    800037f4:	00008067          	ret

00000000800037f8 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800037f8:	fe010113          	addi	sp,sp,-32
    800037fc:	00113c23          	sd	ra,24(sp)
    80003800:	00813823          	sd	s0,16(sp)
    80003804:	00913423          	sd	s1,8(sp)
    80003808:	01213023          	sd	s2,0(sp)
    8000380c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003810:	00000913          	li	s2,0
    80003814:	0380006f          	j	8000384c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003818:	ffffe097          	auipc	ra,0xffffe
    8000381c:	bb0080e7          	jalr	-1104(ra) # 800013c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003820:	00148493          	addi	s1,s1,1
    80003824:	000027b7          	lui	a5,0x2
    80003828:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000382c:	0097ee63          	bltu	a5,s1,80003848 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003830:	00000713          	li	a4,0
    80003834:	000077b7          	lui	a5,0x7
    80003838:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000383c:	fce7eee3          	bltu	a5,a4,80003818 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003840:	00170713          	addi	a4,a4,1
    80003844:	ff1ff06f          	j	80003834 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003848:	00190913          	addi	s2,s2,1
    8000384c:	00f00793          	li	a5,15
    80003850:	0527e063          	bltu	a5,s2,80003890 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003854:	00006517          	auipc	a0,0x6
    80003858:	d1c50513          	addi	a0,a0,-740 # 80009570 <CONSOLE_STATUS+0x560>
    8000385c:	00002097          	auipc	ra,0x2
    80003860:	de0080e7          	jalr	-544(ra) # 8000563c <_Z11printStringPKc>
    80003864:	00000613          	li	a2,0
    80003868:	00a00593          	li	a1,10
    8000386c:	0009051b          	sext.w	a0,s2
    80003870:	00002097          	auipc	ra,0x2
    80003874:	f7c080e7          	jalr	-132(ra) # 800057ec <_Z8printIntiii>
    80003878:	00006517          	auipc	a0,0x6
    8000387c:	ab050513          	addi	a0,a0,-1360 # 80009328 <CONSOLE_STATUS+0x318>
    80003880:	00002097          	auipc	ra,0x2
    80003884:	dbc080e7          	jalr	-580(ra) # 8000563c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003888:	00000493          	li	s1,0
    8000388c:	f99ff06f          	j	80003824 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003890:	00006517          	auipc	a0,0x6
    80003894:	ce850513          	addi	a0,a0,-792 # 80009578 <CONSOLE_STATUS+0x568>
    80003898:	00002097          	auipc	ra,0x2
    8000389c:	da4080e7          	jalr	-604(ra) # 8000563c <_Z11printStringPKc>
    finishedB = true;
    800038a0:	00100793          	li	a5,1
    800038a4:	00008717          	auipc	a4,0x8
    800038a8:	34f70aa3          	sb	a5,853(a4) # 8000bbf9 <_ZL9finishedB>
    thread_dispatch();
    800038ac:	ffffe097          	auipc	ra,0xffffe
    800038b0:	b1c080e7          	jalr	-1252(ra) # 800013c8 <_Z15thread_dispatchv>
}
    800038b4:	01813083          	ld	ra,24(sp)
    800038b8:	01013403          	ld	s0,16(sp)
    800038bc:	00813483          	ld	s1,8(sp)
    800038c0:	00013903          	ld	s2,0(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret

00000000800038cc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00113c23          	sd	ra,24(sp)
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	01213023          	sd	s2,0(sp)
    800038e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800038e4:	00000493          	li	s1,0
    800038e8:	0400006f          	j	80003928 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800038ec:	00006517          	auipc	a0,0x6
    800038f0:	c9c50513          	addi	a0,a0,-868 # 80009588 <CONSOLE_STATUS+0x578>
    800038f4:	00002097          	auipc	ra,0x2
    800038f8:	d48080e7          	jalr	-696(ra) # 8000563c <_Z11printStringPKc>
    800038fc:	00000613          	li	a2,0
    80003900:	00a00593          	li	a1,10
    80003904:	00048513          	mv	a0,s1
    80003908:	00002097          	auipc	ra,0x2
    8000390c:	ee4080e7          	jalr	-284(ra) # 800057ec <_Z8printIntiii>
    80003910:	00006517          	auipc	a0,0x6
    80003914:	a1850513          	addi	a0,a0,-1512 # 80009328 <CONSOLE_STATUS+0x318>
    80003918:	00002097          	auipc	ra,0x2
    8000391c:	d24080e7          	jalr	-732(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003920:	0014849b          	addiw	s1,s1,1
    80003924:	0ff4f493          	andi	s1,s1,255
    80003928:	00200793          	li	a5,2
    8000392c:	fc97f0e3          	bgeu	a5,s1,800038ec <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003930:	00006517          	auipc	a0,0x6
    80003934:	c6050513          	addi	a0,a0,-928 # 80009590 <CONSOLE_STATUS+0x580>
    80003938:	00002097          	auipc	ra,0x2
    8000393c:	d04080e7          	jalr	-764(ra) # 8000563c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003940:	00700313          	li	t1,7
    thread_dispatch();
    80003944:	ffffe097          	auipc	ra,0xffffe
    80003948:	a84080e7          	jalr	-1404(ra) # 800013c8 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000394c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003950:	00006517          	auipc	a0,0x6
    80003954:	c5050513          	addi	a0,a0,-944 # 800095a0 <CONSOLE_STATUS+0x590>
    80003958:	00002097          	auipc	ra,0x2
    8000395c:	ce4080e7          	jalr	-796(ra) # 8000563c <_Z11printStringPKc>
    80003960:	00000613          	li	a2,0
    80003964:	00a00593          	li	a1,10
    80003968:	0009051b          	sext.w	a0,s2
    8000396c:	00002097          	auipc	ra,0x2
    80003970:	e80080e7          	jalr	-384(ra) # 800057ec <_Z8printIntiii>
    80003974:	00006517          	auipc	a0,0x6
    80003978:	9b450513          	addi	a0,a0,-1612 # 80009328 <CONSOLE_STATUS+0x318>
    8000397c:	00002097          	auipc	ra,0x2
    80003980:	cc0080e7          	jalr	-832(ra) # 8000563c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003984:	00c00513          	li	a0,12
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	d30080e7          	jalr	-720(ra) # 800036b8 <_ZL9fibonaccim>
    80003990:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003994:	00006517          	auipc	a0,0x6
    80003998:	c1450513          	addi	a0,a0,-1004 # 800095a8 <CONSOLE_STATUS+0x598>
    8000399c:	00002097          	auipc	ra,0x2
    800039a0:	ca0080e7          	jalr	-864(ra) # 8000563c <_Z11printStringPKc>
    800039a4:	00000613          	li	a2,0
    800039a8:	00a00593          	li	a1,10
    800039ac:	0009051b          	sext.w	a0,s2
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	e3c080e7          	jalr	-452(ra) # 800057ec <_Z8printIntiii>
    800039b8:	00006517          	auipc	a0,0x6
    800039bc:	97050513          	addi	a0,a0,-1680 # 80009328 <CONSOLE_STATUS+0x318>
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	c7c080e7          	jalr	-900(ra) # 8000563c <_Z11printStringPKc>
    800039c8:	0400006f          	j	80003a08 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800039cc:	00006517          	auipc	a0,0x6
    800039d0:	bbc50513          	addi	a0,a0,-1092 # 80009588 <CONSOLE_STATUS+0x578>
    800039d4:	00002097          	auipc	ra,0x2
    800039d8:	c68080e7          	jalr	-920(ra) # 8000563c <_Z11printStringPKc>
    800039dc:	00000613          	li	a2,0
    800039e0:	00a00593          	li	a1,10
    800039e4:	00048513          	mv	a0,s1
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	e04080e7          	jalr	-508(ra) # 800057ec <_Z8printIntiii>
    800039f0:	00006517          	auipc	a0,0x6
    800039f4:	93850513          	addi	a0,a0,-1736 # 80009328 <CONSOLE_STATUS+0x318>
    800039f8:	00002097          	auipc	ra,0x2
    800039fc:	c44080e7          	jalr	-956(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003a00:	0014849b          	addiw	s1,s1,1
    80003a04:	0ff4f493          	andi	s1,s1,255
    80003a08:	00500793          	li	a5,5
    80003a0c:	fc97f0e3          	bgeu	a5,s1,800039cc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003a10:	00006517          	auipc	a0,0x6
    80003a14:	b5050513          	addi	a0,a0,-1200 # 80009560 <CONSOLE_STATUS+0x550>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	c24080e7          	jalr	-988(ra) # 8000563c <_Z11printStringPKc>
    finishedC = true;
    80003a20:	00100793          	li	a5,1
    80003a24:	00008717          	auipc	a4,0x8
    80003a28:	1cf70b23          	sb	a5,470(a4) # 8000bbfa <_ZL9finishedC>
    thread_dispatch();
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	99c080e7          	jalr	-1636(ra) # 800013c8 <_Z15thread_dispatchv>
}
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00813483          	ld	s1,8(sp)
    80003a40:	00013903          	ld	s2,0(sp)
    80003a44:	02010113          	addi	sp,sp,32
    80003a48:	00008067          	ret

0000000080003a4c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003a4c:	fe010113          	addi	sp,sp,-32
    80003a50:	00113c23          	sd	ra,24(sp)
    80003a54:	00813823          	sd	s0,16(sp)
    80003a58:	00913423          	sd	s1,8(sp)
    80003a5c:	01213023          	sd	s2,0(sp)
    80003a60:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003a64:	00a00493          	li	s1,10
    80003a68:	0400006f          	j	80003aa8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	b4c50513          	addi	a0,a0,-1204 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80003a74:	00002097          	auipc	ra,0x2
    80003a78:	bc8080e7          	jalr	-1080(ra) # 8000563c <_Z11printStringPKc>
    80003a7c:	00000613          	li	a2,0
    80003a80:	00a00593          	li	a1,10
    80003a84:	00048513          	mv	a0,s1
    80003a88:	00002097          	auipc	ra,0x2
    80003a8c:	d64080e7          	jalr	-668(ra) # 800057ec <_Z8printIntiii>
    80003a90:	00006517          	auipc	a0,0x6
    80003a94:	89850513          	addi	a0,a0,-1896 # 80009328 <CONSOLE_STATUS+0x318>
    80003a98:	00002097          	auipc	ra,0x2
    80003a9c:	ba4080e7          	jalr	-1116(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003aa0:	0014849b          	addiw	s1,s1,1
    80003aa4:	0ff4f493          	andi	s1,s1,255
    80003aa8:	00c00793          	li	a5,12
    80003aac:	fc97f0e3          	bgeu	a5,s1,80003a6c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003ab0:	00006517          	auipc	a0,0x6
    80003ab4:	b1050513          	addi	a0,a0,-1264 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	b84080e7          	jalr	-1148(ra) # 8000563c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ac0:	00500313          	li	t1,5
    thread_dispatch();
    80003ac4:	ffffe097          	auipc	ra,0xffffe
    80003ac8:	904080e7          	jalr	-1788(ra) # 800013c8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003acc:	01000513          	li	a0,16
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	be8080e7          	jalr	-1048(ra) # 800036b8 <_ZL9fibonaccim>
    80003ad8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003adc:	00006517          	auipc	a0,0x6
    80003ae0:	af450513          	addi	a0,a0,-1292 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80003ae4:	00002097          	auipc	ra,0x2
    80003ae8:	b58080e7          	jalr	-1192(ra) # 8000563c <_Z11printStringPKc>
    80003aec:	00000613          	li	a2,0
    80003af0:	00a00593          	li	a1,10
    80003af4:	0009051b          	sext.w	a0,s2
    80003af8:	00002097          	auipc	ra,0x2
    80003afc:	cf4080e7          	jalr	-780(ra) # 800057ec <_Z8printIntiii>
    80003b00:	00006517          	auipc	a0,0x6
    80003b04:	82850513          	addi	a0,a0,-2008 # 80009328 <CONSOLE_STATUS+0x318>
    80003b08:	00002097          	auipc	ra,0x2
    80003b0c:	b34080e7          	jalr	-1228(ra) # 8000563c <_Z11printStringPKc>
    80003b10:	0400006f          	j	80003b50 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b14:	00006517          	auipc	a0,0x6
    80003b18:	aa450513          	addi	a0,a0,-1372 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	b20080e7          	jalr	-1248(ra) # 8000563c <_Z11printStringPKc>
    80003b24:	00000613          	li	a2,0
    80003b28:	00a00593          	li	a1,10
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	cbc080e7          	jalr	-836(ra) # 800057ec <_Z8printIntiii>
    80003b38:	00005517          	auipc	a0,0x5
    80003b3c:	7f050513          	addi	a0,a0,2032 # 80009328 <CONSOLE_STATUS+0x318>
    80003b40:	00002097          	auipc	ra,0x2
    80003b44:	afc080e7          	jalr	-1284(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003b48:	0014849b          	addiw	s1,s1,1
    80003b4c:	0ff4f493          	andi	s1,s1,255
    80003b50:	00f00793          	li	a5,15
    80003b54:	fc97f0e3          	bgeu	a5,s1,80003b14 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003b58:	00006517          	auipc	a0,0x6
    80003b5c:	a8850513          	addi	a0,a0,-1400 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	adc080e7          	jalr	-1316(ra) # 8000563c <_Z11printStringPKc>
    finishedD = true;
    80003b68:	00100793          	li	a5,1
    80003b6c:	00008717          	auipc	a4,0x8
    80003b70:	08f707a3          	sb	a5,143(a4) # 8000bbfb <_ZL9finishedD>
    thread_dispatch();
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	854080e7          	jalr	-1964(ra) # 800013c8 <_Z15thread_dispatchv>
}
    80003b7c:	01813083          	ld	ra,24(sp)
    80003b80:	01013403          	ld	s0,16(sp)
    80003b84:	00813483          	ld	s1,8(sp)
    80003b88:	00013903          	ld	s2,0(sp)
    80003b8c:	02010113          	addi	sp,sp,32
    80003b90:	00008067          	ret

0000000080003b94 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003b94:	fc010113          	addi	sp,sp,-64
    80003b98:	02113c23          	sd	ra,56(sp)
    80003b9c:	02813823          	sd	s0,48(sp)
    80003ba0:	02913423          	sd	s1,40(sp)
    80003ba4:	03213023          	sd	s2,32(sp)
    80003ba8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003bac:	02000513          	li	a0,32
    80003bb0:	fffff097          	auipc	ra,0xfffff
    80003bb4:	a84080e7          	jalr	-1404(ra) # 80002634 <_Znwm>
    80003bb8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003bbc:	fffff097          	auipc	ra,0xfffff
    80003bc0:	d50080e7          	jalr	-688(ra) # 8000290c <_ZN6ThreadC1Ev>
    80003bc4:	00008797          	auipc	a5,0x8
    80003bc8:	dbc78793          	addi	a5,a5,-580 # 8000b980 <_ZTV7WorkerA+0x10>
    80003bcc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003bd0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003bd4:	00006517          	auipc	a0,0x6
    80003bd8:	a1c50513          	addi	a0,a0,-1508 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003bdc:	00002097          	auipc	ra,0x2
    80003be0:	a60080e7          	jalr	-1440(ra) # 8000563c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003be4:	02000513          	li	a0,32
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	a4c080e7          	jalr	-1460(ra) # 80002634 <_Znwm>
    80003bf0:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	d18080e7          	jalr	-744(ra) # 8000290c <_ZN6ThreadC1Ev>
    80003bfc:	00008797          	auipc	a5,0x8
    80003c00:	dac78793          	addi	a5,a5,-596 # 8000b9a8 <_ZTV7WorkerB+0x10>
    80003c04:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003c08:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003c0c:	00006517          	auipc	a0,0x6
    80003c10:	9fc50513          	addi	a0,a0,-1540 # 80009608 <CONSOLE_STATUS+0x5f8>
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	a28080e7          	jalr	-1496(ra) # 8000563c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003c1c:	02000513          	li	a0,32
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	a14080e7          	jalr	-1516(ra) # 80002634 <_Znwm>
    80003c28:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	ce0080e7          	jalr	-800(ra) # 8000290c <_ZN6ThreadC1Ev>
    80003c34:	00008797          	auipc	a5,0x8
    80003c38:	d9c78793          	addi	a5,a5,-612 # 8000b9d0 <_ZTV7WorkerC+0x10>
    80003c3c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003c40:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003c44:	00006517          	auipc	a0,0x6
    80003c48:	9dc50513          	addi	a0,a0,-1572 # 80009620 <CONSOLE_STATUS+0x610>
    80003c4c:	00002097          	auipc	ra,0x2
    80003c50:	9f0080e7          	jalr	-1552(ra) # 8000563c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003c54:	02000513          	li	a0,32
    80003c58:	fffff097          	auipc	ra,0xfffff
    80003c5c:	9dc080e7          	jalr	-1572(ra) # 80002634 <_Znwm>
    80003c60:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003c64:	fffff097          	auipc	ra,0xfffff
    80003c68:	ca8080e7          	jalr	-856(ra) # 8000290c <_ZN6ThreadC1Ev>
    80003c6c:	00008797          	auipc	a5,0x8
    80003c70:	d8c78793          	addi	a5,a5,-628 # 8000b9f8 <_ZTV7WorkerD+0x10>
    80003c74:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003c78:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003c7c:	00006517          	auipc	a0,0x6
    80003c80:	9bc50513          	addi	a0,a0,-1604 # 80009638 <CONSOLE_STATUS+0x628>
    80003c84:	00002097          	auipc	ra,0x2
    80003c88:	9b8080e7          	jalr	-1608(ra) # 8000563c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003c8c:	00000493          	li	s1,0
    80003c90:	00300793          	li	a5,3
    80003c94:	0297c663          	blt	a5,s1,80003cc0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003c98:	00349793          	slli	a5,s1,0x3
    80003c9c:	fe040713          	addi	a4,s0,-32
    80003ca0:	00f707b3          	add	a5,a4,a5
    80003ca4:	fe07b503          	ld	a0,-32(a5)
    80003ca8:	fffff097          	auipc	ra,0xfffff
    80003cac:	c94080e7          	jalr	-876(ra) # 8000293c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003cb0:	0014849b          	addiw	s1,s1,1
    80003cb4:	fddff06f          	j	80003c90 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003cb8:	fffff097          	auipc	ra,0xfffff
    80003cbc:	cd8080e7          	jalr	-808(ra) # 80002990 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003cc0:	00008797          	auipc	a5,0x8
    80003cc4:	f387c783          	lbu	a5,-200(a5) # 8000bbf8 <_ZL9finishedA>
    80003cc8:	fe0788e3          	beqz	a5,80003cb8 <_Z20Threads_CPP_API_testv+0x124>
    80003ccc:	00008797          	auipc	a5,0x8
    80003cd0:	f2d7c783          	lbu	a5,-211(a5) # 8000bbf9 <_ZL9finishedB>
    80003cd4:	fe0782e3          	beqz	a5,80003cb8 <_Z20Threads_CPP_API_testv+0x124>
    80003cd8:	00008797          	auipc	a5,0x8
    80003cdc:	f227c783          	lbu	a5,-222(a5) # 8000bbfa <_ZL9finishedC>
    80003ce0:	fc078ce3          	beqz	a5,80003cb8 <_Z20Threads_CPP_API_testv+0x124>
    80003ce4:	00008797          	auipc	a5,0x8
    80003ce8:	f177c783          	lbu	a5,-233(a5) # 8000bbfb <_ZL9finishedD>
    80003cec:	fc0786e3          	beqz	a5,80003cb8 <_Z20Threads_CPP_API_testv+0x124>
    80003cf0:	fc040493          	addi	s1,s0,-64
    80003cf4:	0080006f          	j	80003cfc <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003cf8:	00848493          	addi	s1,s1,8
    80003cfc:	fe040793          	addi	a5,s0,-32
    80003d00:	08f48663          	beq	s1,a5,80003d8c <_Z20Threads_CPP_API_testv+0x1f8>
    80003d04:	0004b503          	ld	a0,0(s1)
    80003d08:	fe0508e3          	beqz	a0,80003cf8 <_Z20Threads_CPP_API_testv+0x164>
    80003d0c:	00053783          	ld	a5,0(a0)
    80003d10:	0087b783          	ld	a5,8(a5)
    80003d14:	000780e7          	jalr	a5
    80003d18:	fe1ff06f          	j	80003cf8 <_Z20Threads_CPP_API_testv+0x164>
    80003d1c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003d20:	00048513          	mv	a0,s1
    80003d24:	fffff097          	auipc	ra,0xfffff
    80003d28:	960080e7          	jalr	-1696(ra) # 80002684 <_ZdlPv>
    80003d2c:	00090513          	mv	a0,s2
    80003d30:	00009097          	auipc	ra,0x9
    80003d34:	fd8080e7          	jalr	-40(ra) # 8000cd08 <_Unwind_Resume>
    80003d38:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	944080e7          	jalr	-1724(ra) # 80002684 <_ZdlPv>
    80003d48:	00090513          	mv	a0,s2
    80003d4c:	00009097          	auipc	ra,0x9
    80003d50:	fbc080e7          	jalr	-68(ra) # 8000cd08 <_Unwind_Resume>
    80003d54:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003d58:	00048513          	mv	a0,s1
    80003d5c:	fffff097          	auipc	ra,0xfffff
    80003d60:	928080e7          	jalr	-1752(ra) # 80002684 <_ZdlPv>
    80003d64:	00090513          	mv	a0,s2
    80003d68:	00009097          	auipc	ra,0x9
    80003d6c:	fa0080e7          	jalr	-96(ra) # 8000cd08 <_Unwind_Resume>
    80003d70:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003d74:	00048513          	mv	a0,s1
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	90c080e7          	jalr	-1780(ra) # 80002684 <_ZdlPv>
    80003d80:	00090513          	mv	a0,s2
    80003d84:	00009097          	auipc	ra,0x9
    80003d88:	f84080e7          	jalr	-124(ra) # 8000cd08 <_Unwind_Resume>
}
    80003d8c:	03813083          	ld	ra,56(sp)
    80003d90:	03013403          	ld	s0,48(sp)
    80003d94:	02813483          	ld	s1,40(sp)
    80003d98:	02013903          	ld	s2,32(sp)
    80003d9c:	04010113          	addi	sp,sp,64
    80003da0:	00008067          	ret

0000000080003da4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003da4:	ff010113          	addi	sp,sp,-16
    80003da8:	00113423          	sd	ra,8(sp)
    80003dac:	00813023          	sd	s0,0(sp)
    80003db0:	01010413          	addi	s0,sp,16
    80003db4:	00008797          	auipc	a5,0x8
    80003db8:	bcc78793          	addi	a5,a5,-1076 # 8000b980 <_ZTV7WorkerA+0x10>
    80003dbc:	00f53023          	sd	a5,0(a0)
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	a28080e7          	jalr	-1496(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003dc8:	00813083          	ld	ra,8(sp)
    80003dcc:	00013403          	ld	s0,0(sp)
    80003dd0:	01010113          	addi	sp,sp,16
    80003dd4:	00008067          	ret

0000000080003dd8 <_ZN7WorkerAD0Ev>:
    80003dd8:	fe010113          	addi	sp,sp,-32
    80003ddc:	00113c23          	sd	ra,24(sp)
    80003de0:	00813823          	sd	s0,16(sp)
    80003de4:	00913423          	sd	s1,8(sp)
    80003de8:	02010413          	addi	s0,sp,32
    80003dec:	00050493          	mv	s1,a0
    80003df0:	00008797          	auipc	a5,0x8
    80003df4:	b9078793          	addi	a5,a5,-1136 # 8000b980 <_ZTV7WorkerA+0x10>
    80003df8:	00f53023          	sd	a5,0(a0)
    80003dfc:	fffff097          	auipc	ra,0xfffff
    80003e00:	9ec080e7          	jalr	-1556(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003e04:	00048513          	mv	a0,s1
    80003e08:	fffff097          	auipc	ra,0xfffff
    80003e0c:	87c080e7          	jalr	-1924(ra) # 80002684 <_ZdlPv>
    80003e10:	01813083          	ld	ra,24(sp)
    80003e14:	01013403          	ld	s0,16(sp)
    80003e18:	00813483          	ld	s1,8(sp)
    80003e1c:	02010113          	addi	sp,sp,32
    80003e20:	00008067          	ret

0000000080003e24 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003e24:	ff010113          	addi	sp,sp,-16
    80003e28:	00113423          	sd	ra,8(sp)
    80003e2c:	00813023          	sd	s0,0(sp)
    80003e30:	01010413          	addi	s0,sp,16
    80003e34:	00008797          	auipc	a5,0x8
    80003e38:	b7478793          	addi	a5,a5,-1164 # 8000b9a8 <_ZTV7WorkerB+0x10>
    80003e3c:	00f53023          	sd	a5,0(a0)
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	9a8080e7          	jalr	-1624(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003e48:	00813083          	ld	ra,8(sp)
    80003e4c:	00013403          	ld	s0,0(sp)
    80003e50:	01010113          	addi	sp,sp,16
    80003e54:	00008067          	ret

0000000080003e58 <_ZN7WorkerBD0Ev>:
    80003e58:	fe010113          	addi	sp,sp,-32
    80003e5c:	00113c23          	sd	ra,24(sp)
    80003e60:	00813823          	sd	s0,16(sp)
    80003e64:	00913423          	sd	s1,8(sp)
    80003e68:	02010413          	addi	s0,sp,32
    80003e6c:	00050493          	mv	s1,a0
    80003e70:	00008797          	auipc	a5,0x8
    80003e74:	b3878793          	addi	a5,a5,-1224 # 8000b9a8 <_ZTV7WorkerB+0x10>
    80003e78:	00f53023          	sd	a5,0(a0)
    80003e7c:	fffff097          	auipc	ra,0xfffff
    80003e80:	96c080e7          	jalr	-1684(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003e84:	00048513          	mv	a0,s1
    80003e88:	ffffe097          	auipc	ra,0xffffe
    80003e8c:	7fc080e7          	jalr	2044(ra) # 80002684 <_ZdlPv>
    80003e90:	01813083          	ld	ra,24(sp)
    80003e94:	01013403          	ld	s0,16(sp)
    80003e98:	00813483          	ld	s1,8(sp)
    80003e9c:	02010113          	addi	sp,sp,32
    80003ea0:	00008067          	ret

0000000080003ea4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ea4:	ff010113          	addi	sp,sp,-16
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	00813023          	sd	s0,0(sp)
    80003eb0:	01010413          	addi	s0,sp,16
    80003eb4:	00008797          	auipc	a5,0x8
    80003eb8:	b1c78793          	addi	a5,a5,-1252 # 8000b9d0 <_ZTV7WorkerC+0x10>
    80003ebc:	00f53023          	sd	a5,0(a0)
    80003ec0:	fffff097          	auipc	ra,0xfffff
    80003ec4:	928080e7          	jalr	-1752(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003ec8:	00813083          	ld	ra,8(sp)
    80003ecc:	00013403          	ld	s0,0(sp)
    80003ed0:	01010113          	addi	sp,sp,16
    80003ed4:	00008067          	ret

0000000080003ed8 <_ZN7WorkerCD0Ev>:
    80003ed8:	fe010113          	addi	sp,sp,-32
    80003edc:	00113c23          	sd	ra,24(sp)
    80003ee0:	00813823          	sd	s0,16(sp)
    80003ee4:	00913423          	sd	s1,8(sp)
    80003ee8:	02010413          	addi	s0,sp,32
    80003eec:	00050493          	mv	s1,a0
    80003ef0:	00008797          	auipc	a5,0x8
    80003ef4:	ae078793          	addi	a5,a5,-1312 # 8000b9d0 <_ZTV7WorkerC+0x10>
    80003ef8:	00f53023          	sd	a5,0(a0)
    80003efc:	fffff097          	auipc	ra,0xfffff
    80003f00:	8ec080e7          	jalr	-1812(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003f04:	00048513          	mv	a0,s1
    80003f08:	ffffe097          	auipc	ra,0xffffe
    80003f0c:	77c080e7          	jalr	1916(ra) # 80002684 <_ZdlPv>
    80003f10:	01813083          	ld	ra,24(sp)
    80003f14:	01013403          	ld	s0,16(sp)
    80003f18:	00813483          	ld	s1,8(sp)
    80003f1c:	02010113          	addi	sp,sp,32
    80003f20:	00008067          	ret

0000000080003f24 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003f24:	ff010113          	addi	sp,sp,-16
    80003f28:	00113423          	sd	ra,8(sp)
    80003f2c:	00813023          	sd	s0,0(sp)
    80003f30:	01010413          	addi	s0,sp,16
    80003f34:	00008797          	auipc	a5,0x8
    80003f38:	ac478793          	addi	a5,a5,-1340 # 8000b9f8 <_ZTV7WorkerD+0x10>
    80003f3c:	00f53023          	sd	a5,0(a0)
    80003f40:	fffff097          	auipc	ra,0xfffff
    80003f44:	8a8080e7          	jalr	-1880(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003f48:	00813083          	ld	ra,8(sp)
    80003f4c:	00013403          	ld	s0,0(sp)
    80003f50:	01010113          	addi	sp,sp,16
    80003f54:	00008067          	ret

0000000080003f58 <_ZN7WorkerDD0Ev>:
    80003f58:	fe010113          	addi	sp,sp,-32
    80003f5c:	00113c23          	sd	ra,24(sp)
    80003f60:	00813823          	sd	s0,16(sp)
    80003f64:	00913423          	sd	s1,8(sp)
    80003f68:	02010413          	addi	s0,sp,32
    80003f6c:	00050493          	mv	s1,a0
    80003f70:	00008797          	auipc	a5,0x8
    80003f74:	a8878793          	addi	a5,a5,-1400 # 8000b9f8 <_ZTV7WorkerD+0x10>
    80003f78:	00f53023          	sd	a5,0(a0)
    80003f7c:	fffff097          	auipc	ra,0xfffff
    80003f80:	86c080e7          	jalr	-1940(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80003f84:	00048513          	mv	a0,s1
    80003f88:	ffffe097          	auipc	ra,0xffffe
    80003f8c:	6fc080e7          	jalr	1788(ra) # 80002684 <_ZdlPv>
    80003f90:	01813083          	ld	ra,24(sp)
    80003f94:	01013403          	ld	s0,16(sp)
    80003f98:	00813483          	ld	s1,8(sp)
    80003f9c:	02010113          	addi	sp,sp,32
    80003fa0:	00008067          	ret

0000000080003fa4 <_ZN7WorkerA3runEv>:
    void run() override {
    80003fa4:	ff010113          	addi	sp,sp,-16
    80003fa8:	00113423          	sd	ra,8(sp)
    80003fac:	00813023          	sd	s0,0(sp)
    80003fb0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003fb4:	00000593          	li	a1,0
    80003fb8:	fffff097          	auipc	ra,0xfffff
    80003fbc:	774080e7          	jalr	1908(ra) # 8000372c <_ZN7WorkerA11workerBodyAEPv>
    }
    80003fc0:	00813083          	ld	ra,8(sp)
    80003fc4:	00013403          	ld	s0,0(sp)
    80003fc8:	01010113          	addi	sp,sp,16
    80003fcc:	00008067          	ret

0000000080003fd0 <_ZN7WorkerB3runEv>:
    void run() override {
    80003fd0:	ff010113          	addi	sp,sp,-16
    80003fd4:	00113423          	sd	ra,8(sp)
    80003fd8:	00813023          	sd	s0,0(sp)
    80003fdc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003fe0:	00000593          	li	a1,0
    80003fe4:	00000097          	auipc	ra,0x0
    80003fe8:	814080e7          	jalr	-2028(ra) # 800037f8 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003fec:	00813083          	ld	ra,8(sp)
    80003ff0:	00013403          	ld	s0,0(sp)
    80003ff4:	01010113          	addi	sp,sp,16
    80003ff8:	00008067          	ret

0000000080003ffc <_ZN7WorkerC3runEv>:
    void run() override {
    80003ffc:	ff010113          	addi	sp,sp,-16
    80004000:	00113423          	sd	ra,8(sp)
    80004004:	00813023          	sd	s0,0(sp)
    80004008:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000400c:	00000593          	li	a1,0
    80004010:	00000097          	auipc	ra,0x0
    80004014:	8bc080e7          	jalr	-1860(ra) # 800038cc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004018:	00813083          	ld	ra,8(sp)
    8000401c:	00013403          	ld	s0,0(sp)
    80004020:	01010113          	addi	sp,sp,16
    80004024:	00008067          	ret

0000000080004028 <_ZN7WorkerD3runEv>:
    void run() override {
    80004028:	ff010113          	addi	sp,sp,-16
    8000402c:	00113423          	sd	ra,8(sp)
    80004030:	00813023          	sd	s0,0(sp)
    80004034:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004038:	00000593          	li	a1,0
    8000403c:	00000097          	auipc	ra,0x0
    80004040:	a10080e7          	jalr	-1520(ra) # 80003a4c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004044:	00813083          	ld	ra,8(sp)
    80004048:	00013403          	ld	s0,0(sp)
    8000404c:	01010113          	addi	sp,sp,16
    80004050:	00008067          	ret

0000000080004054 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004054:	f8010113          	addi	sp,sp,-128
    80004058:	06113c23          	sd	ra,120(sp)
    8000405c:	06813823          	sd	s0,112(sp)
    80004060:	06913423          	sd	s1,104(sp)
    80004064:	07213023          	sd	s2,96(sp)
    80004068:	05313c23          	sd	s3,88(sp)
    8000406c:	05413823          	sd	s4,80(sp)
    80004070:	05513423          	sd	s5,72(sp)
    80004074:	05613023          	sd	s6,64(sp)
    80004078:	03713c23          	sd	s7,56(sp)
    8000407c:	03813823          	sd	s8,48(sp)
    80004080:	03913423          	sd	s9,40(sp)
    80004084:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004088:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000408c:	00005517          	auipc	a0,0x5
    80004090:	3e450513          	addi	a0,a0,996 # 80009470 <CONSOLE_STATUS+0x460>
    80004094:	00001097          	auipc	ra,0x1
    80004098:	5a8080e7          	jalr	1448(ra) # 8000563c <_Z11printStringPKc>
    getString(input, 30);
    8000409c:	01e00593          	li	a1,30
    800040a0:	f8040493          	addi	s1,s0,-128
    800040a4:	00048513          	mv	a0,s1
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	61c080e7          	jalr	1564(ra) # 800056c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800040b0:	00048513          	mv	a0,s1
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	6e8080e7          	jalr	1768(ra) # 8000579c <_Z11stringToIntPKc>
    800040bc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800040c0:	00005517          	auipc	a0,0x5
    800040c4:	3d050513          	addi	a0,a0,976 # 80009490 <CONSOLE_STATUS+0x480>
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	574080e7          	jalr	1396(ra) # 8000563c <_Z11printStringPKc>
    getString(input, 30);
    800040d0:	01e00593          	li	a1,30
    800040d4:	00048513          	mv	a0,s1
    800040d8:	00001097          	auipc	ra,0x1
    800040dc:	5ec080e7          	jalr	1516(ra) # 800056c4 <_Z9getStringPci>
    n = stringToInt(input);
    800040e0:	00048513          	mv	a0,s1
    800040e4:	00001097          	auipc	ra,0x1
    800040e8:	6b8080e7          	jalr	1720(ra) # 8000579c <_Z11stringToIntPKc>
    800040ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800040f0:	00005517          	auipc	a0,0x5
    800040f4:	3c050513          	addi	a0,a0,960 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800040f8:	00001097          	auipc	ra,0x1
    800040fc:	544080e7          	jalr	1348(ra) # 8000563c <_Z11printStringPKc>
    printInt(threadNum);
    80004100:	00000613          	li	a2,0
    80004104:	00a00593          	li	a1,10
    80004108:	00098513          	mv	a0,s3
    8000410c:	00001097          	auipc	ra,0x1
    80004110:	6e0080e7          	jalr	1760(ra) # 800057ec <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004114:	00005517          	auipc	a0,0x5
    80004118:	3b450513          	addi	a0,a0,948 # 800094c8 <CONSOLE_STATUS+0x4b8>
    8000411c:	00001097          	auipc	ra,0x1
    80004120:	520080e7          	jalr	1312(ra) # 8000563c <_Z11printStringPKc>
    printInt(n);
    80004124:	00000613          	li	a2,0
    80004128:	00a00593          	li	a1,10
    8000412c:	00048513          	mv	a0,s1
    80004130:	00001097          	auipc	ra,0x1
    80004134:	6bc080e7          	jalr	1724(ra) # 800057ec <_Z8printIntiii>
    printString(".\n");
    80004138:	00005517          	auipc	a0,0x5
    8000413c:	3a850513          	addi	a0,a0,936 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004140:	00001097          	auipc	ra,0x1
    80004144:	4fc080e7          	jalr	1276(ra) # 8000563c <_Z11printStringPKc>
    if (threadNum > n) {
    80004148:	0334c463          	blt	s1,s3,80004170 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000414c:	03305c63          	blez	s3,80004184 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004150:	03800513          	li	a0,56
    80004154:	ffffe097          	auipc	ra,0xffffe
    80004158:	4e0080e7          	jalr	1248(ra) # 80002634 <_Znwm>
    8000415c:	00050a93          	mv	s5,a0
    80004160:	00048593          	mv	a1,s1
    80004164:	00001097          	auipc	ra,0x1
    80004168:	7a8080e7          	jalr	1960(ra) # 8000590c <_ZN9BufferCPPC1Ei>
    8000416c:	0300006f          	j	8000419c <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004170:	00005517          	auipc	a0,0x5
    80004174:	37850513          	addi	a0,a0,888 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004178:	00001097          	auipc	ra,0x1
    8000417c:	4c4080e7          	jalr	1220(ra) # 8000563c <_Z11printStringPKc>
        return;
    80004180:	0140006f          	j	80004194 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004184:	00005517          	auipc	a0,0x5
    80004188:	3a450513          	addi	a0,a0,932 # 80009528 <CONSOLE_STATUS+0x518>
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	4b0080e7          	jalr	1200(ra) # 8000563c <_Z11printStringPKc>
        return;
    80004194:	000c0113          	mv	sp,s8
    80004198:	2140006f          	j	800043ac <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    8000419c:	01000513          	li	a0,16
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	494080e7          	jalr	1172(ra) # 80002634 <_Znwm>
    800041a8:	00050913          	mv	s2,a0
    800041ac:	00000593          	li	a1,0
    800041b0:	fffff097          	auipc	ra,0xfffff
    800041b4:	830080e7          	jalr	-2000(ra) # 800029e0 <_ZN9SemaphoreC1Ej>
    800041b8:	00008797          	auipc	a5,0x8
    800041bc:	a527b823          	sd	s2,-1456(a5) # 8000bc08 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800041c0:	00399793          	slli	a5,s3,0x3
    800041c4:	00f78793          	addi	a5,a5,15
    800041c8:	ff07f793          	andi	a5,a5,-16
    800041cc:	40f10133          	sub	sp,sp,a5
    800041d0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800041d4:	0019871b          	addiw	a4,s3,1
    800041d8:	00171793          	slli	a5,a4,0x1
    800041dc:	00e787b3          	add	a5,a5,a4
    800041e0:	00379793          	slli	a5,a5,0x3
    800041e4:	00f78793          	addi	a5,a5,15
    800041e8:	ff07f793          	andi	a5,a5,-16
    800041ec:	40f10133          	sub	sp,sp,a5
    800041f0:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800041f4:	00199493          	slli	s1,s3,0x1
    800041f8:	013484b3          	add	s1,s1,s3
    800041fc:	00349493          	slli	s1,s1,0x3
    80004200:	009b04b3          	add	s1,s6,s1
    80004204:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004208:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000420c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004210:	02800513          	li	a0,40
    80004214:	ffffe097          	auipc	ra,0xffffe
    80004218:	420080e7          	jalr	1056(ra) # 80002634 <_Znwm>
    8000421c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	6ec080e7          	jalr	1772(ra) # 8000290c <_ZN6ThreadC1Ev>
    80004228:	00008797          	auipc	a5,0x8
    8000422c:	84878793          	addi	a5,a5,-1976 # 8000ba70 <_ZTV8Consumer+0x10>
    80004230:	00fbb023          	sd	a5,0(s7)
    80004234:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004238:	000b8513          	mv	a0,s7
    8000423c:	ffffe097          	auipc	ra,0xffffe
    80004240:	700080e7          	jalr	1792(ra) # 8000293c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004244:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004248:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000424c:	00008797          	auipc	a5,0x8
    80004250:	9bc7b783          	ld	a5,-1604(a5) # 8000bc08 <_ZL10waitForAll>
    80004254:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004258:	02800513          	li	a0,40
    8000425c:	ffffe097          	auipc	ra,0xffffe
    80004260:	3d8080e7          	jalr	984(ra) # 80002634 <_Znwm>
    80004264:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004268:	ffffe097          	auipc	ra,0xffffe
    8000426c:	6a4080e7          	jalr	1700(ra) # 8000290c <_ZN6ThreadC1Ev>
    80004270:	00007797          	auipc	a5,0x7
    80004274:	7b078793          	addi	a5,a5,1968 # 8000ba20 <_ZTV16ProducerKeyborad+0x10>
    80004278:	00f4b023          	sd	a5,0(s1)
    8000427c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004280:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004284:	00048513          	mv	a0,s1
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	6b4080e7          	jalr	1716(ra) # 8000293c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004290:	00100913          	li	s2,1
    80004294:	0300006f          	j	800042c4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004298:	00007797          	auipc	a5,0x7
    8000429c:	7b078793          	addi	a5,a5,1968 # 8000ba48 <_ZTV8Producer+0x10>
    800042a0:	00fcb023          	sd	a5,0(s9)
    800042a4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800042a8:	00391793          	slli	a5,s2,0x3
    800042ac:	00fa07b3          	add	a5,s4,a5
    800042b0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800042b4:	000c8513          	mv	a0,s9
    800042b8:	ffffe097          	auipc	ra,0xffffe
    800042bc:	684080e7          	jalr	1668(ra) # 8000293c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800042c0:	0019091b          	addiw	s2,s2,1
    800042c4:	05395263          	bge	s2,s3,80004308 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800042c8:	00191493          	slli	s1,s2,0x1
    800042cc:	012484b3          	add	s1,s1,s2
    800042d0:	00349493          	slli	s1,s1,0x3
    800042d4:	009b04b3          	add	s1,s6,s1
    800042d8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800042dc:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800042e0:	00008797          	auipc	a5,0x8
    800042e4:	9287b783          	ld	a5,-1752(a5) # 8000bc08 <_ZL10waitForAll>
    800042e8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800042ec:	02800513          	li	a0,40
    800042f0:	ffffe097          	auipc	ra,0xffffe
    800042f4:	344080e7          	jalr	836(ra) # 80002634 <_Znwm>
    800042f8:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	610080e7          	jalr	1552(ra) # 8000290c <_ZN6ThreadC1Ev>
    80004304:	f95ff06f          	j	80004298 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	688080e7          	jalr	1672(ra) # 80002990 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004310:	00000493          	li	s1,0
    80004314:	0099ce63          	blt	s3,s1,80004330 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004318:	00008517          	auipc	a0,0x8
    8000431c:	8f053503          	ld	a0,-1808(a0) # 8000bc08 <_ZL10waitForAll>
    80004320:	ffffe097          	auipc	ra,0xffffe
    80004324:	6fc080e7          	jalr	1788(ra) # 80002a1c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004328:	0014849b          	addiw	s1,s1,1
    8000432c:	fe9ff06f          	j	80004314 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004330:	00008517          	auipc	a0,0x8
    80004334:	8d853503          	ld	a0,-1832(a0) # 8000bc08 <_ZL10waitForAll>
    80004338:	00050863          	beqz	a0,80004348 <_Z20testConsumerProducerv+0x2f4>
    8000433c:	00053783          	ld	a5,0(a0)
    80004340:	0087b783          	ld	a5,8(a5)
    80004344:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004348:	00000493          	li	s1,0
    8000434c:	0080006f          	j	80004354 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004350:	0014849b          	addiw	s1,s1,1
    80004354:	0334d263          	bge	s1,s3,80004378 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004358:	00349793          	slli	a5,s1,0x3
    8000435c:	00fa07b3          	add	a5,s4,a5
    80004360:	0007b503          	ld	a0,0(a5)
    80004364:	fe0506e3          	beqz	a0,80004350 <_Z20testConsumerProducerv+0x2fc>
    80004368:	00053783          	ld	a5,0(a0)
    8000436c:	0087b783          	ld	a5,8(a5)
    80004370:	000780e7          	jalr	a5
    80004374:	fddff06f          	j	80004350 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004378:	000b8a63          	beqz	s7,8000438c <_Z20testConsumerProducerv+0x338>
    8000437c:	000bb783          	ld	a5,0(s7)
    80004380:	0087b783          	ld	a5,8(a5)
    80004384:	000b8513          	mv	a0,s7
    80004388:	000780e7          	jalr	a5
    delete buffer;
    8000438c:	000a8e63          	beqz	s5,800043a8 <_Z20testConsumerProducerv+0x354>
    80004390:	000a8513          	mv	a0,s5
    80004394:	00002097          	auipc	ra,0x2
    80004398:	870080e7          	jalr	-1936(ra) # 80005c04 <_ZN9BufferCPPD1Ev>
    8000439c:	000a8513          	mv	a0,s5
    800043a0:	ffffe097          	auipc	ra,0xffffe
    800043a4:	2e4080e7          	jalr	740(ra) # 80002684 <_ZdlPv>
    800043a8:	000c0113          	mv	sp,s8
}
    800043ac:	f8040113          	addi	sp,s0,-128
    800043b0:	07813083          	ld	ra,120(sp)
    800043b4:	07013403          	ld	s0,112(sp)
    800043b8:	06813483          	ld	s1,104(sp)
    800043bc:	06013903          	ld	s2,96(sp)
    800043c0:	05813983          	ld	s3,88(sp)
    800043c4:	05013a03          	ld	s4,80(sp)
    800043c8:	04813a83          	ld	s5,72(sp)
    800043cc:	04013b03          	ld	s6,64(sp)
    800043d0:	03813b83          	ld	s7,56(sp)
    800043d4:	03013c03          	ld	s8,48(sp)
    800043d8:	02813c83          	ld	s9,40(sp)
    800043dc:	08010113          	addi	sp,sp,128
    800043e0:	00008067          	ret
    800043e4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800043e8:	000a8513          	mv	a0,s5
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	298080e7          	jalr	664(ra) # 80002684 <_ZdlPv>
    800043f4:	00048513          	mv	a0,s1
    800043f8:	00009097          	auipc	ra,0x9
    800043fc:	910080e7          	jalr	-1776(ra) # 8000cd08 <_Unwind_Resume>
    80004400:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004404:	00090513          	mv	a0,s2
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	27c080e7          	jalr	636(ra) # 80002684 <_ZdlPv>
    80004410:	00048513          	mv	a0,s1
    80004414:	00009097          	auipc	ra,0x9
    80004418:	8f4080e7          	jalr	-1804(ra) # 8000cd08 <_Unwind_Resume>
    8000441c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004420:	000b8513          	mv	a0,s7
    80004424:	ffffe097          	auipc	ra,0xffffe
    80004428:	260080e7          	jalr	608(ra) # 80002684 <_ZdlPv>
    8000442c:	00048513          	mv	a0,s1
    80004430:	00009097          	auipc	ra,0x9
    80004434:	8d8080e7          	jalr	-1832(ra) # 8000cd08 <_Unwind_Resume>
    80004438:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000443c:	00048513          	mv	a0,s1
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	244080e7          	jalr	580(ra) # 80002684 <_ZdlPv>
    80004448:	00090513          	mv	a0,s2
    8000444c:	00009097          	auipc	ra,0x9
    80004450:	8bc080e7          	jalr	-1860(ra) # 8000cd08 <_Unwind_Resume>
    80004454:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004458:	000c8513          	mv	a0,s9
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	228080e7          	jalr	552(ra) # 80002684 <_ZdlPv>
    80004464:	00048513          	mv	a0,s1
    80004468:	00009097          	auipc	ra,0x9
    8000446c:	8a0080e7          	jalr	-1888(ra) # 8000cd08 <_Unwind_Resume>

0000000080004470 <_ZN8Consumer3runEv>:
    void run() override {
    80004470:	fd010113          	addi	sp,sp,-48
    80004474:	02113423          	sd	ra,40(sp)
    80004478:	02813023          	sd	s0,32(sp)
    8000447c:	00913c23          	sd	s1,24(sp)
    80004480:	01213823          	sd	s2,16(sp)
    80004484:	01313423          	sd	s3,8(sp)
    80004488:	03010413          	addi	s0,sp,48
    8000448c:	00050913          	mv	s2,a0
        int i = 0;
    80004490:	00000993          	li	s3,0
    80004494:	0100006f          	j	800044a4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004498:	00a00513          	li	a0,10
    8000449c:	ffffe097          	auipc	ra,0xffffe
    800044a0:	668080e7          	jalr	1640(ra) # 80002b04 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800044a4:	00007797          	auipc	a5,0x7
    800044a8:	75c7a783          	lw	a5,1884(a5) # 8000bc00 <_ZL9threadEnd>
    800044ac:	04079a63          	bnez	a5,80004500 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800044b0:	02093783          	ld	a5,32(s2)
    800044b4:	0087b503          	ld	a0,8(a5)
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	638080e7          	jalr	1592(ra) # 80005af0 <_ZN9BufferCPP3getEv>
            i++;
    800044c0:	0019849b          	addiw	s1,s3,1
    800044c4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800044c8:	0ff57513          	andi	a0,a0,255
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	638080e7          	jalr	1592(ra) # 80002b04 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800044d4:	05000793          	li	a5,80
    800044d8:	02f4e4bb          	remw	s1,s1,a5
    800044dc:	fc0494e3          	bnez	s1,800044a4 <_ZN8Consumer3runEv+0x34>
    800044e0:	fb9ff06f          	j	80004498 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800044e4:	02093783          	ld	a5,32(s2)
    800044e8:	0087b503          	ld	a0,8(a5)
    800044ec:	00001097          	auipc	ra,0x1
    800044f0:	604080e7          	jalr	1540(ra) # 80005af0 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800044f4:	0ff57513          	andi	a0,a0,255
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	60c080e7          	jalr	1548(ra) # 80002b04 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004500:	02093783          	ld	a5,32(s2)
    80004504:	0087b503          	ld	a0,8(a5)
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	674080e7          	jalr	1652(ra) # 80005b7c <_ZN9BufferCPP6getCntEv>
    80004510:	fca04ae3          	bgtz	a0,800044e4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004514:	02093783          	ld	a5,32(s2)
    80004518:	0107b503          	ld	a0,16(a5)
    8000451c:	ffffe097          	auipc	ra,0xffffe
    80004520:	52c080e7          	jalr	1324(ra) # 80002a48 <_ZN9Semaphore6signalEv>
    }
    80004524:	02813083          	ld	ra,40(sp)
    80004528:	02013403          	ld	s0,32(sp)
    8000452c:	01813483          	ld	s1,24(sp)
    80004530:	01013903          	ld	s2,16(sp)
    80004534:	00813983          	ld	s3,8(sp)
    80004538:	03010113          	addi	sp,sp,48
    8000453c:	00008067          	ret

0000000080004540 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004540:	ff010113          	addi	sp,sp,-16
    80004544:	00113423          	sd	ra,8(sp)
    80004548:	00813023          	sd	s0,0(sp)
    8000454c:	01010413          	addi	s0,sp,16
    80004550:	00007797          	auipc	a5,0x7
    80004554:	52078793          	addi	a5,a5,1312 # 8000ba70 <_ZTV8Consumer+0x10>
    80004558:	00f53023          	sd	a5,0(a0)
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	28c080e7          	jalr	652(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80004564:	00813083          	ld	ra,8(sp)
    80004568:	00013403          	ld	s0,0(sp)
    8000456c:	01010113          	addi	sp,sp,16
    80004570:	00008067          	ret

0000000080004574 <_ZN8ConsumerD0Ev>:
    80004574:	fe010113          	addi	sp,sp,-32
    80004578:	00113c23          	sd	ra,24(sp)
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00913423          	sd	s1,8(sp)
    80004584:	02010413          	addi	s0,sp,32
    80004588:	00050493          	mv	s1,a0
    8000458c:	00007797          	auipc	a5,0x7
    80004590:	4e478793          	addi	a5,a5,1252 # 8000ba70 <_ZTV8Consumer+0x10>
    80004594:	00f53023          	sd	a5,0(a0)
    80004598:	ffffe097          	auipc	ra,0xffffe
    8000459c:	250080e7          	jalr	592(ra) # 800027e8 <_ZN6ThreadD1Ev>
    800045a0:	00048513          	mv	a0,s1
    800045a4:	ffffe097          	auipc	ra,0xffffe
    800045a8:	0e0080e7          	jalr	224(ra) # 80002684 <_ZdlPv>
    800045ac:	01813083          	ld	ra,24(sp)
    800045b0:	01013403          	ld	s0,16(sp)
    800045b4:	00813483          	ld	s1,8(sp)
    800045b8:	02010113          	addi	sp,sp,32
    800045bc:	00008067          	ret

00000000800045c0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800045c0:	ff010113          	addi	sp,sp,-16
    800045c4:	00113423          	sd	ra,8(sp)
    800045c8:	00813023          	sd	s0,0(sp)
    800045cc:	01010413          	addi	s0,sp,16
    800045d0:	00007797          	auipc	a5,0x7
    800045d4:	45078793          	addi	a5,a5,1104 # 8000ba20 <_ZTV16ProducerKeyborad+0x10>
    800045d8:	00f53023          	sd	a5,0(a0)
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	20c080e7          	jalr	524(ra) # 800027e8 <_ZN6ThreadD1Ev>
    800045e4:	00813083          	ld	ra,8(sp)
    800045e8:	00013403          	ld	s0,0(sp)
    800045ec:	01010113          	addi	sp,sp,16
    800045f0:	00008067          	ret

00000000800045f4 <_ZN16ProducerKeyboradD0Ev>:
    800045f4:	fe010113          	addi	sp,sp,-32
    800045f8:	00113c23          	sd	ra,24(sp)
    800045fc:	00813823          	sd	s0,16(sp)
    80004600:	00913423          	sd	s1,8(sp)
    80004604:	02010413          	addi	s0,sp,32
    80004608:	00050493          	mv	s1,a0
    8000460c:	00007797          	auipc	a5,0x7
    80004610:	41478793          	addi	a5,a5,1044 # 8000ba20 <_ZTV16ProducerKeyborad+0x10>
    80004614:	00f53023          	sd	a5,0(a0)
    80004618:	ffffe097          	auipc	ra,0xffffe
    8000461c:	1d0080e7          	jalr	464(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80004620:	00048513          	mv	a0,s1
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	060080e7          	jalr	96(ra) # 80002684 <_ZdlPv>
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	00813483          	ld	s1,8(sp)
    80004638:	02010113          	addi	sp,sp,32
    8000463c:	00008067          	ret

0000000080004640 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004640:	ff010113          	addi	sp,sp,-16
    80004644:	00113423          	sd	ra,8(sp)
    80004648:	00813023          	sd	s0,0(sp)
    8000464c:	01010413          	addi	s0,sp,16
    80004650:	00007797          	auipc	a5,0x7
    80004654:	3f878793          	addi	a5,a5,1016 # 8000ba48 <_ZTV8Producer+0x10>
    80004658:	00f53023          	sd	a5,0(a0)
    8000465c:	ffffe097          	auipc	ra,0xffffe
    80004660:	18c080e7          	jalr	396(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80004664:	00813083          	ld	ra,8(sp)
    80004668:	00013403          	ld	s0,0(sp)
    8000466c:	01010113          	addi	sp,sp,16
    80004670:	00008067          	ret

0000000080004674 <_ZN8ProducerD0Ev>:
    80004674:	fe010113          	addi	sp,sp,-32
    80004678:	00113c23          	sd	ra,24(sp)
    8000467c:	00813823          	sd	s0,16(sp)
    80004680:	00913423          	sd	s1,8(sp)
    80004684:	02010413          	addi	s0,sp,32
    80004688:	00050493          	mv	s1,a0
    8000468c:	00007797          	auipc	a5,0x7
    80004690:	3bc78793          	addi	a5,a5,956 # 8000ba48 <_ZTV8Producer+0x10>
    80004694:	00f53023          	sd	a5,0(a0)
    80004698:	ffffe097          	auipc	ra,0xffffe
    8000469c:	150080e7          	jalr	336(ra) # 800027e8 <_ZN6ThreadD1Ev>
    800046a0:	00048513          	mv	a0,s1
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	fe0080e7          	jalr	-32(ra) # 80002684 <_ZdlPv>
    800046ac:	01813083          	ld	ra,24(sp)
    800046b0:	01013403          	ld	s0,16(sp)
    800046b4:	00813483          	ld	s1,8(sp)
    800046b8:	02010113          	addi	sp,sp,32
    800046bc:	00008067          	ret

00000000800046c0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800046c0:	fe010113          	addi	sp,sp,-32
    800046c4:	00113c23          	sd	ra,24(sp)
    800046c8:	00813823          	sd	s0,16(sp)
    800046cc:	00913423          	sd	s1,8(sp)
    800046d0:	02010413          	addi	s0,sp,32
    800046d4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800046d8:	ffffd097          	auipc	ra,0xffffd
    800046dc:	ef8080e7          	jalr	-264(ra) # 800015d0 <_Z4getcv>
    800046e0:	0005059b          	sext.w	a1,a0
    800046e4:	01b00793          	li	a5,27
    800046e8:	00f58c63          	beq	a1,a5,80004700 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800046ec:	0204b783          	ld	a5,32(s1)
    800046f0:	0087b503          	ld	a0,8(a5)
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	36c080e7          	jalr	876(ra) # 80005a60 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800046fc:	fddff06f          	j	800046d8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004700:	00100793          	li	a5,1
    80004704:	00007717          	auipc	a4,0x7
    80004708:	4ef72e23          	sw	a5,1276(a4) # 8000bc00 <_ZL9threadEnd>
        td->buffer->put('!');
    8000470c:	0204b783          	ld	a5,32(s1)
    80004710:	02100593          	li	a1,33
    80004714:	0087b503          	ld	a0,8(a5)
    80004718:	00001097          	auipc	ra,0x1
    8000471c:	348080e7          	jalr	840(ra) # 80005a60 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004720:	0204b783          	ld	a5,32(s1)
    80004724:	0107b503          	ld	a0,16(a5)
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	320080e7          	jalr	800(ra) # 80002a48 <_ZN9Semaphore6signalEv>
    }
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	02010113          	addi	sp,sp,32
    80004740:	00008067          	ret

0000000080004744 <_ZN8Producer3runEv>:
    void run() override {
    80004744:	fe010113          	addi	sp,sp,-32
    80004748:	00113c23          	sd	ra,24(sp)
    8000474c:	00813823          	sd	s0,16(sp)
    80004750:	00913423          	sd	s1,8(sp)
    80004754:	01213023          	sd	s2,0(sp)
    80004758:	02010413          	addi	s0,sp,32
    8000475c:	00050493          	mv	s1,a0
        int i = 0;
    80004760:	00000913          	li	s2,0
        while (!threadEnd) {
    80004764:	00007797          	auipc	a5,0x7
    80004768:	49c7a783          	lw	a5,1180(a5) # 8000bc00 <_ZL9threadEnd>
    8000476c:	04079263          	bnez	a5,800047b0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004770:	0204b783          	ld	a5,32(s1)
    80004774:	0007a583          	lw	a1,0(a5)
    80004778:	0305859b          	addiw	a1,a1,48
    8000477c:	0087b503          	ld	a0,8(a5)
    80004780:	00001097          	auipc	ra,0x1
    80004784:	2e0080e7          	jalr	736(ra) # 80005a60 <_ZN9BufferCPP3putEi>
            i++;
    80004788:	0019071b          	addiw	a4,s2,1
    8000478c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004790:	0204b783          	ld	a5,32(s1)
    80004794:	0007a783          	lw	a5,0(a5)
    80004798:	00e787bb          	addw	a5,a5,a4
    8000479c:	00500513          	li	a0,5
    800047a0:	02a7e53b          	remw	a0,a5,a0
    800047a4:	ffffe097          	auipc	ra,0xffffe
    800047a8:	214080e7          	jalr	532(ra) # 800029b8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800047ac:	fb9ff06f          	j	80004764 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800047b0:	0204b783          	ld	a5,32(s1)
    800047b4:	0107b503          	ld	a0,16(a5)
    800047b8:	ffffe097          	auipc	ra,0xffffe
    800047bc:	290080e7          	jalr	656(ra) # 80002a48 <_ZN9Semaphore6signalEv>
    }
    800047c0:	01813083          	ld	ra,24(sp)
    800047c4:	01013403          	ld	s0,16(sp)
    800047c8:	00813483          	ld	s1,8(sp)
    800047cc:	00013903          	ld	s2,0(sp)
    800047d0:	02010113          	addi	sp,sp,32
    800047d4:	00008067          	ret

00000000800047d8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800047d8:	fe010113          	addi	sp,sp,-32
    800047dc:	00113c23          	sd	ra,24(sp)
    800047e0:	00813823          	sd	s0,16(sp)
    800047e4:	00913423          	sd	s1,8(sp)
    800047e8:	01213023          	sd	s2,0(sp)
    800047ec:	02010413          	addi	s0,sp,32
    800047f0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800047f4:	00100793          	li	a5,1
    800047f8:	02a7f863          	bgeu	a5,a0,80004828 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800047fc:	00a00793          	li	a5,10
    80004800:	02f577b3          	remu	a5,a0,a5
    80004804:	02078e63          	beqz	a5,80004840 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004808:	fff48513          	addi	a0,s1,-1
    8000480c:	00000097          	auipc	ra,0x0
    80004810:	fcc080e7          	jalr	-52(ra) # 800047d8 <_ZL9fibonaccim>
    80004814:	00050913          	mv	s2,a0
    80004818:	ffe48513          	addi	a0,s1,-2
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	fbc080e7          	jalr	-68(ra) # 800047d8 <_ZL9fibonaccim>
    80004824:	00a90533          	add	a0,s2,a0
}
    80004828:	01813083          	ld	ra,24(sp)
    8000482c:	01013403          	ld	s0,16(sp)
    80004830:	00813483          	ld	s1,8(sp)
    80004834:	00013903          	ld	s2,0(sp)
    80004838:	02010113          	addi	sp,sp,32
    8000483c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004840:	ffffd097          	auipc	ra,0xffffd
    80004844:	b88080e7          	jalr	-1144(ra) # 800013c8 <_Z15thread_dispatchv>
    80004848:	fc1ff06f          	j	80004808 <_ZL9fibonaccim+0x30>

000000008000484c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000484c:	fe010113          	addi	sp,sp,-32
    80004850:	00113c23          	sd	ra,24(sp)
    80004854:	00813823          	sd	s0,16(sp)
    80004858:	00913423          	sd	s1,8(sp)
    8000485c:	01213023          	sd	s2,0(sp)
    80004860:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004864:	00a00493          	li	s1,10
    80004868:	0400006f          	j	800048a8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000486c:	00005517          	auipc	a0,0x5
    80004870:	d4c50513          	addi	a0,a0,-692 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80004874:	00001097          	auipc	ra,0x1
    80004878:	dc8080e7          	jalr	-568(ra) # 8000563c <_Z11printStringPKc>
    8000487c:	00000613          	li	a2,0
    80004880:	00a00593          	li	a1,10
    80004884:	00048513          	mv	a0,s1
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	f64080e7          	jalr	-156(ra) # 800057ec <_Z8printIntiii>
    80004890:	00005517          	auipc	a0,0x5
    80004894:	a9850513          	addi	a0,a0,-1384 # 80009328 <CONSOLE_STATUS+0x318>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	da4080e7          	jalr	-604(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 13; i++) {
    800048a0:	0014849b          	addiw	s1,s1,1
    800048a4:	0ff4f493          	andi	s1,s1,255
    800048a8:	00c00793          	li	a5,12
    800048ac:	fc97f0e3          	bgeu	a5,s1,8000486c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800048b0:	00005517          	auipc	a0,0x5
    800048b4:	d1050513          	addi	a0,a0,-752 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	d84080e7          	jalr	-636(ra) # 8000563c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800048c0:	00500313          	li	t1,5
    thread_dispatch();
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	b04080e7          	jalr	-1276(ra) # 800013c8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800048cc:	01000513          	li	a0,16
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	f08080e7          	jalr	-248(ra) # 800047d8 <_ZL9fibonaccim>
    800048d8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800048dc:	00005517          	auipc	a0,0x5
    800048e0:	cf450513          	addi	a0,a0,-780 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800048e4:	00001097          	auipc	ra,0x1
    800048e8:	d58080e7          	jalr	-680(ra) # 8000563c <_Z11printStringPKc>
    800048ec:	00000613          	li	a2,0
    800048f0:	00a00593          	li	a1,10
    800048f4:	0009051b          	sext.w	a0,s2
    800048f8:	00001097          	auipc	ra,0x1
    800048fc:	ef4080e7          	jalr	-268(ra) # 800057ec <_Z8printIntiii>
    80004900:	00005517          	auipc	a0,0x5
    80004904:	a2850513          	addi	a0,a0,-1496 # 80009328 <CONSOLE_STATUS+0x318>
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	d34080e7          	jalr	-716(ra) # 8000563c <_Z11printStringPKc>
    80004910:	0400006f          	j	80004950 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004914:	00005517          	auipc	a0,0x5
    80004918:	ca450513          	addi	a0,a0,-860 # 800095b8 <CONSOLE_STATUS+0x5a8>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	d20080e7          	jalr	-736(ra) # 8000563c <_Z11printStringPKc>
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	00048513          	mv	a0,s1
    80004930:	00001097          	auipc	ra,0x1
    80004934:	ebc080e7          	jalr	-324(ra) # 800057ec <_Z8printIntiii>
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	9f050513          	addi	a0,a0,-1552 # 80009328 <CONSOLE_STATUS+0x318>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	cfc080e7          	jalr	-772(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004948:	0014849b          	addiw	s1,s1,1
    8000494c:	0ff4f493          	andi	s1,s1,255
    80004950:	00f00793          	li	a5,15
    80004954:	fc97f0e3          	bgeu	a5,s1,80004914 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004958:	00005517          	auipc	a0,0x5
    8000495c:	c8850513          	addi	a0,a0,-888 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80004960:	00001097          	auipc	ra,0x1
    80004964:	cdc080e7          	jalr	-804(ra) # 8000563c <_Z11printStringPKc>
    finishedD = true;
    80004968:	00100793          	li	a5,1
    8000496c:	00007717          	auipc	a4,0x7
    80004970:	2af70223          	sb	a5,676(a4) # 8000bc10 <_ZL9finishedD>
    thread_dispatch();
    80004974:	ffffd097          	auipc	ra,0xffffd
    80004978:	a54080e7          	jalr	-1452(ra) # 800013c8 <_Z15thread_dispatchv>
}
    8000497c:	01813083          	ld	ra,24(sp)
    80004980:	01013403          	ld	s0,16(sp)
    80004984:	00813483          	ld	s1,8(sp)
    80004988:	00013903          	ld	s2,0(sp)
    8000498c:	02010113          	addi	sp,sp,32
    80004990:	00008067          	ret

0000000080004994 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004994:	fe010113          	addi	sp,sp,-32
    80004998:	00113c23          	sd	ra,24(sp)
    8000499c:	00813823          	sd	s0,16(sp)
    800049a0:	00913423          	sd	s1,8(sp)
    800049a4:	01213023          	sd	s2,0(sp)
    800049a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800049ac:	00000493          	li	s1,0
    800049b0:	0400006f          	j	800049f0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800049b4:	00005517          	auipc	a0,0x5
    800049b8:	bd450513          	addi	a0,a0,-1068 # 80009588 <CONSOLE_STATUS+0x578>
    800049bc:	00001097          	auipc	ra,0x1
    800049c0:	c80080e7          	jalr	-896(ra) # 8000563c <_Z11printStringPKc>
    800049c4:	00000613          	li	a2,0
    800049c8:	00a00593          	li	a1,10
    800049cc:	00048513          	mv	a0,s1
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	e1c080e7          	jalr	-484(ra) # 800057ec <_Z8printIntiii>
    800049d8:	00005517          	auipc	a0,0x5
    800049dc:	95050513          	addi	a0,a0,-1712 # 80009328 <CONSOLE_STATUS+0x318>
    800049e0:	00001097          	auipc	ra,0x1
    800049e4:	c5c080e7          	jalr	-932(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 3; i++) {
    800049e8:	0014849b          	addiw	s1,s1,1
    800049ec:	0ff4f493          	andi	s1,s1,255
    800049f0:	00200793          	li	a5,2
    800049f4:	fc97f0e3          	bgeu	a5,s1,800049b4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800049f8:	00005517          	auipc	a0,0x5
    800049fc:	b9850513          	addi	a0,a0,-1128 # 80009590 <CONSOLE_STATUS+0x580>
    80004a00:	00001097          	auipc	ra,0x1
    80004a04:	c3c080e7          	jalr	-964(ra) # 8000563c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004a08:	00700313          	li	t1,7
    thread_dispatch();
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	9bc080e7          	jalr	-1604(ra) # 800013c8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004a14:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004a18:	00005517          	auipc	a0,0x5
    80004a1c:	b8850513          	addi	a0,a0,-1144 # 800095a0 <CONSOLE_STATUS+0x590>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	c1c080e7          	jalr	-996(ra) # 8000563c <_Z11printStringPKc>
    80004a28:	00000613          	li	a2,0
    80004a2c:	00a00593          	li	a1,10
    80004a30:	0009051b          	sext.w	a0,s2
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	db8080e7          	jalr	-584(ra) # 800057ec <_Z8printIntiii>
    80004a3c:	00005517          	auipc	a0,0x5
    80004a40:	8ec50513          	addi	a0,a0,-1812 # 80009328 <CONSOLE_STATUS+0x318>
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	bf8080e7          	jalr	-1032(ra) # 8000563c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004a4c:	00c00513          	li	a0,12
    80004a50:	00000097          	auipc	ra,0x0
    80004a54:	d88080e7          	jalr	-632(ra) # 800047d8 <_ZL9fibonaccim>
    80004a58:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	b4c50513          	addi	a0,a0,-1204 # 800095a8 <CONSOLE_STATUS+0x598>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	bd8080e7          	jalr	-1064(ra) # 8000563c <_Z11printStringPKc>
    80004a6c:	00000613          	li	a2,0
    80004a70:	00a00593          	li	a1,10
    80004a74:	0009051b          	sext.w	a0,s2
    80004a78:	00001097          	auipc	ra,0x1
    80004a7c:	d74080e7          	jalr	-652(ra) # 800057ec <_Z8printIntiii>
    80004a80:	00005517          	auipc	a0,0x5
    80004a84:	8a850513          	addi	a0,a0,-1880 # 80009328 <CONSOLE_STATUS+0x318>
    80004a88:	00001097          	auipc	ra,0x1
    80004a8c:	bb4080e7          	jalr	-1100(ra) # 8000563c <_Z11printStringPKc>
    80004a90:	0400006f          	j	80004ad0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004a94:	00005517          	auipc	a0,0x5
    80004a98:	af450513          	addi	a0,a0,-1292 # 80009588 <CONSOLE_STATUS+0x578>
    80004a9c:	00001097          	auipc	ra,0x1
    80004aa0:	ba0080e7          	jalr	-1120(ra) # 8000563c <_Z11printStringPKc>
    80004aa4:	00000613          	li	a2,0
    80004aa8:	00a00593          	li	a1,10
    80004aac:	00048513          	mv	a0,s1
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	d3c080e7          	jalr	-708(ra) # 800057ec <_Z8printIntiii>
    80004ab8:	00005517          	auipc	a0,0x5
    80004abc:	87050513          	addi	a0,a0,-1936 # 80009328 <CONSOLE_STATUS+0x318>
    80004ac0:	00001097          	auipc	ra,0x1
    80004ac4:	b7c080e7          	jalr	-1156(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004ac8:	0014849b          	addiw	s1,s1,1
    80004acc:	0ff4f493          	andi	s1,s1,255
    80004ad0:	00500793          	li	a5,5
    80004ad4:	fc97f0e3          	bgeu	a5,s1,80004a94 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004ad8:	00005517          	auipc	a0,0x5
    80004adc:	a8850513          	addi	a0,a0,-1400 # 80009560 <CONSOLE_STATUS+0x550>
    80004ae0:	00001097          	auipc	ra,0x1
    80004ae4:	b5c080e7          	jalr	-1188(ra) # 8000563c <_Z11printStringPKc>
    finishedC = true;
    80004ae8:	00100793          	li	a5,1
    80004aec:	00007717          	auipc	a4,0x7
    80004af0:	12f702a3          	sb	a5,293(a4) # 8000bc11 <_ZL9finishedC>
    thread_dispatch();
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	8d4080e7          	jalr	-1836(ra) # 800013c8 <_Z15thread_dispatchv>
}
    80004afc:	01813083          	ld	ra,24(sp)
    80004b00:	01013403          	ld	s0,16(sp)
    80004b04:	00813483          	ld	s1,8(sp)
    80004b08:	00013903          	ld	s2,0(sp)
    80004b0c:	02010113          	addi	sp,sp,32
    80004b10:	00008067          	ret

0000000080004b14 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004b14:	fe010113          	addi	sp,sp,-32
    80004b18:	00113c23          	sd	ra,24(sp)
    80004b1c:	00813823          	sd	s0,16(sp)
    80004b20:	00913423          	sd	s1,8(sp)
    80004b24:	01213023          	sd	s2,0(sp)
    80004b28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004b2c:	00000913          	li	s2,0
    80004b30:	0380006f          	j	80004b68 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004b34:	ffffd097          	auipc	ra,0xffffd
    80004b38:	894080e7          	jalr	-1900(ra) # 800013c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004b3c:	00148493          	addi	s1,s1,1
    80004b40:	000027b7          	lui	a5,0x2
    80004b44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b48:	0097ee63          	bltu	a5,s1,80004b64 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b4c:	00000713          	li	a4,0
    80004b50:	000077b7          	lui	a5,0x7
    80004b54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b58:	fce7eee3          	bltu	a5,a4,80004b34 <_ZL11workerBodyBPv+0x20>
    80004b5c:	00170713          	addi	a4,a4,1
    80004b60:	ff1ff06f          	j	80004b50 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004b64:	00190913          	addi	s2,s2,1
    80004b68:	00f00793          	li	a5,15
    80004b6c:	0527e063          	bltu	a5,s2,80004bac <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004b70:	00005517          	auipc	a0,0x5
    80004b74:	a0050513          	addi	a0,a0,-1536 # 80009570 <CONSOLE_STATUS+0x560>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	ac4080e7          	jalr	-1340(ra) # 8000563c <_Z11printStringPKc>
    80004b80:	00000613          	li	a2,0
    80004b84:	00a00593          	li	a1,10
    80004b88:	0009051b          	sext.w	a0,s2
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	c60080e7          	jalr	-928(ra) # 800057ec <_Z8printIntiii>
    80004b94:	00004517          	auipc	a0,0x4
    80004b98:	79450513          	addi	a0,a0,1940 # 80009328 <CONSOLE_STATUS+0x318>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	aa0080e7          	jalr	-1376(ra) # 8000563c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ba4:	00000493          	li	s1,0
    80004ba8:	f99ff06f          	j	80004b40 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004bac:	00005517          	auipc	a0,0x5
    80004bb0:	9cc50513          	addi	a0,a0,-1588 # 80009578 <CONSOLE_STATUS+0x568>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	a88080e7          	jalr	-1400(ra) # 8000563c <_Z11printStringPKc>
    finishedB = true;
    80004bbc:	00100793          	li	a5,1
    80004bc0:	00007717          	auipc	a4,0x7
    80004bc4:	04f70923          	sb	a5,82(a4) # 8000bc12 <_ZL9finishedB>
    thread_dispatch();
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	800080e7          	jalr	-2048(ra) # 800013c8 <_Z15thread_dispatchv>
}
    80004bd0:	01813083          	ld	ra,24(sp)
    80004bd4:	01013403          	ld	s0,16(sp)
    80004bd8:	00813483          	ld	s1,8(sp)
    80004bdc:	00013903          	ld	s2,0(sp)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00008067          	ret

0000000080004be8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004be8:	fe010113          	addi	sp,sp,-32
    80004bec:	00113c23          	sd	ra,24(sp)
    80004bf0:	00813823          	sd	s0,16(sp)
    80004bf4:	00913423          	sd	s1,8(sp)
    80004bf8:	01213023          	sd	s2,0(sp)
    80004bfc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004c00:	00000913          	li	s2,0
    80004c04:	0380006f          	j	80004c3c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004c08:	ffffc097          	auipc	ra,0xffffc
    80004c0c:	7c0080e7          	jalr	1984(ra) # 800013c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c10:	00148493          	addi	s1,s1,1
    80004c14:	000027b7          	lui	a5,0x2
    80004c18:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c1c:	0097ee63          	bltu	a5,s1,80004c38 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c20:	00000713          	li	a4,0
    80004c24:	000077b7          	lui	a5,0x7
    80004c28:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c2c:	fce7eee3          	bltu	a5,a4,80004c08 <_ZL11workerBodyAPv+0x20>
    80004c30:	00170713          	addi	a4,a4,1
    80004c34:	ff1ff06f          	j	80004c24 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004c38:	00190913          	addi	s2,s2,1
    80004c3c:	00900793          	li	a5,9
    80004c40:	0527e063          	bltu	a5,s2,80004c80 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004c44:	00005517          	auipc	a0,0x5
    80004c48:	91450513          	addi	a0,a0,-1772 # 80009558 <CONSOLE_STATUS+0x548>
    80004c4c:	00001097          	auipc	ra,0x1
    80004c50:	9f0080e7          	jalr	-1552(ra) # 8000563c <_Z11printStringPKc>
    80004c54:	00000613          	li	a2,0
    80004c58:	00a00593          	li	a1,10
    80004c5c:	0009051b          	sext.w	a0,s2
    80004c60:	00001097          	auipc	ra,0x1
    80004c64:	b8c080e7          	jalr	-1140(ra) # 800057ec <_Z8printIntiii>
    80004c68:	00004517          	auipc	a0,0x4
    80004c6c:	6c050513          	addi	a0,a0,1728 # 80009328 <CONSOLE_STATUS+0x318>
    80004c70:	00001097          	auipc	ra,0x1
    80004c74:	9cc080e7          	jalr	-1588(ra) # 8000563c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004c78:	00000493          	li	s1,0
    80004c7c:	f99ff06f          	j	80004c14 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004c80:	00005517          	auipc	a0,0x5
    80004c84:	8e050513          	addi	a0,a0,-1824 # 80009560 <CONSOLE_STATUS+0x550>
    80004c88:	00001097          	auipc	ra,0x1
    80004c8c:	9b4080e7          	jalr	-1612(ra) # 8000563c <_Z11printStringPKc>
    finishedA = true;
    80004c90:	00100793          	li	a5,1
    80004c94:	00007717          	auipc	a4,0x7
    80004c98:	f6f70fa3          	sb	a5,-129(a4) # 8000bc13 <_ZL9finishedA>
}
    80004c9c:	01813083          	ld	ra,24(sp)
    80004ca0:	01013403          	ld	s0,16(sp)
    80004ca4:	00813483          	ld	s1,8(sp)
    80004ca8:	00013903          	ld	s2,0(sp)
    80004cac:	02010113          	addi	sp,sp,32
    80004cb0:	00008067          	ret

0000000080004cb4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004cb4:	fd010113          	addi	sp,sp,-48
    80004cb8:	02113423          	sd	ra,40(sp)
    80004cbc:	02813023          	sd	s0,32(sp)
    80004cc0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004cc4:	00000613          	li	a2,0
    80004cc8:	00000597          	auipc	a1,0x0
    80004ccc:	f2058593          	addi	a1,a1,-224 # 80004be8 <_ZL11workerBodyAPv>
    80004cd0:	fd040513          	addi	a0,s0,-48
    80004cd4:	ffffc097          	auipc	ra,0xffffc
    80004cd8:	5b0080e7          	jalr	1456(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004cdc:	00005517          	auipc	a0,0x5
    80004ce0:	91450513          	addi	a0,a0,-1772 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	958080e7          	jalr	-1704(ra) # 8000563c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004cec:	00000613          	li	a2,0
    80004cf0:	00000597          	auipc	a1,0x0
    80004cf4:	e2458593          	addi	a1,a1,-476 # 80004b14 <_ZL11workerBodyBPv>
    80004cf8:	fd840513          	addi	a0,s0,-40
    80004cfc:	ffffc097          	auipc	ra,0xffffc
    80004d00:	588080e7          	jalr	1416(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004d04:	00005517          	auipc	a0,0x5
    80004d08:	90450513          	addi	a0,a0,-1788 # 80009608 <CONSOLE_STATUS+0x5f8>
    80004d0c:	00001097          	auipc	ra,0x1
    80004d10:	930080e7          	jalr	-1744(ra) # 8000563c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004d14:	00000613          	li	a2,0
    80004d18:	00000597          	auipc	a1,0x0
    80004d1c:	c7c58593          	addi	a1,a1,-900 # 80004994 <_ZL11workerBodyCPv>
    80004d20:	fe040513          	addi	a0,s0,-32
    80004d24:	ffffc097          	auipc	ra,0xffffc
    80004d28:	560080e7          	jalr	1376(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004d2c:	00005517          	auipc	a0,0x5
    80004d30:	8f450513          	addi	a0,a0,-1804 # 80009620 <CONSOLE_STATUS+0x610>
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	908080e7          	jalr	-1784(ra) # 8000563c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004d3c:	00000613          	li	a2,0
    80004d40:	00000597          	auipc	a1,0x0
    80004d44:	b0c58593          	addi	a1,a1,-1268 # 8000484c <_ZL11workerBodyDPv>
    80004d48:	fe840513          	addi	a0,s0,-24
    80004d4c:	ffffc097          	auipc	ra,0xffffc
    80004d50:	538080e7          	jalr	1336(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004d54:	00005517          	auipc	a0,0x5
    80004d58:	8e450513          	addi	a0,a0,-1820 # 80009638 <CONSOLE_STATUS+0x628>
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	8e0080e7          	jalr	-1824(ra) # 8000563c <_Z11printStringPKc>
    80004d64:	00c0006f          	j	80004d70 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004d68:	ffffc097          	auipc	ra,0xffffc
    80004d6c:	660080e7          	jalr	1632(ra) # 800013c8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004d70:	00007797          	auipc	a5,0x7
    80004d74:	ea37c783          	lbu	a5,-349(a5) # 8000bc13 <_ZL9finishedA>
    80004d78:	fe0788e3          	beqz	a5,80004d68 <_Z18Threads_C_API_testv+0xb4>
    80004d7c:	00007797          	auipc	a5,0x7
    80004d80:	e967c783          	lbu	a5,-362(a5) # 8000bc12 <_ZL9finishedB>
    80004d84:	fe0782e3          	beqz	a5,80004d68 <_Z18Threads_C_API_testv+0xb4>
    80004d88:	00007797          	auipc	a5,0x7
    80004d8c:	e897c783          	lbu	a5,-375(a5) # 8000bc11 <_ZL9finishedC>
    80004d90:	fc078ce3          	beqz	a5,80004d68 <_Z18Threads_C_API_testv+0xb4>
    80004d94:	00007797          	auipc	a5,0x7
    80004d98:	e7c7c783          	lbu	a5,-388(a5) # 8000bc10 <_ZL9finishedD>
    80004d9c:	fc0786e3          	beqz	a5,80004d68 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004da0:	02813083          	ld	ra,40(sp)
    80004da4:	02013403          	ld	s0,32(sp)
    80004da8:	03010113          	addi	sp,sp,48
    80004dac:	00008067          	ret

0000000080004db0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004db0:	fd010113          	addi	sp,sp,-48
    80004db4:	02113423          	sd	ra,40(sp)
    80004db8:	02813023          	sd	s0,32(sp)
    80004dbc:	00913c23          	sd	s1,24(sp)
    80004dc0:	01213823          	sd	s2,16(sp)
    80004dc4:	01313423          	sd	s3,8(sp)
    80004dc8:	03010413          	addi	s0,sp,48
    80004dcc:	00050993          	mv	s3,a0
    80004dd0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004dd4:	00000913          	li	s2,0
    80004dd8:	00c0006f          	j	80004de4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ddc:	ffffe097          	auipc	ra,0xffffe
    80004de0:	bb4080e7          	jalr	-1100(ra) # 80002990 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004de4:	ffffc097          	auipc	ra,0xffffc
    80004de8:	7ec080e7          	jalr	2028(ra) # 800015d0 <_Z4getcv>
    80004dec:	0005059b          	sext.w	a1,a0
    80004df0:	01b00793          	li	a5,27
    80004df4:	02f58a63          	beq	a1,a5,80004e28 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004df8:	0084b503          	ld	a0,8(s1)
    80004dfc:	00001097          	auipc	ra,0x1
    80004e00:	c64080e7          	jalr	-924(ra) # 80005a60 <_ZN9BufferCPP3putEi>
        i++;
    80004e04:	0019071b          	addiw	a4,s2,1
    80004e08:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004e0c:	0004a683          	lw	a3,0(s1)
    80004e10:	0026979b          	slliw	a5,a3,0x2
    80004e14:	00d787bb          	addw	a5,a5,a3
    80004e18:	0017979b          	slliw	a5,a5,0x1
    80004e1c:	02f767bb          	remw	a5,a4,a5
    80004e20:	fc0792e3          	bnez	a5,80004de4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004e24:	fb9ff06f          	j	80004ddc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004e28:	00100793          	li	a5,1
    80004e2c:	00007717          	auipc	a4,0x7
    80004e30:	def72623          	sw	a5,-532(a4) # 8000bc18 <_ZL9threadEnd>
    td->buffer->put('!');
    80004e34:	0209b783          	ld	a5,32(s3)
    80004e38:	02100593          	li	a1,33
    80004e3c:	0087b503          	ld	a0,8(a5)
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	c20080e7          	jalr	-992(ra) # 80005a60 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004e48:	0104b503          	ld	a0,16(s1)
    80004e4c:	ffffe097          	auipc	ra,0xffffe
    80004e50:	bfc080e7          	jalr	-1028(ra) # 80002a48 <_ZN9Semaphore6signalEv>
}
    80004e54:	02813083          	ld	ra,40(sp)
    80004e58:	02013403          	ld	s0,32(sp)
    80004e5c:	01813483          	ld	s1,24(sp)
    80004e60:	01013903          	ld	s2,16(sp)
    80004e64:	00813983          	ld	s3,8(sp)
    80004e68:	03010113          	addi	sp,sp,48
    80004e6c:	00008067          	ret

0000000080004e70 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004e70:	fe010113          	addi	sp,sp,-32
    80004e74:	00113c23          	sd	ra,24(sp)
    80004e78:	00813823          	sd	s0,16(sp)
    80004e7c:	00913423          	sd	s1,8(sp)
    80004e80:	01213023          	sd	s2,0(sp)
    80004e84:	02010413          	addi	s0,sp,32
    80004e88:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004e8c:	00000913          	li	s2,0
    80004e90:	00c0006f          	j	80004e9c <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004e94:	ffffe097          	auipc	ra,0xffffe
    80004e98:	afc080e7          	jalr	-1284(ra) # 80002990 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004e9c:	00007797          	auipc	a5,0x7
    80004ea0:	d7c7a783          	lw	a5,-644(a5) # 8000bc18 <_ZL9threadEnd>
    80004ea4:	02079e63          	bnez	a5,80004ee0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004ea8:	0004a583          	lw	a1,0(s1)
    80004eac:	0305859b          	addiw	a1,a1,48
    80004eb0:	0084b503          	ld	a0,8(s1)
    80004eb4:	00001097          	auipc	ra,0x1
    80004eb8:	bac080e7          	jalr	-1108(ra) # 80005a60 <_ZN9BufferCPP3putEi>
        i++;
    80004ebc:	0019071b          	addiw	a4,s2,1
    80004ec0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004ec4:	0004a683          	lw	a3,0(s1)
    80004ec8:	0026979b          	slliw	a5,a3,0x2
    80004ecc:	00d787bb          	addw	a5,a5,a3
    80004ed0:	0017979b          	slliw	a5,a5,0x1
    80004ed4:	02f767bb          	remw	a5,a4,a5
    80004ed8:	fc0792e3          	bnez	a5,80004e9c <_ZN12ProducerSync8producerEPv+0x2c>
    80004edc:	fb9ff06f          	j	80004e94 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004ee0:	0104b503          	ld	a0,16(s1)
    80004ee4:	ffffe097          	auipc	ra,0xffffe
    80004ee8:	b64080e7          	jalr	-1180(ra) # 80002a48 <_ZN9Semaphore6signalEv>
}
    80004eec:	01813083          	ld	ra,24(sp)
    80004ef0:	01013403          	ld	s0,16(sp)
    80004ef4:	00813483          	ld	s1,8(sp)
    80004ef8:	00013903          	ld	s2,0(sp)
    80004efc:	02010113          	addi	sp,sp,32
    80004f00:	00008067          	ret

0000000080004f04 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004f04:	fd010113          	addi	sp,sp,-48
    80004f08:	02113423          	sd	ra,40(sp)
    80004f0c:	02813023          	sd	s0,32(sp)
    80004f10:	00913c23          	sd	s1,24(sp)
    80004f14:	01213823          	sd	s2,16(sp)
    80004f18:	01313423          	sd	s3,8(sp)
    80004f1c:	01413023          	sd	s4,0(sp)
    80004f20:	03010413          	addi	s0,sp,48
    80004f24:	00050993          	mv	s3,a0
    80004f28:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004f2c:	00000a13          	li	s4,0
    80004f30:	01c0006f          	j	80004f4c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004f34:	ffffe097          	auipc	ra,0xffffe
    80004f38:	a5c080e7          	jalr	-1444(ra) # 80002990 <_ZN6Thread8dispatchEv>
    80004f3c:	0500006f          	j	80004f8c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004f40:	00a00513          	li	a0,10
    80004f44:	ffffc097          	auipc	ra,0xffffc
    80004f48:	6cc080e7          	jalr	1740(ra) # 80001610 <_Z4putcc>
    while (!threadEnd) {
    80004f4c:	00007797          	auipc	a5,0x7
    80004f50:	ccc7a783          	lw	a5,-820(a5) # 8000bc18 <_ZL9threadEnd>
    80004f54:	06079263          	bnez	a5,80004fb8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004f58:	00893503          	ld	a0,8(s2)
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	b94080e7          	jalr	-1132(ra) # 80005af0 <_ZN9BufferCPP3getEv>
        i++;
    80004f64:	001a049b          	addiw	s1,s4,1
    80004f68:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004f6c:	0ff57513          	andi	a0,a0,255
    80004f70:	ffffc097          	auipc	ra,0xffffc
    80004f74:	6a0080e7          	jalr	1696(ra) # 80001610 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004f78:	00092703          	lw	a4,0(s2)
    80004f7c:	0027179b          	slliw	a5,a4,0x2
    80004f80:	00e787bb          	addw	a5,a5,a4
    80004f84:	02f4e7bb          	remw	a5,s1,a5
    80004f88:	fa0786e3          	beqz	a5,80004f34 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004f8c:	05000793          	li	a5,80
    80004f90:	02f4e4bb          	remw	s1,s1,a5
    80004f94:	fa049ce3          	bnez	s1,80004f4c <_ZN12ConsumerSync8consumerEPv+0x48>
    80004f98:	fa9ff06f          	j	80004f40 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004f9c:	0209b783          	ld	a5,32(s3)
    80004fa0:	0087b503          	ld	a0,8(a5)
    80004fa4:	00001097          	auipc	ra,0x1
    80004fa8:	b4c080e7          	jalr	-1204(ra) # 80005af0 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004fac:	0ff57513          	andi	a0,a0,255
    80004fb0:	ffffe097          	auipc	ra,0xffffe
    80004fb4:	b54080e7          	jalr	-1196(ra) # 80002b04 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004fb8:	0209b783          	ld	a5,32(s3)
    80004fbc:	0087b503          	ld	a0,8(a5)
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	bbc080e7          	jalr	-1092(ra) # 80005b7c <_ZN9BufferCPP6getCntEv>
    80004fc8:	fca04ae3          	bgtz	a0,80004f9c <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004fcc:	01093503          	ld	a0,16(s2)
    80004fd0:	ffffe097          	auipc	ra,0xffffe
    80004fd4:	a78080e7          	jalr	-1416(ra) # 80002a48 <_ZN9Semaphore6signalEv>
}
    80004fd8:	02813083          	ld	ra,40(sp)
    80004fdc:	02013403          	ld	s0,32(sp)
    80004fe0:	01813483          	ld	s1,24(sp)
    80004fe4:	01013903          	ld	s2,16(sp)
    80004fe8:	00813983          	ld	s3,8(sp)
    80004fec:	00013a03          	ld	s4,0(sp)
    80004ff0:	03010113          	addi	sp,sp,48
    80004ff4:	00008067          	ret

0000000080004ff8 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004ff8:	f8010113          	addi	sp,sp,-128
    80004ffc:	06113c23          	sd	ra,120(sp)
    80005000:	06813823          	sd	s0,112(sp)
    80005004:	06913423          	sd	s1,104(sp)
    80005008:	07213023          	sd	s2,96(sp)
    8000500c:	05313c23          	sd	s3,88(sp)
    80005010:	05413823          	sd	s4,80(sp)
    80005014:	05513423          	sd	s5,72(sp)
    80005018:	05613023          	sd	s6,64(sp)
    8000501c:	03713c23          	sd	s7,56(sp)
    80005020:	03813823          	sd	s8,48(sp)
    80005024:	03913423          	sd	s9,40(sp)
    80005028:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000502c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005030:	00004517          	auipc	a0,0x4
    80005034:	44050513          	addi	a0,a0,1088 # 80009470 <CONSOLE_STATUS+0x460>
    80005038:	00000097          	auipc	ra,0x0
    8000503c:	604080e7          	jalr	1540(ra) # 8000563c <_Z11printStringPKc>
    getString(input, 30);
    80005040:	01e00593          	li	a1,30
    80005044:	f8040493          	addi	s1,s0,-128
    80005048:	00048513          	mv	a0,s1
    8000504c:	00000097          	auipc	ra,0x0
    80005050:	678080e7          	jalr	1656(ra) # 800056c4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005054:	00048513          	mv	a0,s1
    80005058:	00000097          	auipc	ra,0x0
    8000505c:	744080e7          	jalr	1860(ra) # 8000579c <_Z11stringToIntPKc>
    80005060:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005064:	00004517          	auipc	a0,0x4
    80005068:	42c50513          	addi	a0,a0,1068 # 80009490 <CONSOLE_STATUS+0x480>
    8000506c:	00000097          	auipc	ra,0x0
    80005070:	5d0080e7          	jalr	1488(ra) # 8000563c <_Z11printStringPKc>
    getString(input, 30);
    80005074:	01e00593          	li	a1,30
    80005078:	00048513          	mv	a0,s1
    8000507c:	00000097          	auipc	ra,0x0
    80005080:	648080e7          	jalr	1608(ra) # 800056c4 <_Z9getStringPci>
    n = stringToInt(input);
    80005084:	00048513          	mv	a0,s1
    80005088:	00000097          	auipc	ra,0x0
    8000508c:	714080e7          	jalr	1812(ra) # 8000579c <_Z11stringToIntPKc>
    80005090:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005094:	00004517          	auipc	a0,0x4
    80005098:	41c50513          	addi	a0,a0,1052 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000509c:	00000097          	auipc	ra,0x0
    800050a0:	5a0080e7          	jalr	1440(ra) # 8000563c <_Z11printStringPKc>
    800050a4:	00000613          	li	a2,0
    800050a8:	00a00593          	li	a1,10
    800050ac:	00090513          	mv	a0,s2
    800050b0:	00000097          	auipc	ra,0x0
    800050b4:	73c080e7          	jalr	1852(ra) # 800057ec <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800050b8:	00004517          	auipc	a0,0x4
    800050bc:	41050513          	addi	a0,a0,1040 # 800094c8 <CONSOLE_STATUS+0x4b8>
    800050c0:	00000097          	auipc	ra,0x0
    800050c4:	57c080e7          	jalr	1404(ra) # 8000563c <_Z11printStringPKc>
    800050c8:	00000613          	li	a2,0
    800050cc:	00a00593          	li	a1,10
    800050d0:	00048513          	mv	a0,s1
    800050d4:	00000097          	auipc	ra,0x0
    800050d8:	718080e7          	jalr	1816(ra) # 800057ec <_Z8printIntiii>
    printString(".\n");
    800050dc:	00004517          	auipc	a0,0x4
    800050e0:	40450513          	addi	a0,a0,1028 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800050e4:	00000097          	auipc	ra,0x0
    800050e8:	558080e7          	jalr	1368(ra) # 8000563c <_Z11printStringPKc>
    if(threadNum > n) {
    800050ec:	0324c463          	blt	s1,s2,80005114 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800050f0:	03205c63          	blez	s2,80005128 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800050f4:	03800513          	li	a0,56
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	53c080e7          	jalr	1340(ra) # 80002634 <_Znwm>
    80005100:	00050a93          	mv	s5,a0
    80005104:	00048593          	mv	a1,s1
    80005108:	00001097          	auipc	ra,0x1
    8000510c:	804080e7          	jalr	-2044(ra) # 8000590c <_ZN9BufferCPPC1Ei>
    80005110:	0300006f          	j	80005140 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005114:	00004517          	auipc	a0,0x4
    80005118:	3d450513          	addi	a0,a0,980 # 800094e8 <CONSOLE_STATUS+0x4d8>
    8000511c:	00000097          	auipc	ra,0x0
    80005120:	520080e7          	jalr	1312(ra) # 8000563c <_Z11printStringPKc>
        return;
    80005124:	0140006f          	j	80005138 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005128:	00004517          	auipc	a0,0x4
    8000512c:	40050513          	addi	a0,a0,1024 # 80009528 <CONSOLE_STATUS+0x518>
    80005130:	00000097          	auipc	ra,0x0
    80005134:	50c080e7          	jalr	1292(ra) # 8000563c <_Z11printStringPKc>
        return;
    80005138:	000b8113          	mv	sp,s7
    8000513c:	2380006f          	j	80005374 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005140:	01000513          	li	a0,16
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	4f0080e7          	jalr	1264(ra) # 80002634 <_Znwm>
    8000514c:	00050493          	mv	s1,a0
    80005150:	00000593          	li	a1,0
    80005154:	ffffe097          	auipc	ra,0xffffe
    80005158:	88c080e7          	jalr	-1908(ra) # 800029e0 <_ZN9SemaphoreC1Ej>
    8000515c:	00007797          	auipc	a5,0x7
    80005160:	ac97b223          	sd	s1,-1340(a5) # 8000bc20 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005164:	00391793          	slli	a5,s2,0x3
    80005168:	00f78793          	addi	a5,a5,15
    8000516c:	ff07f793          	andi	a5,a5,-16
    80005170:	40f10133          	sub	sp,sp,a5
    80005174:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005178:	0019071b          	addiw	a4,s2,1
    8000517c:	00171793          	slli	a5,a4,0x1
    80005180:	00e787b3          	add	a5,a5,a4
    80005184:	00379793          	slli	a5,a5,0x3
    80005188:	00f78793          	addi	a5,a5,15
    8000518c:	ff07f793          	andi	a5,a5,-16
    80005190:	40f10133          	sub	sp,sp,a5
    80005194:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005198:	00191c13          	slli	s8,s2,0x1
    8000519c:	012c07b3          	add	a5,s8,s2
    800051a0:	00379793          	slli	a5,a5,0x3
    800051a4:	00fa07b3          	add	a5,s4,a5
    800051a8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800051ac:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800051b0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800051b4:	02800513          	li	a0,40
    800051b8:	ffffd097          	auipc	ra,0xffffd
    800051bc:	47c080e7          	jalr	1148(ra) # 80002634 <_Znwm>
    800051c0:	00050b13          	mv	s6,a0
    800051c4:	012c0c33          	add	s8,s8,s2
    800051c8:	003c1c13          	slli	s8,s8,0x3
    800051cc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800051d0:	ffffd097          	auipc	ra,0xffffd
    800051d4:	73c080e7          	jalr	1852(ra) # 8000290c <_ZN6ThreadC1Ev>
    800051d8:	00007797          	auipc	a5,0x7
    800051dc:	91078793          	addi	a5,a5,-1776 # 8000bae8 <_ZTV12ConsumerSync+0x10>
    800051e0:	00fb3023          	sd	a5,0(s6)
    800051e4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800051e8:	000b0513          	mv	a0,s6
    800051ec:	ffffd097          	auipc	ra,0xffffd
    800051f0:	750080e7          	jalr	1872(ra) # 8000293c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800051f4:	00000493          	li	s1,0
    800051f8:	0380006f          	j	80005230 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800051fc:	00007797          	auipc	a5,0x7
    80005200:	8c478793          	addi	a5,a5,-1852 # 8000bac0 <_ZTV12ProducerSync+0x10>
    80005204:	00fcb023          	sd	a5,0(s9)
    80005208:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000520c:	00349793          	slli	a5,s1,0x3
    80005210:	00f987b3          	add	a5,s3,a5
    80005214:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005218:	00349793          	slli	a5,s1,0x3
    8000521c:	00f987b3          	add	a5,s3,a5
    80005220:	0007b503          	ld	a0,0(a5)
    80005224:	ffffd097          	auipc	ra,0xffffd
    80005228:	718080e7          	jalr	1816(ra) # 8000293c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000522c:	0014849b          	addiw	s1,s1,1
    80005230:	0b24d063          	bge	s1,s2,800052d0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005234:	00149793          	slli	a5,s1,0x1
    80005238:	009787b3          	add	a5,a5,s1
    8000523c:	00379793          	slli	a5,a5,0x3
    80005240:	00fa07b3          	add	a5,s4,a5
    80005244:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005248:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000524c:	00007717          	auipc	a4,0x7
    80005250:	9d473703          	ld	a4,-1580(a4) # 8000bc20 <_ZL10waitForAll>
    80005254:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005258:	02905863          	blez	s1,80005288 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000525c:	02800513          	li	a0,40
    80005260:	ffffd097          	auipc	ra,0xffffd
    80005264:	3d4080e7          	jalr	980(ra) # 80002634 <_Znwm>
    80005268:	00050c93          	mv	s9,a0
    8000526c:	00149c13          	slli	s8,s1,0x1
    80005270:	009c0c33          	add	s8,s8,s1
    80005274:	003c1c13          	slli	s8,s8,0x3
    80005278:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000527c:	ffffd097          	auipc	ra,0xffffd
    80005280:	690080e7          	jalr	1680(ra) # 8000290c <_ZN6ThreadC1Ev>
    80005284:	f79ff06f          	j	800051fc <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005288:	02800513          	li	a0,40
    8000528c:	ffffd097          	auipc	ra,0xffffd
    80005290:	3a8080e7          	jalr	936(ra) # 80002634 <_Znwm>
    80005294:	00050c93          	mv	s9,a0
    80005298:	00149c13          	slli	s8,s1,0x1
    8000529c:	009c0c33          	add	s8,s8,s1
    800052a0:	003c1c13          	slli	s8,s8,0x3
    800052a4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800052a8:	ffffd097          	auipc	ra,0xffffd
    800052ac:	664080e7          	jalr	1636(ra) # 8000290c <_ZN6ThreadC1Ev>
    800052b0:	00006797          	auipc	a5,0x6
    800052b4:	7e878793          	addi	a5,a5,2024 # 8000ba98 <_ZTV16ProducerKeyboard+0x10>
    800052b8:	00fcb023          	sd	a5,0(s9)
    800052bc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800052c0:	00349793          	slli	a5,s1,0x3
    800052c4:	00f987b3          	add	a5,s3,a5
    800052c8:	0197b023          	sd	s9,0(a5)
    800052cc:	f4dff06f          	j	80005218 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800052d0:	ffffd097          	auipc	ra,0xffffd
    800052d4:	6c0080e7          	jalr	1728(ra) # 80002990 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800052d8:	00000493          	li	s1,0
    800052dc:	00994e63          	blt	s2,s1,800052f8 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800052e0:	00007517          	auipc	a0,0x7
    800052e4:	94053503          	ld	a0,-1728(a0) # 8000bc20 <_ZL10waitForAll>
    800052e8:	ffffd097          	auipc	ra,0xffffd
    800052ec:	734080e7          	jalr	1844(ra) # 80002a1c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800052f0:	0014849b          	addiw	s1,s1,1
    800052f4:	fe9ff06f          	j	800052dc <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800052f8:	00000493          	li	s1,0
    800052fc:	0080006f          	j	80005304 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005300:	0014849b          	addiw	s1,s1,1
    80005304:	0324d263          	bge	s1,s2,80005328 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005308:	00349793          	slli	a5,s1,0x3
    8000530c:	00f987b3          	add	a5,s3,a5
    80005310:	0007b503          	ld	a0,0(a5)
    80005314:	fe0506e3          	beqz	a0,80005300 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005318:	00053783          	ld	a5,0(a0)
    8000531c:	0087b783          	ld	a5,8(a5)
    80005320:	000780e7          	jalr	a5
    80005324:	fddff06f          	j	80005300 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005328:	000b0a63          	beqz	s6,8000533c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000532c:	000b3783          	ld	a5,0(s6)
    80005330:	0087b783          	ld	a5,8(a5)
    80005334:	000b0513          	mv	a0,s6
    80005338:	000780e7          	jalr	a5
    delete waitForAll;
    8000533c:	00007517          	auipc	a0,0x7
    80005340:	8e453503          	ld	a0,-1820(a0) # 8000bc20 <_ZL10waitForAll>
    80005344:	00050863          	beqz	a0,80005354 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005348:	00053783          	ld	a5,0(a0)
    8000534c:	0087b783          	ld	a5,8(a5)
    80005350:	000780e7          	jalr	a5
    delete buffer;
    80005354:	000a8e63          	beqz	s5,80005370 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005358:	000a8513          	mv	a0,s5
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	8a8080e7          	jalr	-1880(ra) # 80005c04 <_ZN9BufferCPPD1Ev>
    80005364:	000a8513          	mv	a0,s5
    80005368:	ffffd097          	auipc	ra,0xffffd
    8000536c:	31c080e7          	jalr	796(ra) # 80002684 <_ZdlPv>
    80005370:	000b8113          	mv	sp,s7

}
    80005374:	f8040113          	addi	sp,s0,-128
    80005378:	07813083          	ld	ra,120(sp)
    8000537c:	07013403          	ld	s0,112(sp)
    80005380:	06813483          	ld	s1,104(sp)
    80005384:	06013903          	ld	s2,96(sp)
    80005388:	05813983          	ld	s3,88(sp)
    8000538c:	05013a03          	ld	s4,80(sp)
    80005390:	04813a83          	ld	s5,72(sp)
    80005394:	04013b03          	ld	s6,64(sp)
    80005398:	03813b83          	ld	s7,56(sp)
    8000539c:	03013c03          	ld	s8,48(sp)
    800053a0:	02813c83          	ld	s9,40(sp)
    800053a4:	08010113          	addi	sp,sp,128
    800053a8:	00008067          	ret
    800053ac:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800053b0:	000a8513          	mv	a0,s5
    800053b4:	ffffd097          	auipc	ra,0xffffd
    800053b8:	2d0080e7          	jalr	720(ra) # 80002684 <_ZdlPv>
    800053bc:	00048513          	mv	a0,s1
    800053c0:	00008097          	auipc	ra,0x8
    800053c4:	948080e7          	jalr	-1720(ra) # 8000cd08 <_Unwind_Resume>
    800053c8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800053cc:	00048513          	mv	a0,s1
    800053d0:	ffffd097          	auipc	ra,0xffffd
    800053d4:	2b4080e7          	jalr	692(ra) # 80002684 <_ZdlPv>
    800053d8:	00090513          	mv	a0,s2
    800053dc:	00008097          	auipc	ra,0x8
    800053e0:	92c080e7          	jalr	-1748(ra) # 8000cd08 <_Unwind_Resume>
    800053e4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800053e8:	000b0513          	mv	a0,s6
    800053ec:	ffffd097          	auipc	ra,0xffffd
    800053f0:	298080e7          	jalr	664(ra) # 80002684 <_ZdlPv>
    800053f4:	00048513          	mv	a0,s1
    800053f8:	00008097          	auipc	ra,0x8
    800053fc:	910080e7          	jalr	-1776(ra) # 8000cd08 <_Unwind_Resume>
    80005400:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005404:	000c8513          	mv	a0,s9
    80005408:	ffffd097          	auipc	ra,0xffffd
    8000540c:	27c080e7          	jalr	636(ra) # 80002684 <_ZdlPv>
    80005410:	00048513          	mv	a0,s1
    80005414:	00008097          	auipc	ra,0x8
    80005418:	8f4080e7          	jalr	-1804(ra) # 8000cd08 <_Unwind_Resume>
    8000541c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005420:	000c8513          	mv	a0,s9
    80005424:	ffffd097          	auipc	ra,0xffffd
    80005428:	260080e7          	jalr	608(ra) # 80002684 <_ZdlPv>
    8000542c:	00048513          	mv	a0,s1
    80005430:	00008097          	auipc	ra,0x8
    80005434:	8d8080e7          	jalr	-1832(ra) # 8000cd08 <_Unwind_Resume>

0000000080005438 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005438:	ff010113          	addi	sp,sp,-16
    8000543c:	00113423          	sd	ra,8(sp)
    80005440:	00813023          	sd	s0,0(sp)
    80005444:	01010413          	addi	s0,sp,16
    80005448:	00006797          	auipc	a5,0x6
    8000544c:	6a078793          	addi	a5,a5,1696 # 8000bae8 <_ZTV12ConsumerSync+0x10>
    80005450:	00f53023          	sd	a5,0(a0)
    80005454:	ffffd097          	auipc	ra,0xffffd
    80005458:	394080e7          	jalr	916(ra) # 800027e8 <_ZN6ThreadD1Ev>
    8000545c:	00813083          	ld	ra,8(sp)
    80005460:	00013403          	ld	s0,0(sp)
    80005464:	01010113          	addi	sp,sp,16
    80005468:	00008067          	ret

000000008000546c <_ZN12ConsumerSyncD0Ev>:
    8000546c:	fe010113          	addi	sp,sp,-32
    80005470:	00113c23          	sd	ra,24(sp)
    80005474:	00813823          	sd	s0,16(sp)
    80005478:	00913423          	sd	s1,8(sp)
    8000547c:	02010413          	addi	s0,sp,32
    80005480:	00050493          	mv	s1,a0
    80005484:	00006797          	auipc	a5,0x6
    80005488:	66478793          	addi	a5,a5,1636 # 8000bae8 <_ZTV12ConsumerSync+0x10>
    8000548c:	00f53023          	sd	a5,0(a0)
    80005490:	ffffd097          	auipc	ra,0xffffd
    80005494:	358080e7          	jalr	856(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80005498:	00048513          	mv	a0,s1
    8000549c:	ffffd097          	auipc	ra,0xffffd
    800054a0:	1e8080e7          	jalr	488(ra) # 80002684 <_ZdlPv>
    800054a4:	01813083          	ld	ra,24(sp)
    800054a8:	01013403          	ld	s0,16(sp)
    800054ac:	00813483          	ld	s1,8(sp)
    800054b0:	02010113          	addi	sp,sp,32
    800054b4:	00008067          	ret

00000000800054b8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800054b8:	ff010113          	addi	sp,sp,-16
    800054bc:	00113423          	sd	ra,8(sp)
    800054c0:	00813023          	sd	s0,0(sp)
    800054c4:	01010413          	addi	s0,sp,16
    800054c8:	00006797          	auipc	a5,0x6
    800054cc:	5f878793          	addi	a5,a5,1528 # 8000bac0 <_ZTV12ProducerSync+0x10>
    800054d0:	00f53023          	sd	a5,0(a0)
    800054d4:	ffffd097          	auipc	ra,0xffffd
    800054d8:	314080e7          	jalr	788(ra) # 800027e8 <_ZN6ThreadD1Ev>
    800054dc:	00813083          	ld	ra,8(sp)
    800054e0:	00013403          	ld	s0,0(sp)
    800054e4:	01010113          	addi	sp,sp,16
    800054e8:	00008067          	ret

00000000800054ec <_ZN12ProducerSyncD0Ev>:
    800054ec:	fe010113          	addi	sp,sp,-32
    800054f0:	00113c23          	sd	ra,24(sp)
    800054f4:	00813823          	sd	s0,16(sp)
    800054f8:	00913423          	sd	s1,8(sp)
    800054fc:	02010413          	addi	s0,sp,32
    80005500:	00050493          	mv	s1,a0
    80005504:	00006797          	auipc	a5,0x6
    80005508:	5bc78793          	addi	a5,a5,1468 # 8000bac0 <_ZTV12ProducerSync+0x10>
    8000550c:	00f53023          	sd	a5,0(a0)
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	2d8080e7          	jalr	728(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80005518:	00048513          	mv	a0,s1
    8000551c:	ffffd097          	auipc	ra,0xffffd
    80005520:	168080e7          	jalr	360(ra) # 80002684 <_ZdlPv>
    80005524:	01813083          	ld	ra,24(sp)
    80005528:	01013403          	ld	s0,16(sp)
    8000552c:	00813483          	ld	s1,8(sp)
    80005530:	02010113          	addi	sp,sp,32
    80005534:	00008067          	ret

0000000080005538 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005538:	ff010113          	addi	sp,sp,-16
    8000553c:	00113423          	sd	ra,8(sp)
    80005540:	00813023          	sd	s0,0(sp)
    80005544:	01010413          	addi	s0,sp,16
    80005548:	00006797          	auipc	a5,0x6
    8000554c:	55078793          	addi	a5,a5,1360 # 8000ba98 <_ZTV16ProducerKeyboard+0x10>
    80005550:	00f53023          	sd	a5,0(a0)
    80005554:	ffffd097          	auipc	ra,0xffffd
    80005558:	294080e7          	jalr	660(ra) # 800027e8 <_ZN6ThreadD1Ev>
    8000555c:	00813083          	ld	ra,8(sp)
    80005560:	00013403          	ld	s0,0(sp)
    80005564:	01010113          	addi	sp,sp,16
    80005568:	00008067          	ret

000000008000556c <_ZN16ProducerKeyboardD0Ev>:
    8000556c:	fe010113          	addi	sp,sp,-32
    80005570:	00113c23          	sd	ra,24(sp)
    80005574:	00813823          	sd	s0,16(sp)
    80005578:	00913423          	sd	s1,8(sp)
    8000557c:	02010413          	addi	s0,sp,32
    80005580:	00050493          	mv	s1,a0
    80005584:	00006797          	auipc	a5,0x6
    80005588:	51478793          	addi	a5,a5,1300 # 8000ba98 <_ZTV16ProducerKeyboard+0x10>
    8000558c:	00f53023          	sd	a5,0(a0)
    80005590:	ffffd097          	auipc	ra,0xffffd
    80005594:	258080e7          	jalr	600(ra) # 800027e8 <_ZN6ThreadD1Ev>
    80005598:	00048513          	mv	a0,s1
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	0e8080e7          	jalr	232(ra) # 80002684 <_ZdlPv>
    800055a4:	01813083          	ld	ra,24(sp)
    800055a8:	01013403          	ld	s0,16(sp)
    800055ac:	00813483          	ld	s1,8(sp)
    800055b0:	02010113          	addi	sp,sp,32
    800055b4:	00008067          	ret

00000000800055b8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800055b8:	ff010113          	addi	sp,sp,-16
    800055bc:	00113423          	sd	ra,8(sp)
    800055c0:	00813023          	sd	s0,0(sp)
    800055c4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800055c8:	02053583          	ld	a1,32(a0)
    800055cc:	fffff097          	auipc	ra,0xfffff
    800055d0:	7e4080e7          	jalr	2020(ra) # 80004db0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800055d4:	00813083          	ld	ra,8(sp)
    800055d8:	00013403          	ld	s0,0(sp)
    800055dc:	01010113          	addi	sp,sp,16
    800055e0:	00008067          	ret

00000000800055e4 <_ZN12ProducerSync3runEv>:
    void run() override {
    800055e4:	ff010113          	addi	sp,sp,-16
    800055e8:	00113423          	sd	ra,8(sp)
    800055ec:	00813023          	sd	s0,0(sp)
    800055f0:	01010413          	addi	s0,sp,16
        producer(td);
    800055f4:	02053583          	ld	a1,32(a0)
    800055f8:	00000097          	auipc	ra,0x0
    800055fc:	878080e7          	jalr	-1928(ra) # 80004e70 <_ZN12ProducerSync8producerEPv>
    }
    80005600:	00813083          	ld	ra,8(sp)
    80005604:	00013403          	ld	s0,0(sp)
    80005608:	01010113          	addi	sp,sp,16
    8000560c:	00008067          	ret

0000000080005610 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005610:	ff010113          	addi	sp,sp,-16
    80005614:	00113423          	sd	ra,8(sp)
    80005618:	00813023          	sd	s0,0(sp)
    8000561c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005620:	02053583          	ld	a1,32(a0)
    80005624:	00000097          	auipc	ra,0x0
    80005628:	8e0080e7          	jalr	-1824(ra) # 80004f04 <_ZN12ConsumerSync8consumerEPv>
    }
    8000562c:	00813083          	ld	ra,8(sp)
    80005630:	00013403          	ld	s0,0(sp)
    80005634:	01010113          	addi	sp,sp,16
    80005638:	00008067          	ret

000000008000563c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000563c:	fe010113          	addi	sp,sp,-32
    80005640:	00113c23          	sd	ra,24(sp)
    80005644:	00813823          	sd	s0,16(sp)
    80005648:	00913423          	sd	s1,8(sp)
    8000564c:	02010413          	addi	s0,sp,32
    80005650:	00050493          	mv	s1,a0
    LOCK();
    80005654:	00100613          	li	a2,1
    80005658:	00000593          	li	a1,0
    8000565c:	00006517          	auipc	a0,0x6
    80005660:	5cc50513          	addi	a0,a0,1484 # 8000bc28 <lockPrint>
    80005664:	ffffc097          	auipc	ra,0xffffc
    80005668:	b40080e7          	jalr	-1216(ra) # 800011a4 <copy_and_swap>
    8000566c:	00050863          	beqz	a0,8000567c <_Z11printStringPKc+0x40>
    80005670:	ffffc097          	auipc	ra,0xffffc
    80005674:	d58080e7          	jalr	-680(ra) # 800013c8 <_Z15thread_dispatchv>
    80005678:	fddff06f          	j	80005654 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    8000567c:	0004c503          	lbu	a0,0(s1)
    80005680:	00050a63          	beqz	a0,80005694 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005684:	ffffc097          	auipc	ra,0xffffc
    80005688:	f8c080e7          	jalr	-116(ra) # 80001610 <_Z4putcc>
        string++;
    8000568c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005690:	fedff06f          	j	8000567c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005694:	00000613          	li	a2,0
    80005698:	00100593          	li	a1,1
    8000569c:	00006517          	auipc	a0,0x6
    800056a0:	58c50513          	addi	a0,a0,1420 # 8000bc28 <lockPrint>
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	b00080e7          	jalr	-1280(ra) # 800011a4 <copy_and_swap>
    800056ac:	fe0514e3          	bnez	a0,80005694 <_Z11printStringPKc+0x58>
}
    800056b0:	01813083          	ld	ra,24(sp)
    800056b4:	01013403          	ld	s0,16(sp)
    800056b8:	00813483          	ld	s1,8(sp)
    800056bc:	02010113          	addi	sp,sp,32
    800056c0:	00008067          	ret

00000000800056c4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800056c4:	fd010113          	addi	sp,sp,-48
    800056c8:	02113423          	sd	ra,40(sp)
    800056cc:	02813023          	sd	s0,32(sp)
    800056d0:	00913c23          	sd	s1,24(sp)
    800056d4:	01213823          	sd	s2,16(sp)
    800056d8:	01313423          	sd	s3,8(sp)
    800056dc:	01413023          	sd	s4,0(sp)
    800056e0:	03010413          	addi	s0,sp,48
    800056e4:	00050993          	mv	s3,a0
    800056e8:	00058a13          	mv	s4,a1
    LOCK();
    800056ec:	00100613          	li	a2,1
    800056f0:	00000593          	li	a1,0
    800056f4:	00006517          	auipc	a0,0x6
    800056f8:	53450513          	addi	a0,a0,1332 # 8000bc28 <lockPrint>
    800056fc:	ffffc097          	auipc	ra,0xffffc
    80005700:	aa8080e7          	jalr	-1368(ra) # 800011a4 <copy_and_swap>
    80005704:	00050863          	beqz	a0,80005714 <_Z9getStringPci+0x50>
    80005708:	ffffc097          	auipc	ra,0xffffc
    8000570c:	cc0080e7          	jalr	-832(ra) # 800013c8 <_Z15thread_dispatchv>
    80005710:	fddff06f          	j	800056ec <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005714:	00000913          	li	s2,0
    80005718:	00090493          	mv	s1,s2
    8000571c:	0019091b          	addiw	s2,s2,1
    80005720:	03495a63          	bge	s2,s4,80005754 <_Z9getStringPci+0x90>
        cc = getc();
    80005724:	ffffc097          	auipc	ra,0xffffc
    80005728:	eac080e7          	jalr	-340(ra) # 800015d0 <_Z4getcv>
        if(cc < 1)
    8000572c:	02050463          	beqz	a0,80005754 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005730:	009984b3          	add	s1,s3,s1
    80005734:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005738:	00a00793          	li	a5,10
    8000573c:	00f50a63          	beq	a0,a5,80005750 <_Z9getStringPci+0x8c>
    80005740:	00d00793          	li	a5,13
    80005744:	fcf51ae3          	bne	a0,a5,80005718 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005748:	00090493          	mv	s1,s2
    8000574c:	0080006f          	j	80005754 <_Z9getStringPci+0x90>
    80005750:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005754:	009984b3          	add	s1,s3,s1
    80005758:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000575c:	00000613          	li	a2,0
    80005760:	00100593          	li	a1,1
    80005764:	00006517          	auipc	a0,0x6
    80005768:	4c450513          	addi	a0,a0,1220 # 8000bc28 <lockPrint>
    8000576c:	ffffc097          	auipc	ra,0xffffc
    80005770:	a38080e7          	jalr	-1480(ra) # 800011a4 <copy_and_swap>
    80005774:	fe0514e3          	bnez	a0,8000575c <_Z9getStringPci+0x98>
    return buf;
}
    80005778:	00098513          	mv	a0,s3
    8000577c:	02813083          	ld	ra,40(sp)
    80005780:	02013403          	ld	s0,32(sp)
    80005784:	01813483          	ld	s1,24(sp)
    80005788:	01013903          	ld	s2,16(sp)
    8000578c:	00813983          	ld	s3,8(sp)
    80005790:	00013a03          	ld	s4,0(sp)
    80005794:	03010113          	addi	sp,sp,48
    80005798:	00008067          	ret

000000008000579c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000579c:	ff010113          	addi	sp,sp,-16
    800057a0:	00813423          	sd	s0,8(sp)
    800057a4:	01010413          	addi	s0,sp,16
    800057a8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800057ac:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800057b0:	0006c603          	lbu	a2,0(a3)
    800057b4:	fd06071b          	addiw	a4,a2,-48
    800057b8:	0ff77713          	andi	a4,a4,255
    800057bc:	00900793          	li	a5,9
    800057c0:	02e7e063          	bltu	a5,a4,800057e0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800057c4:	0025179b          	slliw	a5,a0,0x2
    800057c8:	00a787bb          	addw	a5,a5,a0
    800057cc:	0017979b          	slliw	a5,a5,0x1
    800057d0:	00168693          	addi	a3,a3,1
    800057d4:	00c787bb          	addw	a5,a5,a2
    800057d8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800057dc:	fd5ff06f          	j	800057b0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800057e0:	00813403          	ld	s0,8(sp)
    800057e4:	01010113          	addi	sp,sp,16
    800057e8:	00008067          	ret

00000000800057ec <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800057ec:	fc010113          	addi	sp,sp,-64
    800057f0:	02113c23          	sd	ra,56(sp)
    800057f4:	02813823          	sd	s0,48(sp)
    800057f8:	02913423          	sd	s1,40(sp)
    800057fc:	03213023          	sd	s2,32(sp)
    80005800:	01313c23          	sd	s3,24(sp)
    80005804:	04010413          	addi	s0,sp,64
    80005808:	00050493          	mv	s1,a0
    8000580c:	00058913          	mv	s2,a1
    80005810:	00060993          	mv	s3,a2
    LOCK();
    80005814:	00100613          	li	a2,1
    80005818:	00000593          	li	a1,0
    8000581c:	00006517          	auipc	a0,0x6
    80005820:	40c50513          	addi	a0,a0,1036 # 8000bc28 <lockPrint>
    80005824:	ffffc097          	auipc	ra,0xffffc
    80005828:	980080e7          	jalr	-1664(ra) # 800011a4 <copy_and_swap>
    8000582c:	00050863          	beqz	a0,8000583c <_Z8printIntiii+0x50>
    80005830:	ffffc097          	auipc	ra,0xffffc
    80005834:	b98080e7          	jalr	-1128(ra) # 800013c8 <_Z15thread_dispatchv>
    80005838:	fddff06f          	j	80005814 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000583c:	00098463          	beqz	s3,80005844 <_Z8printIntiii+0x58>
    80005840:	0804c463          	bltz	s1,800058c8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005844:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005848:	00000593          	li	a1,0
    }

    i = 0;
    8000584c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005850:	0009079b          	sext.w	a5,s2
    80005854:	0325773b          	remuw	a4,a0,s2
    80005858:	00048613          	mv	a2,s1
    8000585c:	0014849b          	addiw	s1,s1,1
    80005860:	02071693          	slli	a3,a4,0x20
    80005864:	0206d693          	srli	a3,a3,0x20
    80005868:	00006717          	auipc	a4,0x6
    8000586c:	29870713          	addi	a4,a4,664 # 8000bb00 <digits>
    80005870:	00d70733          	add	a4,a4,a3
    80005874:	00074683          	lbu	a3,0(a4)
    80005878:	fd040713          	addi	a4,s0,-48
    8000587c:	00c70733          	add	a4,a4,a2
    80005880:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005884:	0005071b          	sext.w	a4,a0
    80005888:	0325553b          	divuw	a0,a0,s2
    8000588c:	fcf772e3          	bgeu	a4,a5,80005850 <_Z8printIntiii+0x64>
    if(neg)
    80005890:	00058c63          	beqz	a1,800058a8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005894:	fd040793          	addi	a5,s0,-48
    80005898:	009784b3          	add	s1,a5,s1
    8000589c:	02d00793          	li	a5,45
    800058a0:	fef48823          	sb	a5,-16(s1)
    800058a4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800058a8:	fff4849b          	addiw	s1,s1,-1
    800058ac:	0204c463          	bltz	s1,800058d4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800058b0:	fd040793          	addi	a5,s0,-48
    800058b4:	009787b3          	add	a5,a5,s1
    800058b8:	ff07c503          	lbu	a0,-16(a5)
    800058bc:	ffffc097          	auipc	ra,0xffffc
    800058c0:	d54080e7          	jalr	-684(ra) # 80001610 <_Z4putcc>
    800058c4:	fe5ff06f          	j	800058a8 <_Z8printIntiii+0xbc>
        x = -xx;
    800058c8:	4090053b          	negw	a0,s1
        neg = 1;
    800058cc:	00100593          	li	a1,1
        x = -xx;
    800058d0:	f7dff06f          	j	8000584c <_Z8printIntiii+0x60>

    UNLOCK();
    800058d4:	00000613          	li	a2,0
    800058d8:	00100593          	li	a1,1
    800058dc:	00006517          	auipc	a0,0x6
    800058e0:	34c50513          	addi	a0,a0,844 # 8000bc28 <lockPrint>
    800058e4:	ffffc097          	auipc	ra,0xffffc
    800058e8:	8c0080e7          	jalr	-1856(ra) # 800011a4 <copy_and_swap>
    800058ec:	fe0514e3          	bnez	a0,800058d4 <_Z8printIntiii+0xe8>
    800058f0:	03813083          	ld	ra,56(sp)
    800058f4:	03013403          	ld	s0,48(sp)
    800058f8:	02813483          	ld	s1,40(sp)
    800058fc:	02013903          	ld	s2,32(sp)
    80005900:	01813983          	ld	s3,24(sp)
    80005904:	04010113          	addi	sp,sp,64
    80005908:	00008067          	ret

000000008000590c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000590c:	fd010113          	addi	sp,sp,-48
    80005910:	02113423          	sd	ra,40(sp)
    80005914:	02813023          	sd	s0,32(sp)
    80005918:	00913c23          	sd	s1,24(sp)
    8000591c:	01213823          	sd	s2,16(sp)
    80005920:	01313423          	sd	s3,8(sp)
    80005924:	03010413          	addi	s0,sp,48
    80005928:	00050493          	mv	s1,a0
    8000592c:	00058913          	mv	s2,a1
    80005930:	0015879b          	addiw	a5,a1,1
    80005934:	0007851b          	sext.w	a0,a5
    80005938:	00f4a023          	sw	a5,0(s1)
    8000593c:	0004a823          	sw	zero,16(s1)
    80005940:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005944:	00251513          	slli	a0,a0,0x2
    80005948:	ffffc097          	auipc	ra,0xffffc
    8000594c:	8b0080e7          	jalr	-1872(ra) # 800011f8 <_Z9mem_allocm>
    80005950:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005954:	01000513          	li	a0,16
    80005958:	ffffd097          	auipc	ra,0xffffd
    8000595c:	cdc080e7          	jalr	-804(ra) # 80002634 <_Znwm>
    80005960:	00050993          	mv	s3,a0
    80005964:	00000593          	li	a1,0
    80005968:	ffffd097          	auipc	ra,0xffffd
    8000596c:	078080e7          	jalr	120(ra) # 800029e0 <_ZN9SemaphoreC1Ej>
    80005970:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005974:	01000513          	li	a0,16
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	cbc080e7          	jalr	-836(ra) # 80002634 <_Znwm>
    80005980:	00050993          	mv	s3,a0
    80005984:	00090593          	mv	a1,s2
    80005988:	ffffd097          	auipc	ra,0xffffd
    8000598c:	058080e7          	jalr	88(ra) # 800029e0 <_ZN9SemaphoreC1Ej>
    80005990:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005994:	01000513          	li	a0,16
    80005998:	ffffd097          	auipc	ra,0xffffd
    8000599c:	c9c080e7          	jalr	-868(ra) # 80002634 <_Znwm>
    800059a0:	00050913          	mv	s2,a0
    800059a4:	00100593          	li	a1,1
    800059a8:	ffffd097          	auipc	ra,0xffffd
    800059ac:	038080e7          	jalr	56(ra) # 800029e0 <_ZN9SemaphoreC1Ej>
    800059b0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800059b4:	01000513          	li	a0,16
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	c7c080e7          	jalr	-900(ra) # 80002634 <_Znwm>
    800059c0:	00050913          	mv	s2,a0
    800059c4:	00100593          	li	a1,1
    800059c8:	ffffd097          	auipc	ra,0xffffd
    800059cc:	018080e7          	jalr	24(ra) # 800029e0 <_ZN9SemaphoreC1Ej>
    800059d0:	0324b823          	sd	s2,48(s1)
}
    800059d4:	02813083          	ld	ra,40(sp)
    800059d8:	02013403          	ld	s0,32(sp)
    800059dc:	01813483          	ld	s1,24(sp)
    800059e0:	01013903          	ld	s2,16(sp)
    800059e4:	00813983          	ld	s3,8(sp)
    800059e8:	03010113          	addi	sp,sp,48
    800059ec:	00008067          	ret
    800059f0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800059f4:	00098513          	mv	a0,s3
    800059f8:	ffffd097          	auipc	ra,0xffffd
    800059fc:	c8c080e7          	jalr	-884(ra) # 80002684 <_ZdlPv>
    80005a00:	00048513          	mv	a0,s1
    80005a04:	00007097          	auipc	ra,0x7
    80005a08:	304080e7          	jalr	772(ra) # 8000cd08 <_Unwind_Resume>
    80005a0c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005a10:	00098513          	mv	a0,s3
    80005a14:	ffffd097          	auipc	ra,0xffffd
    80005a18:	c70080e7          	jalr	-912(ra) # 80002684 <_ZdlPv>
    80005a1c:	00048513          	mv	a0,s1
    80005a20:	00007097          	auipc	ra,0x7
    80005a24:	2e8080e7          	jalr	744(ra) # 8000cd08 <_Unwind_Resume>
    80005a28:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005a2c:	00090513          	mv	a0,s2
    80005a30:	ffffd097          	auipc	ra,0xffffd
    80005a34:	c54080e7          	jalr	-940(ra) # 80002684 <_ZdlPv>
    80005a38:	00048513          	mv	a0,s1
    80005a3c:	00007097          	auipc	ra,0x7
    80005a40:	2cc080e7          	jalr	716(ra) # 8000cd08 <_Unwind_Resume>
    80005a44:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005a48:	00090513          	mv	a0,s2
    80005a4c:	ffffd097          	auipc	ra,0xffffd
    80005a50:	c38080e7          	jalr	-968(ra) # 80002684 <_ZdlPv>
    80005a54:	00048513          	mv	a0,s1
    80005a58:	00007097          	auipc	ra,0x7
    80005a5c:	2b0080e7          	jalr	688(ra) # 8000cd08 <_Unwind_Resume>

0000000080005a60 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005a60:	fe010113          	addi	sp,sp,-32
    80005a64:	00113c23          	sd	ra,24(sp)
    80005a68:	00813823          	sd	s0,16(sp)
    80005a6c:	00913423          	sd	s1,8(sp)
    80005a70:	01213023          	sd	s2,0(sp)
    80005a74:	02010413          	addi	s0,sp,32
    80005a78:	00050493          	mv	s1,a0
    80005a7c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005a80:	01853503          	ld	a0,24(a0)
    80005a84:	ffffd097          	auipc	ra,0xffffd
    80005a88:	f98080e7          	jalr	-104(ra) # 80002a1c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005a8c:	0304b503          	ld	a0,48(s1)
    80005a90:	ffffd097          	auipc	ra,0xffffd
    80005a94:	f8c080e7          	jalr	-116(ra) # 80002a1c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005a98:	0084b783          	ld	a5,8(s1)
    80005a9c:	0144a703          	lw	a4,20(s1)
    80005aa0:	00271713          	slli	a4,a4,0x2
    80005aa4:	00e787b3          	add	a5,a5,a4
    80005aa8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005aac:	0144a783          	lw	a5,20(s1)
    80005ab0:	0017879b          	addiw	a5,a5,1
    80005ab4:	0004a703          	lw	a4,0(s1)
    80005ab8:	02e7e7bb          	remw	a5,a5,a4
    80005abc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005ac0:	0304b503          	ld	a0,48(s1)
    80005ac4:	ffffd097          	auipc	ra,0xffffd
    80005ac8:	f84080e7          	jalr	-124(ra) # 80002a48 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005acc:	0204b503          	ld	a0,32(s1)
    80005ad0:	ffffd097          	auipc	ra,0xffffd
    80005ad4:	f78080e7          	jalr	-136(ra) # 80002a48 <_ZN9Semaphore6signalEv>

}
    80005ad8:	01813083          	ld	ra,24(sp)
    80005adc:	01013403          	ld	s0,16(sp)
    80005ae0:	00813483          	ld	s1,8(sp)
    80005ae4:	00013903          	ld	s2,0(sp)
    80005ae8:	02010113          	addi	sp,sp,32
    80005aec:	00008067          	ret

0000000080005af0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005af0:	fe010113          	addi	sp,sp,-32
    80005af4:	00113c23          	sd	ra,24(sp)
    80005af8:	00813823          	sd	s0,16(sp)
    80005afc:	00913423          	sd	s1,8(sp)
    80005b00:	01213023          	sd	s2,0(sp)
    80005b04:	02010413          	addi	s0,sp,32
    80005b08:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005b0c:	02053503          	ld	a0,32(a0)
    80005b10:	ffffd097          	auipc	ra,0xffffd
    80005b14:	f0c080e7          	jalr	-244(ra) # 80002a1c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005b18:	0284b503          	ld	a0,40(s1)
    80005b1c:	ffffd097          	auipc	ra,0xffffd
    80005b20:	f00080e7          	jalr	-256(ra) # 80002a1c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005b24:	0084b703          	ld	a4,8(s1)
    80005b28:	0104a783          	lw	a5,16(s1)
    80005b2c:	00279693          	slli	a3,a5,0x2
    80005b30:	00d70733          	add	a4,a4,a3
    80005b34:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005b38:	0017879b          	addiw	a5,a5,1
    80005b3c:	0004a703          	lw	a4,0(s1)
    80005b40:	02e7e7bb          	remw	a5,a5,a4
    80005b44:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005b48:	0284b503          	ld	a0,40(s1)
    80005b4c:	ffffd097          	auipc	ra,0xffffd
    80005b50:	efc080e7          	jalr	-260(ra) # 80002a48 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005b54:	0184b503          	ld	a0,24(s1)
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	ef0080e7          	jalr	-272(ra) # 80002a48 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b60:	00090513          	mv	a0,s2
    80005b64:	01813083          	ld	ra,24(sp)
    80005b68:	01013403          	ld	s0,16(sp)
    80005b6c:	00813483          	ld	s1,8(sp)
    80005b70:	00013903          	ld	s2,0(sp)
    80005b74:	02010113          	addi	sp,sp,32
    80005b78:	00008067          	ret

0000000080005b7c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005b7c:	fe010113          	addi	sp,sp,-32
    80005b80:	00113c23          	sd	ra,24(sp)
    80005b84:	00813823          	sd	s0,16(sp)
    80005b88:	00913423          	sd	s1,8(sp)
    80005b8c:	01213023          	sd	s2,0(sp)
    80005b90:	02010413          	addi	s0,sp,32
    80005b94:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005b98:	02853503          	ld	a0,40(a0)
    80005b9c:	ffffd097          	auipc	ra,0xffffd
    80005ba0:	e80080e7          	jalr	-384(ra) # 80002a1c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005ba4:	0304b503          	ld	a0,48(s1)
    80005ba8:	ffffd097          	auipc	ra,0xffffd
    80005bac:	e74080e7          	jalr	-396(ra) # 80002a1c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005bb0:	0144a783          	lw	a5,20(s1)
    80005bb4:	0104a903          	lw	s2,16(s1)
    80005bb8:	0327ce63          	blt	a5,s2,80005bf4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005bbc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005bc0:	0304b503          	ld	a0,48(s1)
    80005bc4:	ffffd097          	auipc	ra,0xffffd
    80005bc8:	e84080e7          	jalr	-380(ra) # 80002a48 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005bcc:	0284b503          	ld	a0,40(s1)
    80005bd0:	ffffd097          	auipc	ra,0xffffd
    80005bd4:	e78080e7          	jalr	-392(ra) # 80002a48 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005bd8:	00090513          	mv	a0,s2
    80005bdc:	01813083          	ld	ra,24(sp)
    80005be0:	01013403          	ld	s0,16(sp)
    80005be4:	00813483          	ld	s1,8(sp)
    80005be8:	00013903          	ld	s2,0(sp)
    80005bec:	02010113          	addi	sp,sp,32
    80005bf0:	00008067          	ret
        ret = cap - head + tail;
    80005bf4:	0004a703          	lw	a4,0(s1)
    80005bf8:	4127093b          	subw	s2,a4,s2
    80005bfc:	00f9093b          	addw	s2,s2,a5
    80005c00:	fc1ff06f          	j	80005bc0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005c04 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005c04:	fe010113          	addi	sp,sp,-32
    80005c08:	00113c23          	sd	ra,24(sp)
    80005c0c:	00813823          	sd	s0,16(sp)
    80005c10:	00913423          	sd	s1,8(sp)
    80005c14:	02010413          	addi	s0,sp,32
    80005c18:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005c1c:	00a00513          	li	a0,10
    80005c20:	ffffd097          	auipc	ra,0xffffd
    80005c24:	ee4080e7          	jalr	-284(ra) # 80002b04 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005c28:	00004517          	auipc	a0,0x4
    80005c2c:	a2850513          	addi	a0,a0,-1496 # 80009650 <CONSOLE_STATUS+0x640>
    80005c30:	00000097          	auipc	ra,0x0
    80005c34:	a0c080e7          	jalr	-1524(ra) # 8000563c <_Z11printStringPKc>
    while (getCnt()) {
    80005c38:	00048513          	mv	a0,s1
    80005c3c:	00000097          	auipc	ra,0x0
    80005c40:	f40080e7          	jalr	-192(ra) # 80005b7c <_ZN9BufferCPP6getCntEv>
    80005c44:	02050c63          	beqz	a0,80005c7c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005c48:	0084b783          	ld	a5,8(s1)
    80005c4c:	0104a703          	lw	a4,16(s1)
    80005c50:	00271713          	slli	a4,a4,0x2
    80005c54:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005c58:	0007c503          	lbu	a0,0(a5)
    80005c5c:	ffffd097          	auipc	ra,0xffffd
    80005c60:	ea8080e7          	jalr	-344(ra) # 80002b04 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005c64:	0104a783          	lw	a5,16(s1)
    80005c68:	0017879b          	addiw	a5,a5,1
    80005c6c:	0004a703          	lw	a4,0(s1)
    80005c70:	02e7e7bb          	remw	a5,a5,a4
    80005c74:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005c78:	fc1ff06f          	j	80005c38 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005c7c:	02100513          	li	a0,33
    80005c80:	ffffd097          	auipc	ra,0xffffd
    80005c84:	e84080e7          	jalr	-380(ra) # 80002b04 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005c88:	00a00513          	li	a0,10
    80005c8c:	ffffd097          	auipc	ra,0xffffd
    80005c90:	e78080e7          	jalr	-392(ra) # 80002b04 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005c94:	0084b503          	ld	a0,8(s1)
    80005c98:	ffffb097          	auipc	ra,0xffffb
    80005c9c:	5ac080e7          	jalr	1452(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80005ca0:	0204b503          	ld	a0,32(s1)
    80005ca4:	00050863          	beqz	a0,80005cb4 <_ZN9BufferCPPD1Ev+0xb0>
    80005ca8:	00053783          	ld	a5,0(a0)
    80005cac:	0087b783          	ld	a5,8(a5)
    80005cb0:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005cb4:	0184b503          	ld	a0,24(s1)
    80005cb8:	00050863          	beqz	a0,80005cc8 <_ZN9BufferCPPD1Ev+0xc4>
    80005cbc:	00053783          	ld	a5,0(a0)
    80005cc0:	0087b783          	ld	a5,8(a5)
    80005cc4:	000780e7          	jalr	a5
    delete mutexTail;
    80005cc8:	0304b503          	ld	a0,48(s1)
    80005ccc:	00050863          	beqz	a0,80005cdc <_ZN9BufferCPPD1Ev+0xd8>
    80005cd0:	00053783          	ld	a5,0(a0)
    80005cd4:	0087b783          	ld	a5,8(a5)
    80005cd8:	000780e7          	jalr	a5
    delete mutexHead;
    80005cdc:	0284b503          	ld	a0,40(s1)
    80005ce0:	00050863          	beqz	a0,80005cf0 <_ZN9BufferCPPD1Ev+0xec>
    80005ce4:	00053783          	ld	a5,0(a0)
    80005ce8:	0087b783          	ld	a5,8(a5)
    80005cec:	000780e7          	jalr	a5
}
    80005cf0:	01813083          	ld	ra,24(sp)
    80005cf4:	01013403          	ld	s0,16(sp)
    80005cf8:	00813483          	ld	s1,8(sp)
    80005cfc:	02010113          	addi	sp,sp,32
    80005d00:	00008067          	ret

0000000080005d04 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005d04:	fe010113          	addi	sp,sp,-32
    80005d08:	00113c23          	sd	ra,24(sp)
    80005d0c:	00813823          	sd	s0,16(sp)
    80005d10:	00913423          	sd	s1,8(sp)
    80005d14:	01213023          	sd	s2,0(sp)
    80005d18:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005d1c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005d20:	00600493          	li	s1,6
    while (--i > 0) {
    80005d24:	fff4849b          	addiw	s1,s1,-1
    80005d28:	04905463          	blez	s1,80005d70 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005d2c:	00004517          	auipc	a0,0x4
    80005d30:	93c50513          	addi	a0,a0,-1732 # 80009668 <CONSOLE_STATUS+0x658>
    80005d34:	00000097          	auipc	ra,0x0
    80005d38:	908080e7          	jalr	-1784(ra) # 8000563c <_Z11printStringPKc>
        printInt(sleep_time);
    80005d3c:	00000613          	li	a2,0
    80005d40:	00a00593          	li	a1,10
    80005d44:	0009051b          	sext.w	a0,s2
    80005d48:	00000097          	auipc	ra,0x0
    80005d4c:	aa4080e7          	jalr	-1372(ra) # 800057ec <_Z8printIntiii>
        printString(" !\n");
    80005d50:	00004517          	auipc	a0,0x4
    80005d54:	92050513          	addi	a0,a0,-1760 # 80009670 <CONSOLE_STATUS+0x660>
    80005d58:	00000097          	auipc	ra,0x0
    80005d5c:	8e4080e7          	jalr	-1820(ra) # 8000563c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005d60:	00090513          	mv	a0,s2
    80005d64:	ffffc097          	auipc	ra,0xffffc
    80005d68:	82c080e7          	jalr	-2004(ra) # 80001590 <_Z10time_sleepm>
    while (--i > 0) {
    80005d6c:	fb9ff06f          	j	80005d24 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005d70:	00a00793          	li	a5,10
    80005d74:	02f95933          	divu	s2,s2,a5
    80005d78:	fff90913          	addi	s2,s2,-1
    80005d7c:	00006797          	auipc	a5,0x6
    80005d80:	eb478793          	addi	a5,a5,-332 # 8000bc30 <_ZL8finished>
    80005d84:	01278933          	add	s2,a5,s2
    80005d88:	00100793          	li	a5,1
    80005d8c:	00f90023          	sb	a5,0(s2)
}
    80005d90:	01813083          	ld	ra,24(sp)
    80005d94:	01013403          	ld	s0,16(sp)
    80005d98:	00813483          	ld	s1,8(sp)
    80005d9c:	00013903          	ld	s2,0(sp)
    80005da0:	02010113          	addi	sp,sp,32
    80005da4:	00008067          	ret

0000000080005da8 <_Z12testSleepingv>:

void testSleeping() {
    80005da8:	fc010113          	addi	sp,sp,-64
    80005dac:	02113c23          	sd	ra,56(sp)
    80005db0:	02813823          	sd	s0,48(sp)
    80005db4:	02913423          	sd	s1,40(sp)
    80005db8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005dbc:	00a00793          	li	a5,10
    80005dc0:	fcf43823          	sd	a5,-48(s0)
    80005dc4:	01400793          	li	a5,20
    80005dc8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005dcc:	00000493          	li	s1,0
    80005dd0:	02c0006f          	j	80005dfc <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005dd4:	00349793          	slli	a5,s1,0x3
    80005dd8:	fd040613          	addi	a2,s0,-48
    80005ddc:	00f60633          	add	a2,a2,a5
    80005de0:	00000597          	auipc	a1,0x0
    80005de4:	f2458593          	addi	a1,a1,-220 # 80005d04 <_ZL9sleepyRunPv>
    80005de8:	fc040513          	addi	a0,s0,-64
    80005dec:	00f50533          	add	a0,a0,a5
    80005df0:	ffffb097          	auipc	ra,0xffffb
    80005df4:	494080e7          	jalr	1172(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005df8:	0014849b          	addiw	s1,s1,1
    80005dfc:	00100793          	li	a5,1
    80005e00:	fc97dae3          	bge	a5,s1,80005dd4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005e04:	00006797          	auipc	a5,0x6
    80005e08:	e2c7c783          	lbu	a5,-468(a5) # 8000bc30 <_ZL8finished>
    80005e0c:	fe078ce3          	beqz	a5,80005e04 <_Z12testSleepingv+0x5c>
    80005e10:	00006797          	auipc	a5,0x6
    80005e14:	e217c783          	lbu	a5,-479(a5) # 8000bc31 <_ZL8finished+0x1>
    80005e18:	fe0786e3          	beqz	a5,80005e04 <_Z12testSleepingv+0x5c>
}
    80005e1c:	03813083          	ld	ra,56(sp)
    80005e20:	03013403          	ld	s0,48(sp)
    80005e24:	02813483          	ld	s1,40(sp)
    80005e28:	04010113          	addi	sp,sp,64
    80005e2c:	00008067          	ret

0000000080005e30 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005e30:	fe010113          	addi	sp,sp,-32
    80005e34:	00113c23          	sd	ra,24(sp)
    80005e38:	00813823          	sd	s0,16(sp)
    80005e3c:	00913423          	sd	s1,8(sp)
    80005e40:	01213023          	sd	s2,0(sp)
    80005e44:	02010413          	addi	s0,sp,32
    80005e48:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005e4c:	00100793          	li	a5,1
    80005e50:	02a7f863          	bgeu	a5,a0,80005e80 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005e54:	00a00793          	li	a5,10
    80005e58:	02f577b3          	remu	a5,a0,a5
    80005e5c:	02078e63          	beqz	a5,80005e98 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005e60:	fff48513          	addi	a0,s1,-1
    80005e64:	00000097          	auipc	ra,0x0
    80005e68:	fcc080e7          	jalr	-52(ra) # 80005e30 <_ZL9fibonaccim>
    80005e6c:	00050913          	mv	s2,a0
    80005e70:	ffe48513          	addi	a0,s1,-2
    80005e74:	00000097          	auipc	ra,0x0
    80005e78:	fbc080e7          	jalr	-68(ra) # 80005e30 <_ZL9fibonaccim>
    80005e7c:	00a90533          	add	a0,s2,a0
}
    80005e80:	01813083          	ld	ra,24(sp)
    80005e84:	01013403          	ld	s0,16(sp)
    80005e88:	00813483          	ld	s1,8(sp)
    80005e8c:	00013903          	ld	s2,0(sp)
    80005e90:	02010113          	addi	sp,sp,32
    80005e94:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005e98:	ffffb097          	auipc	ra,0xffffb
    80005e9c:	530080e7          	jalr	1328(ra) # 800013c8 <_Z15thread_dispatchv>
    80005ea0:	fc1ff06f          	j	80005e60 <_ZL9fibonaccim+0x30>

0000000080005ea4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005ea4:	fe010113          	addi	sp,sp,-32
    80005ea8:	00113c23          	sd	ra,24(sp)
    80005eac:	00813823          	sd	s0,16(sp)
    80005eb0:	00913423          	sd	s1,8(sp)
    80005eb4:	01213023          	sd	s2,0(sp)
    80005eb8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005ebc:	00a00493          	li	s1,10
    80005ec0:	0400006f          	j	80005f00 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	6f450513          	addi	a0,a0,1780 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005ecc:	fffff097          	auipc	ra,0xfffff
    80005ed0:	770080e7          	jalr	1904(ra) # 8000563c <_Z11printStringPKc>
    80005ed4:	00000613          	li	a2,0
    80005ed8:	00a00593          	li	a1,10
    80005edc:	00048513          	mv	a0,s1
    80005ee0:	00000097          	auipc	ra,0x0
    80005ee4:	90c080e7          	jalr	-1780(ra) # 800057ec <_Z8printIntiii>
    80005ee8:	00003517          	auipc	a0,0x3
    80005eec:	44050513          	addi	a0,a0,1088 # 80009328 <CONSOLE_STATUS+0x318>
    80005ef0:	fffff097          	auipc	ra,0xfffff
    80005ef4:	74c080e7          	jalr	1868(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005ef8:	0014849b          	addiw	s1,s1,1
    80005efc:	0ff4f493          	andi	s1,s1,255
    80005f00:	00c00793          	li	a5,12
    80005f04:	fc97f0e3          	bgeu	a5,s1,80005ec4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005f08:	00003517          	auipc	a0,0x3
    80005f0c:	6b850513          	addi	a0,a0,1720 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005f10:	fffff097          	auipc	ra,0xfffff
    80005f14:	72c080e7          	jalr	1836(ra) # 8000563c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005f18:	00500313          	li	t1,5
    thread_dispatch();
    80005f1c:	ffffb097          	auipc	ra,0xffffb
    80005f20:	4ac080e7          	jalr	1196(ra) # 800013c8 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005f24:	01000513          	li	a0,16
    80005f28:	00000097          	auipc	ra,0x0
    80005f2c:	f08080e7          	jalr	-248(ra) # 80005e30 <_ZL9fibonaccim>
    80005f30:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005f34:	00003517          	auipc	a0,0x3
    80005f38:	69c50513          	addi	a0,a0,1692 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005f3c:	fffff097          	auipc	ra,0xfffff
    80005f40:	700080e7          	jalr	1792(ra) # 8000563c <_Z11printStringPKc>
    80005f44:	00000613          	li	a2,0
    80005f48:	00a00593          	li	a1,10
    80005f4c:	0009051b          	sext.w	a0,s2
    80005f50:	00000097          	auipc	ra,0x0
    80005f54:	89c080e7          	jalr	-1892(ra) # 800057ec <_Z8printIntiii>
    80005f58:	00003517          	auipc	a0,0x3
    80005f5c:	3d050513          	addi	a0,a0,976 # 80009328 <CONSOLE_STATUS+0x318>
    80005f60:	fffff097          	auipc	ra,0xfffff
    80005f64:	6dc080e7          	jalr	1756(ra) # 8000563c <_Z11printStringPKc>
    80005f68:	0400006f          	j	80005fa8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005f6c:	00003517          	auipc	a0,0x3
    80005f70:	64c50513          	addi	a0,a0,1612 # 800095b8 <CONSOLE_STATUS+0x5a8>
    80005f74:	fffff097          	auipc	ra,0xfffff
    80005f78:	6c8080e7          	jalr	1736(ra) # 8000563c <_Z11printStringPKc>
    80005f7c:	00000613          	li	a2,0
    80005f80:	00a00593          	li	a1,10
    80005f84:	00048513          	mv	a0,s1
    80005f88:	00000097          	auipc	ra,0x0
    80005f8c:	864080e7          	jalr	-1948(ra) # 800057ec <_Z8printIntiii>
    80005f90:	00003517          	auipc	a0,0x3
    80005f94:	39850513          	addi	a0,a0,920 # 80009328 <CONSOLE_STATUS+0x318>
    80005f98:	fffff097          	auipc	ra,0xfffff
    80005f9c:	6a4080e7          	jalr	1700(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005fa0:	0014849b          	addiw	s1,s1,1
    80005fa4:	0ff4f493          	andi	s1,s1,255
    80005fa8:	00f00793          	li	a5,15
    80005fac:	fc97f0e3          	bgeu	a5,s1,80005f6c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005fb0:	00003517          	auipc	a0,0x3
    80005fb4:	63050513          	addi	a0,a0,1584 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80005fb8:	fffff097          	auipc	ra,0xfffff
    80005fbc:	684080e7          	jalr	1668(ra) # 8000563c <_Z11printStringPKc>
    finishedD = true;
    80005fc0:	00100793          	li	a5,1
    80005fc4:	00006717          	auipc	a4,0x6
    80005fc8:	c6f70723          	sb	a5,-914(a4) # 8000bc32 <_ZL9finishedD>
    thread_dispatch();
    80005fcc:	ffffb097          	auipc	ra,0xffffb
    80005fd0:	3fc080e7          	jalr	1020(ra) # 800013c8 <_Z15thread_dispatchv>
}
    80005fd4:	01813083          	ld	ra,24(sp)
    80005fd8:	01013403          	ld	s0,16(sp)
    80005fdc:	00813483          	ld	s1,8(sp)
    80005fe0:	00013903          	ld	s2,0(sp)
    80005fe4:	02010113          	addi	sp,sp,32
    80005fe8:	00008067          	ret

0000000080005fec <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005fec:	fe010113          	addi	sp,sp,-32
    80005ff0:	00113c23          	sd	ra,24(sp)
    80005ff4:	00813823          	sd	s0,16(sp)
    80005ff8:	00913423          	sd	s1,8(sp)
    80005ffc:	01213023          	sd	s2,0(sp)
    80006000:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006004:	00000493          	li	s1,0
    80006008:	0400006f          	j	80006048 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000600c:	00003517          	auipc	a0,0x3
    80006010:	57c50513          	addi	a0,a0,1404 # 80009588 <CONSOLE_STATUS+0x578>
    80006014:	fffff097          	auipc	ra,0xfffff
    80006018:	628080e7          	jalr	1576(ra) # 8000563c <_Z11printStringPKc>
    8000601c:	00000613          	li	a2,0
    80006020:	00a00593          	li	a1,10
    80006024:	00048513          	mv	a0,s1
    80006028:	fffff097          	auipc	ra,0xfffff
    8000602c:	7c4080e7          	jalr	1988(ra) # 800057ec <_Z8printIntiii>
    80006030:	00003517          	auipc	a0,0x3
    80006034:	2f850513          	addi	a0,a0,760 # 80009328 <CONSOLE_STATUS+0x318>
    80006038:	fffff097          	auipc	ra,0xfffff
    8000603c:	604080e7          	jalr	1540(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006040:	0014849b          	addiw	s1,s1,1
    80006044:	0ff4f493          	andi	s1,s1,255
    80006048:	00200793          	li	a5,2
    8000604c:	fc97f0e3          	bgeu	a5,s1,8000600c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006050:	00003517          	auipc	a0,0x3
    80006054:	54050513          	addi	a0,a0,1344 # 80009590 <CONSOLE_STATUS+0x580>
    80006058:	fffff097          	auipc	ra,0xfffff
    8000605c:	5e4080e7          	jalr	1508(ra) # 8000563c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006060:	00700313          	li	t1,7
    thread_dispatch();
    80006064:	ffffb097          	auipc	ra,0xffffb
    80006068:	364080e7          	jalr	868(ra) # 800013c8 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000606c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006070:	00003517          	auipc	a0,0x3
    80006074:	53050513          	addi	a0,a0,1328 # 800095a0 <CONSOLE_STATUS+0x590>
    80006078:	fffff097          	auipc	ra,0xfffff
    8000607c:	5c4080e7          	jalr	1476(ra) # 8000563c <_Z11printStringPKc>
    80006080:	00000613          	li	a2,0
    80006084:	00a00593          	li	a1,10
    80006088:	0009051b          	sext.w	a0,s2
    8000608c:	fffff097          	auipc	ra,0xfffff
    80006090:	760080e7          	jalr	1888(ra) # 800057ec <_Z8printIntiii>
    80006094:	00003517          	auipc	a0,0x3
    80006098:	29450513          	addi	a0,a0,660 # 80009328 <CONSOLE_STATUS+0x318>
    8000609c:	fffff097          	auipc	ra,0xfffff
    800060a0:	5a0080e7          	jalr	1440(ra) # 8000563c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800060a4:	00c00513          	li	a0,12
    800060a8:	00000097          	auipc	ra,0x0
    800060ac:	d88080e7          	jalr	-632(ra) # 80005e30 <_ZL9fibonaccim>
    800060b0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800060b4:	00003517          	auipc	a0,0x3
    800060b8:	4f450513          	addi	a0,a0,1268 # 800095a8 <CONSOLE_STATUS+0x598>
    800060bc:	fffff097          	auipc	ra,0xfffff
    800060c0:	580080e7          	jalr	1408(ra) # 8000563c <_Z11printStringPKc>
    800060c4:	00000613          	li	a2,0
    800060c8:	00a00593          	li	a1,10
    800060cc:	0009051b          	sext.w	a0,s2
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	71c080e7          	jalr	1820(ra) # 800057ec <_Z8printIntiii>
    800060d8:	00003517          	auipc	a0,0x3
    800060dc:	25050513          	addi	a0,a0,592 # 80009328 <CONSOLE_STATUS+0x318>
    800060e0:	fffff097          	auipc	ra,0xfffff
    800060e4:	55c080e7          	jalr	1372(ra) # 8000563c <_Z11printStringPKc>
    800060e8:	0400006f          	j	80006128 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800060ec:	00003517          	auipc	a0,0x3
    800060f0:	49c50513          	addi	a0,a0,1180 # 80009588 <CONSOLE_STATUS+0x578>
    800060f4:	fffff097          	auipc	ra,0xfffff
    800060f8:	548080e7          	jalr	1352(ra) # 8000563c <_Z11printStringPKc>
    800060fc:	00000613          	li	a2,0
    80006100:	00a00593          	li	a1,10
    80006104:	00048513          	mv	a0,s1
    80006108:	fffff097          	auipc	ra,0xfffff
    8000610c:	6e4080e7          	jalr	1764(ra) # 800057ec <_Z8printIntiii>
    80006110:	00003517          	auipc	a0,0x3
    80006114:	21850513          	addi	a0,a0,536 # 80009328 <CONSOLE_STATUS+0x318>
    80006118:	fffff097          	auipc	ra,0xfffff
    8000611c:	524080e7          	jalr	1316(ra) # 8000563c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006120:	0014849b          	addiw	s1,s1,1
    80006124:	0ff4f493          	andi	s1,s1,255
    80006128:	00500793          	li	a5,5
    8000612c:	fc97f0e3          	bgeu	a5,s1,800060ec <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006130:	00003517          	auipc	a0,0x3
    80006134:	43050513          	addi	a0,a0,1072 # 80009560 <CONSOLE_STATUS+0x550>
    80006138:	fffff097          	auipc	ra,0xfffff
    8000613c:	504080e7          	jalr	1284(ra) # 8000563c <_Z11printStringPKc>
    finishedC = true;
    80006140:	00100793          	li	a5,1
    80006144:	00006717          	auipc	a4,0x6
    80006148:	aef707a3          	sb	a5,-1297(a4) # 8000bc33 <_ZL9finishedC>
    thread_dispatch();
    8000614c:	ffffb097          	auipc	ra,0xffffb
    80006150:	27c080e7          	jalr	636(ra) # 800013c8 <_Z15thread_dispatchv>
}
    80006154:	01813083          	ld	ra,24(sp)
    80006158:	01013403          	ld	s0,16(sp)
    8000615c:	00813483          	ld	s1,8(sp)
    80006160:	00013903          	ld	s2,0(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret

000000008000616c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000616c:	fe010113          	addi	sp,sp,-32
    80006170:	00113c23          	sd	ra,24(sp)
    80006174:	00813823          	sd	s0,16(sp)
    80006178:	00913423          	sd	s1,8(sp)
    8000617c:	01213023          	sd	s2,0(sp)
    80006180:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006184:	00000913          	li	s2,0
    80006188:	0400006f          	j	800061c8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000618c:	ffffb097          	auipc	ra,0xffffb
    80006190:	23c080e7          	jalr	572(ra) # 800013c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006194:	00148493          	addi	s1,s1,1
    80006198:	000027b7          	lui	a5,0x2
    8000619c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800061a0:	0097ee63          	bltu	a5,s1,800061bc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800061a4:	00000713          	li	a4,0
    800061a8:	000077b7          	lui	a5,0x7
    800061ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800061b0:	fce7eee3          	bltu	a5,a4,8000618c <_ZL11workerBodyBPv+0x20>
    800061b4:	00170713          	addi	a4,a4,1
    800061b8:	ff1ff06f          	j	800061a8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800061bc:	00a00793          	li	a5,10
    800061c0:	04f90663          	beq	s2,a5,8000620c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800061c4:	00190913          	addi	s2,s2,1
    800061c8:	00f00793          	li	a5,15
    800061cc:	0527e463          	bltu	a5,s2,80006214 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800061d0:	00003517          	auipc	a0,0x3
    800061d4:	3a050513          	addi	a0,a0,928 # 80009570 <CONSOLE_STATUS+0x560>
    800061d8:	fffff097          	auipc	ra,0xfffff
    800061dc:	464080e7          	jalr	1124(ra) # 8000563c <_Z11printStringPKc>
    800061e0:	00000613          	li	a2,0
    800061e4:	00a00593          	li	a1,10
    800061e8:	0009051b          	sext.w	a0,s2
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	600080e7          	jalr	1536(ra) # 800057ec <_Z8printIntiii>
    800061f4:	00003517          	auipc	a0,0x3
    800061f8:	13450513          	addi	a0,a0,308 # 80009328 <CONSOLE_STATUS+0x318>
    800061fc:	fffff097          	auipc	ra,0xfffff
    80006200:	440080e7          	jalr	1088(ra) # 8000563c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006204:	00000493          	li	s1,0
    80006208:	f91ff06f          	j	80006198 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000620c:	14102ff3          	csrr	t6,sepc
    80006210:	fb5ff06f          	j	800061c4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006214:	00003517          	auipc	a0,0x3
    80006218:	36450513          	addi	a0,a0,868 # 80009578 <CONSOLE_STATUS+0x568>
    8000621c:	fffff097          	auipc	ra,0xfffff
    80006220:	420080e7          	jalr	1056(ra) # 8000563c <_Z11printStringPKc>
    finishedB = true;
    80006224:	00100793          	li	a5,1
    80006228:	00006717          	auipc	a4,0x6
    8000622c:	a0f70623          	sb	a5,-1524(a4) # 8000bc34 <_ZL9finishedB>
    thread_dispatch();
    80006230:	ffffb097          	auipc	ra,0xffffb
    80006234:	198080e7          	jalr	408(ra) # 800013c8 <_Z15thread_dispatchv>
}
    80006238:	01813083          	ld	ra,24(sp)
    8000623c:	01013403          	ld	s0,16(sp)
    80006240:	00813483          	ld	s1,8(sp)
    80006244:	00013903          	ld	s2,0(sp)
    80006248:	02010113          	addi	sp,sp,32
    8000624c:	00008067          	ret

0000000080006250 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006250:	fe010113          	addi	sp,sp,-32
    80006254:	00113c23          	sd	ra,24(sp)
    80006258:	00813823          	sd	s0,16(sp)
    8000625c:	00913423          	sd	s1,8(sp)
    80006260:	01213023          	sd	s2,0(sp)
    80006264:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006268:	00000913          	li	s2,0
    8000626c:	0380006f          	j	800062a4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006270:	ffffb097          	auipc	ra,0xffffb
    80006274:	158080e7          	jalr	344(ra) # 800013c8 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006278:	00148493          	addi	s1,s1,1
    8000627c:	000027b7          	lui	a5,0x2
    80006280:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006284:	0097ee63          	bltu	a5,s1,800062a0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006288:	00000713          	li	a4,0
    8000628c:	000077b7          	lui	a5,0x7
    80006290:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006294:	fce7eee3          	bltu	a5,a4,80006270 <_ZL11workerBodyAPv+0x20>
    80006298:	00170713          	addi	a4,a4,1
    8000629c:	ff1ff06f          	j	8000628c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800062a0:	00190913          	addi	s2,s2,1
    800062a4:	00900793          	li	a5,9
    800062a8:	0527e063          	bltu	a5,s2,800062e8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800062ac:	00003517          	auipc	a0,0x3
    800062b0:	2ac50513          	addi	a0,a0,684 # 80009558 <CONSOLE_STATUS+0x548>
    800062b4:	fffff097          	auipc	ra,0xfffff
    800062b8:	388080e7          	jalr	904(ra) # 8000563c <_Z11printStringPKc>
    800062bc:	00000613          	li	a2,0
    800062c0:	00a00593          	li	a1,10
    800062c4:	0009051b          	sext.w	a0,s2
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	524080e7          	jalr	1316(ra) # 800057ec <_Z8printIntiii>
    800062d0:	00003517          	auipc	a0,0x3
    800062d4:	05850513          	addi	a0,a0,88 # 80009328 <CONSOLE_STATUS+0x318>
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	364080e7          	jalr	868(ra) # 8000563c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800062e0:	00000493          	li	s1,0
    800062e4:	f99ff06f          	j	8000627c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800062e8:	00003517          	auipc	a0,0x3
    800062ec:	27850513          	addi	a0,a0,632 # 80009560 <CONSOLE_STATUS+0x550>
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	34c080e7          	jalr	844(ra) # 8000563c <_Z11printStringPKc>
    finishedA = true;
    800062f8:	00100793          	li	a5,1
    800062fc:	00006717          	auipc	a4,0x6
    80006300:	92f70ca3          	sb	a5,-1735(a4) # 8000bc35 <_ZL9finishedA>
}
    80006304:	01813083          	ld	ra,24(sp)
    80006308:	01013403          	ld	s0,16(sp)
    8000630c:	00813483          	ld	s1,8(sp)
    80006310:	00013903          	ld	s2,0(sp)
    80006314:	02010113          	addi	sp,sp,32
    80006318:	00008067          	ret

000000008000631c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000631c:	fd010113          	addi	sp,sp,-48
    80006320:	02113423          	sd	ra,40(sp)
    80006324:	02813023          	sd	s0,32(sp)
    80006328:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000632c:	00000613          	li	a2,0
    80006330:	00000597          	auipc	a1,0x0
    80006334:	f2058593          	addi	a1,a1,-224 # 80006250 <_ZL11workerBodyAPv>
    80006338:	fd040513          	addi	a0,s0,-48
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	f48080e7          	jalr	-184(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006344:	00003517          	auipc	a0,0x3
    80006348:	2ac50513          	addi	a0,a0,684 # 800095f0 <CONSOLE_STATUS+0x5e0>
    8000634c:	fffff097          	auipc	ra,0xfffff
    80006350:	2f0080e7          	jalr	752(ra) # 8000563c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006354:	00000613          	li	a2,0
    80006358:	00000597          	auipc	a1,0x0
    8000635c:	e1458593          	addi	a1,a1,-492 # 8000616c <_ZL11workerBodyBPv>
    80006360:	fd840513          	addi	a0,s0,-40
    80006364:	ffffb097          	auipc	ra,0xffffb
    80006368:	f20080e7          	jalr	-224(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000636c:	00003517          	auipc	a0,0x3
    80006370:	29c50513          	addi	a0,a0,668 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006374:	fffff097          	auipc	ra,0xfffff
    80006378:	2c8080e7          	jalr	712(ra) # 8000563c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000637c:	00000613          	li	a2,0
    80006380:	00000597          	auipc	a1,0x0
    80006384:	c6c58593          	addi	a1,a1,-916 # 80005fec <_ZL11workerBodyCPv>
    80006388:	fe040513          	addi	a0,s0,-32
    8000638c:	ffffb097          	auipc	ra,0xffffb
    80006390:	ef8080e7          	jalr	-264(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006394:	00003517          	auipc	a0,0x3
    80006398:	28c50513          	addi	a0,a0,652 # 80009620 <CONSOLE_STATUS+0x610>
    8000639c:	fffff097          	auipc	ra,0xfffff
    800063a0:	2a0080e7          	jalr	672(ra) # 8000563c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800063a4:	00000613          	li	a2,0
    800063a8:	00000597          	auipc	a1,0x0
    800063ac:	afc58593          	addi	a1,a1,-1284 # 80005ea4 <_ZL11workerBodyDPv>
    800063b0:	fe840513          	addi	a0,s0,-24
    800063b4:	ffffb097          	auipc	ra,0xffffb
    800063b8:	ed0080e7          	jalr	-304(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800063bc:	00003517          	auipc	a0,0x3
    800063c0:	27c50513          	addi	a0,a0,636 # 80009638 <CONSOLE_STATUS+0x628>
    800063c4:	fffff097          	auipc	ra,0xfffff
    800063c8:	278080e7          	jalr	632(ra) # 8000563c <_Z11printStringPKc>
    800063cc:	00c0006f          	j	800063d8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800063d0:	ffffb097          	auipc	ra,0xffffb
    800063d4:	ff8080e7          	jalr	-8(ra) # 800013c8 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800063d8:	00006797          	auipc	a5,0x6
    800063dc:	85d7c783          	lbu	a5,-1955(a5) # 8000bc35 <_ZL9finishedA>
    800063e0:	fe0788e3          	beqz	a5,800063d0 <_Z16System_Mode_testv+0xb4>
    800063e4:	00006797          	auipc	a5,0x6
    800063e8:	8507c783          	lbu	a5,-1968(a5) # 8000bc34 <_ZL9finishedB>
    800063ec:	fe0782e3          	beqz	a5,800063d0 <_Z16System_Mode_testv+0xb4>
    800063f0:	00006797          	auipc	a5,0x6
    800063f4:	8437c783          	lbu	a5,-1981(a5) # 8000bc33 <_ZL9finishedC>
    800063f8:	fc078ce3          	beqz	a5,800063d0 <_Z16System_Mode_testv+0xb4>
    800063fc:	00006797          	auipc	a5,0x6
    80006400:	8367c783          	lbu	a5,-1994(a5) # 8000bc32 <_ZL9finishedD>
    80006404:	fc0786e3          	beqz	a5,800063d0 <_Z16System_Mode_testv+0xb4>
    }

}
    80006408:	02813083          	ld	ra,40(sp)
    8000640c:	02013403          	ld	s0,32(sp)
    80006410:	03010113          	addi	sp,sp,48
    80006414:	00008067          	ret

0000000080006418 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006418:	fe010113          	addi	sp,sp,-32
    8000641c:	00113c23          	sd	ra,24(sp)
    80006420:	00813823          	sd	s0,16(sp)
    80006424:	00913423          	sd	s1,8(sp)
    80006428:	01213023          	sd	s2,0(sp)
    8000642c:	02010413          	addi	s0,sp,32
    80006430:	00050493          	mv	s1,a0
    80006434:	00058913          	mv	s2,a1
    80006438:	0015879b          	addiw	a5,a1,1
    8000643c:	0007851b          	sext.w	a0,a5
    80006440:	00f4a023          	sw	a5,0(s1)
    80006444:	0004a823          	sw	zero,16(s1)
    80006448:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000644c:	00251513          	slli	a0,a0,0x2
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	da8080e7          	jalr	-600(ra) # 800011f8 <_Z9mem_allocm>
    80006458:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000645c:	00000593          	li	a1,0
    80006460:	02048513          	addi	a0,s1,32
    80006464:	ffffb097          	auipc	ra,0xffffb
    80006468:	fa0080e7          	jalr	-96(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000646c:	00090593          	mv	a1,s2
    80006470:	01848513          	addi	a0,s1,24
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	f90080e7          	jalr	-112(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000647c:	00100593          	li	a1,1
    80006480:	02848513          	addi	a0,s1,40
    80006484:	ffffb097          	auipc	ra,0xffffb
    80006488:	f80080e7          	jalr	-128(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000648c:	00100593          	li	a1,1
    80006490:	03048513          	addi	a0,s1,48
    80006494:	ffffb097          	auipc	ra,0xffffb
    80006498:	f70080e7          	jalr	-144(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    8000649c:	01813083          	ld	ra,24(sp)
    800064a0:	01013403          	ld	s0,16(sp)
    800064a4:	00813483          	ld	s1,8(sp)
    800064a8:	00013903          	ld	s2,0(sp)
    800064ac:	02010113          	addi	sp,sp,32
    800064b0:	00008067          	ret

00000000800064b4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800064b4:	fe010113          	addi	sp,sp,-32
    800064b8:	00113c23          	sd	ra,24(sp)
    800064bc:	00813823          	sd	s0,16(sp)
    800064c0:	00913423          	sd	s1,8(sp)
    800064c4:	01213023          	sd	s2,0(sp)
    800064c8:	02010413          	addi	s0,sp,32
    800064cc:	00050493          	mv	s1,a0
    800064d0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800064d4:	01853503          	ld	a0,24(a0)
    800064d8:	ffffb097          	auipc	ra,0xffffb
    800064dc:	fb0080e7          	jalr	-80(ra) # 80001488 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800064e0:	0304b503          	ld	a0,48(s1)
    800064e4:	ffffb097          	auipc	ra,0xffffb
    800064e8:	fa4080e7          	jalr	-92(ra) # 80001488 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800064ec:	0084b783          	ld	a5,8(s1)
    800064f0:	0144a703          	lw	a4,20(s1)
    800064f4:	00271713          	slli	a4,a4,0x2
    800064f8:	00e787b3          	add	a5,a5,a4
    800064fc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006500:	0144a783          	lw	a5,20(s1)
    80006504:	0017879b          	addiw	a5,a5,1
    80006508:	0004a703          	lw	a4,0(s1)
    8000650c:	02e7e7bb          	remw	a5,a5,a4
    80006510:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006514:	0304b503          	ld	a0,48(s1)
    80006518:	ffffb097          	auipc	ra,0xffffb
    8000651c:	fb0080e7          	jalr	-80(ra) # 800014c8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006520:	0204b503          	ld	a0,32(s1)
    80006524:	ffffb097          	auipc	ra,0xffffb
    80006528:	fa4080e7          	jalr	-92(ra) # 800014c8 <_Z10sem_signalP4_sem>

}
    8000652c:	01813083          	ld	ra,24(sp)
    80006530:	01013403          	ld	s0,16(sp)
    80006534:	00813483          	ld	s1,8(sp)
    80006538:	00013903          	ld	s2,0(sp)
    8000653c:	02010113          	addi	sp,sp,32
    80006540:	00008067          	ret

0000000080006544 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006544:	fe010113          	addi	sp,sp,-32
    80006548:	00113c23          	sd	ra,24(sp)
    8000654c:	00813823          	sd	s0,16(sp)
    80006550:	00913423          	sd	s1,8(sp)
    80006554:	01213023          	sd	s2,0(sp)
    80006558:	02010413          	addi	s0,sp,32
    8000655c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006560:	02053503          	ld	a0,32(a0)
    80006564:	ffffb097          	auipc	ra,0xffffb
    80006568:	f24080e7          	jalr	-220(ra) # 80001488 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    8000656c:	0284b503          	ld	a0,40(s1)
    80006570:	ffffb097          	auipc	ra,0xffffb
    80006574:	f18080e7          	jalr	-232(ra) # 80001488 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006578:	0084b703          	ld	a4,8(s1)
    8000657c:	0104a783          	lw	a5,16(s1)
    80006580:	00279693          	slli	a3,a5,0x2
    80006584:	00d70733          	add	a4,a4,a3
    80006588:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000658c:	0017879b          	addiw	a5,a5,1
    80006590:	0004a703          	lw	a4,0(s1)
    80006594:	02e7e7bb          	remw	a5,a5,a4
    80006598:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000659c:	0284b503          	ld	a0,40(s1)
    800065a0:	ffffb097          	auipc	ra,0xffffb
    800065a4:	f28080e7          	jalr	-216(ra) # 800014c8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    800065a8:	0184b503          	ld	a0,24(s1)
    800065ac:	ffffb097          	auipc	ra,0xffffb
    800065b0:	f1c080e7          	jalr	-228(ra) # 800014c8 <_Z10sem_signalP4_sem>

    return ret;
}
    800065b4:	00090513          	mv	a0,s2
    800065b8:	01813083          	ld	ra,24(sp)
    800065bc:	01013403          	ld	s0,16(sp)
    800065c0:	00813483          	ld	s1,8(sp)
    800065c4:	00013903          	ld	s2,0(sp)
    800065c8:	02010113          	addi	sp,sp,32
    800065cc:	00008067          	ret

00000000800065d0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800065d0:	fe010113          	addi	sp,sp,-32
    800065d4:	00113c23          	sd	ra,24(sp)
    800065d8:	00813823          	sd	s0,16(sp)
    800065dc:	00913423          	sd	s1,8(sp)
    800065e0:	01213023          	sd	s2,0(sp)
    800065e4:	02010413          	addi	s0,sp,32
    800065e8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800065ec:	02853503          	ld	a0,40(a0)
    800065f0:	ffffb097          	auipc	ra,0xffffb
    800065f4:	e98080e7          	jalr	-360(ra) # 80001488 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    800065f8:	0304b503          	ld	a0,48(s1)
    800065fc:	ffffb097          	auipc	ra,0xffffb
    80006600:	e8c080e7          	jalr	-372(ra) # 80001488 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006604:	0144a783          	lw	a5,20(s1)
    80006608:	0104a903          	lw	s2,16(s1)
    8000660c:	0327ce63          	blt	a5,s2,80006648 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006610:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006614:	0304b503          	ld	a0,48(s1)
    80006618:	ffffb097          	auipc	ra,0xffffb
    8000661c:	eb0080e7          	jalr	-336(ra) # 800014c8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006620:	0284b503          	ld	a0,40(s1)
    80006624:	ffffb097          	auipc	ra,0xffffb
    80006628:	ea4080e7          	jalr	-348(ra) # 800014c8 <_Z10sem_signalP4_sem>

    return ret;
}
    8000662c:	00090513          	mv	a0,s2
    80006630:	01813083          	ld	ra,24(sp)
    80006634:	01013403          	ld	s0,16(sp)
    80006638:	00813483          	ld	s1,8(sp)
    8000663c:	00013903          	ld	s2,0(sp)
    80006640:	02010113          	addi	sp,sp,32
    80006644:	00008067          	ret
        ret = cap - head + tail;
    80006648:	0004a703          	lw	a4,0(s1)
    8000664c:	4127093b          	subw	s2,a4,s2
    80006650:	00f9093b          	addw	s2,s2,a5
    80006654:	fc1ff06f          	j	80006614 <_ZN6Buffer6getCntEv+0x44>

0000000080006658 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006658:	fe010113          	addi	sp,sp,-32
    8000665c:	00113c23          	sd	ra,24(sp)
    80006660:	00813823          	sd	s0,16(sp)
    80006664:	00913423          	sd	s1,8(sp)
    80006668:	02010413          	addi	s0,sp,32
    8000666c:	00050493          	mv	s1,a0
    putc('\n');
    80006670:	00a00513          	li	a0,10
    80006674:	ffffb097          	auipc	ra,0xffffb
    80006678:	f9c080e7          	jalr	-100(ra) # 80001610 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	fd450513          	addi	a0,a0,-44 # 80009650 <CONSOLE_STATUS+0x640>
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	fb8080e7          	jalr	-72(ra) # 8000563c <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000668c:	00048513          	mv	a0,s1
    80006690:	00000097          	auipc	ra,0x0
    80006694:	f40080e7          	jalr	-192(ra) # 800065d0 <_ZN6Buffer6getCntEv>
    80006698:	02a05c63          	blez	a0,800066d0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000669c:	0084b783          	ld	a5,8(s1)
    800066a0:	0104a703          	lw	a4,16(s1)
    800066a4:	00271713          	slli	a4,a4,0x2
    800066a8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800066ac:	0007c503          	lbu	a0,0(a5)
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	f60080e7          	jalr	-160(ra) # 80001610 <_Z4putcc>
        head = (head + 1) % cap;
    800066b8:	0104a783          	lw	a5,16(s1)
    800066bc:	0017879b          	addiw	a5,a5,1
    800066c0:	0004a703          	lw	a4,0(s1)
    800066c4:	02e7e7bb          	remw	a5,a5,a4
    800066c8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800066cc:	fc1ff06f          	j	8000668c <_ZN6BufferD1Ev+0x34>
    putc('!');
    800066d0:	02100513          	li	a0,33
    800066d4:	ffffb097          	auipc	ra,0xffffb
    800066d8:	f3c080e7          	jalr	-196(ra) # 80001610 <_Z4putcc>
    putc('\n');
    800066dc:	00a00513          	li	a0,10
    800066e0:	ffffb097          	auipc	ra,0xffffb
    800066e4:	f30080e7          	jalr	-208(ra) # 80001610 <_Z4putcc>
    mem_free(buffer);
    800066e8:	0084b503          	ld	a0,8(s1)
    800066ec:	ffffb097          	auipc	ra,0xffffb
    800066f0:	b58080e7          	jalr	-1192(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800066f4:	0204b503          	ld	a0,32(s1)
    800066f8:	ffffb097          	auipc	ra,0xffffb
    800066fc:	d50080e7          	jalr	-688(ra) # 80001448 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006700:	0184b503          	ld	a0,24(s1)
    80006704:	ffffb097          	auipc	ra,0xffffb
    80006708:	d44080e7          	jalr	-700(ra) # 80001448 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000670c:	0304b503          	ld	a0,48(s1)
    80006710:	ffffb097          	auipc	ra,0xffffb
    80006714:	d38080e7          	jalr	-712(ra) # 80001448 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006718:	0284b503          	ld	a0,40(s1)
    8000671c:	ffffb097          	auipc	ra,0xffffb
    80006720:	d2c080e7          	jalr	-724(ra) # 80001448 <_Z9sem_closeP4_sem>
}
    80006724:	01813083          	ld	ra,24(sp)
    80006728:	01013403          	ld	s0,16(sp)
    8000672c:	00813483          	ld	s1,8(sp)
    80006730:	02010113          	addi	sp,sp,32
    80006734:	00008067          	ret

0000000080006738 <start>:
    80006738:	ff010113          	addi	sp,sp,-16
    8000673c:	00813423          	sd	s0,8(sp)
    80006740:	01010413          	addi	s0,sp,16
    80006744:	300027f3          	csrr	a5,mstatus
    80006748:	ffffe737          	lui	a4,0xffffe
    8000674c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff195f>
    80006750:	00e7f7b3          	and	a5,a5,a4
    80006754:	00001737          	lui	a4,0x1
    80006758:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000675c:	00e7e7b3          	or	a5,a5,a4
    80006760:	30079073          	csrw	mstatus,a5
    80006764:	00000797          	auipc	a5,0x0
    80006768:	16078793          	addi	a5,a5,352 # 800068c4 <system_main>
    8000676c:	34179073          	csrw	mepc,a5
    80006770:	00000793          	li	a5,0
    80006774:	18079073          	csrw	satp,a5
    80006778:	000107b7          	lui	a5,0x10
    8000677c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006780:	30279073          	csrw	medeleg,a5
    80006784:	30379073          	csrw	mideleg,a5
    80006788:	104027f3          	csrr	a5,sie
    8000678c:	2227e793          	ori	a5,a5,546
    80006790:	10479073          	csrw	sie,a5
    80006794:	fff00793          	li	a5,-1
    80006798:	00a7d793          	srli	a5,a5,0xa
    8000679c:	3b079073          	csrw	pmpaddr0,a5
    800067a0:	00f00793          	li	a5,15
    800067a4:	3a079073          	csrw	pmpcfg0,a5
    800067a8:	f14027f3          	csrr	a5,mhartid
    800067ac:	0200c737          	lui	a4,0x200c
    800067b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800067b4:	0007869b          	sext.w	a3,a5
    800067b8:	00269713          	slli	a4,a3,0x2
    800067bc:	000f4637          	lui	a2,0xf4
    800067c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800067c4:	00d70733          	add	a4,a4,a3
    800067c8:	0037979b          	slliw	a5,a5,0x3
    800067cc:	020046b7          	lui	a3,0x2004
    800067d0:	00d787b3          	add	a5,a5,a3
    800067d4:	00c585b3          	add	a1,a1,a2
    800067d8:	00371693          	slli	a3,a4,0x3
    800067dc:	00005717          	auipc	a4,0x5
    800067e0:	46470713          	addi	a4,a4,1124 # 8000bc40 <timer_scratch>
    800067e4:	00b7b023          	sd	a1,0(a5)
    800067e8:	00d70733          	add	a4,a4,a3
    800067ec:	00f73c23          	sd	a5,24(a4)
    800067f0:	02c73023          	sd	a2,32(a4)
    800067f4:	34071073          	csrw	mscratch,a4
    800067f8:	00000797          	auipc	a5,0x0
    800067fc:	6e878793          	addi	a5,a5,1768 # 80006ee0 <timervec>
    80006800:	30579073          	csrw	mtvec,a5
    80006804:	300027f3          	csrr	a5,mstatus
    80006808:	0087e793          	ori	a5,a5,8
    8000680c:	30079073          	csrw	mstatus,a5
    80006810:	304027f3          	csrr	a5,mie
    80006814:	0807e793          	ori	a5,a5,128
    80006818:	30479073          	csrw	mie,a5
    8000681c:	f14027f3          	csrr	a5,mhartid
    80006820:	0007879b          	sext.w	a5,a5
    80006824:	00078213          	mv	tp,a5
    80006828:	30200073          	mret
    8000682c:	00813403          	ld	s0,8(sp)
    80006830:	01010113          	addi	sp,sp,16
    80006834:	00008067          	ret

0000000080006838 <timerinit>:
    80006838:	ff010113          	addi	sp,sp,-16
    8000683c:	00813423          	sd	s0,8(sp)
    80006840:	01010413          	addi	s0,sp,16
    80006844:	f14027f3          	csrr	a5,mhartid
    80006848:	0200c737          	lui	a4,0x200c
    8000684c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006850:	0007869b          	sext.w	a3,a5
    80006854:	00269713          	slli	a4,a3,0x2
    80006858:	000f4637          	lui	a2,0xf4
    8000685c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006860:	00d70733          	add	a4,a4,a3
    80006864:	0037979b          	slliw	a5,a5,0x3
    80006868:	020046b7          	lui	a3,0x2004
    8000686c:	00d787b3          	add	a5,a5,a3
    80006870:	00c585b3          	add	a1,a1,a2
    80006874:	00371693          	slli	a3,a4,0x3
    80006878:	00005717          	auipc	a4,0x5
    8000687c:	3c870713          	addi	a4,a4,968 # 8000bc40 <timer_scratch>
    80006880:	00b7b023          	sd	a1,0(a5)
    80006884:	00d70733          	add	a4,a4,a3
    80006888:	00f73c23          	sd	a5,24(a4)
    8000688c:	02c73023          	sd	a2,32(a4)
    80006890:	34071073          	csrw	mscratch,a4
    80006894:	00000797          	auipc	a5,0x0
    80006898:	64c78793          	addi	a5,a5,1612 # 80006ee0 <timervec>
    8000689c:	30579073          	csrw	mtvec,a5
    800068a0:	300027f3          	csrr	a5,mstatus
    800068a4:	0087e793          	ori	a5,a5,8
    800068a8:	30079073          	csrw	mstatus,a5
    800068ac:	304027f3          	csrr	a5,mie
    800068b0:	0807e793          	ori	a5,a5,128
    800068b4:	30479073          	csrw	mie,a5
    800068b8:	00813403          	ld	s0,8(sp)
    800068bc:	01010113          	addi	sp,sp,16
    800068c0:	00008067          	ret

00000000800068c4 <system_main>:
    800068c4:	fe010113          	addi	sp,sp,-32
    800068c8:	00813823          	sd	s0,16(sp)
    800068cc:	00913423          	sd	s1,8(sp)
    800068d0:	00113c23          	sd	ra,24(sp)
    800068d4:	02010413          	addi	s0,sp,32
    800068d8:	00000097          	auipc	ra,0x0
    800068dc:	0c4080e7          	jalr	196(ra) # 8000699c <cpuid>
    800068e0:	00005497          	auipc	s1,0x5
    800068e4:	29048493          	addi	s1,s1,656 # 8000bb70 <started>
    800068e8:	02050263          	beqz	a0,8000690c <system_main+0x48>
    800068ec:	0004a783          	lw	a5,0(s1)
    800068f0:	0007879b          	sext.w	a5,a5
    800068f4:	fe078ce3          	beqz	a5,800068ec <system_main+0x28>
    800068f8:	0ff0000f          	fence
    800068fc:	00003517          	auipc	a0,0x3
    80006900:	dac50513          	addi	a0,a0,-596 # 800096a8 <CONSOLE_STATUS+0x698>
    80006904:	00001097          	auipc	ra,0x1
    80006908:	a78080e7          	jalr	-1416(ra) # 8000737c <panic>
    8000690c:	00001097          	auipc	ra,0x1
    80006910:	9cc080e7          	jalr	-1588(ra) # 800072d8 <consoleinit>
    80006914:	00001097          	auipc	ra,0x1
    80006918:	158080e7          	jalr	344(ra) # 80007a6c <printfinit>
    8000691c:	00003517          	auipc	a0,0x3
    80006920:	a0c50513          	addi	a0,a0,-1524 # 80009328 <CONSOLE_STATUS+0x318>
    80006924:	00001097          	auipc	ra,0x1
    80006928:	ab4080e7          	jalr	-1356(ra) # 800073d8 <__printf>
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	d4c50513          	addi	a0,a0,-692 # 80009678 <CONSOLE_STATUS+0x668>
    80006934:	00001097          	auipc	ra,0x1
    80006938:	aa4080e7          	jalr	-1372(ra) # 800073d8 <__printf>
    8000693c:	00003517          	auipc	a0,0x3
    80006940:	9ec50513          	addi	a0,a0,-1556 # 80009328 <CONSOLE_STATUS+0x318>
    80006944:	00001097          	auipc	ra,0x1
    80006948:	a94080e7          	jalr	-1388(ra) # 800073d8 <__printf>
    8000694c:	00001097          	auipc	ra,0x1
    80006950:	4ac080e7          	jalr	1196(ra) # 80007df8 <kinit>
    80006954:	00000097          	auipc	ra,0x0
    80006958:	148080e7          	jalr	328(ra) # 80006a9c <trapinit>
    8000695c:	00000097          	auipc	ra,0x0
    80006960:	16c080e7          	jalr	364(ra) # 80006ac8 <trapinithart>
    80006964:	00000097          	auipc	ra,0x0
    80006968:	5bc080e7          	jalr	1468(ra) # 80006f20 <plicinit>
    8000696c:	00000097          	auipc	ra,0x0
    80006970:	5dc080e7          	jalr	1500(ra) # 80006f48 <plicinithart>
    80006974:	00000097          	auipc	ra,0x0
    80006978:	078080e7          	jalr	120(ra) # 800069ec <userinit>
    8000697c:	0ff0000f          	fence
    80006980:	00100793          	li	a5,1
    80006984:	00003517          	auipc	a0,0x3
    80006988:	d0c50513          	addi	a0,a0,-756 # 80009690 <CONSOLE_STATUS+0x680>
    8000698c:	00f4a023          	sw	a5,0(s1)
    80006990:	00001097          	auipc	ra,0x1
    80006994:	a48080e7          	jalr	-1464(ra) # 800073d8 <__printf>
    80006998:	0000006f          	j	80006998 <system_main+0xd4>

000000008000699c <cpuid>:
    8000699c:	ff010113          	addi	sp,sp,-16
    800069a0:	00813423          	sd	s0,8(sp)
    800069a4:	01010413          	addi	s0,sp,16
    800069a8:	00020513          	mv	a0,tp
    800069ac:	00813403          	ld	s0,8(sp)
    800069b0:	0005051b          	sext.w	a0,a0
    800069b4:	01010113          	addi	sp,sp,16
    800069b8:	00008067          	ret

00000000800069bc <mycpu>:
    800069bc:	ff010113          	addi	sp,sp,-16
    800069c0:	00813423          	sd	s0,8(sp)
    800069c4:	01010413          	addi	s0,sp,16
    800069c8:	00020793          	mv	a5,tp
    800069cc:	00813403          	ld	s0,8(sp)
    800069d0:	0007879b          	sext.w	a5,a5
    800069d4:	00779793          	slli	a5,a5,0x7
    800069d8:	00006517          	auipc	a0,0x6
    800069dc:	29850513          	addi	a0,a0,664 # 8000cc70 <cpus>
    800069e0:	00f50533          	add	a0,a0,a5
    800069e4:	01010113          	addi	sp,sp,16
    800069e8:	00008067          	ret

00000000800069ec <userinit>:
    800069ec:	ff010113          	addi	sp,sp,-16
    800069f0:	00813423          	sd	s0,8(sp)
    800069f4:	01010413          	addi	s0,sp,16
    800069f8:	00813403          	ld	s0,8(sp)
    800069fc:	01010113          	addi	sp,sp,16
    80006a00:	ffffc317          	auipc	t1,0xffffc
    80006a04:	d1030067          	jr	-752(t1) # 80002710 <main>

0000000080006a08 <either_copyout>:
    80006a08:	ff010113          	addi	sp,sp,-16
    80006a0c:	00813023          	sd	s0,0(sp)
    80006a10:	00113423          	sd	ra,8(sp)
    80006a14:	01010413          	addi	s0,sp,16
    80006a18:	02051663          	bnez	a0,80006a44 <either_copyout+0x3c>
    80006a1c:	00058513          	mv	a0,a1
    80006a20:	00060593          	mv	a1,a2
    80006a24:	0006861b          	sext.w	a2,a3
    80006a28:	00002097          	auipc	ra,0x2
    80006a2c:	c5c080e7          	jalr	-932(ra) # 80008684 <__memmove>
    80006a30:	00813083          	ld	ra,8(sp)
    80006a34:	00013403          	ld	s0,0(sp)
    80006a38:	00000513          	li	a0,0
    80006a3c:	01010113          	addi	sp,sp,16
    80006a40:	00008067          	ret
    80006a44:	00003517          	auipc	a0,0x3
    80006a48:	c8c50513          	addi	a0,a0,-884 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006a4c:	00001097          	auipc	ra,0x1
    80006a50:	930080e7          	jalr	-1744(ra) # 8000737c <panic>

0000000080006a54 <either_copyin>:
    80006a54:	ff010113          	addi	sp,sp,-16
    80006a58:	00813023          	sd	s0,0(sp)
    80006a5c:	00113423          	sd	ra,8(sp)
    80006a60:	01010413          	addi	s0,sp,16
    80006a64:	02059463          	bnez	a1,80006a8c <either_copyin+0x38>
    80006a68:	00060593          	mv	a1,a2
    80006a6c:	0006861b          	sext.w	a2,a3
    80006a70:	00002097          	auipc	ra,0x2
    80006a74:	c14080e7          	jalr	-1004(ra) # 80008684 <__memmove>
    80006a78:	00813083          	ld	ra,8(sp)
    80006a7c:	00013403          	ld	s0,0(sp)
    80006a80:	00000513          	li	a0,0
    80006a84:	01010113          	addi	sp,sp,16
    80006a88:	00008067          	ret
    80006a8c:	00003517          	auipc	a0,0x3
    80006a90:	c6c50513          	addi	a0,a0,-916 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006a94:	00001097          	auipc	ra,0x1
    80006a98:	8e8080e7          	jalr	-1816(ra) # 8000737c <panic>

0000000080006a9c <trapinit>:
    80006a9c:	ff010113          	addi	sp,sp,-16
    80006aa0:	00813423          	sd	s0,8(sp)
    80006aa4:	01010413          	addi	s0,sp,16
    80006aa8:	00813403          	ld	s0,8(sp)
    80006aac:	00003597          	auipc	a1,0x3
    80006ab0:	c7458593          	addi	a1,a1,-908 # 80009720 <CONSOLE_STATUS+0x710>
    80006ab4:	00006517          	auipc	a0,0x6
    80006ab8:	23c50513          	addi	a0,a0,572 # 8000ccf0 <tickslock>
    80006abc:	01010113          	addi	sp,sp,16
    80006ac0:	00001317          	auipc	t1,0x1
    80006ac4:	5c830067          	jr	1480(t1) # 80008088 <initlock>

0000000080006ac8 <trapinithart>:
    80006ac8:	ff010113          	addi	sp,sp,-16
    80006acc:	00813423          	sd	s0,8(sp)
    80006ad0:	01010413          	addi	s0,sp,16
    80006ad4:	00000797          	auipc	a5,0x0
    80006ad8:	2fc78793          	addi	a5,a5,764 # 80006dd0 <kernelvec>
    80006adc:	10579073          	csrw	stvec,a5
    80006ae0:	00813403          	ld	s0,8(sp)
    80006ae4:	01010113          	addi	sp,sp,16
    80006ae8:	00008067          	ret

0000000080006aec <usertrap>:
    80006aec:	ff010113          	addi	sp,sp,-16
    80006af0:	00813423          	sd	s0,8(sp)
    80006af4:	01010413          	addi	s0,sp,16
    80006af8:	00813403          	ld	s0,8(sp)
    80006afc:	01010113          	addi	sp,sp,16
    80006b00:	00008067          	ret

0000000080006b04 <usertrapret>:
    80006b04:	ff010113          	addi	sp,sp,-16
    80006b08:	00813423          	sd	s0,8(sp)
    80006b0c:	01010413          	addi	s0,sp,16
    80006b10:	00813403          	ld	s0,8(sp)
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00008067          	ret

0000000080006b1c <kerneltrap>:
    80006b1c:	fe010113          	addi	sp,sp,-32
    80006b20:	00813823          	sd	s0,16(sp)
    80006b24:	00113c23          	sd	ra,24(sp)
    80006b28:	00913423          	sd	s1,8(sp)
    80006b2c:	02010413          	addi	s0,sp,32
    80006b30:	142025f3          	csrr	a1,scause
    80006b34:	100027f3          	csrr	a5,sstatus
    80006b38:	0027f793          	andi	a5,a5,2
    80006b3c:	10079c63          	bnez	a5,80006c54 <kerneltrap+0x138>
    80006b40:	142027f3          	csrr	a5,scause
    80006b44:	0207ce63          	bltz	a5,80006b80 <kerneltrap+0x64>
    80006b48:	00003517          	auipc	a0,0x3
    80006b4c:	c2050513          	addi	a0,a0,-992 # 80009768 <CONSOLE_STATUS+0x758>
    80006b50:	00001097          	auipc	ra,0x1
    80006b54:	888080e7          	jalr	-1912(ra) # 800073d8 <__printf>
    80006b58:	141025f3          	csrr	a1,sepc
    80006b5c:	14302673          	csrr	a2,stval
    80006b60:	00003517          	auipc	a0,0x3
    80006b64:	c1850513          	addi	a0,a0,-1000 # 80009778 <CONSOLE_STATUS+0x768>
    80006b68:	00001097          	auipc	ra,0x1
    80006b6c:	870080e7          	jalr	-1936(ra) # 800073d8 <__printf>
    80006b70:	00003517          	auipc	a0,0x3
    80006b74:	c2050513          	addi	a0,a0,-992 # 80009790 <CONSOLE_STATUS+0x780>
    80006b78:	00001097          	auipc	ra,0x1
    80006b7c:	804080e7          	jalr	-2044(ra) # 8000737c <panic>
    80006b80:	0ff7f713          	andi	a4,a5,255
    80006b84:	00900693          	li	a3,9
    80006b88:	04d70063          	beq	a4,a3,80006bc8 <kerneltrap+0xac>
    80006b8c:	fff00713          	li	a4,-1
    80006b90:	03f71713          	slli	a4,a4,0x3f
    80006b94:	00170713          	addi	a4,a4,1
    80006b98:	fae798e3          	bne	a5,a4,80006b48 <kerneltrap+0x2c>
    80006b9c:	00000097          	auipc	ra,0x0
    80006ba0:	e00080e7          	jalr	-512(ra) # 8000699c <cpuid>
    80006ba4:	06050663          	beqz	a0,80006c10 <kerneltrap+0xf4>
    80006ba8:	144027f3          	csrr	a5,sip
    80006bac:	ffd7f793          	andi	a5,a5,-3
    80006bb0:	14479073          	csrw	sip,a5
    80006bb4:	01813083          	ld	ra,24(sp)
    80006bb8:	01013403          	ld	s0,16(sp)
    80006bbc:	00813483          	ld	s1,8(sp)
    80006bc0:	02010113          	addi	sp,sp,32
    80006bc4:	00008067          	ret
    80006bc8:	00000097          	auipc	ra,0x0
    80006bcc:	3cc080e7          	jalr	972(ra) # 80006f94 <plic_claim>
    80006bd0:	00a00793          	li	a5,10
    80006bd4:	00050493          	mv	s1,a0
    80006bd8:	06f50863          	beq	a0,a5,80006c48 <kerneltrap+0x12c>
    80006bdc:	fc050ce3          	beqz	a0,80006bb4 <kerneltrap+0x98>
    80006be0:	00050593          	mv	a1,a0
    80006be4:	00003517          	auipc	a0,0x3
    80006be8:	b6450513          	addi	a0,a0,-1180 # 80009748 <CONSOLE_STATUS+0x738>
    80006bec:	00000097          	auipc	ra,0x0
    80006bf0:	7ec080e7          	jalr	2028(ra) # 800073d8 <__printf>
    80006bf4:	01013403          	ld	s0,16(sp)
    80006bf8:	01813083          	ld	ra,24(sp)
    80006bfc:	00048513          	mv	a0,s1
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	02010113          	addi	sp,sp,32
    80006c08:	00000317          	auipc	t1,0x0
    80006c0c:	3c430067          	jr	964(t1) # 80006fcc <plic_complete>
    80006c10:	00006517          	auipc	a0,0x6
    80006c14:	0e050513          	addi	a0,a0,224 # 8000ccf0 <tickslock>
    80006c18:	00001097          	auipc	ra,0x1
    80006c1c:	494080e7          	jalr	1172(ra) # 800080ac <acquire>
    80006c20:	00005717          	auipc	a4,0x5
    80006c24:	f5470713          	addi	a4,a4,-172 # 8000bb74 <ticks>
    80006c28:	00072783          	lw	a5,0(a4)
    80006c2c:	00006517          	auipc	a0,0x6
    80006c30:	0c450513          	addi	a0,a0,196 # 8000ccf0 <tickslock>
    80006c34:	0017879b          	addiw	a5,a5,1
    80006c38:	00f72023          	sw	a5,0(a4)
    80006c3c:	00001097          	auipc	ra,0x1
    80006c40:	53c080e7          	jalr	1340(ra) # 80008178 <release>
    80006c44:	f65ff06f          	j	80006ba8 <kerneltrap+0x8c>
    80006c48:	00001097          	auipc	ra,0x1
    80006c4c:	098080e7          	jalr	152(ra) # 80007ce0 <uartintr>
    80006c50:	fa5ff06f          	j	80006bf4 <kerneltrap+0xd8>
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	ad450513          	addi	a0,a0,-1324 # 80009728 <CONSOLE_STATUS+0x718>
    80006c5c:	00000097          	auipc	ra,0x0
    80006c60:	720080e7          	jalr	1824(ra) # 8000737c <panic>

0000000080006c64 <clockintr>:
    80006c64:	fe010113          	addi	sp,sp,-32
    80006c68:	00813823          	sd	s0,16(sp)
    80006c6c:	00913423          	sd	s1,8(sp)
    80006c70:	00113c23          	sd	ra,24(sp)
    80006c74:	02010413          	addi	s0,sp,32
    80006c78:	00006497          	auipc	s1,0x6
    80006c7c:	07848493          	addi	s1,s1,120 # 8000ccf0 <tickslock>
    80006c80:	00048513          	mv	a0,s1
    80006c84:	00001097          	auipc	ra,0x1
    80006c88:	428080e7          	jalr	1064(ra) # 800080ac <acquire>
    80006c8c:	00005717          	auipc	a4,0x5
    80006c90:	ee870713          	addi	a4,a4,-280 # 8000bb74 <ticks>
    80006c94:	00072783          	lw	a5,0(a4)
    80006c98:	01013403          	ld	s0,16(sp)
    80006c9c:	01813083          	ld	ra,24(sp)
    80006ca0:	00048513          	mv	a0,s1
    80006ca4:	0017879b          	addiw	a5,a5,1
    80006ca8:	00813483          	ld	s1,8(sp)
    80006cac:	00f72023          	sw	a5,0(a4)
    80006cb0:	02010113          	addi	sp,sp,32
    80006cb4:	00001317          	auipc	t1,0x1
    80006cb8:	4c430067          	jr	1220(t1) # 80008178 <release>

0000000080006cbc <devintr>:
    80006cbc:	142027f3          	csrr	a5,scause
    80006cc0:	00000513          	li	a0,0
    80006cc4:	0007c463          	bltz	a5,80006ccc <devintr+0x10>
    80006cc8:	00008067          	ret
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00813823          	sd	s0,16(sp)
    80006cd4:	00113c23          	sd	ra,24(sp)
    80006cd8:	00913423          	sd	s1,8(sp)
    80006cdc:	02010413          	addi	s0,sp,32
    80006ce0:	0ff7f713          	andi	a4,a5,255
    80006ce4:	00900693          	li	a3,9
    80006ce8:	04d70c63          	beq	a4,a3,80006d40 <devintr+0x84>
    80006cec:	fff00713          	li	a4,-1
    80006cf0:	03f71713          	slli	a4,a4,0x3f
    80006cf4:	00170713          	addi	a4,a4,1
    80006cf8:	00e78c63          	beq	a5,a4,80006d10 <devintr+0x54>
    80006cfc:	01813083          	ld	ra,24(sp)
    80006d00:	01013403          	ld	s0,16(sp)
    80006d04:	00813483          	ld	s1,8(sp)
    80006d08:	02010113          	addi	sp,sp,32
    80006d0c:	00008067          	ret
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	c8c080e7          	jalr	-884(ra) # 8000699c <cpuid>
    80006d18:	06050663          	beqz	a0,80006d84 <devintr+0xc8>
    80006d1c:	144027f3          	csrr	a5,sip
    80006d20:	ffd7f793          	andi	a5,a5,-3
    80006d24:	14479073          	csrw	sip,a5
    80006d28:	01813083          	ld	ra,24(sp)
    80006d2c:	01013403          	ld	s0,16(sp)
    80006d30:	00813483          	ld	s1,8(sp)
    80006d34:	00200513          	li	a0,2
    80006d38:	02010113          	addi	sp,sp,32
    80006d3c:	00008067          	ret
    80006d40:	00000097          	auipc	ra,0x0
    80006d44:	254080e7          	jalr	596(ra) # 80006f94 <plic_claim>
    80006d48:	00a00793          	li	a5,10
    80006d4c:	00050493          	mv	s1,a0
    80006d50:	06f50663          	beq	a0,a5,80006dbc <devintr+0x100>
    80006d54:	00100513          	li	a0,1
    80006d58:	fa0482e3          	beqz	s1,80006cfc <devintr+0x40>
    80006d5c:	00048593          	mv	a1,s1
    80006d60:	00003517          	auipc	a0,0x3
    80006d64:	9e850513          	addi	a0,a0,-1560 # 80009748 <CONSOLE_STATUS+0x738>
    80006d68:	00000097          	auipc	ra,0x0
    80006d6c:	670080e7          	jalr	1648(ra) # 800073d8 <__printf>
    80006d70:	00048513          	mv	a0,s1
    80006d74:	00000097          	auipc	ra,0x0
    80006d78:	258080e7          	jalr	600(ra) # 80006fcc <plic_complete>
    80006d7c:	00100513          	li	a0,1
    80006d80:	f7dff06f          	j	80006cfc <devintr+0x40>
    80006d84:	00006517          	auipc	a0,0x6
    80006d88:	f6c50513          	addi	a0,a0,-148 # 8000ccf0 <tickslock>
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	320080e7          	jalr	800(ra) # 800080ac <acquire>
    80006d94:	00005717          	auipc	a4,0x5
    80006d98:	de070713          	addi	a4,a4,-544 # 8000bb74 <ticks>
    80006d9c:	00072783          	lw	a5,0(a4)
    80006da0:	00006517          	auipc	a0,0x6
    80006da4:	f5050513          	addi	a0,a0,-176 # 8000ccf0 <tickslock>
    80006da8:	0017879b          	addiw	a5,a5,1
    80006dac:	00f72023          	sw	a5,0(a4)
    80006db0:	00001097          	auipc	ra,0x1
    80006db4:	3c8080e7          	jalr	968(ra) # 80008178 <release>
    80006db8:	f65ff06f          	j	80006d1c <devintr+0x60>
    80006dbc:	00001097          	auipc	ra,0x1
    80006dc0:	f24080e7          	jalr	-220(ra) # 80007ce0 <uartintr>
    80006dc4:	fadff06f          	j	80006d70 <devintr+0xb4>
	...

0000000080006dd0 <kernelvec>:
    80006dd0:	f0010113          	addi	sp,sp,-256
    80006dd4:	00113023          	sd	ra,0(sp)
    80006dd8:	00213423          	sd	sp,8(sp)
    80006ddc:	00313823          	sd	gp,16(sp)
    80006de0:	00413c23          	sd	tp,24(sp)
    80006de4:	02513023          	sd	t0,32(sp)
    80006de8:	02613423          	sd	t1,40(sp)
    80006dec:	02713823          	sd	t2,48(sp)
    80006df0:	02813c23          	sd	s0,56(sp)
    80006df4:	04913023          	sd	s1,64(sp)
    80006df8:	04a13423          	sd	a0,72(sp)
    80006dfc:	04b13823          	sd	a1,80(sp)
    80006e00:	04c13c23          	sd	a2,88(sp)
    80006e04:	06d13023          	sd	a3,96(sp)
    80006e08:	06e13423          	sd	a4,104(sp)
    80006e0c:	06f13823          	sd	a5,112(sp)
    80006e10:	07013c23          	sd	a6,120(sp)
    80006e14:	09113023          	sd	a7,128(sp)
    80006e18:	09213423          	sd	s2,136(sp)
    80006e1c:	09313823          	sd	s3,144(sp)
    80006e20:	09413c23          	sd	s4,152(sp)
    80006e24:	0b513023          	sd	s5,160(sp)
    80006e28:	0b613423          	sd	s6,168(sp)
    80006e2c:	0b713823          	sd	s7,176(sp)
    80006e30:	0b813c23          	sd	s8,184(sp)
    80006e34:	0d913023          	sd	s9,192(sp)
    80006e38:	0da13423          	sd	s10,200(sp)
    80006e3c:	0db13823          	sd	s11,208(sp)
    80006e40:	0dc13c23          	sd	t3,216(sp)
    80006e44:	0fd13023          	sd	t4,224(sp)
    80006e48:	0fe13423          	sd	t5,232(sp)
    80006e4c:	0ff13823          	sd	t6,240(sp)
    80006e50:	ccdff0ef          	jal	ra,80006b1c <kerneltrap>
    80006e54:	00013083          	ld	ra,0(sp)
    80006e58:	00813103          	ld	sp,8(sp)
    80006e5c:	01013183          	ld	gp,16(sp)
    80006e60:	02013283          	ld	t0,32(sp)
    80006e64:	02813303          	ld	t1,40(sp)
    80006e68:	03013383          	ld	t2,48(sp)
    80006e6c:	03813403          	ld	s0,56(sp)
    80006e70:	04013483          	ld	s1,64(sp)
    80006e74:	04813503          	ld	a0,72(sp)
    80006e78:	05013583          	ld	a1,80(sp)
    80006e7c:	05813603          	ld	a2,88(sp)
    80006e80:	06013683          	ld	a3,96(sp)
    80006e84:	06813703          	ld	a4,104(sp)
    80006e88:	07013783          	ld	a5,112(sp)
    80006e8c:	07813803          	ld	a6,120(sp)
    80006e90:	08013883          	ld	a7,128(sp)
    80006e94:	08813903          	ld	s2,136(sp)
    80006e98:	09013983          	ld	s3,144(sp)
    80006e9c:	09813a03          	ld	s4,152(sp)
    80006ea0:	0a013a83          	ld	s5,160(sp)
    80006ea4:	0a813b03          	ld	s6,168(sp)
    80006ea8:	0b013b83          	ld	s7,176(sp)
    80006eac:	0b813c03          	ld	s8,184(sp)
    80006eb0:	0c013c83          	ld	s9,192(sp)
    80006eb4:	0c813d03          	ld	s10,200(sp)
    80006eb8:	0d013d83          	ld	s11,208(sp)
    80006ebc:	0d813e03          	ld	t3,216(sp)
    80006ec0:	0e013e83          	ld	t4,224(sp)
    80006ec4:	0e813f03          	ld	t5,232(sp)
    80006ec8:	0f013f83          	ld	t6,240(sp)
    80006ecc:	10010113          	addi	sp,sp,256
    80006ed0:	10200073          	sret
    80006ed4:	00000013          	nop
    80006ed8:	00000013          	nop
    80006edc:	00000013          	nop

0000000080006ee0 <timervec>:
    80006ee0:	34051573          	csrrw	a0,mscratch,a0
    80006ee4:	00b53023          	sd	a1,0(a0)
    80006ee8:	00c53423          	sd	a2,8(a0)
    80006eec:	00d53823          	sd	a3,16(a0)
    80006ef0:	01853583          	ld	a1,24(a0)
    80006ef4:	02053603          	ld	a2,32(a0)
    80006ef8:	0005b683          	ld	a3,0(a1)
    80006efc:	00c686b3          	add	a3,a3,a2
    80006f00:	00d5b023          	sd	a3,0(a1)
    80006f04:	00200593          	li	a1,2
    80006f08:	14459073          	csrw	sip,a1
    80006f0c:	01053683          	ld	a3,16(a0)
    80006f10:	00853603          	ld	a2,8(a0)
    80006f14:	00053583          	ld	a1,0(a0)
    80006f18:	34051573          	csrrw	a0,mscratch,a0
    80006f1c:	30200073          	mret

0000000080006f20 <plicinit>:
    80006f20:	ff010113          	addi	sp,sp,-16
    80006f24:	00813423          	sd	s0,8(sp)
    80006f28:	01010413          	addi	s0,sp,16
    80006f2c:	00813403          	ld	s0,8(sp)
    80006f30:	0c0007b7          	lui	a5,0xc000
    80006f34:	00100713          	li	a4,1
    80006f38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006f3c:	00e7a223          	sw	a4,4(a5)
    80006f40:	01010113          	addi	sp,sp,16
    80006f44:	00008067          	ret

0000000080006f48 <plicinithart>:
    80006f48:	ff010113          	addi	sp,sp,-16
    80006f4c:	00813023          	sd	s0,0(sp)
    80006f50:	00113423          	sd	ra,8(sp)
    80006f54:	01010413          	addi	s0,sp,16
    80006f58:	00000097          	auipc	ra,0x0
    80006f5c:	a44080e7          	jalr	-1468(ra) # 8000699c <cpuid>
    80006f60:	0085171b          	slliw	a4,a0,0x8
    80006f64:	0c0027b7          	lui	a5,0xc002
    80006f68:	00e787b3          	add	a5,a5,a4
    80006f6c:	40200713          	li	a4,1026
    80006f70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006f74:	00813083          	ld	ra,8(sp)
    80006f78:	00013403          	ld	s0,0(sp)
    80006f7c:	00d5151b          	slliw	a0,a0,0xd
    80006f80:	0c2017b7          	lui	a5,0xc201
    80006f84:	00a78533          	add	a0,a5,a0
    80006f88:	00052023          	sw	zero,0(a0)
    80006f8c:	01010113          	addi	sp,sp,16
    80006f90:	00008067          	ret

0000000080006f94 <plic_claim>:
    80006f94:	ff010113          	addi	sp,sp,-16
    80006f98:	00813023          	sd	s0,0(sp)
    80006f9c:	00113423          	sd	ra,8(sp)
    80006fa0:	01010413          	addi	s0,sp,16
    80006fa4:	00000097          	auipc	ra,0x0
    80006fa8:	9f8080e7          	jalr	-1544(ra) # 8000699c <cpuid>
    80006fac:	00813083          	ld	ra,8(sp)
    80006fb0:	00013403          	ld	s0,0(sp)
    80006fb4:	00d5151b          	slliw	a0,a0,0xd
    80006fb8:	0c2017b7          	lui	a5,0xc201
    80006fbc:	00a78533          	add	a0,a5,a0
    80006fc0:	00452503          	lw	a0,4(a0)
    80006fc4:	01010113          	addi	sp,sp,16
    80006fc8:	00008067          	ret

0000000080006fcc <plic_complete>:
    80006fcc:	fe010113          	addi	sp,sp,-32
    80006fd0:	00813823          	sd	s0,16(sp)
    80006fd4:	00913423          	sd	s1,8(sp)
    80006fd8:	00113c23          	sd	ra,24(sp)
    80006fdc:	02010413          	addi	s0,sp,32
    80006fe0:	00050493          	mv	s1,a0
    80006fe4:	00000097          	auipc	ra,0x0
    80006fe8:	9b8080e7          	jalr	-1608(ra) # 8000699c <cpuid>
    80006fec:	01813083          	ld	ra,24(sp)
    80006ff0:	01013403          	ld	s0,16(sp)
    80006ff4:	00d5179b          	slliw	a5,a0,0xd
    80006ff8:	0c201737          	lui	a4,0xc201
    80006ffc:	00f707b3          	add	a5,a4,a5
    80007000:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007004:	00813483          	ld	s1,8(sp)
    80007008:	02010113          	addi	sp,sp,32
    8000700c:	00008067          	ret

0000000080007010 <consolewrite>:
    80007010:	fb010113          	addi	sp,sp,-80
    80007014:	04813023          	sd	s0,64(sp)
    80007018:	04113423          	sd	ra,72(sp)
    8000701c:	02913c23          	sd	s1,56(sp)
    80007020:	03213823          	sd	s2,48(sp)
    80007024:	03313423          	sd	s3,40(sp)
    80007028:	03413023          	sd	s4,32(sp)
    8000702c:	01513c23          	sd	s5,24(sp)
    80007030:	05010413          	addi	s0,sp,80
    80007034:	06c05c63          	blez	a2,800070ac <consolewrite+0x9c>
    80007038:	00060993          	mv	s3,a2
    8000703c:	00050a13          	mv	s4,a0
    80007040:	00058493          	mv	s1,a1
    80007044:	00000913          	li	s2,0
    80007048:	fff00a93          	li	s5,-1
    8000704c:	01c0006f          	j	80007068 <consolewrite+0x58>
    80007050:	fbf44503          	lbu	a0,-65(s0)
    80007054:	0019091b          	addiw	s2,s2,1
    80007058:	00148493          	addi	s1,s1,1
    8000705c:	00001097          	auipc	ra,0x1
    80007060:	a9c080e7          	jalr	-1380(ra) # 80007af8 <uartputc>
    80007064:	03298063          	beq	s3,s2,80007084 <consolewrite+0x74>
    80007068:	00048613          	mv	a2,s1
    8000706c:	00100693          	li	a3,1
    80007070:	000a0593          	mv	a1,s4
    80007074:	fbf40513          	addi	a0,s0,-65
    80007078:	00000097          	auipc	ra,0x0
    8000707c:	9dc080e7          	jalr	-1572(ra) # 80006a54 <either_copyin>
    80007080:	fd5518e3          	bne	a0,s5,80007050 <consolewrite+0x40>
    80007084:	04813083          	ld	ra,72(sp)
    80007088:	04013403          	ld	s0,64(sp)
    8000708c:	03813483          	ld	s1,56(sp)
    80007090:	02813983          	ld	s3,40(sp)
    80007094:	02013a03          	ld	s4,32(sp)
    80007098:	01813a83          	ld	s5,24(sp)
    8000709c:	00090513          	mv	a0,s2
    800070a0:	03013903          	ld	s2,48(sp)
    800070a4:	05010113          	addi	sp,sp,80
    800070a8:	00008067          	ret
    800070ac:	00000913          	li	s2,0
    800070b0:	fd5ff06f          	j	80007084 <consolewrite+0x74>

00000000800070b4 <consoleread>:
    800070b4:	f9010113          	addi	sp,sp,-112
    800070b8:	06813023          	sd	s0,96(sp)
    800070bc:	04913c23          	sd	s1,88(sp)
    800070c0:	05213823          	sd	s2,80(sp)
    800070c4:	05313423          	sd	s3,72(sp)
    800070c8:	05413023          	sd	s4,64(sp)
    800070cc:	03513c23          	sd	s5,56(sp)
    800070d0:	03613823          	sd	s6,48(sp)
    800070d4:	03713423          	sd	s7,40(sp)
    800070d8:	03813023          	sd	s8,32(sp)
    800070dc:	06113423          	sd	ra,104(sp)
    800070e0:	01913c23          	sd	s9,24(sp)
    800070e4:	07010413          	addi	s0,sp,112
    800070e8:	00060b93          	mv	s7,a2
    800070ec:	00050913          	mv	s2,a0
    800070f0:	00058c13          	mv	s8,a1
    800070f4:	00060b1b          	sext.w	s6,a2
    800070f8:	00006497          	auipc	s1,0x6
    800070fc:	c2048493          	addi	s1,s1,-992 # 8000cd18 <cons>
    80007100:	00400993          	li	s3,4
    80007104:	fff00a13          	li	s4,-1
    80007108:	00a00a93          	li	s5,10
    8000710c:	05705e63          	blez	s7,80007168 <consoleread+0xb4>
    80007110:	09c4a703          	lw	a4,156(s1)
    80007114:	0984a783          	lw	a5,152(s1)
    80007118:	0007071b          	sext.w	a4,a4
    8000711c:	08e78463          	beq	a5,a4,800071a4 <consoleread+0xf0>
    80007120:	07f7f713          	andi	a4,a5,127
    80007124:	00e48733          	add	a4,s1,a4
    80007128:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000712c:	0017869b          	addiw	a3,a5,1
    80007130:	08d4ac23          	sw	a3,152(s1)
    80007134:	00070c9b          	sext.w	s9,a4
    80007138:	0b370663          	beq	a4,s3,800071e4 <consoleread+0x130>
    8000713c:	00100693          	li	a3,1
    80007140:	f9f40613          	addi	a2,s0,-97
    80007144:	000c0593          	mv	a1,s8
    80007148:	00090513          	mv	a0,s2
    8000714c:	f8e40fa3          	sb	a4,-97(s0)
    80007150:	00000097          	auipc	ra,0x0
    80007154:	8b8080e7          	jalr	-1864(ra) # 80006a08 <either_copyout>
    80007158:	01450863          	beq	a0,s4,80007168 <consoleread+0xb4>
    8000715c:	001c0c13          	addi	s8,s8,1
    80007160:	fffb8b9b          	addiw	s7,s7,-1
    80007164:	fb5c94e3          	bne	s9,s5,8000710c <consoleread+0x58>
    80007168:	000b851b          	sext.w	a0,s7
    8000716c:	06813083          	ld	ra,104(sp)
    80007170:	06013403          	ld	s0,96(sp)
    80007174:	05813483          	ld	s1,88(sp)
    80007178:	05013903          	ld	s2,80(sp)
    8000717c:	04813983          	ld	s3,72(sp)
    80007180:	04013a03          	ld	s4,64(sp)
    80007184:	03813a83          	ld	s5,56(sp)
    80007188:	02813b83          	ld	s7,40(sp)
    8000718c:	02013c03          	ld	s8,32(sp)
    80007190:	01813c83          	ld	s9,24(sp)
    80007194:	40ab053b          	subw	a0,s6,a0
    80007198:	03013b03          	ld	s6,48(sp)
    8000719c:	07010113          	addi	sp,sp,112
    800071a0:	00008067          	ret
    800071a4:	00001097          	auipc	ra,0x1
    800071a8:	1d8080e7          	jalr	472(ra) # 8000837c <push_on>
    800071ac:	0984a703          	lw	a4,152(s1)
    800071b0:	09c4a783          	lw	a5,156(s1)
    800071b4:	0007879b          	sext.w	a5,a5
    800071b8:	fef70ce3          	beq	a4,a5,800071b0 <consoleread+0xfc>
    800071bc:	00001097          	auipc	ra,0x1
    800071c0:	234080e7          	jalr	564(ra) # 800083f0 <pop_on>
    800071c4:	0984a783          	lw	a5,152(s1)
    800071c8:	07f7f713          	andi	a4,a5,127
    800071cc:	00e48733          	add	a4,s1,a4
    800071d0:	01874703          	lbu	a4,24(a4)
    800071d4:	0017869b          	addiw	a3,a5,1
    800071d8:	08d4ac23          	sw	a3,152(s1)
    800071dc:	00070c9b          	sext.w	s9,a4
    800071e0:	f5371ee3          	bne	a4,s3,8000713c <consoleread+0x88>
    800071e4:	000b851b          	sext.w	a0,s7
    800071e8:	f96bf2e3          	bgeu	s7,s6,8000716c <consoleread+0xb8>
    800071ec:	08f4ac23          	sw	a5,152(s1)
    800071f0:	f7dff06f          	j	8000716c <consoleread+0xb8>

00000000800071f4 <consputc>:
    800071f4:	10000793          	li	a5,256
    800071f8:	00f50663          	beq	a0,a5,80007204 <consputc+0x10>
    800071fc:	00001317          	auipc	t1,0x1
    80007200:	9f430067          	jr	-1548(t1) # 80007bf0 <uartputc_sync>
    80007204:	ff010113          	addi	sp,sp,-16
    80007208:	00113423          	sd	ra,8(sp)
    8000720c:	00813023          	sd	s0,0(sp)
    80007210:	01010413          	addi	s0,sp,16
    80007214:	00800513          	li	a0,8
    80007218:	00001097          	auipc	ra,0x1
    8000721c:	9d8080e7          	jalr	-1576(ra) # 80007bf0 <uartputc_sync>
    80007220:	02000513          	li	a0,32
    80007224:	00001097          	auipc	ra,0x1
    80007228:	9cc080e7          	jalr	-1588(ra) # 80007bf0 <uartputc_sync>
    8000722c:	00013403          	ld	s0,0(sp)
    80007230:	00813083          	ld	ra,8(sp)
    80007234:	00800513          	li	a0,8
    80007238:	01010113          	addi	sp,sp,16
    8000723c:	00001317          	auipc	t1,0x1
    80007240:	9b430067          	jr	-1612(t1) # 80007bf0 <uartputc_sync>

0000000080007244 <consoleintr>:
    80007244:	fe010113          	addi	sp,sp,-32
    80007248:	00813823          	sd	s0,16(sp)
    8000724c:	00913423          	sd	s1,8(sp)
    80007250:	01213023          	sd	s2,0(sp)
    80007254:	00113c23          	sd	ra,24(sp)
    80007258:	02010413          	addi	s0,sp,32
    8000725c:	00006917          	auipc	s2,0x6
    80007260:	abc90913          	addi	s2,s2,-1348 # 8000cd18 <cons>
    80007264:	00050493          	mv	s1,a0
    80007268:	00090513          	mv	a0,s2
    8000726c:	00001097          	auipc	ra,0x1
    80007270:	e40080e7          	jalr	-448(ra) # 800080ac <acquire>
    80007274:	02048c63          	beqz	s1,800072ac <consoleintr+0x68>
    80007278:	0a092783          	lw	a5,160(s2)
    8000727c:	09892703          	lw	a4,152(s2)
    80007280:	07f00693          	li	a3,127
    80007284:	40e7873b          	subw	a4,a5,a4
    80007288:	02e6e263          	bltu	a3,a4,800072ac <consoleintr+0x68>
    8000728c:	00d00713          	li	a4,13
    80007290:	04e48063          	beq	s1,a4,800072d0 <consoleintr+0x8c>
    80007294:	07f7f713          	andi	a4,a5,127
    80007298:	00e90733          	add	a4,s2,a4
    8000729c:	0017879b          	addiw	a5,a5,1
    800072a0:	0af92023          	sw	a5,160(s2)
    800072a4:	00970c23          	sb	s1,24(a4)
    800072a8:	08f92e23          	sw	a5,156(s2)
    800072ac:	01013403          	ld	s0,16(sp)
    800072b0:	01813083          	ld	ra,24(sp)
    800072b4:	00813483          	ld	s1,8(sp)
    800072b8:	00013903          	ld	s2,0(sp)
    800072bc:	00006517          	auipc	a0,0x6
    800072c0:	a5c50513          	addi	a0,a0,-1444 # 8000cd18 <cons>
    800072c4:	02010113          	addi	sp,sp,32
    800072c8:	00001317          	auipc	t1,0x1
    800072cc:	eb030067          	jr	-336(t1) # 80008178 <release>
    800072d0:	00a00493          	li	s1,10
    800072d4:	fc1ff06f          	j	80007294 <consoleintr+0x50>

00000000800072d8 <consoleinit>:
    800072d8:	fe010113          	addi	sp,sp,-32
    800072dc:	00113c23          	sd	ra,24(sp)
    800072e0:	00813823          	sd	s0,16(sp)
    800072e4:	00913423          	sd	s1,8(sp)
    800072e8:	02010413          	addi	s0,sp,32
    800072ec:	00006497          	auipc	s1,0x6
    800072f0:	a2c48493          	addi	s1,s1,-1492 # 8000cd18 <cons>
    800072f4:	00048513          	mv	a0,s1
    800072f8:	00002597          	auipc	a1,0x2
    800072fc:	4a858593          	addi	a1,a1,1192 # 800097a0 <CONSOLE_STATUS+0x790>
    80007300:	00001097          	auipc	ra,0x1
    80007304:	d88080e7          	jalr	-632(ra) # 80008088 <initlock>
    80007308:	00000097          	auipc	ra,0x0
    8000730c:	7ac080e7          	jalr	1964(ra) # 80007ab4 <uartinit>
    80007310:	01813083          	ld	ra,24(sp)
    80007314:	01013403          	ld	s0,16(sp)
    80007318:	00000797          	auipc	a5,0x0
    8000731c:	d9c78793          	addi	a5,a5,-612 # 800070b4 <consoleread>
    80007320:	0af4bc23          	sd	a5,184(s1)
    80007324:	00000797          	auipc	a5,0x0
    80007328:	cec78793          	addi	a5,a5,-788 # 80007010 <consolewrite>
    8000732c:	0cf4b023          	sd	a5,192(s1)
    80007330:	00813483          	ld	s1,8(sp)
    80007334:	02010113          	addi	sp,sp,32
    80007338:	00008067          	ret

000000008000733c <console_read>:
    8000733c:	ff010113          	addi	sp,sp,-16
    80007340:	00813423          	sd	s0,8(sp)
    80007344:	01010413          	addi	s0,sp,16
    80007348:	00813403          	ld	s0,8(sp)
    8000734c:	00006317          	auipc	t1,0x6
    80007350:	a8433303          	ld	t1,-1404(t1) # 8000cdd0 <devsw+0x10>
    80007354:	01010113          	addi	sp,sp,16
    80007358:	00030067          	jr	t1

000000008000735c <console_write>:
    8000735c:	ff010113          	addi	sp,sp,-16
    80007360:	00813423          	sd	s0,8(sp)
    80007364:	01010413          	addi	s0,sp,16
    80007368:	00813403          	ld	s0,8(sp)
    8000736c:	00006317          	auipc	t1,0x6
    80007370:	a6c33303          	ld	t1,-1428(t1) # 8000cdd8 <devsw+0x18>
    80007374:	01010113          	addi	sp,sp,16
    80007378:	00030067          	jr	t1

000000008000737c <panic>:
    8000737c:	fe010113          	addi	sp,sp,-32
    80007380:	00113c23          	sd	ra,24(sp)
    80007384:	00813823          	sd	s0,16(sp)
    80007388:	00913423          	sd	s1,8(sp)
    8000738c:	02010413          	addi	s0,sp,32
    80007390:	00050493          	mv	s1,a0
    80007394:	00002517          	auipc	a0,0x2
    80007398:	41450513          	addi	a0,a0,1044 # 800097a8 <CONSOLE_STATUS+0x798>
    8000739c:	00006797          	auipc	a5,0x6
    800073a0:	ac07ae23          	sw	zero,-1316(a5) # 8000ce78 <pr+0x18>
    800073a4:	00000097          	auipc	ra,0x0
    800073a8:	034080e7          	jalr	52(ra) # 800073d8 <__printf>
    800073ac:	00048513          	mv	a0,s1
    800073b0:	00000097          	auipc	ra,0x0
    800073b4:	028080e7          	jalr	40(ra) # 800073d8 <__printf>
    800073b8:	00002517          	auipc	a0,0x2
    800073bc:	f7050513          	addi	a0,a0,-144 # 80009328 <CONSOLE_STATUS+0x318>
    800073c0:	00000097          	auipc	ra,0x0
    800073c4:	018080e7          	jalr	24(ra) # 800073d8 <__printf>
    800073c8:	00100793          	li	a5,1
    800073cc:	00004717          	auipc	a4,0x4
    800073d0:	7af72623          	sw	a5,1964(a4) # 8000bb78 <panicked>
    800073d4:	0000006f          	j	800073d4 <panic+0x58>

00000000800073d8 <__printf>:
    800073d8:	f3010113          	addi	sp,sp,-208
    800073dc:	08813023          	sd	s0,128(sp)
    800073e0:	07313423          	sd	s3,104(sp)
    800073e4:	09010413          	addi	s0,sp,144
    800073e8:	05813023          	sd	s8,64(sp)
    800073ec:	08113423          	sd	ra,136(sp)
    800073f0:	06913c23          	sd	s1,120(sp)
    800073f4:	07213823          	sd	s2,112(sp)
    800073f8:	07413023          	sd	s4,96(sp)
    800073fc:	05513c23          	sd	s5,88(sp)
    80007400:	05613823          	sd	s6,80(sp)
    80007404:	05713423          	sd	s7,72(sp)
    80007408:	03913c23          	sd	s9,56(sp)
    8000740c:	03a13823          	sd	s10,48(sp)
    80007410:	03b13423          	sd	s11,40(sp)
    80007414:	00006317          	auipc	t1,0x6
    80007418:	a4c30313          	addi	t1,t1,-1460 # 8000ce60 <pr>
    8000741c:	01832c03          	lw	s8,24(t1)
    80007420:	00b43423          	sd	a1,8(s0)
    80007424:	00c43823          	sd	a2,16(s0)
    80007428:	00d43c23          	sd	a3,24(s0)
    8000742c:	02e43023          	sd	a4,32(s0)
    80007430:	02f43423          	sd	a5,40(s0)
    80007434:	03043823          	sd	a6,48(s0)
    80007438:	03143c23          	sd	a7,56(s0)
    8000743c:	00050993          	mv	s3,a0
    80007440:	4a0c1663          	bnez	s8,800078ec <__printf+0x514>
    80007444:	60098c63          	beqz	s3,80007a5c <__printf+0x684>
    80007448:	0009c503          	lbu	a0,0(s3)
    8000744c:	00840793          	addi	a5,s0,8
    80007450:	f6f43c23          	sd	a5,-136(s0)
    80007454:	00000493          	li	s1,0
    80007458:	22050063          	beqz	a0,80007678 <__printf+0x2a0>
    8000745c:	00002a37          	lui	s4,0x2
    80007460:	00018ab7          	lui	s5,0x18
    80007464:	000f4b37          	lui	s6,0xf4
    80007468:	00989bb7          	lui	s7,0x989
    8000746c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007470:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007474:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007478:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000747c:	00148c9b          	addiw	s9,s1,1
    80007480:	02500793          	li	a5,37
    80007484:	01998933          	add	s2,s3,s9
    80007488:	38f51263          	bne	a0,a5,8000780c <__printf+0x434>
    8000748c:	00094783          	lbu	a5,0(s2)
    80007490:	00078c9b          	sext.w	s9,a5
    80007494:	1e078263          	beqz	a5,80007678 <__printf+0x2a0>
    80007498:	0024849b          	addiw	s1,s1,2
    8000749c:	07000713          	li	a4,112
    800074a0:	00998933          	add	s2,s3,s1
    800074a4:	38e78a63          	beq	a5,a4,80007838 <__printf+0x460>
    800074a8:	20f76863          	bltu	a4,a5,800076b8 <__printf+0x2e0>
    800074ac:	42a78863          	beq	a5,a0,800078dc <__printf+0x504>
    800074b0:	06400713          	li	a4,100
    800074b4:	40e79663          	bne	a5,a4,800078c0 <__printf+0x4e8>
    800074b8:	f7843783          	ld	a5,-136(s0)
    800074bc:	0007a603          	lw	a2,0(a5)
    800074c0:	00878793          	addi	a5,a5,8
    800074c4:	f6f43c23          	sd	a5,-136(s0)
    800074c8:	42064a63          	bltz	a2,800078fc <__printf+0x524>
    800074cc:	00a00713          	li	a4,10
    800074d0:	02e677bb          	remuw	a5,a2,a4
    800074d4:	00002d97          	auipc	s11,0x2
    800074d8:	2fcd8d93          	addi	s11,s11,764 # 800097d0 <digits>
    800074dc:	00900593          	li	a1,9
    800074e0:	0006051b          	sext.w	a0,a2
    800074e4:	00000c93          	li	s9,0
    800074e8:	02079793          	slli	a5,a5,0x20
    800074ec:	0207d793          	srli	a5,a5,0x20
    800074f0:	00fd87b3          	add	a5,s11,a5
    800074f4:	0007c783          	lbu	a5,0(a5)
    800074f8:	02e656bb          	divuw	a3,a2,a4
    800074fc:	f8f40023          	sb	a5,-128(s0)
    80007500:	14c5d863          	bge	a1,a2,80007650 <__printf+0x278>
    80007504:	06300593          	li	a1,99
    80007508:	00100c93          	li	s9,1
    8000750c:	02e6f7bb          	remuw	a5,a3,a4
    80007510:	02079793          	slli	a5,a5,0x20
    80007514:	0207d793          	srli	a5,a5,0x20
    80007518:	00fd87b3          	add	a5,s11,a5
    8000751c:	0007c783          	lbu	a5,0(a5)
    80007520:	02e6d73b          	divuw	a4,a3,a4
    80007524:	f8f400a3          	sb	a5,-127(s0)
    80007528:	12a5f463          	bgeu	a1,a0,80007650 <__printf+0x278>
    8000752c:	00a00693          	li	a3,10
    80007530:	00900593          	li	a1,9
    80007534:	02d777bb          	remuw	a5,a4,a3
    80007538:	02079793          	slli	a5,a5,0x20
    8000753c:	0207d793          	srli	a5,a5,0x20
    80007540:	00fd87b3          	add	a5,s11,a5
    80007544:	0007c503          	lbu	a0,0(a5)
    80007548:	02d757bb          	divuw	a5,a4,a3
    8000754c:	f8a40123          	sb	a0,-126(s0)
    80007550:	48e5f263          	bgeu	a1,a4,800079d4 <__printf+0x5fc>
    80007554:	06300513          	li	a0,99
    80007558:	02d7f5bb          	remuw	a1,a5,a3
    8000755c:	02059593          	slli	a1,a1,0x20
    80007560:	0205d593          	srli	a1,a1,0x20
    80007564:	00bd85b3          	add	a1,s11,a1
    80007568:	0005c583          	lbu	a1,0(a1)
    8000756c:	02d7d7bb          	divuw	a5,a5,a3
    80007570:	f8b401a3          	sb	a1,-125(s0)
    80007574:	48e57263          	bgeu	a0,a4,800079f8 <__printf+0x620>
    80007578:	3e700513          	li	a0,999
    8000757c:	02d7f5bb          	remuw	a1,a5,a3
    80007580:	02059593          	slli	a1,a1,0x20
    80007584:	0205d593          	srli	a1,a1,0x20
    80007588:	00bd85b3          	add	a1,s11,a1
    8000758c:	0005c583          	lbu	a1,0(a1)
    80007590:	02d7d7bb          	divuw	a5,a5,a3
    80007594:	f8b40223          	sb	a1,-124(s0)
    80007598:	46e57663          	bgeu	a0,a4,80007a04 <__printf+0x62c>
    8000759c:	02d7f5bb          	remuw	a1,a5,a3
    800075a0:	02059593          	slli	a1,a1,0x20
    800075a4:	0205d593          	srli	a1,a1,0x20
    800075a8:	00bd85b3          	add	a1,s11,a1
    800075ac:	0005c583          	lbu	a1,0(a1)
    800075b0:	02d7d7bb          	divuw	a5,a5,a3
    800075b4:	f8b402a3          	sb	a1,-123(s0)
    800075b8:	46ea7863          	bgeu	s4,a4,80007a28 <__printf+0x650>
    800075bc:	02d7f5bb          	remuw	a1,a5,a3
    800075c0:	02059593          	slli	a1,a1,0x20
    800075c4:	0205d593          	srli	a1,a1,0x20
    800075c8:	00bd85b3          	add	a1,s11,a1
    800075cc:	0005c583          	lbu	a1,0(a1)
    800075d0:	02d7d7bb          	divuw	a5,a5,a3
    800075d4:	f8b40323          	sb	a1,-122(s0)
    800075d8:	3eeaf863          	bgeu	s5,a4,800079c8 <__printf+0x5f0>
    800075dc:	02d7f5bb          	remuw	a1,a5,a3
    800075e0:	02059593          	slli	a1,a1,0x20
    800075e4:	0205d593          	srli	a1,a1,0x20
    800075e8:	00bd85b3          	add	a1,s11,a1
    800075ec:	0005c583          	lbu	a1,0(a1)
    800075f0:	02d7d7bb          	divuw	a5,a5,a3
    800075f4:	f8b403a3          	sb	a1,-121(s0)
    800075f8:	42eb7e63          	bgeu	s6,a4,80007a34 <__printf+0x65c>
    800075fc:	02d7f5bb          	remuw	a1,a5,a3
    80007600:	02059593          	slli	a1,a1,0x20
    80007604:	0205d593          	srli	a1,a1,0x20
    80007608:	00bd85b3          	add	a1,s11,a1
    8000760c:	0005c583          	lbu	a1,0(a1)
    80007610:	02d7d7bb          	divuw	a5,a5,a3
    80007614:	f8b40423          	sb	a1,-120(s0)
    80007618:	42ebfc63          	bgeu	s7,a4,80007a50 <__printf+0x678>
    8000761c:	02079793          	slli	a5,a5,0x20
    80007620:	0207d793          	srli	a5,a5,0x20
    80007624:	00fd8db3          	add	s11,s11,a5
    80007628:	000dc703          	lbu	a4,0(s11)
    8000762c:	00a00793          	li	a5,10
    80007630:	00900c93          	li	s9,9
    80007634:	f8e404a3          	sb	a4,-119(s0)
    80007638:	00065c63          	bgez	a2,80007650 <__printf+0x278>
    8000763c:	f9040713          	addi	a4,s0,-112
    80007640:	00f70733          	add	a4,a4,a5
    80007644:	02d00693          	li	a3,45
    80007648:	fed70823          	sb	a3,-16(a4)
    8000764c:	00078c93          	mv	s9,a5
    80007650:	f8040793          	addi	a5,s0,-128
    80007654:	01978cb3          	add	s9,a5,s9
    80007658:	f7f40d13          	addi	s10,s0,-129
    8000765c:	000cc503          	lbu	a0,0(s9)
    80007660:	fffc8c93          	addi	s9,s9,-1
    80007664:	00000097          	auipc	ra,0x0
    80007668:	b90080e7          	jalr	-1136(ra) # 800071f4 <consputc>
    8000766c:	ffac98e3          	bne	s9,s10,8000765c <__printf+0x284>
    80007670:	00094503          	lbu	a0,0(s2)
    80007674:	e00514e3          	bnez	a0,8000747c <__printf+0xa4>
    80007678:	1a0c1663          	bnez	s8,80007824 <__printf+0x44c>
    8000767c:	08813083          	ld	ra,136(sp)
    80007680:	08013403          	ld	s0,128(sp)
    80007684:	07813483          	ld	s1,120(sp)
    80007688:	07013903          	ld	s2,112(sp)
    8000768c:	06813983          	ld	s3,104(sp)
    80007690:	06013a03          	ld	s4,96(sp)
    80007694:	05813a83          	ld	s5,88(sp)
    80007698:	05013b03          	ld	s6,80(sp)
    8000769c:	04813b83          	ld	s7,72(sp)
    800076a0:	04013c03          	ld	s8,64(sp)
    800076a4:	03813c83          	ld	s9,56(sp)
    800076a8:	03013d03          	ld	s10,48(sp)
    800076ac:	02813d83          	ld	s11,40(sp)
    800076b0:	0d010113          	addi	sp,sp,208
    800076b4:	00008067          	ret
    800076b8:	07300713          	li	a4,115
    800076bc:	1ce78a63          	beq	a5,a4,80007890 <__printf+0x4b8>
    800076c0:	07800713          	li	a4,120
    800076c4:	1ee79e63          	bne	a5,a4,800078c0 <__printf+0x4e8>
    800076c8:	f7843783          	ld	a5,-136(s0)
    800076cc:	0007a703          	lw	a4,0(a5)
    800076d0:	00878793          	addi	a5,a5,8
    800076d4:	f6f43c23          	sd	a5,-136(s0)
    800076d8:	28074263          	bltz	a4,8000795c <__printf+0x584>
    800076dc:	00002d97          	auipc	s11,0x2
    800076e0:	0f4d8d93          	addi	s11,s11,244 # 800097d0 <digits>
    800076e4:	00f77793          	andi	a5,a4,15
    800076e8:	00fd87b3          	add	a5,s11,a5
    800076ec:	0007c683          	lbu	a3,0(a5)
    800076f0:	00f00613          	li	a2,15
    800076f4:	0007079b          	sext.w	a5,a4
    800076f8:	f8d40023          	sb	a3,-128(s0)
    800076fc:	0047559b          	srliw	a1,a4,0x4
    80007700:	0047569b          	srliw	a3,a4,0x4
    80007704:	00000c93          	li	s9,0
    80007708:	0ee65063          	bge	a2,a4,800077e8 <__printf+0x410>
    8000770c:	00f6f693          	andi	a3,a3,15
    80007710:	00dd86b3          	add	a3,s11,a3
    80007714:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007718:	0087d79b          	srliw	a5,a5,0x8
    8000771c:	00100c93          	li	s9,1
    80007720:	f8d400a3          	sb	a3,-127(s0)
    80007724:	0cb67263          	bgeu	a2,a1,800077e8 <__printf+0x410>
    80007728:	00f7f693          	andi	a3,a5,15
    8000772c:	00dd86b3          	add	a3,s11,a3
    80007730:	0006c583          	lbu	a1,0(a3)
    80007734:	00f00613          	li	a2,15
    80007738:	0047d69b          	srliw	a3,a5,0x4
    8000773c:	f8b40123          	sb	a1,-126(s0)
    80007740:	0047d593          	srli	a1,a5,0x4
    80007744:	28f67e63          	bgeu	a2,a5,800079e0 <__printf+0x608>
    80007748:	00f6f693          	andi	a3,a3,15
    8000774c:	00dd86b3          	add	a3,s11,a3
    80007750:	0006c503          	lbu	a0,0(a3)
    80007754:	0087d813          	srli	a6,a5,0x8
    80007758:	0087d69b          	srliw	a3,a5,0x8
    8000775c:	f8a401a3          	sb	a0,-125(s0)
    80007760:	28b67663          	bgeu	a2,a1,800079ec <__printf+0x614>
    80007764:	00f6f693          	andi	a3,a3,15
    80007768:	00dd86b3          	add	a3,s11,a3
    8000776c:	0006c583          	lbu	a1,0(a3)
    80007770:	00c7d513          	srli	a0,a5,0xc
    80007774:	00c7d69b          	srliw	a3,a5,0xc
    80007778:	f8b40223          	sb	a1,-124(s0)
    8000777c:	29067a63          	bgeu	a2,a6,80007a10 <__printf+0x638>
    80007780:	00f6f693          	andi	a3,a3,15
    80007784:	00dd86b3          	add	a3,s11,a3
    80007788:	0006c583          	lbu	a1,0(a3)
    8000778c:	0107d813          	srli	a6,a5,0x10
    80007790:	0107d69b          	srliw	a3,a5,0x10
    80007794:	f8b402a3          	sb	a1,-123(s0)
    80007798:	28a67263          	bgeu	a2,a0,80007a1c <__printf+0x644>
    8000779c:	00f6f693          	andi	a3,a3,15
    800077a0:	00dd86b3          	add	a3,s11,a3
    800077a4:	0006c683          	lbu	a3,0(a3)
    800077a8:	0147d79b          	srliw	a5,a5,0x14
    800077ac:	f8d40323          	sb	a3,-122(s0)
    800077b0:	21067663          	bgeu	a2,a6,800079bc <__printf+0x5e4>
    800077b4:	02079793          	slli	a5,a5,0x20
    800077b8:	0207d793          	srli	a5,a5,0x20
    800077bc:	00fd8db3          	add	s11,s11,a5
    800077c0:	000dc683          	lbu	a3,0(s11)
    800077c4:	00800793          	li	a5,8
    800077c8:	00700c93          	li	s9,7
    800077cc:	f8d403a3          	sb	a3,-121(s0)
    800077d0:	00075c63          	bgez	a4,800077e8 <__printf+0x410>
    800077d4:	f9040713          	addi	a4,s0,-112
    800077d8:	00f70733          	add	a4,a4,a5
    800077dc:	02d00693          	li	a3,45
    800077e0:	fed70823          	sb	a3,-16(a4)
    800077e4:	00078c93          	mv	s9,a5
    800077e8:	f8040793          	addi	a5,s0,-128
    800077ec:	01978cb3          	add	s9,a5,s9
    800077f0:	f7f40d13          	addi	s10,s0,-129
    800077f4:	000cc503          	lbu	a0,0(s9)
    800077f8:	fffc8c93          	addi	s9,s9,-1
    800077fc:	00000097          	auipc	ra,0x0
    80007800:	9f8080e7          	jalr	-1544(ra) # 800071f4 <consputc>
    80007804:	ff9d18e3          	bne	s10,s9,800077f4 <__printf+0x41c>
    80007808:	0100006f          	j	80007818 <__printf+0x440>
    8000780c:	00000097          	auipc	ra,0x0
    80007810:	9e8080e7          	jalr	-1560(ra) # 800071f4 <consputc>
    80007814:	000c8493          	mv	s1,s9
    80007818:	00094503          	lbu	a0,0(s2)
    8000781c:	c60510e3          	bnez	a0,8000747c <__printf+0xa4>
    80007820:	e40c0ee3          	beqz	s8,8000767c <__printf+0x2a4>
    80007824:	00005517          	auipc	a0,0x5
    80007828:	63c50513          	addi	a0,a0,1596 # 8000ce60 <pr>
    8000782c:	00001097          	auipc	ra,0x1
    80007830:	94c080e7          	jalr	-1716(ra) # 80008178 <release>
    80007834:	e49ff06f          	j	8000767c <__printf+0x2a4>
    80007838:	f7843783          	ld	a5,-136(s0)
    8000783c:	03000513          	li	a0,48
    80007840:	01000d13          	li	s10,16
    80007844:	00878713          	addi	a4,a5,8
    80007848:	0007bc83          	ld	s9,0(a5)
    8000784c:	f6e43c23          	sd	a4,-136(s0)
    80007850:	00000097          	auipc	ra,0x0
    80007854:	9a4080e7          	jalr	-1628(ra) # 800071f4 <consputc>
    80007858:	07800513          	li	a0,120
    8000785c:	00000097          	auipc	ra,0x0
    80007860:	998080e7          	jalr	-1640(ra) # 800071f4 <consputc>
    80007864:	00002d97          	auipc	s11,0x2
    80007868:	f6cd8d93          	addi	s11,s11,-148 # 800097d0 <digits>
    8000786c:	03ccd793          	srli	a5,s9,0x3c
    80007870:	00fd87b3          	add	a5,s11,a5
    80007874:	0007c503          	lbu	a0,0(a5)
    80007878:	fffd0d1b          	addiw	s10,s10,-1
    8000787c:	004c9c93          	slli	s9,s9,0x4
    80007880:	00000097          	auipc	ra,0x0
    80007884:	974080e7          	jalr	-1676(ra) # 800071f4 <consputc>
    80007888:	fe0d12e3          	bnez	s10,8000786c <__printf+0x494>
    8000788c:	f8dff06f          	j	80007818 <__printf+0x440>
    80007890:	f7843783          	ld	a5,-136(s0)
    80007894:	0007bc83          	ld	s9,0(a5)
    80007898:	00878793          	addi	a5,a5,8
    8000789c:	f6f43c23          	sd	a5,-136(s0)
    800078a0:	000c9a63          	bnez	s9,800078b4 <__printf+0x4dc>
    800078a4:	1080006f          	j	800079ac <__printf+0x5d4>
    800078a8:	001c8c93          	addi	s9,s9,1
    800078ac:	00000097          	auipc	ra,0x0
    800078b0:	948080e7          	jalr	-1720(ra) # 800071f4 <consputc>
    800078b4:	000cc503          	lbu	a0,0(s9)
    800078b8:	fe0518e3          	bnez	a0,800078a8 <__printf+0x4d0>
    800078bc:	f5dff06f          	j	80007818 <__printf+0x440>
    800078c0:	02500513          	li	a0,37
    800078c4:	00000097          	auipc	ra,0x0
    800078c8:	930080e7          	jalr	-1744(ra) # 800071f4 <consputc>
    800078cc:	000c8513          	mv	a0,s9
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	924080e7          	jalr	-1756(ra) # 800071f4 <consputc>
    800078d8:	f41ff06f          	j	80007818 <__printf+0x440>
    800078dc:	02500513          	li	a0,37
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	914080e7          	jalr	-1772(ra) # 800071f4 <consputc>
    800078e8:	f31ff06f          	j	80007818 <__printf+0x440>
    800078ec:	00030513          	mv	a0,t1
    800078f0:	00000097          	auipc	ra,0x0
    800078f4:	7bc080e7          	jalr	1980(ra) # 800080ac <acquire>
    800078f8:	b4dff06f          	j	80007444 <__printf+0x6c>
    800078fc:	40c0053b          	negw	a0,a2
    80007900:	00a00713          	li	a4,10
    80007904:	02e576bb          	remuw	a3,a0,a4
    80007908:	00002d97          	auipc	s11,0x2
    8000790c:	ec8d8d93          	addi	s11,s11,-312 # 800097d0 <digits>
    80007910:	ff700593          	li	a1,-9
    80007914:	02069693          	slli	a3,a3,0x20
    80007918:	0206d693          	srli	a3,a3,0x20
    8000791c:	00dd86b3          	add	a3,s11,a3
    80007920:	0006c683          	lbu	a3,0(a3)
    80007924:	02e557bb          	divuw	a5,a0,a4
    80007928:	f8d40023          	sb	a3,-128(s0)
    8000792c:	10b65e63          	bge	a2,a1,80007a48 <__printf+0x670>
    80007930:	06300593          	li	a1,99
    80007934:	02e7f6bb          	remuw	a3,a5,a4
    80007938:	02069693          	slli	a3,a3,0x20
    8000793c:	0206d693          	srli	a3,a3,0x20
    80007940:	00dd86b3          	add	a3,s11,a3
    80007944:	0006c683          	lbu	a3,0(a3)
    80007948:	02e7d73b          	divuw	a4,a5,a4
    8000794c:	00200793          	li	a5,2
    80007950:	f8d400a3          	sb	a3,-127(s0)
    80007954:	bca5ece3          	bltu	a1,a0,8000752c <__printf+0x154>
    80007958:	ce5ff06f          	j	8000763c <__printf+0x264>
    8000795c:	40e007bb          	negw	a5,a4
    80007960:	00002d97          	auipc	s11,0x2
    80007964:	e70d8d93          	addi	s11,s11,-400 # 800097d0 <digits>
    80007968:	00f7f693          	andi	a3,a5,15
    8000796c:	00dd86b3          	add	a3,s11,a3
    80007970:	0006c583          	lbu	a1,0(a3)
    80007974:	ff100613          	li	a2,-15
    80007978:	0047d69b          	srliw	a3,a5,0x4
    8000797c:	f8b40023          	sb	a1,-128(s0)
    80007980:	0047d59b          	srliw	a1,a5,0x4
    80007984:	0ac75e63          	bge	a4,a2,80007a40 <__printf+0x668>
    80007988:	00f6f693          	andi	a3,a3,15
    8000798c:	00dd86b3          	add	a3,s11,a3
    80007990:	0006c603          	lbu	a2,0(a3)
    80007994:	00f00693          	li	a3,15
    80007998:	0087d79b          	srliw	a5,a5,0x8
    8000799c:	f8c400a3          	sb	a2,-127(s0)
    800079a0:	d8b6e4e3          	bltu	a3,a1,80007728 <__printf+0x350>
    800079a4:	00200793          	li	a5,2
    800079a8:	e2dff06f          	j	800077d4 <__printf+0x3fc>
    800079ac:	00002c97          	auipc	s9,0x2
    800079b0:	e04c8c93          	addi	s9,s9,-508 # 800097b0 <CONSOLE_STATUS+0x7a0>
    800079b4:	02800513          	li	a0,40
    800079b8:	ef1ff06f          	j	800078a8 <__printf+0x4d0>
    800079bc:	00700793          	li	a5,7
    800079c0:	00600c93          	li	s9,6
    800079c4:	e0dff06f          	j	800077d0 <__printf+0x3f8>
    800079c8:	00700793          	li	a5,7
    800079cc:	00600c93          	li	s9,6
    800079d0:	c69ff06f          	j	80007638 <__printf+0x260>
    800079d4:	00300793          	li	a5,3
    800079d8:	00200c93          	li	s9,2
    800079dc:	c5dff06f          	j	80007638 <__printf+0x260>
    800079e0:	00300793          	li	a5,3
    800079e4:	00200c93          	li	s9,2
    800079e8:	de9ff06f          	j	800077d0 <__printf+0x3f8>
    800079ec:	00400793          	li	a5,4
    800079f0:	00300c93          	li	s9,3
    800079f4:	dddff06f          	j	800077d0 <__printf+0x3f8>
    800079f8:	00400793          	li	a5,4
    800079fc:	00300c93          	li	s9,3
    80007a00:	c39ff06f          	j	80007638 <__printf+0x260>
    80007a04:	00500793          	li	a5,5
    80007a08:	00400c93          	li	s9,4
    80007a0c:	c2dff06f          	j	80007638 <__printf+0x260>
    80007a10:	00500793          	li	a5,5
    80007a14:	00400c93          	li	s9,4
    80007a18:	db9ff06f          	j	800077d0 <__printf+0x3f8>
    80007a1c:	00600793          	li	a5,6
    80007a20:	00500c93          	li	s9,5
    80007a24:	dadff06f          	j	800077d0 <__printf+0x3f8>
    80007a28:	00600793          	li	a5,6
    80007a2c:	00500c93          	li	s9,5
    80007a30:	c09ff06f          	j	80007638 <__printf+0x260>
    80007a34:	00800793          	li	a5,8
    80007a38:	00700c93          	li	s9,7
    80007a3c:	bfdff06f          	j	80007638 <__printf+0x260>
    80007a40:	00100793          	li	a5,1
    80007a44:	d91ff06f          	j	800077d4 <__printf+0x3fc>
    80007a48:	00100793          	li	a5,1
    80007a4c:	bf1ff06f          	j	8000763c <__printf+0x264>
    80007a50:	00900793          	li	a5,9
    80007a54:	00800c93          	li	s9,8
    80007a58:	be1ff06f          	j	80007638 <__printf+0x260>
    80007a5c:	00002517          	auipc	a0,0x2
    80007a60:	d5c50513          	addi	a0,a0,-676 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80007a64:	00000097          	auipc	ra,0x0
    80007a68:	918080e7          	jalr	-1768(ra) # 8000737c <panic>

0000000080007a6c <printfinit>:
    80007a6c:	fe010113          	addi	sp,sp,-32
    80007a70:	00813823          	sd	s0,16(sp)
    80007a74:	00913423          	sd	s1,8(sp)
    80007a78:	00113c23          	sd	ra,24(sp)
    80007a7c:	02010413          	addi	s0,sp,32
    80007a80:	00005497          	auipc	s1,0x5
    80007a84:	3e048493          	addi	s1,s1,992 # 8000ce60 <pr>
    80007a88:	00048513          	mv	a0,s1
    80007a8c:	00002597          	auipc	a1,0x2
    80007a90:	d3c58593          	addi	a1,a1,-708 # 800097c8 <CONSOLE_STATUS+0x7b8>
    80007a94:	00000097          	auipc	ra,0x0
    80007a98:	5f4080e7          	jalr	1524(ra) # 80008088 <initlock>
    80007a9c:	01813083          	ld	ra,24(sp)
    80007aa0:	01013403          	ld	s0,16(sp)
    80007aa4:	0004ac23          	sw	zero,24(s1)
    80007aa8:	00813483          	ld	s1,8(sp)
    80007aac:	02010113          	addi	sp,sp,32
    80007ab0:	00008067          	ret

0000000080007ab4 <uartinit>:
    80007ab4:	ff010113          	addi	sp,sp,-16
    80007ab8:	00813423          	sd	s0,8(sp)
    80007abc:	01010413          	addi	s0,sp,16
    80007ac0:	100007b7          	lui	a5,0x10000
    80007ac4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007ac8:	f8000713          	li	a4,-128
    80007acc:	00e781a3          	sb	a4,3(a5)
    80007ad0:	00300713          	li	a4,3
    80007ad4:	00e78023          	sb	a4,0(a5)
    80007ad8:	000780a3          	sb	zero,1(a5)
    80007adc:	00e781a3          	sb	a4,3(a5)
    80007ae0:	00700693          	li	a3,7
    80007ae4:	00d78123          	sb	a3,2(a5)
    80007ae8:	00e780a3          	sb	a4,1(a5)
    80007aec:	00813403          	ld	s0,8(sp)
    80007af0:	01010113          	addi	sp,sp,16
    80007af4:	00008067          	ret

0000000080007af8 <uartputc>:
    80007af8:	00004797          	auipc	a5,0x4
    80007afc:	0807a783          	lw	a5,128(a5) # 8000bb78 <panicked>
    80007b00:	00078463          	beqz	a5,80007b08 <uartputc+0x10>
    80007b04:	0000006f          	j	80007b04 <uartputc+0xc>
    80007b08:	fd010113          	addi	sp,sp,-48
    80007b0c:	02813023          	sd	s0,32(sp)
    80007b10:	00913c23          	sd	s1,24(sp)
    80007b14:	01213823          	sd	s2,16(sp)
    80007b18:	01313423          	sd	s3,8(sp)
    80007b1c:	02113423          	sd	ra,40(sp)
    80007b20:	03010413          	addi	s0,sp,48
    80007b24:	00004917          	auipc	s2,0x4
    80007b28:	05c90913          	addi	s2,s2,92 # 8000bb80 <uart_tx_r>
    80007b2c:	00093783          	ld	a5,0(s2)
    80007b30:	00004497          	auipc	s1,0x4
    80007b34:	05848493          	addi	s1,s1,88 # 8000bb88 <uart_tx_w>
    80007b38:	0004b703          	ld	a4,0(s1)
    80007b3c:	02078693          	addi	a3,a5,32
    80007b40:	00050993          	mv	s3,a0
    80007b44:	02e69c63          	bne	a3,a4,80007b7c <uartputc+0x84>
    80007b48:	00001097          	auipc	ra,0x1
    80007b4c:	834080e7          	jalr	-1996(ra) # 8000837c <push_on>
    80007b50:	00093783          	ld	a5,0(s2)
    80007b54:	0004b703          	ld	a4,0(s1)
    80007b58:	02078793          	addi	a5,a5,32
    80007b5c:	00e79463          	bne	a5,a4,80007b64 <uartputc+0x6c>
    80007b60:	0000006f          	j	80007b60 <uartputc+0x68>
    80007b64:	00001097          	auipc	ra,0x1
    80007b68:	88c080e7          	jalr	-1908(ra) # 800083f0 <pop_on>
    80007b6c:	00093783          	ld	a5,0(s2)
    80007b70:	0004b703          	ld	a4,0(s1)
    80007b74:	02078693          	addi	a3,a5,32
    80007b78:	fce688e3          	beq	a3,a4,80007b48 <uartputc+0x50>
    80007b7c:	01f77693          	andi	a3,a4,31
    80007b80:	00005597          	auipc	a1,0x5
    80007b84:	30058593          	addi	a1,a1,768 # 8000ce80 <uart_tx_buf>
    80007b88:	00d586b3          	add	a3,a1,a3
    80007b8c:	00170713          	addi	a4,a4,1
    80007b90:	01368023          	sb	s3,0(a3)
    80007b94:	00e4b023          	sd	a4,0(s1)
    80007b98:	10000637          	lui	a2,0x10000
    80007b9c:	02f71063          	bne	a4,a5,80007bbc <uartputc+0xc4>
    80007ba0:	0340006f          	j	80007bd4 <uartputc+0xdc>
    80007ba4:	00074703          	lbu	a4,0(a4)
    80007ba8:	00f93023          	sd	a5,0(s2)
    80007bac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007bb0:	00093783          	ld	a5,0(s2)
    80007bb4:	0004b703          	ld	a4,0(s1)
    80007bb8:	00f70e63          	beq	a4,a5,80007bd4 <uartputc+0xdc>
    80007bbc:	00564683          	lbu	a3,5(a2)
    80007bc0:	01f7f713          	andi	a4,a5,31
    80007bc4:	00e58733          	add	a4,a1,a4
    80007bc8:	0206f693          	andi	a3,a3,32
    80007bcc:	00178793          	addi	a5,a5,1
    80007bd0:	fc069ae3          	bnez	a3,80007ba4 <uartputc+0xac>
    80007bd4:	02813083          	ld	ra,40(sp)
    80007bd8:	02013403          	ld	s0,32(sp)
    80007bdc:	01813483          	ld	s1,24(sp)
    80007be0:	01013903          	ld	s2,16(sp)
    80007be4:	00813983          	ld	s3,8(sp)
    80007be8:	03010113          	addi	sp,sp,48
    80007bec:	00008067          	ret

0000000080007bf0 <uartputc_sync>:
    80007bf0:	ff010113          	addi	sp,sp,-16
    80007bf4:	00813423          	sd	s0,8(sp)
    80007bf8:	01010413          	addi	s0,sp,16
    80007bfc:	00004717          	auipc	a4,0x4
    80007c00:	f7c72703          	lw	a4,-132(a4) # 8000bb78 <panicked>
    80007c04:	02071663          	bnez	a4,80007c30 <uartputc_sync+0x40>
    80007c08:	00050793          	mv	a5,a0
    80007c0c:	100006b7          	lui	a3,0x10000
    80007c10:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007c14:	02077713          	andi	a4,a4,32
    80007c18:	fe070ce3          	beqz	a4,80007c10 <uartputc_sync+0x20>
    80007c1c:	0ff7f793          	andi	a5,a5,255
    80007c20:	00f68023          	sb	a5,0(a3)
    80007c24:	00813403          	ld	s0,8(sp)
    80007c28:	01010113          	addi	sp,sp,16
    80007c2c:	00008067          	ret
    80007c30:	0000006f          	j	80007c30 <uartputc_sync+0x40>

0000000080007c34 <uartstart>:
    80007c34:	ff010113          	addi	sp,sp,-16
    80007c38:	00813423          	sd	s0,8(sp)
    80007c3c:	01010413          	addi	s0,sp,16
    80007c40:	00004617          	auipc	a2,0x4
    80007c44:	f4060613          	addi	a2,a2,-192 # 8000bb80 <uart_tx_r>
    80007c48:	00004517          	auipc	a0,0x4
    80007c4c:	f4050513          	addi	a0,a0,-192 # 8000bb88 <uart_tx_w>
    80007c50:	00063783          	ld	a5,0(a2)
    80007c54:	00053703          	ld	a4,0(a0)
    80007c58:	04f70263          	beq	a4,a5,80007c9c <uartstart+0x68>
    80007c5c:	100005b7          	lui	a1,0x10000
    80007c60:	00005817          	auipc	a6,0x5
    80007c64:	22080813          	addi	a6,a6,544 # 8000ce80 <uart_tx_buf>
    80007c68:	01c0006f          	j	80007c84 <uartstart+0x50>
    80007c6c:	0006c703          	lbu	a4,0(a3)
    80007c70:	00f63023          	sd	a5,0(a2)
    80007c74:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007c78:	00063783          	ld	a5,0(a2)
    80007c7c:	00053703          	ld	a4,0(a0)
    80007c80:	00f70e63          	beq	a4,a5,80007c9c <uartstart+0x68>
    80007c84:	01f7f713          	andi	a4,a5,31
    80007c88:	00e806b3          	add	a3,a6,a4
    80007c8c:	0055c703          	lbu	a4,5(a1)
    80007c90:	00178793          	addi	a5,a5,1
    80007c94:	02077713          	andi	a4,a4,32
    80007c98:	fc071ae3          	bnez	a4,80007c6c <uartstart+0x38>
    80007c9c:	00813403          	ld	s0,8(sp)
    80007ca0:	01010113          	addi	sp,sp,16
    80007ca4:	00008067          	ret

0000000080007ca8 <uartgetc>:
    80007ca8:	ff010113          	addi	sp,sp,-16
    80007cac:	00813423          	sd	s0,8(sp)
    80007cb0:	01010413          	addi	s0,sp,16
    80007cb4:	10000737          	lui	a4,0x10000
    80007cb8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007cbc:	0017f793          	andi	a5,a5,1
    80007cc0:	00078c63          	beqz	a5,80007cd8 <uartgetc+0x30>
    80007cc4:	00074503          	lbu	a0,0(a4)
    80007cc8:	0ff57513          	andi	a0,a0,255
    80007ccc:	00813403          	ld	s0,8(sp)
    80007cd0:	01010113          	addi	sp,sp,16
    80007cd4:	00008067          	ret
    80007cd8:	fff00513          	li	a0,-1
    80007cdc:	ff1ff06f          	j	80007ccc <uartgetc+0x24>

0000000080007ce0 <uartintr>:
    80007ce0:	100007b7          	lui	a5,0x10000
    80007ce4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007ce8:	0017f793          	andi	a5,a5,1
    80007cec:	0a078463          	beqz	a5,80007d94 <uartintr+0xb4>
    80007cf0:	fe010113          	addi	sp,sp,-32
    80007cf4:	00813823          	sd	s0,16(sp)
    80007cf8:	00913423          	sd	s1,8(sp)
    80007cfc:	00113c23          	sd	ra,24(sp)
    80007d00:	02010413          	addi	s0,sp,32
    80007d04:	100004b7          	lui	s1,0x10000
    80007d08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007d0c:	0ff57513          	andi	a0,a0,255
    80007d10:	fffff097          	auipc	ra,0xfffff
    80007d14:	534080e7          	jalr	1332(ra) # 80007244 <consoleintr>
    80007d18:	0054c783          	lbu	a5,5(s1)
    80007d1c:	0017f793          	andi	a5,a5,1
    80007d20:	fe0794e3          	bnez	a5,80007d08 <uartintr+0x28>
    80007d24:	00004617          	auipc	a2,0x4
    80007d28:	e5c60613          	addi	a2,a2,-420 # 8000bb80 <uart_tx_r>
    80007d2c:	00004517          	auipc	a0,0x4
    80007d30:	e5c50513          	addi	a0,a0,-420 # 8000bb88 <uart_tx_w>
    80007d34:	00063783          	ld	a5,0(a2)
    80007d38:	00053703          	ld	a4,0(a0)
    80007d3c:	04f70263          	beq	a4,a5,80007d80 <uartintr+0xa0>
    80007d40:	100005b7          	lui	a1,0x10000
    80007d44:	00005817          	auipc	a6,0x5
    80007d48:	13c80813          	addi	a6,a6,316 # 8000ce80 <uart_tx_buf>
    80007d4c:	01c0006f          	j	80007d68 <uartintr+0x88>
    80007d50:	0006c703          	lbu	a4,0(a3)
    80007d54:	00f63023          	sd	a5,0(a2)
    80007d58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007d5c:	00063783          	ld	a5,0(a2)
    80007d60:	00053703          	ld	a4,0(a0)
    80007d64:	00f70e63          	beq	a4,a5,80007d80 <uartintr+0xa0>
    80007d68:	01f7f713          	andi	a4,a5,31
    80007d6c:	00e806b3          	add	a3,a6,a4
    80007d70:	0055c703          	lbu	a4,5(a1)
    80007d74:	00178793          	addi	a5,a5,1
    80007d78:	02077713          	andi	a4,a4,32
    80007d7c:	fc071ae3          	bnez	a4,80007d50 <uartintr+0x70>
    80007d80:	01813083          	ld	ra,24(sp)
    80007d84:	01013403          	ld	s0,16(sp)
    80007d88:	00813483          	ld	s1,8(sp)
    80007d8c:	02010113          	addi	sp,sp,32
    80007d90:	00008067          	ret
    80007d94:	00004617          	auipc	a2,0x4
    80007d98:	dec60613          	addi	a2,a2,-532 # 8000bb80 <uart_tx_r>
    80007d9c:	00004517          	auipc	a0,0x4
    80007da0:	dec50513          	addi	a0,a0,-532 # 8000bb88 <uart_tx_w>
    80007da4:	00063783          	ld	a5,0(a2)
    80007da8:	00053703          	ld	a4,0(a0)
    80007dac:	04f70263          	beq	a4,a5,80007df0 <uartintr+0x110>
    80007db0:	100005b7          	lui	a1,0x10000
    80007db4:	00005817          	auipc	a6,0x5
    80007db8:	0cc80813          	addi	a6,a6,204 # 8000ce80 <uart_tx_buf>
    80007dbc:	01c0006f          	j	80007dd8 <uartintr+0xf8>
    80007dc0:	0006c703          	lbu	a4,0(a3)
    80007dc4:	00f63023          	sd	a5,0(a2)
    80007dc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007dcc:	00063783          	ld	a5,0(a2)
    80007dd0:	00053703          	ld	a4,0(a0)
    80007dd4:	02f70063          	beq	a4,a5,80007df4 <uartintr+0x114>
    80007dd8:	01f7f713          	andi	a4,a5,31
    80007ddc:	00e806b3          	add	a3,a6,a4
    80007de0:	0055c703          	lbu	a4,5(a1)
    80007de4:	00178793          	addi	a5,a5,1
    80007de8:	02077713          	andi	a4,a4,32
    80007dec:	fc071ae3          	bnez	a4,80007dc0 <uartintr+0xe0>
    80007df0:	00008067          	ret
    80007df4:	00008067          	ret

0000000080007df8 <kinit>:
    80007df8:	fc010113          	addi	sp,sp,-64
    80007dfc:	02913423          	sd	s1,40(sp)
    80007e00:	fffff7b7          	lui	a5,0xfffff
    80007e04:	00006497          	auipc	s1,0x6
    80007e08:	09b48493          	addi	s1,s1,155 # 8000de9f <end+0xfff>
    80007e0c:	02813823          	sd	s0,48(sp)
    80007e10:	01313c23          	sd	s3,24(sp)
    80007e14:	00f4f4b3          	and	s1,s1,a5
    80007e18:	02113c23          	sd	ra,56(sp)
    80007e1c:	03213023          	sd	s2,32(sp)
    80007e20:	01413823          	sd	s4,16(sp)
    80007e24:	01513423          	sd	s5,8(sp)
    80007e28:	04010413          	addi	s0,sp,64
    80007e2c:	000017b7          	lui	a5,0x1
    80007e30:	01100993          	li	s3,17
    80007e34:	00f487b3          	add	a5,s1,a5
    80007e38:	01b99993          	slli	s3,s3,0x1b
    80007e3c:	06f9e063          	bltu	s3,a5,80007e9c <kinit+0xa4>
    80007e40:	00005a97          	auipc	s5,0x5
    80007e44:	060a8a93          	addi	s5,s5,96 # 8000cea0 <end>
    80007e48:	0754ec63          	bltu	s1,s5,80007ec0 <kinit+0xc8>
    80007e4c:	0734fa63          	bgeu	s1,s3,80007ec0 <kinit+0xc8>
    80007e50:	00088a37          	lui	s4,0x88
    80007e54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007e58:	00004917          	auipc	s2,0x4
    80007e5c:	d3890913          	addi	s2,s2,-712 # 8000bb90 <kmem>
    80007e60:	00ca1a13          	slli	s4,s4,0xc
    80007e64:	0140006f          	j	80007e78 <kinit+0x80>
    80007e68:	000017b7          	lui	a5,0x1
    80007e6c:	00f484b3          	add	s1,s1,a5
    80007e70:	0554e863          	bltu	s1,s5,80007ec0 <kinit+0xc8>
    80007e74:	0534f663          	bgeu	s1,s3,80007ec0 <kinit+0xc8>
    80007e78:	00001637          	lui	a2,0x1
    80007e7c:	00100593          	li	a1,1
    80007e80:	00048513          	mv	a0,s1
    80007e84:	00000097          	auipc	ra,0x0
    80007e88:	5e4080e7          	jalr	1508(ra) # 80008468 <__memset>
    80007e8c:	00093783          	ld	a5,0(s2)
    80007e90:	00f4b023          	sd	a5,0(s1)
    80007e94:	00993023          	sd	s1,0(s2)
    80007e98:	fd4498e3          	bne	s1,s4,80007e68 <kinit+0x70>
    80007e9c:	03813083          	ld	ra,56(sp)
    80007ea0:	03013403          	ld	s0,48(sp)
    80007ea4:	02813483          	ld	s1,40(sp)
    80007ea8:	02013903          	ld	s2,32(sp)
    80007eac:	01813983          	ld	s3,24(sp)
    80007eb0:	01013a03          	ld	s4,16(sp)
    80007eb4:	00813a83          	ld	s5,8(sp)
    80007eb8:	04010113          	addi	sp,sp,64
    80007ebc:	00008067          	ret
    80007ec0:	00002517          	auipc	a0,0x2
    80007ec4:	92850513          	addi	a0,a0,-1752 # 800097e8 <digits+0x18>
    80007ec8:	fffff097          	auipc	ra,0xfffff
    80007ecc:	4b4080e7          	jalr	1204(ra) # 8000737c <panic>

0000000080007ed0 <freerange>:
    80007ed0:	fc010113          	addi	sp,sp,-64
    80007ed4:	000017b7          	lui	a5,0x1
    80007ed8:	02913423          	sd	s1,40(sp)
    80007edc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007ee0:	009504b3          	add	s1,a0,s1
    80007ee4:	fffff537          	lui	a0,0xfffff
    80007ee8:	02813823          	sd	s0,48(sp)
    80007eec:	02113c23          	sd	ra,56(sp)
    80007ef0:	03213023          	sd	s2,32(sp)
    80007ef4:	01313c23          	sd	s3,24(sp)
    80007ef8:	01413823          	sd	s4,16(sp)
    80007efc:	01513423          	sd	s5,8(sp)
    80007f00:	01613023          	sd	s6,0(sp)
    80007f04:	04010413          	addi	s0,sp,64
    80007f08:	00a4f4b3          	and	s1,s1,a0
    80007f0c:	00f487b3          	add	a5,s1,a5
    80007f10:	06f5e463          	bltu	a1,a5,80007f78 <freerange+0xa8>
    80007f14:	00005a97          	auipc	s5,0x5
    80007f18:	f8ca8a93          	addi	s5,s5,-116 # 8000cea0 <end>
    80007f1c:	0954e263          	bltu	s1,s5,80007fa0 <freerange+0xd0>
    80007f20:	01100993          	li	s3,17
    80007f24:	01b99993          	slli	s3,s3,0x1b
    80007f28:	0734fc63          	bgeu	s1,s3,80007fa0 <freerange+0xd0>
    80007f2c:	00058a13          	mv	s4,a1
    80007f30:	00004917          	auipc	s2,0x4
    80007f34:	c6090913          	addi	s2,s2,-928 # 8000bb90 <kmem>
    80007f38:	00002b37          	lui	s6,0x2
    80007f3c:	0140006f          	j	80007f50 <freerange+0x80>
    80007f40:	000017b7          	lui	a5,0x1
    80007f44:	00f484b3          	add	s1,s1,a5
    80007f48:	0554ec63          	bltu	s1,s5,80007fa0 <freerange+0xd0>
    80007f4c:	0534fa63          	bgeu	s1,s3,80007fa0 <freerange+0xd0>
    80007f50:	00001637          	lui	a2,0x1
    80007f54:	00100593          	li	a1,1
    80007f58:	00048513          	mv	a0,s1
    80007f5c:	00000097          	auipc	ra,0x0
    80007f60:	50c080e7          	jalr	1292(ra) # 80008468 <__memset>
    80007f64:	00093703          	ld	a4,0(s2)
    80007f68:	016487b3          	add	a5,s1,s6
    80007f6c:	00e4b023          	sd	a4,0(s1)
    80007f70:	00993023          	sd	s1,0(s2)
    80007f74:	fcfa76e3          	bgeu	s4,a5,80007f40 <freerange+0x70>
    80007f78:	03813083          	ld	ra,56(sp)
    80007f7c:	03013403          	ld	s0,48(sp)
    80007f80:	02813483          	ld	s1,40(sp)
    80007f84:	02013903          	ld	s2,32(sp)
    80007f88:	01813983          	ld	s3,24(sp)
    80007f8c:	01013a03          	ld	s4,16(sp)
    80007f90:	00813a83          	ld	s5,8(sp)
    80007f94:	00013b03          	ld	s6,0(sp)
    80007f98:	04010113          	addi	sp,sp,64
    80007f9c:	00008067          	ret
    80007fa0:	00002517          	auipc	a0,0x2
    80007fa4:	84850513          	addi	a0,a0,-1976 # 800097e8 <digits+0x18>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	3d4080e7          	jalr	980(ra) # 8000737c <panic>

0000000080007fb0 <kfree>:
    80007fb0:	fe010113          	addi	sp,sp,-32
    80007fb4:	00813823          	sd	s0,16(sp)
    80007fb8:	00113c23          	sd	ra,24(sp)
    80007fbc:	00913423          	sd	s1,8(sp)
    80007fc0:	02010413          	addi	s0,sp,32
    80007fc4:	03451793          	slli	a5,a0,0x34
    80007fc8:	04079c63          	bnez	a5,80008020 <kfree+0x70>
    80007fcc:	00005797          	auipc	a5,0x5
    80007fd0:	ed478793          	addi	a5,a5,-300 # 8000cea0 <end>
    80007fd4:	00050493          	mv	s1,a0
    80007fd8:	04f56463          	bltu	a0,a5,80008020 <kfree+0x70>
    80007fdc:	01100793          	li	a5,17
    80007fe0:	01b79793          	slli	a5,a5,0x1b
    80007fe4:	02f57e63          	bgeu	a0,a5,80008020 <kfree+0x70>
    80007fe8:	00001637          	lui	a2,0x1
    80007fec:	00100593          	li	a1,1
    80007ff0:	00000097          	auipc	ra,0x0
    80007ff4:	478080e7          	jalr	1144(ra) # 80008468 <__memset>
    80007ff8:	00004797          	auipc	a5,0x4
    80007ffc:	b9878793          	addi	a5,a5,-1128 # 8000bb90 <kmem>
    80008000:	0007b703          	ld	a4,0(a5)
    80008004:	01813083          	ld	ra,24(sp)
    80008008:	01013403          	ld	s0,16(sp)
    8000800c:	00e4b023          	sd	a4,0(s1)
    80008010:	0097b023          	sd	s1,0(a5)
    80008014:	00813483          	ld	s1,8(sp)
    80008018:	02010113          	addi	sp,sp,32
    8000801c:	00008067          	ret
    80008020:	00001517          	auipc	a0,0x1
    80008024:	7c850513          	addi	a0,a0,1992 # 800097e8 <digits+0x18>
    80008028:	fffff097          	auipc	ra,0xfffff
    8000802c:	354080e7          	jalr	852(ra) # 8000737c <panic>

0000000080008030 <kalloc>:
    80008030:	fe010113          	addi	sp,sp,-32
    80008034:	00813823          	sd	s0,16(sp)
    80008038:	00913423          	sd	s1,8(sp)
    8000803c:	00113c23          	sd	ra,24(sp)
    80008040:	02010413          	addi	s0,sp,32
    80008044:	00004797          	auipc	a5,0x4
    80008048:	b4c78793          	addi	a5,a5,-1204 # 8000bb90 <kmem>
    8000804c:	0007b483          	ld	s1,0(a5)
    80008050:	02048063          	beqz	s1,80008070 <kalloc+0x40>
    80008054:	0004b703          	ld	a4,0(s1)
    80008058:	00001637          	lui	a2,0x1
    8000805c:	00500593          	li	a1,5
    80008060:	00048513          	mv	a0,s1
    80008064:	00e7b023          	sd	a4,0(a5)
    80008068:	00000097          	auipc	ra,0x0
    8000806c:	400080e7          	jalr	1024(ra) # 80008468 <__memset>
    80008070:	01813083          	ld	ra,24(sp)
    80008074:	01013403          	ld	s0,16(sp)
    80008078:	00048513          	mv	a0,s1
    8000807c:	00813483          	ld	s1,8(sp)
    80008080:	02010113          	addi	sp,sp,32
    80008084:	00008067          	ret

0000000080008088 <initlock>:
    80008088:	ff010113          	addi	sp,sp,-16
    8000808c:	00813423          	sd	s0,8(sp)
    80008090:	01010413          	addi	s0,sp,16
    80008094:	00813403          	ld	s0,8(sp)
    80008098:	00b53423          	sd	a1,8(a0)
    8000809c:	00052023          	sw	zero,0(a0)
    800080a0:	00053823          	sd	zero,16(a0)
    800080a4:	01010113          	addi	sp,sp,16
    800080a8:	00008067          	ret

00000000800080ac <acquire>:
    800080ac:	fe010113          	addi	sp,sp,-32
    800080b0:	00813823          	sd	s0,16(sp)
    800080b4:	00913423          	sd	s1,8(sp)
    800080b8:	00113c23          	sd	ra,24(sp)
    800080bc:	01213023          	sd	s2,0(sp)
    800080c0:	02010413          	addi	s0,sp,32
    800080c4:	00050493          	mv	s1,a0
    800080c8:	10002973          	csrr	s2,sstatus
    800080cc:	100027f3          	csrr	a5,sstatus
    800080d0:	ffd7f793          	andi	a5,a5,-3
    800080d4:	10079073          	csrw	sstatus,a5
    800080d8:	fffff097          	auipc	ra,0xfffff
    800080dc:	8e4080e7          	jalr	-1820(ra) # 800069bc <mycpu>
    800080e0:	07852783          	lw	a5,120(a0)
    800080e4:	06078e63          	beqz	a5,80008160 <acquire+0xb4>
    800080e8:	fffff097          	auipc	ra,0xfffff
    800080ec:	8d4080e7          	jalr	-1836(ra) # 800069bc <mycpu>
    800080f0:	07852783          	lw	a5,120(a0)
    800080f4:	0004a703          	lw	a4,0(s1)
    800080f8:	0017879b          	addiw	a5,a5,1
    800080fc:	06f52c23          	sw	a5,120(a0)
    80008100:	04071063          	bnez	a4,80008140 <acquire+0x94>
    80008104:	00100713          	li	a4,1
    80008108:	00070793          	mv	a5,a4
    8000810c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008110:	0007879b          	sext.w	a5,a5
    80008114:	fe079ae3          	bnez	a5,80008108 <acquire+0x5c>
    80008118:	0ff0000f          	fence
    8000811c:	fffff097          	auipc	ra,0xfffff
    80008120:	8a0080e7          	jalr	-1888(ra) # 800069bc <mycpu>
    80008124:	01813083          	ld	ra,24(sp)
    80008128:	01013403          	ld	s0,16(sp)
    8000812c:	00a4b823          	sd	a0,16(s1)
    80008130:	00013903          	ld	s2,0(sp)
    80008134:	00813483          	ld	s1,8(sp)
    80008138:	02010113          	addi	sp,sp,32
    8000813c:	00008067          	ret
    80008140:	0104b903          	ld	s2,16(s1)
    80008144:	fffff097          	auipc	ra,0xfffff
    80008148:	878080e7          	jalr	-1928(ra) # 800069bc <mycpu>
    8000814c:	faa91ce3          	bne	s2,a0,80008104 <acquire+0x58>
    80008150:	00001517          	auipc	a0,0x1
    80008154:	6a050513          	addi	a0,a0,1696 # 800097f0 <digits+0x20>
    80008158:	fffff097          	auipc	ra,0xfffff
    8000815c:	224080e7          	jalr	548(ra) # 8000737c <panic>
    80008160:	00195913          	srli	s2,s2,0x1
    80008164:	fffff097          	auipc	ra,0xfffff
    80008168:	858080e7          	jalr	-1960(ra) # 800069bc <mycpu>
    8000816c:	00197913          	andi	s2,s2,1
    80008170:	07252e23          	sw	s2,124(a0)
    80008174:	f75ff06f          	j	800080e8 <acquire+0x3c>

0000000080008178 <release>:
    80008178:	fe010113          	addi	sp,sp,-32
    8000817c:	00813823          	sd	s0,16(sp)
    80008180:	00113c23          	sd	ra,24(sp)
    80008184:	00913423          	sd	s1,8(sp)
    80008188:	01213023          	sd	s2,0(sp)
    8000818c:	02010413          	addi	s0,sp,32
    80008190:	00052783          	lw	a5,0(a0)
    80008194:	00079a63          	bnez	a5,800081a8 <release+0x30>
    80008198:	00001517          	auipc	a0,0x1
    8000819c:	66050513          	addi	a0,a0,1632 # 800097f8 <digits+0x28>
    800081a0:	fffff097          	auipc	ra,0xfffff
    800081a4:	1dc080e7          	jalr	476(ra) # 8000737c <panic>
    800081a8:	01053903          	ld	s2,16(a0)
    800081ac:	00050493          	mv	s1,a0
    800081b0:	fffff097          	auipc	ra,0xfffff
    800081b4:	80c080e7          	jalr	-2036(ra) # 800069bc <mycpu>
    800081b8:	fea910e3          	bne	s2,a0,80008198 <release+0x20>
    800081bc:	0004b823          	sd	zero,16(s1)
    800081c0:	0ff0000f          	fence
    800081c4:	0f50000f          	fence	iorw,ow
    800081c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800081cc:	ffffe097          	auipc	ra,0xffffe
    800081d0:	7f0080e7          	jalr	2032(ra) # 800069bc <mycpu>
    800081d4:	100027f3          	csrr	a5,sstatus
    800081d8:	0027f793          	andi	a5,a5,2
    800081dc:	04079a63          	bnez	a5,80008230 <release+0xb8>
    800081e0:	07852783          	lw	a5,120(a0)
    800081e4:	02f05e63          	blez	a5,80008220 <release+0xa8>
    800081e8:	fff7871b          	addiw	a4,a5,-1
    800081ec:	06e52c23          	sw	a4,120(a0)
    800081f0:	00071c63          	bnez	a4,80008208 <release+0x90>
    800081f4:	07c52783          	lw	a5,124(a0)
    800081f8:	00078863          	beqz	a5,80008208 <release+0x90>
    800081fc:	100027f3          	csrr	a5,sstatus
    80008200:	0027e793          	ori	a5,a5,2
    80008204:	10079073          	csrw	sstatus,a5
    80008208:	01813083          	ld	ra,24(sp)
    8000820c:	01013403          	ld	s0,16(sp)
    80008210:	00813483          	ld	s1,8(sp)
    80008214:	00013903          	ld	s2,0(sp)
    80008218:	02010113          	addi	sp,sp,32
    8000821c:	00008067          	ret
    80008220:	00001517          	auipc	a0,0x1
    80008224:	5f850513          	addi	a0,a0,1528 # 80009818 <digits+0x48>
    80008228:	fffff097          	auipc	ra,0xfffff
    8000822c:	154080e7          	jalr	340(ra) # 8000737c <panic>
    80008230:	00001517          	auipc	a0,0x1
    80008234:	5d050513          	addi	a0,a0,1488 # 80009800 <digits+0x30>
    80008238:	fffff097          	auipc	ra,0xfffff
    8000823c:	144080e7          	jalr	324(ra) # 8000737c <panic>

0000000080008240 <holding>:
    80008240:	00052783          	lw	a5,0(a0)
    80008244:	00079663          	bnez	a5,80008250 <holding+0x10>
    80008248:	00000513          	li	a0,0
    8000824c:	00008067          	ret
    80008250:	fe010113          	addi	sp,sp,-32
    80008254:	00813823          	sd	s0,16(sp)
    80008258:	00913423          	sd	s1,8(sp)
    8000825c:	00113c23          	sd	ra,24(sp)
    80008260:	02010413          	addi	s0,sp,32
    80008264:	01053483          	ld	s1,16(a0)
    80008268:	ffffe097          	auipc	ra,0xffffe
    8000826c:	754080e7          	jalr	1876(ra) # 800069bc <mycpu>
    80008270:	01813083          	ld	ra,24(sp)
    80008274:	01013403          	ld	s0,16(sp)
    80008278:	40a48533          	sub	a0,s1,a0
    8000827c:	00153513          	seqz	a0,a0
    80008280:	00813483          	ld	s1,8(sp)
    80008284:	02010113          	addi	sp,sp,32
    80008288:	00008067          	ret

000000008000828c <push_off>:
    8000828c:	fe010113          	addi	sp,sp,-32
    80008290:	00813823          	sd	s0,16(sp)
    80008294:	00113c23          	sd	ra,24(sp)
    80008298:	00913423          	sd	s1,8(sp)
    8000829c:	02010413          	addi	s0,sp,32
    800082a0:	100024f3          	csrr	s1,sstatus
    800082a4:	100027f3          	csrr	a5,sstatus
    800082a8:	ffd7f793          	andi	a5,a5,-3
    800082ac:	10079073          	csrw	sstatus,a5
    800082b0:	ffffe097          	auipc	ra,0xffffe
    800082b4:	70c080e7          	jalr	1804(ra) # 800069bc <mycpu>
    800082b8:	07852783          	lw	a5,120(a0)
    800082bc:	02078663          	beqz	a5,800082e8 <push_off+0x5c>
    800082c0:	ffffe097          	auipc	ra,0xffffe
    800082c4:	6fc080e7          	jalr	1788(ra) # 800069bc <mycpu>
    800082c8:	07852783          	lw	a5,120(a0)
    800082cc:	01813083          	ld	ra,24(sp)
    800082d0:	01013403          	ld	s0,16(sp)
    800082d4:	0017879b          	addiw	a5,a5,1
    800082d8:	06f52c23          	sw	a5,120(a0)
    800082dc:	00813483          	ld	s1,8(sp)
    800082e0:	02010113          	addi	sp,sp,32
    800082e4:	00008067          	ret
    800082e8:	0014d493          	srli	s1,s1,0x1
    800082ec:	ffffe097          	auipc	ra,0xffffe
    800082f0:	6d0080e7          	jalr	1744(ra) # 800069bc <mycpu>
    800082f4:	0014f493          	andi	s1,s1,1
    800082f8:	06952e23          	sw	s1,124(a0)
    800082fc:	fc5ff06f          	j	800082c0 <push_off+0x34>

0000000080008300 <pop_off>:
    80008300:	ff010113          	addi	sp,sp,-16
    80008304:	00813023          	sd	s0,0(sp)
    80008308:	00113423          	sd	ra,8(sp)
    8000830c:	01010413          	addi	s0,sp,16
    80008310:	ffffe097          	auipc	ra,0xffffe
    80008314:	6ac080e7          	jalr	1708(ra) # 800069bc <mycpu>
    80008318:	100027f3          	csrr	a5,sstatus
    8000831c:	0027f793          	andi	a5,a5,2
    80008320:	04079663          	bnez	a5,8000836c <pop_off+0x6c>
    80008324:	07852783          	lw	a5,120(a0)
    80008328:	02f05a63          	blez	a5,8000835c <pop_off+0x5c>
    8000832c:	fff7871b          	addiw	a4,a5,-1
    80008330:	06e52c23          	sw	a4,120(a0)
    80008334:	00071c63          	bnez	a4,8000834c <pop_off+0x4c>
    80008338:	07c52783          	lw	a5,124(a0)
    8000833c:	00078863          	beqz	a5,8000834c <pop_off+0x4c>
    80008340:	100027f3          	csrr	a5,sstatus
    80008344:	0027e793          	ori	a5,a5,2
    80008348:	10079073          	csrw	sstatus,a5
    8000834c:	00813083          	ld	ra,8(sp)
    80008350:	00013403          	ld	s0,0(sp)
    80008354:	01010113          	addi	sp,sp,16
    80008358:	00008067          	ret
    8000835c:	00001517          	auipc	a0,0x1
    80008360:	4bc50513          	addi	a0,a0,1212 # 80009818 <digits+0x48>
    80008364:	fffff097          	auipc	ra,0xfffff
    80008368:	018080e7          	jalr	24(ra) # 8000737c <panic>
    8000836c:	00001517          	auipc	a0,0x1
    80008370:	49450513          	addi	a0,a0,1172 # 80009800 <digits+0x30>
    80008374:	fffff097          	auipc	ra,0xfffff
    80008378:	008080e7          	jalr	8(ra) # 8000737c <panic>

000000008000837c <push_on>:
    8000837c:	fe010113          	addi	sp,sp,-32
    80008380:	00813823          	sd	s0,16(sp)
    80008384:	00113c23          	sd	ra,24(sp)
    80008388:	00913423          	sd	s1,8(sp)
    8000838c:	02010413          	addi	s0,sp,32
    80008390:	100024f3          	csrr	s1,sstatus
    80008394:	100027f3          	csrr	a5,sstatus
    80008398:	0027e793          	ori	a5,a5,2
    8000839c:	10079073          	csrw	sstatus,a5
    800083a0:	ffffe097          	auipc	ra,0xffffe
    800083a4:	61c080e7          	jalr	1564(ra) # 800069bc <mycpu>
    800083a8:	07852783          	lw	a5,120(a0)
    800083ac:	02078663          	beqz	a5,800083d8 <push_on+0x5c>
    800083b0:	ffffe097          	auipc	ra,0xffffe
    800083b4:	60c080e7          	jalr	1548(ra) # 800069bc <mycpu>
    800083b8:	07852783          	lw	a5,120(a0)
    800083bc:	01813083          	ld	ra,24(sp)
    800083c0:	01013403          	ld	s0,16(sp)
    800083c4:	0017879b          	addiw	a5,a5,1
    800083c8:	06f52c23          	sw	a5,120(a0)
    800083cc:	00813483          	ld	s1,8(sp)
    800083d0:	02010113          	addi	sp,sp,32
    800083d4:	00008067          	ret
    800083d8:	0014d493          	srli	s1,s1,0x1
    800083dc:	ffffe097          	auipc	ra,0xffffe
    800083e0:	5e0080e7          	jalr	1504(ra) # 800069bc <mycpu>
    800083e4:	0014f493          	andi	s1,s1,1
    800083e8:	06952e23          	sw	s1,124(a0)
    800083ec:	fc5ff06f          	j	800083b0 <push_on+0x34>

00000000800083f0 <pop_on>:
    800083f0:	ff010113          	addi	sp,sp,-16
    800083f4:	00813023          	sd	s0,0(sp)
    800083f8:	00113423          	sd	ra,8(sp)
    800083fc:	01010413          	addi	s0,sp,16
    80008400:	ffffe097          	auipc	ra,0xffffe
    80008404:	5bc080e7          	jalr	1468(ra) # 800069bc <mycpu>
    80008408:	100027f3          	csrr	a5,sstatus
    8000840c:	0027f793          	andi	a5,a5,2
    80008410:	04078463          	beqz	a5,80008458 <pop_on+0x68>
    80008414:	07852783          	lw	a5,120(a0)
    80008418:	02f05863          	blez	a5,80008448 <pop_on+0x58>
    8000841c:	fff7879b          	addiw	a5,a5,-1
    80008420:	06f52c23          	sw	a5,120(a0)
    80008424:	07853783          	ld	a5,120(a0)
    80008428:	00079863          	bnez	a5,80008438 <pop_on+0x48>
    8000842c:	100027f3          	csrr	a5,sstatus
    80008430:	ffd7f793          	andi	a5,a5,-3
    80008434:	10079073          	csrw	sstatus,a5
    80008438:	00813083          	ld	ra,8(sp)
    8000843c:	00013403          	ld	s0,0(sp)
    80008440:	01010113          	addi	sp,sp,16
    80008444:	00008067          	ret
    80008448:	00001517          	auipc	a0,0x1
    8000844c:	3f850513          	addi	a0,a0,1016 # 80009840 <digits+0x70>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	f2c080e7          	jalr	-212(ra) # 8000737c <panic>
    80008458:	00001517          	auipc	a0,0x1
    8000845c:	3c850513          	addi	a0,a0,968 # 80009820 <digits+0x50>
    80008460:	fffff097          	auipc	ra,0xfffff
    80008464:	f1c080e7          	jalr	-228(ra) # 8000737c <panic>

0000000080008468 <__memset>:
    80008468:	ff010113          	addi	sp,sp,-16
    8000846c:	00813423          	sd	s0,8(sp)
    80008470:	01010413          	addi	s0,sp,16
    80008474:	1a060e63          	beqz	a2,80008630 <__memset+0x1c8>
    80008478:	40a007b3          	neg	a5,a0
    8000847c:	0077f793          	andi	a5,a5,7
    80008480:	00778693          	addi	a3,a5,7
    80008484:	00b00813          	li	a6,11
    80008488:	0ff5f593          	andi	a1,a1,255
    8000848c:	fff6071b          	addiw	a4,a2,-1
    80008490:	1b06e663          	bltu	a3,a6,8000863c <__memset+0x1d4>
    80008494:	1cd76463          	bltu	a4,a3,8000865c <__memset+0x1f4>
    80008498:	1a078e63          	beqz	a5,80008654 <__memset+0x1ec>
    8000849c:	00b50023          	sb	a1,0(a0)
    800084a0:	00100713          	li	a4,1
    800084a4:	1ae78463          	beq	a5,a4,8000864c <__memset+0x1e4>
    800084a8:	00b500a3          	sb	a1,1(a0)
    800084ac:	00200713          	li	a4,2
    800084b0:	1ae78a63          	beq	a5,a4,80008664 <__memset+0x1fc>
    800084b4:	00b50123          	sb	a1,2(a0)
    800084b8:	00300713          	li	a4,3
    800084bc:	18e78463          	beq	a5,a4,80008644 <__memset+0x1dc>
    800084c0:	00b501a3          	sb	a1,3(a0)
    800084c4:	00400713          	li	a4,4
    800084c8:	1ae78263          	beq	a5,a4,8000866c <__memset+0x204>
    800084cc:	00b50223          	sb	a1,4(a0)
    800084d0:	00500713          	li	a4,5
    800084d4:	1ae78063          	beq	a5,a4,80008674 <__memset+0x20c>
    800084d8:	00b502a3          	sb	a1,5(a0)
    800084dc:	00700713          	li	a4,7
    800084e0:	18e79e63          	bne	a5,a4,8000867c <__memset+0x214>
    800084e4:	00b50323          	sb	a1,6(a0)
    800084e8:	00700e93          	li	t4,7
    800084ec:	00859713          	slli	a4,a1,0x8
    800084f0:	00e5e733          	or	a4,a1,a4
    800084f4:	01059e13          	slli	t3,a1,0x10
    800084f8:	01c76e33          	or	t3,a4,t3
    800084fc:	01859313          	slli	t1,a1,0x18
    80008500:	006e6333          	or	t1,t3,t1
    80008504:	02059893          	slli	a7,a1,0x20
    80008508:	40f60e3b          	subw	t3,a2,a5
    8000850c:	011368b3          	or	a7,t1,a7
    80008510:	02859813          	slli	a6,a1,0x28
    80008514:	0108e833          	or	a6,a7,a6
    80008518:	03059693          	slli	a3,a1,0x30
    8000851c:	003e589b          	srliw	a7,t3,0x3
    80008520:	00d866b3          	or	a3,a6,a3
    80008524:	03859713          	slli	a4,a1,0x38
    80008528:	00389813          	slli	a6,a7,0x3
    8000852c:	00f507b3          	add	a5,a0,a5
    80008530:	00e6e733          	or	a4,a3,a4
    80008534:	000e089b          	sext.w	a7,t3
    80008538:	00f806b3          	add	a3,a6,a5
    8000853c:	00e7b023          	sd	a4,0(a5)
    80008540:	00878793          	addi	a5,a5,8
    80008544:	fed79ce3          	bne	a5,a3,8000853c <__memset+0xd4>
    80008548:	ff8e7793          	andi	a5,t3,-8
    8000854c:	0007871b          	sext.w	a4,a5
    80008550:	01d787bb          	addw	a5,a5,t4
    80008554:	0ce88e63          	beq	a7,a4,80008630 <__memset+0x1c8>
    80008558:	00f50733          	add	a4,a0,a5
    8000855c:	00b70023          	sb	a1,0(a4)
    80008560:	0017871b          	addiw	a4,a5,1
    80008564:	0cc77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008568:	00e50733          	add	a4,a0,a4
    8000856c:	00b70023          	sb	a1,0(a4)
    80008570:	0027871b          	addiw	a4,a5,2
    80008574:	0ac77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008578:	00e50733          	add	a4,a0,a4
    8000857c:	00b70023          	sb	a1,0(a4)
    80008580:	0037871b          	addiw	a4,a5,3
    80008584:	0ac77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008588:	00e50733          	add	a4,a0,a4
    8000858c:	00b70023          	sb	a1,0(a4)
    80008590:	0047871b          	addiw	a4,a5,4
    80008594:	08c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008598:	00e50733          	add	a4,a0,a4
    8000859c:	00b70023          	sb	a1,0(a4)
    800085a0:	0057871b          	addiw	a4,a5,5
    800085a4:	08c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085a8:	00e50733          	add	a4,a0,a4
    800085ac:	00b70023          	sb	a1,0(a4)
    800085b0:	0067871b          	addiw	a4,a5,6
    800085b4:	06c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085b8:	00e50733          	add	a4,a0,a4
    800085bc:	00b70023          	sb	a1,0(a4)
    800085c0:	0077871b          	addiw	a4,a5,7
    800085c4:	06c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085c8:	00e50733          	add	a4,a0,a4
    800085cc:	00b70023          	sb	a1,0(a4)
    800085d0:	0087871b          	addiw	a4,a5,8
    800085d4:	04c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085d8:	00e50733          	add	a4,a0,a4
    800085dc:	00b70023          	sb	a1,0(a4)
    800085e0:	0097871b          	addiw	a4,a5,9
    800085e4:	04c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085e8:	00e50733          	add	a4,a0,a4
    800085ec:	00b70023          	sb	a1,0(a4)
    800085f0:	00a7871b          	addiw	a4,a5,10
    800085f4:	02c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    800085f8:	00e50733          	add	a4,a0,a4
    800085fc:	00b70023          	sb	a1,0(a4)
    80008600:	00b7871b          	addiw	a4,a5,11
    80008604:	02c77663          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008608:	00e50733          	add	a4,a0,a4
    8000860c:	00b70023          	sb	a1,0(a4)
    80008610:	00c7871b          	addiw	a4,a5,12
    80008614:	00c77e63          	bgeu	a4,a2,80008630 <__memset+0x1c8>
    80008618:	00e50733          	add	a4,a0,a4
    8000861c:	00b70023          	sb	a1,0(a4)
    80008620:	00d7879b          	addiw	a5,a5,13
    80008624:	00c7f663          	bgeu	a5,a2,80008630 <__memset+0x1c8>
    80008628:	00f507b3          	add	a5,a0,a5
    8000862c:	00b78023          	sb	a1,0(a5)
    80008630:	00813403          	ld	s0,8(sp)
    80008634:	01010113          	addi	sp,sp,16
    80008638:	00008067          	ret
    8000863c:	00b00693          	li	a3,11
    80008640:	e55ff06f          	j	80008494 <__memset+0x2c>
    80008644:	00300e93          	li	t4,3
    80008648:	ea5ff06f          	j	800084ec <__memset+0x84>
    8000864c:	00100e93          	li	t4,1
    80008650:	e9dff06f          	j	800084ec <__memset+0x84>
    80008654:	00000e93          	li	t4,0
    80008658:	e95ff06f          	j	800084ec <__memset+0x84>
    8000865c:	00000793          	li	a5,0
    80008660:	ef9ff06f          	j	80008558 <__memset+0xf0>
    80008664:	00200e93          	li	t4,2
    80008668:	e85ff06f          	j	800084ec <__memset+0x84>
    8000866c:	00400e93          	li	t4,4
    80008670:	e7dff06f          	j	800084ec <__memset+0x84>
    80008674:	00500e93          	li	t4,5
    80008678:	e75ff06f          	j	800084ec <__memset+0x84>
    8000867c:	00600e93          	li	t4,6
    80008680:	e6dff06f          	j	800084ec <__memset+0x84>

0000000080008684 <__memmove>:
    80008684:	ff010113          	addi	sp,sp,-16
    80008688:	00813423          	sd	s0,8(sp)
    8000868c:	01010413          	addi	s0,sp,16
    80008690:	0e060863          	beqz	a2,80008780 <__memmove+0xfc>
    80008694:	fff6069b          	addiw	a3,a2,-1
    80008698:	0006881b          	sext.w	a6,a3
    8000869c:	0ea5e863          	bltu	a1,a0,8000878c <__memmove+0x108>
    800086a0:	00758713          	addi	a4,a1,7
    800086a4:	00a5e7b3          	or	a5,a1,a0
    800086a8:	40a70733          	sub	a4,a4,a0
    800086ac:	0077f793          	andi	a5,a5,7
    800086b0:	00f73713          	sltiu	a4,a4,15
    800086b4:	00174713          	xori	a4,a4,1
    800086b8:	0017b793          	seqz	a5,a5
    800086bc:	00e7f7b3          	and	a5,a5,a4
    800086c0:	10078863          	beqz	a5,800087d0 <__memmove+0x14c>
    800086c4:	00900793          	li	a5,9
    800086c8:	1107f463          	bgeu	a5,a6,800087d0 <__memmove+0x14c>
    800086cc:	0036581b          	srliw	a6,a2,0x3
    800086d0:	fff8081b          	addiw	a6,a6,-1
    800086d4:	02081813          	slli	a6,a6,0x20
    800086d8:	01d85893          	srli	a7,a6,0x1d
    800086dc:	00858813          	addi	a6,a1,8
    800086e0:	00058793          	mv	a5,a1
    800086e4:	00050713          	mv	a4,a0
    800086e8:	01088833          	add	a6,a7,a6
    800086ec:	0007b883          	ld	a7,0(a5)
    800086f0:	00878793          	addi	a5,a5,8
    800086f4:	00870713          	addi	a4,a4,8
    800086f8:	ff173c23          	sd	a7,-8(a4)
    800086fc:	ff0798e3          	bne	a5,a6,800086ec <__memmove+0x68>
    80008700:	ff867713          	andi	a4,a2,-8
    80008704:	02071793          	slli	a5,a4,0x20
    80008708:	0207d793          	srli	a5,a5,0x20
    8000870c:	00f585b3          	add	a1,a1,a5
    80008710:	40e686bb          	subw	a3,a3,a4
    80008714:	00f507b3          	add	a5,a0,a5
    80008718:	06e60463          	beq	a2,a4,80008780 <__memmove+0xfc>
    8000871c:	0005c703          	lbu	a4,0(a1)
    80008720:	00e78023          	sb	a4,0(a5)
    80008724:	04068e63          	beqz	a3,80008780 <__memmove+0xfc>
    80008728:	0015c603          	lbu	a2,1(a1)
    8000872c:	00100713          	li	a4,1
    80008730:	00c780a3          	sb	a2,1(a5)
    80008734:	04e68663          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008738:	0025c603          	lbu	a2,2(a1)
    8000873c:	00200713          	li	a4,2
    80008740:	00c78123          	sb	a2,2(a5)
    80008744:	02e68e63          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008748:	0035c603          	lbu	a2,3(a1)
    8000874c:	00300713          	li	a4,3
    80008750:	00c781a3          	sb	a2,3(a5)
    80008754:	02e68663          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008758:	0045c603          	lbu	a2,4(a1)
    8000875c:	00400713          	li	a4,4
    80008760:	00c78223          	sb	a2,4(a5)
    80008764:	00e68e63          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008768:	0055c603          	lbu	a2,5(a1)
    8000876c:	00500713          	li	a4,5
    80008770:	00c782a3          	sb	a2,5(a5)
    80008774:	00e68663          	beq	a3,a4,80008780 <__memmove+0xfc>
    80008778:	0065c703          	lbu	a4,6(a1)
    8000877c:	00e78323          	sb	a4,6(a5)
    80008780:	00813403          	ld	s0,8(sp)
    80008784:	01010113          	addi	sp,sp,16
    80008788:	00008067          	ret
    8000878c:	02061713          	slli	a4,a2,0x20
    80008790:	02075713          	srli	a4,a4,0x20
    80008794:	00e587b3          	add	a5,a1,a4
    80008798:	f0f574e3          	bgeu	a0,a5,800086a0 <__memmove+0x1c>
    8000879c:	02069613          	slli	a2,a3,0x20
    800087a0:	02065613          	srli	a2,a2,0x20
    800087a4:	fff64613          	not	a2,a2
    800087a8:	00e50733          	add	a4,a0,a4
    800087ac:	00c78633          	add	a2,a5,a2
    800087b0:	fff7c683          	lbu	a3,-1(a5)
    800087b4:	fff78793          	addi	a5,a5,-1
    800087b8:	fff70713          	addi	a4,a4,-1
    800087bc:	00d70023          	sb	a3,0(a4)
    800087c0:	fec798e3          	bne	a5,a2,800087b0 <__memmove+0x12c>
    800087c4:	00813403          	ld	s0,8(sp)
    800087c8:	01010113          	addi	sp,sp,16
    800087cc:	00008067          	ret
    800087d0:	02069713          	slli	a4,a3,0x20
    800087d4:	02075713          	srli	a4,a4,0x20
    800087d8:	00170713          	addi	a4,a4,1
    800087dc:	00e50733          	add	a4,a0,a4
    800087e0:	00050793          	mv	a5,a0
    800087e4:	0005c683          	lbu	a3,0(a1)
    800087e8:	00178793          	addi	a5,a5,1
    800087ec:	00158593          	addi	a1,a1,1
    800087f0:	fed78fa3          	sb	a3,-1(a5)
    800087f4:	fee798e3          	bne	a5,a4,800087e4 <__memmove+0x160>
    800087f8:	f89ff06f          	j	80008780 <__memmove+0xfc>

00000000800087fc <__putc>:
    800087fc:	fe010113          	addi	sp,sp,-32
    80008800:	00813823          	sd	s0,16(sp)
    80008804:	00113c23          	sd	ra,24(sp)
    80008808:	02010413          	addi	s0,sp,32
    8000880c:	00050793          	mv	a5,a0
    80008810:	fef40593          	addi	a1,s0,-17
    80008814:	00100613          	li	a2,1
    80008818:	00000513          	li	a0,0
    8000881c:	fef407a3          	sb	a5,-17(s0)
    80008820:	fffff097          	auipc	ra,0xfffff
    80008824:	b3c080e7          	jalr	-1220(ra) # 8000735c <console_write>
    80008828:	01813083          	ld	ra,24(sp)
    8000882c:	01013403          	ld	s0,16(sp)
    80008830:	02010113          	addi	sp,sp,32
    80008834:	00008067          	ret

0000000080008838 <__getc>:
    80008838:	fe010113          	addi	sp,sp,-32
    8000883c:	00813823          	sd	s0,16(sp)
    80008840:	00113c23          	sd	ra,24(sp)
    80008844:	02010413          	addi	s0,sp,32
    80008848:	fe840593          	addi	a1,s0,-24
    8000884c:	00100613          	li	a2,1
    80008850:	00000513          	li	a0,0
    80008854:	fffff097          	auipc	ra,0xfffff
    80008858:	ae8080e7          	jalr	-1304(ra) # 8000733c <console_read>
    8000885c:	fe844503          	lbu	a0,-24(s0)
    80008860:	01813083          	ld	ra,24(sp)
    80008864:	01013403          	ld	s0,16(sp)
    80008868:	02010113          	addi	sp,sp,32
    8000886c:	00008067          	ret

0000000080008870 <console_handler>:
    80008870:	fe010113          	addi	sp,sp,-32
    80008874:	00813823          	sd	s0,16(sp)
    80008878:	00113c23          	sd	ra,24(sp)
    8000887c:	00913423          	sd	s1,8(sp)
    80008880:	02010413          	addi	s0,sp,32
    80008884:	14202773          	csrr	a4,scause
    80008888:	100027f3          	csrr	a5,sstatus
    8000888c:	0027f793          	andi	a5,a5,2
    80008890:	06079e63          	bnez	a5,8000890c <console_handler+0x9c>
    80008894:	00074c63          	bltz	a4,800088ac <console_handler+0x3c>
    80008898:	01813083          	ld	ra,24(sp)
    8000889c:	01013403          	ld	s0,16(sp)
    800088a0:	00813483          	ld	s1,8(sp)
    800088a4:	02010113          	addi	sp,sp,32
    800088a8:	00008067          	ret
    800088ac:	0ff77713          	andi	a4,a4,255
    800088b0:	00900793          	li	a5,9
    800088b4:	fef712e3          	bne	a4,a5,80008898 <console_handler+0x28>
    800088b8:	ffffe097          	auipc	ra,0xffffe
    800088bc:	6dc080e7          	jalr	1756(ra) # 80006f94 <plic_claim>
    800088c0:	00a00793          	li	a5,10
    800088c4:	00050493          	mv	s1,a0
    800088c8:	02f50c63          	beq	a0,a5,80008900 <console_handler+0x90>
    800088cc:	fc0506e3          	beqz	a0,80008898 <console_handler+0x28>
    800088d0:	00050593          	mv	a1,a0
    800088d4:	00001517          	auipc	a0,0x1
    800088d8:	e7450513          	addi	a0,a0,-396 # 80009748 <CONSOLE_STATUS+0x738>
    800088dc:	fffff097          	auipc	ra,0xfffff
    800088e0:	afc080e7          	jalr	-1284(ra) # 800073d8 <__printf>
    800088e4:	01013403          	ld	s0,16(sp)
    800088e8:	01813083          	ld	ra,24(sp)
    800088ec:	00048513          	mv	a0,s1
    800088f0:	00813483          	ld	s1,8(sp)
    800088f4:	02010113          	addi	sp,sp,32
    800088f8:	ffffe317          	auipc	t1,0xffffe
    800088fc:	6d430067          	jr	1748(t1) # 80006fcc <plic_complete>
    80008900:	fffff097          	auipc	ra,0xfffff
    80008904:	3e0080e7          	jalr	992(ra) # 80007ce0 <uartintr>
    80008908:	fddff06f          	j	800088e4 <console_handler+0x74>
    8000890c:	00001517          	auipc	a0,0x1
    80008910:	f3c50513          	addi	a0,a0,-196 # 80009848 <digits+0x78>
    80008914:	fffff097          	auipc	ra,0xfffff
    80008918:	a68080e7          	jalr	-1432(ra) # 8000737c <panic>
	...
