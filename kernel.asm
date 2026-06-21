
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	fa813103          	ld	sp,-88(sp) # 8000cfa8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6b1060ef          	jal	ra,80006ecc <start>

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
    80001090:	26d000ef          	jal	ra,80001afc <handleSupervisorTrap>

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

00000000800013c4 <_Z16thread_add_childP7_thread>:

int thread_add_child(thread_t child) {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    800013d4:	00050593          	mv	a1,a0
    return (int)doSyscall(0x14, (uint64)child);
    800013d8:	00000713          	li	a4,0
    800013dc:	00000693          	li	a3,0
    800013e0:	00000613          	li	a2,0
    800013e4:	01400513          	li	a0,20
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	ddc080e7          	jalr	-548(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f0:	0005051b          	sext.w	a0,a0
    800013f4:	00813083          	ld	ra,8(sp)
    800013f8:	00013403          	ld	s0,0(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z15thread_join_allv>:

int thread_join_all() {
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00113423          	sd	ra,8(sp)
    8000140c:	00813023          	sd	s0,0(sp)
    80001410:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x15);
    80001414:	00000713          	li	a4,0
    80001418:	00000693          	li	a3,0
    8000141c:	00000613          	li	a2,0
    80001420:	00000593          	li	a1,0
    80001424:	01500513          	li	a0,21
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	d9c080e7          	jalr	-612(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001430:	0005051b          	sext.w	a0,a0
    80001434:	00813083          	ld	ra,8(sp)
    80001438:	00013403          	ld	s0,0(sp)
    8000143c:	01010113          	addi	sp,sp,16
    80001440:	00008067          	ret

0000000080001444 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init) {
    80001444:	ff010113          	addi	sp,sp,-16
    80001448:	00113423          	sd	ra,8(sp)
    8000144c:	00813023          	sd	s0,0(sp)
    80001450:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    80001454:	00000713          	li	a4,0
    80001458:	00000693          	li	a3,0
    8000145c:	02059613          	slli	a2,a1,0x20
    80001460:	02065613          	srli	a2,a2,0x20
    80001464:	00050593          	mv	a1,a0
    80001468:	02100513          	li	a0,33
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	d58080e7          	jalr	-680(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001474:	0005051b          	sext.w	a0,a0
    80001478:	00813083          	ld	ra,8(sp)
    8000147c:	00013403          	ld	s0,0(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00113423          	sd	ra,8(sp)
    80001490:	00813023          	sd	s0,0(sp)
    80001494:	01010413          	addi	s0,sp,16
    80001498:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    8000149c:	00000713          	li	a4,0
    800014a0:	00000693          	li	a3,0
    800014a4:	00000613          	li	a2,0
    800014a8:	02200513          	li	a0,34
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	d18080e7          	jalr	-744(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813083          	ld	ra,8(sp)
    800014bc:	00013403          	ld	s0,0(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00113423          	sd	ra,8(sp)
    800014d0:	00813023          	sd	s0,0(sp)
    800014d4:	01010413          	addi	s0,sp,16
    800014d8:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    800014dc:	00000713          	li	a4,0
    800014e0:	00000693          	li	a3,0
    800014e4:	00000613          	li	a2,0
    800014e8:	02300513          	li	a0,35
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	cd8080e7          	jalr	-808(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014f4:	0005051b          	sext.w	a0,a0
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00113423          	sd	ra,8(sp)
    80001510:	00813023          	sd	s0,0(sp)
    80001514:	01010413          	addi	s0,sp,16
    80001518:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    8000151c:	00000713          	li	a4,0
    80001520:	00000693          	li	a3,0
    80001524:	00000613          	li	a2,0
    80001528:	02400513          	li	a0,36
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	c98080e7          	jalr	-872(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001534:	0005051b          	sext.w	a0,a0
    80001538:	00813083          	ld	ra,8(sp)
    8000153c:	00013403          	ld	s0,0(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00113423          	sd	ra,8(sp)
    80001550:	00813023          	sd	s0,0(sp)
    80001554:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001558:	00000713          	li	a4,0
    8000155c:	00000693          	li	a3,0
    80001560:	02059613          	slli	a2,a1,0x20
    80001564:	02065613          	srli	a2,a2,0x20
    80001568:	00050593          	mv	a1,a0
    8000156c:	02500513          	li	a0,37
    80001570:	00000097          	auipc	ra,0x0
    80001574:	c54080e7          	jalr	-940(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001578:	0005051b          	sext.w	a0,a0
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00113423          	sd	ra,8(sp)
    80001594:	00813023          	sd	s0,0(sp)
    80001598:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    8000159c:	00000713          	li	a4,0
    800015a0:	00000693          	li	a3,0
    800015a4:	02059613          	slli	a2,a1,0x20
    800015a8:	02065613          	srli	a2,a2,0x20
    800015ac:	00050593          	mv	a1,a0
    800015b0:	02600513          	li	a0,38
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	c10080e7          	jalr	-1008(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015bc:	0005051b          	sext.w	a0,a0
    800015c0:	00813083          	ld	ra,8(sp)
    800015c4:	00013403          	ld	s0,0(sp)
    800015c8:	01010113          	addi	sp,sp,16
    800015cc:	00008067          	ret

00000000800015d0 <_Z10time_sleepm>:
int time_sleep(time_t time) {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00113423          	sd	ra,8(sp)
    800015d8:	00813023          	sd	s0,0(sp)
    800015dc:	01010413          	addi	s0,sp,16
    800015e0:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    800015e4:	00000713          	li	a4,0
    800015e8:	00000693          	li	a3,0
    800015ec:	00000613          	li	a2,0
    800015f0:	03100513          	li	a0,49
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	bd0080e7          	jalr	-1072(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015fc:	0005051b          	sext.w	a0,a0
    80001600:	00813083          	ld	ra,8(sp)
    80001604:	00013403          	ld	s0,0(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret

0000000080001610 <_Z4getcv>:

char getc() {
    80001610:	ff010113          	addi	sp,sp,-16
    80001614:	00113423          	sd	ra,8(sp)
    80001618:	00813023          	sd	s0,0(sp)
    8000161c:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    80001620:	00000713          	li	a4,0
    80001624:	00000693          	li	a3,0
    80001628:	00000613          	li	a2,0
    8000162c:	00000593          	li	a1,0
    80001630:	04100513          	li	a0,65
    80001634:	00000097          	auipc	ra,0x0
    80001638:	b90080e7          	jalr	-1136(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000163c:	0ff57513          	andi	a0,a0,255
    80001640:	00813083          	ld	ra,8(sp)
    80001644:	00013403          	ld	s0,0(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_Z4putcc>:

void putc(char c) {
    80001650:	ff010113          	addi	sp,sp,-16
    80001654:	00113423          	sd	ra,8(sp)
    80001658:	00813023          	sd	s0,0(sp)
    8000165c:	01010413          	addi	s0,sp,16
    80001660:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    80001664:	00000713          	li	a4,0
    80001668:	00000693          	li	a3,0
    8000166c:	00000613          	li	a2,0
    80001670:	04200513          	li	a0,66
    80001674:	00000097          	auipc	ra,0x0
    80001678:	b50080e7          	jalr	-1200(ra) # 800011c4 <_ZL9doSyscallmmmmm>
    8000167c:	00813083          	ld	ra,8(sp)
    80001680:	00013403          	ld	s0,0(sp)
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001698:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    8000169c:	00655513          	srli	a0,a0,0x6
    800016a0:	00813403          	ld	s0,8(sp)
    800016a4:	01010113          	addi	sp,sp,16
    800016a8:	00008067          	ret

00000000800016ac <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    800016ac:	fe010113          	addi	sp,sp,-32
    800016b0:	00113c23          	sd	ra,24(sp)
    800016b4:	00813823          	sd	s0,16(sp)
    800016b8:	00913423          	sd	s1,8(sp)
    800016bc:	01213023          	sd	s2,0(sp)
    800016c0:	02010413          	addi	s0,sp,32
    800016c4:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    800016c8:	00001097          	auipc	ra,0x1
    800016cc:	628080e7          	jalr	1576(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    800016d0:	00050493          	mv	s1,a0
    800016d4:	00090513          	mv	a0,s2
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	fb4080e7          	jalr	-76(ra) # 8000168c <_ZL23blocksForBytesSemaphorem>
    800016e0:	00050593          	mv	a1,a0
    800016e4:	00048513          	mv	a0,s1
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	688080e7          	jalr	1672(ra) # 80002d70 <_ZN15MemoryAllocator6mallocEm>
}
    800016f0:	01813083          	ld	ra,24(sp)
    800016f4:	01013403          	ld	s0,16(sp)
    800016f8:	00813483          	ld	s1,8(sp)
    800016fc:	00013903          	ld	s2,0(sp)
    80001700:	02010113          	addi	sp,sp,32
    80001704:	00008067          	ret

0000000080001708 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001708:	04050263          	beqz	a0,8000174c <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    8000170c:	fe010113          	addi	sp,sp,-32
    80001710:	00113c23          	sd	ra,24(sp)
    80001714:	00813823          	sd	s0,16(sp)
    80001718:	00913423          	sd	s1,8(sp)
    8000171c:	02010413          	addi	s0,sp,32
    80001720:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001724:	00001097          	auipc	ra,0x1
    80001728:	5cc080e7          	jalr	1484(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    8000172c:	00048593          	mv	a1,s1
    80001730:	00001097          	auipc	ra,0x1
    80001734:	79c080e7          	jalr	1948(ra) # 80002ecc <_ZN15MemoryAllocator4freeEPv>
}
    80001738:	01813083          	ld	ra,24(sp)
    8000173c:	01013403          	ld	s0,16(sp)
    80001740:	00813483          	ld	s1,8(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret
    8000174c:	00008067          	ret

0000000080001750 <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00813423          	sd	s0,8(sp)
    80001758:	01010413          	addi	s0,sp,16
    val = (int)init;
    8000175c:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001760:	00050223          	sb	zero,4(a0)
    head = nullptr;
    80001764:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    80001768:	00053823          	sd	zero,16(a0)
}
    8000176c:	00813403          	ld	s0,8(sp)
    80001770:	01010113          	addi	sp,sp,16
    80001774:	00008067          	ret

0000000080001778 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    80001778:	fe010113          	addi	sp,sp,-32
    8000177c:	00113c23          	sd	ra,24(sp)
    80001780:	00813823          	sd	s0,16(sp)
    80001784:	00913423          	sd	s1,8(sp)
    80001788:	01213023          	sd	s2,0(sp)
    8000178c:	02010413          	addi	s0,sp,32
    80001790:	00050913          	mv	s2,a0
    return new _sem(init);
    80001794:	01800513          	li	a0,24
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	f14080e7          	jalr	-236(ra) # 800016ac <_ZN4_semnwEm>
    800017a0:	00050493          	mv	s1,a0
    800017a4:	00090593          	mv	a1,s2
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	fa8080e7          	jalr	-88(ra) # 80001750 <_ZN4_semC1Ej>
}
    800017b0:	00048513          	mv	a0,s1
    800017b4:	01813083          	ld	ra,24(sp)
    800017b8:	01013403          	ld	s0,16(sp)
    800017bc:	00813483          	ld	s1,8(sp)
    800017c0:	00013903          	ld	s2,0(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret

00000000800017cc <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    800017cc:	02050863          	beqz	a0,800017fc <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    800017d0:	ff010113          	addi	sp,sp,-16
    800017d4:	00113423          	sd	ra,8(sp)
    800017d8:	00813023          	sd	s0,0(sp)
    800017dc:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	f28080e7          	jalr	-216(ra) # 80001708 <_ZN4_semdlEPv>
    return 0;
    800017e8:	00000513          	li	a0,0
}
    800017ec:	00813083          	ld	ra,8(sp)
    800017f0:	00013403          	ld	s0,0(sp)
    800017f4:	01010113          	addi	sp,sp,16
    800017f8:	00008067          	ret
        return -1;
    800017fc:	fff00513          	li	a0,-1
}
    80001800:	00008067          	ret

0000000080001804 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    80001804:	ff010113          	addi	sp,sp,-16
    80001808:	00813423          	sd	s0,8(sp)
    8000180c:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    80001810:	00058e63          	beqz	a1,8000182c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    80001814:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    80001818:	00853783          	ld	a5,8(a0)
    8000181c:	00078e63          	beqz	a5,80001838 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    80001820:	01053783          	ld	a5,16(a0)
    80001824:	00b7b823          	sd	a1,16(a5)
        tail = node;
    80001828:	00b53823          	sd	a1,16(a0)
    }
}
    8000182c:	00813403          	ld	s0,8(sp)
    80001830:	01010113          	addi	sp,sp,16
    80001834:	00008067          	ret
        head = node;
    80001838:	00b53423          	sd	a1,8(a0)
        tail = node;
    8000183c:	00b53823          	sd	a1,16(a0)
    80001840:	fedff06f          	j	8000182c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

0000000080001844 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001844:	0000b797          	auipc	a5,0xb
    80001848:	7547b783          	ld	a5,1876(a5) # 8000cf98 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000184c:	0007b783          	ld	a5,0(a5)
    80001850:	08078a63          	beqz	a5,800018e4 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001854:	00454703          	lbu	a4,4(a0)
    80001858:	08071a63          	bnez	a4,800018ec <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    8000185c:	08058c63          	beqz	a1,800018f4 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001860:	00853703          	ld	a4,8(a0)
    80001864:	06070263          	beqz	a4,800018c8 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    80001868:	fd010113          	addi	sp,sp,-48
    8000186c:	02113423          	sd	ra,40(sp)
    80001870:	02813023          	sd	s0,32(sp)
    80001874:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    80001878:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    8000187c:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    80001880:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    80001884:	fe043423          	sd	zero,-24(s0)
    block(&node);
    80001888:	fd840593          	addi	a1,s0,-40
    8000188c:	00000097          	auipc	ra,0x0
    80001890:	f78080e7          	jalr	-136(ra) # 80001804 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    80001894:	00300593          	li	a1,3
    80001898:	0000b797          	auipc	a5,0xb
    8000189c:	7007b783          	ld	a5,1792(a5) # 8000cf98 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018a0:	0007b503          	ld	a0,0(a5)
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	b94080e7          	jalr	-1132(ra) # 80002438 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	890080e7          	jalr	-1904(ra) # 8000213c <_ZN7_thread8dispatchEv>
    return node.status;
    800018b4:	fe442503          	lw	a0,-28(s0)
}
    800018b8:	02813083          	ld	ra,40(sp)
    800018bc:	02013403          	ld	s0,32(sp)
    800018c0:	03010113          	addi	sp,sp,48
    800018c4:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800018c8:	00052703          	lw	a4,0(a0)
    800018cc:	0005869b          	sext.w	a3,a1
    800018d0:	f8d74ce3          	blt	a4,a3,80001868 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    800018d4:	40d7073b          	subw	a4,a4,a3
    800018d8:	00e52023          	sw	a4,0(a0)
        return 0;
    800018dc:	00000513          	li	a0,0
    800018e0:	00008067          	ret
        return -1;
    800018e4:	fff00513          	li	a0,-1
    800018e8:	00008067          	ret
        return -1;
    800018ec:	fff00513          	li	a0,-1
    800018f0:	00008067          	ret
        return 0;
    800018f4:	00000513          	li	a0,0
}
    800018f8:	00008067          	ret

00000000800018fc <_ZN4_sem4waitEv>:
int _sem::wait() {
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00113423          	sd	ra,8(sp)
    80001904:	00813023          	sd	s0,0(sp)
    80001908:	01010413          	addi	s0,sp,16
    return waitN(1);
    8000190c:	00100593          	li	a1,1
    80001910:	00000097          	auipc	ra,0x0
    80001914:	f34080e7          	jalr	-204(ra) # 80001844 <_ZN4_sem5waitNEj>
}
    80001918:	00813083          	ld	ra,8(sp)
    8000191c:	00013403          	ld	s0,0(sp)
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	01213023          	sd	s2,0(sp)
    8000193c:	02010413          	addi	s0,sp,32
    80001940:	00050913          	mv	s2,a0
    80001944:	0240006f          	j	80001968 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001948:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    8000194c:	0084a703          	lw	a4,8(s1)
    80001950:	40e787bb          	subw	a5,a5,a4
    80001954:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    80001958:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    8000195c:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001960:	0004b503          	ld	a0,0(s1)
    80001964:	02051463          	bnez	a0,8000198c <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    80001968:	00893483          	ld	s1,8(s2)
    8000196c:	02048e63          	beqz	s1,800019a8 <_ZN4_sem12unblockReadyEv+0x80>
    80001970:	00092783          	lw	a5,0(s2)
    80001974:	0084a703          	lw	a4,8(s1)
    80001978:	02e7c863          	blt	a5,a4,800019a8 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    8000197c:	0104b703          	ld	a4,16(s1)
    80001980:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    80001984:	fc0714e3          	bnez	a4,8000194c <_ZN4_sem12unblockReadyEv+0x24>
    80001988:	fc1ff06f          	j	80001948 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    8000198c:	00100593          	li	a1,1
    80001990:	00001097          	auipc	ra,0x1
    80001994:	aa8080e7          	jalr	-1368(ra) # 80002438 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001998:	0004b503          	ld	a0,0(s1)
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	c38080e7          	jalr	-968(ra) # 800025d4 <_ZN9Scheduler3putEP7_thread>
    800019a4:	fc5ff06f          	j	80001968 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800019a8:	01813083          	ld	ra,24(sp)
    800019ac:	01013403          	ld	s0,16(sp)
    800019b0:	00813483          	ld	s1,8(sp)
    800019b4:	00013903          	ld	s2,0(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN4_sem7signalNEj>:
    if (closed) {
    800019c0:	00454783          	lbu	a5,4(a0)
    800019c4:	04079463          	bnez	a5,80001a0c <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    800019c8:	00059663          	bnez	a1,800019d4 <_ZN4_sem7signalNEj+0x14>
        return 0;
    800019cc:	00000513          	li	a0,0
}
    800019d0:	00008067          	ret
int _sem::signalN(unsigned n) {
    800019d4:	ff010113          	addi	sp,sp,-16
    800019d8:	00113423          	sd	ra,8(sp)
    800019dc:	00813023          	sd	s0,0(sp)
    800019e0:	01010413          	addi	s0,sp,16
    val += (int)n;
    800019e4:	00052783          	lw	a5,0(a0)
    800019e8:	00b785bb          	addw	a1,a5,a1
    800019ec:	00b52023          	sw	a1,0(a0)
    unblockReady();
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	f38080e7          	jalr	-200(ra) # 80001928 <_ZN4_sem12unblockReadyEv>
    return 0;
    800019f8:	00000513          	li	a0,0
}
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret
        return -1;
    80001a0c:	fff00513          	li	a0,-1
    80001a10:	00008067          	ret

0000000080001a14 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00113423          	sd	ra,8(sp)
    80001a1c:	00813023          	sd	s0,0(sp)
    80001a20:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001a24:	00100593          	li	a1,1
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	f98080e7          	jalr	-104(ra) # 800019c0 <_ZN4_sem7signalNEj>
}
    80001a30:	00813083          	ld	ra,8(sp)
    80001a34:	00013403          	ld	s0,0(sp)
    80001a38:	01010113          	addi	sp,sp,16
    80001a3c:	00008067          	ret

0000000080001a40 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001a40:	fe010113          	addi	sp,sp,-32
    80001a44:	00113c23          	sd	ra,24(sp)
    80001a48:	00813823          	sd	s0,16(sp)
    80001a4c:	00913423          	sd	s1,8(sp)
    80001a50:	01213023          	sd	s2,0(sp)
    80001a54:	02010413          	addi	s0,sp,32
    80001a58:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001a5c:	00893483          	ld	s1,8(s2)
    80001a60:	02048e63          	beqz	s1,80001a9c <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001a64:	0104b783          	ld	a5,16(s1)
    80001a68:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001a6c:	fff00793          	li	a5,-1
    80001a70:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001a74:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001a78:	0004b503          	ld	a0,0(s1)
    80001a7c:	fe0500e3          	beqz	a0,80001a5c <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001a80:	00100593          	li	a1,1
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	9b4080e7          	jalr	-1612(ra) # 80002438 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a8c:	0004b503          	ld	a0,0(s1)
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	b44080e7          	jalr	-1212(ra) # 800025d4 <_ZN9Scheduler3putEP7_thread>
    80001a98:	fc5ff06f          	j	80001a5c <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001a9c:	00093823          	sd	zero,16(s2)
    80001aa0:	01813083          	ld	ra,24(sp)
    80001aa4:	01013403          	ld	s0,16(sp)
    80001aa8:	00813483          	ld	s1,8(sp)
    80001aac:	00013903          	ld	s2,0(sp)
    80001ab0:	02010113          	addi	sp,sp,32
    80001ab4:	00008067          	ret

0000000080001ab8 <_ZN4_sem5closeEv>:
    if (closed) {
    80001ab8:	00454783          	lbu	a5,4(a0)
    80001abc:	02079c63          	bnez	a5,80001af4 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00113423          	sd	ra,8(sp)
    80001ac8:	00813023          	sd	s0,0(sp)
    80001acc:	01010413          	addi	s0,sp,16
    closed = true;
    80001ad0:	00100793          	li	a5,1
    80001ad4:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	f68080e7          	jalr	-152(ra) # 80001a40 <_ZN4_sem10unblockAllEv>
    return 0;
    80001ae0:	00000513          	li	a0,0
}
    80001ae4:	00813083          	ld	ra,8(sp)
    80001ae8:	00013403          	ld	s0,0(sp)
    80001aec:	01010113          	addi	sp,sp,16
    80001af0:	00008067          	ret
        return -1;
    80001af4:	fff00513          	li	a0,-1
}
    80001af8:	00008067          	ret

0000000080001afc <handleSupervisorTrap>:
#include "../h/Semaphore.hpp"
#include "../lib/console.h"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001afc:	fd010113          	addi	sp,sp,-48
    80001b00:	02113423          	sd	ra,40(sp)
    80001b04:	02813023          	sd	s0,32(sp)
    80001b08:	00913c23          	sd	s1,24(sp)
    80001b0c:	01213823          	sd	s2,16(sp)
    80001b10:	01313423          	sd	s3,8(sp)
    80001b14:	03010413          	addi	s0,sp,48
    static const uint64 SSTATUS_SIE = (1UL << 1);
    static const uint64 SIP_SSIP = (1UL << 1);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001b18:	14202773          	csrr	a4,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001b1c:	ff870693          	addi	a3,a4,-8 # ff8 <_entry-0x7ffff008>
    80001b20:	00100793          	li	a5,1
    80001b24:	02d7f463          	bgeu	a5,a3,80001b4c <handleSupervisorTrap+0x50>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001b28:	fff00793          	li	a5,-1
    80001b2c:	03f79793          	slli	a5,a5,0x3f
    80001b30:	00178793          	addi	a5,a5,1
    80001b34:	2af70c63          	beq	a4,a5,80001dec <handleSupervisorTrap+0x2f0>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b38:	fff00793          	li	a5,-1
    80001b3c:	03f79793          	slli	a5,a5,0x3f
    80001b40:	00978793          	addi	a5,a5,9
    80001b44:	2af70a63          	beq	a4,a5,80001df8 <handleSupervisorTrap+0x2fc>
        console_handler();
        return;
    }

    while (true) {}
    80001b48:	0000006f          	j	80001b48 <handleSupervisorTrap+0x4c>
    80001b4c:	00050493          	mv	s1,a0
        uint64 syscallCode = frame->a0;
    80001b50:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b54:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b58:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b5c:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001b60:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001b64:	04200713          	li	a4,66
    80001b68:	26f76c63          	bltu	a4,a5,80001de0 <handleSupervisorTrap+0x2e4>
    80001b6c:	00279793          	slli	a5,a5,0x2
    80001b70:	00008717          	auipc	a4,0x8
    80001b74:	4b070713          	addi	a4,a4,1200 # 8000a020 <CONSOLE_STATUS+0x10>
    80001b78:	00e787b3          	add	a5,a5,a4
    80001b7c:	0007a783          	lw	a5,0(a5)
    80001b80:	00e787b3          	add	a5,a5,a4
    80001b84:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	168080e7          	jalr	360(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    80001b90:	00090593          	mv	a1,s2
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	1dc080e7          	jalr	476(ra) # 80002d70 <_ZN15MemoryAllocator6mallocEm>
    80001b9c:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001ba0:	0f04b783          	ld	a5,240(s1)
    80001ba4:	00478793          	addi	a5,a5,4
    80001ba8:	0ef4b823          	sd	a5,240(s1)
    80001bac:	02813083          	ld	ra,40(sp)
    80001bb0:	02013403          	ld	s0,32(sp)
    80001bb4:	01813483          	ld	s1,24(sp)
    80001bb8:	01013903          	ld	s2,16(sp)
    80001bbc:	00813983          	ld	s3,8(sp)
    80001bc0:	03010113          	addi	sp,sp,48
    80001bc4:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001bc8:	00001097          	auipc	ra,0x1
    80001bcc:	128080e7          	jalr	296(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    80001bd0:	00090593          	mv	a1,s2
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	2f8080e7          	jalr	760(ra) # 80002ecc <_ZN15MemoryAllocator4freeEPv>
    80001bdc:	04a4b023          	sd	a0,64(s1)
                break;
    80001be0:	fc1ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001be4:	00090663          	beqz	s2,80001bf0 <handleSupervisorTrap+0xf4>
    80001be8:	00050463          	beqz	a0,80001bf0 <handleSupervisorTrap+0xf4>
    80001bec:	00061863          	bnez	a2,80001bfc <handleSupervisorTrap+0x100>
                    frame->a0 = (uint64)-1;
    80001bf0:	fff00793          	li	a5,-1
    80001bf4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bf8:	fa9ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	428080e7          	jalr	1064(ra) # 80002024 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001c04:	00050c63          	beqz	a0,80001c1c <handleSupervisorTrap+0x120>
                *handle = thread;//korisnik dobija rucku nove niti
    80001c08:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	9c8080e7          	jalr	-1592(ra) # 800025d4 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001c14:	0404b023          	sd	zero,64(s1)
                break;
    80001c18:	f89ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001c1c:	fff00793          	li	a5,-1
    80001c20:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c24:	f7dff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001c28:	0f04b783          	ld	a5,240(s1)
    80001c2c:	00478793          	addi	a5,a5,4
    80001c30:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	6d0080e7          	jalr	1744(ra) # 80002304 <_ZN7_thread4exitEv>
    80001c3c:	04a4b023          	sd	a0,64(s1)
                return;
    80001c40:	f6dff06f          	j	80001bac <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001c44:	0f04b783          	ld	a5,240(s1)
    80001c48:	00478793          	addi	a5,a5,4
    80001c4c:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	4ec080e7          	jalr	1260(ra) # 8000213c <_ZN7_thread8dispatchEv>
                return;
    80001c58:	f55ff06f          	j	80001bac <handleSupervisorTrap+0xb0>
                frame->a0 = (uint64)_thread::addChild(child);
    80001c5c:	00090513          	mv	a0,s2
    80001c60:	00000097          	auipc	ra,0x0
    80001c64:	584080e7          	jalr	1412(ra) # 800021e4 <_ZN7_thread8addChildEPS_>
    80001c68:	04a4b023          	sd	a0,64(s1)
                break;
    80001c6c:	f35ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001c70:	0f04b783          	ld	a5,240(s1)
    80001c74:	00478793          	addi	a5,a5,4
    80001c78:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::joinAll();
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	5e4080e7          	jalr	1508(ra) # 80002260 <_ZN7_thread7joinAllEv>
    80001c84:	04a4b023          	sd	a0,64(s1)
                return;
    80001c88:	f25ff06f          	j	80001bac <handleSupervisorTrap+0xb0>
                unsigned init = (unsigned)arg2;
    80001c8c:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001c90:	00091863          	bnez	s2,80001ca0 <handleSupervisorTrap+0x1a4>
                    frame->a0 = (uint64)-1;
    80001c94:	fff00793          	li	a5,-1
    80001c98:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c9c:	f05ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                _sem* sem = _sem::createSemaphore(init);
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	ad8080e7          	jalr	-1320(ra) # 80001778 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001ca8:	00050863          	beqz	a0,80001cb8 <handleSupervisorTrap+0x1bc>
                *handle = sem;
    80001cac:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001cb0:	0404b023          	sd	zero,64(s1)
                break;
    80001cb4:	eedff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001cb8:	fff00793          	li	a5,-1
    80001cbc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cc0:	ee1ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                if (sem == nullptr) {
    80001cc4:	00091863          	bnez	s2,80001cd4 <handleSupervisorTrap+0x1d8>
                    frame->a0 = (uint64)-1;
    80001cc8:	fff00793          	li	a5,-1
    80001ccc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd0:	ed1ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                int ret = sem->close();
    80001cd4:	00090513          	mv	a0,s2
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	de0080e7          	jalr	-544(ra) # 80001ab8 <_ZN4_sem5closeEv>
    80001ce0:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001ce4:	00050663          	beqz	a0,80001cf0 <handleSupervisorTrap+0x1f4>
                frame->a0 = (uint64)ret;
    80001ce8:	0534b023          	sd	s3,64(s1)
                break;
    80001cec:	eb5ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                    _sem::destroySemaphore(sem);
    80001cf0:	00090513          	mv	a0,s2
    80001cf4:	00000097          	auipc	ra,0x0
    80001cf8:	ad8080e7          	jalr	-1320(ra) # 800017cc <_ZN4_sem16destroySemaphoreEPS_>
    80001cfc:	fedff06f          	j	80001ce8 <handleSupervisorTrap+0x1ec>
                if (sem == nullptr) {
    80001d00:	00091863          	bnez	s2,80001d10 <handleSupervisorTrap+0x214>
                    frame->a0 = (uint64)-1;
    80001d04:	fff00793          	li	a5,-1
    80001d08:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d0c:	e95ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001d10:	0f04b783          	ld	a5,240(s1)
    80001d14:	00478793          	addi	a5,a5,4
    80001d18:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d1c:	00090513          	mv	a0,s2
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	bdc080e7          	jalr	-1060(ra) # 800018fc <_ZN4_sem4waitEv>
    80001d28:	04a4b023          	sd	a0,64(s1)
                return;
    80001d2c:	e81ff06f          	j	80001bac <handleSupervisorTrap+0xb0>
                if (sem == nullptr) {
    80001d30:	00091863          	bnez	s2,80001d40 <handleSupervisorTrap+0x244>
                    frame->a0 = (uint64)-1;
    80001d34:	fff00793          	li	a5,-1
    80001d38:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d3c:	e65ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signal();
    80001d40:	00090513          	mv	a0,s2
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	cd0080e7          	jalr	-816(ra) # 80001a14 <_ZN4_sem6signalEv>
    80001d4c:	04a4b023          	sd	a0,64(s1)
                break;
    80001d50:	e51ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                unsigned n = (unsigned)arg2;
    80001d54:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d58:	00091863          	bnez	s2,80001d68 <handleSupervisorTrap+0x26c>
                    frame->a0 = (uint64)-1;
    80001d5c:	fff00793          	li	a5,-1
    80001d60:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d64:	e3dff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001d68:	0f04b783          	ld	a5,240(s1)
    80001d6c:	00478793          	addi	a5,a5,4
    80001d70:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d74:	00090513          	mv	a0,s2
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	acc080e7          	jalr	-1332(ra) # 80001844 <_ZN4_sem5waitNEj>
    80001d80:	04a4b023          	sd	a0,64(s1)
                return;
    80001d84:	e29ff06f          	j	80001bac <handleSupervisorTrap+0xb0>
                unsigned n = (unsigned)arg2;
    80001d88:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d8c:	00091863          	bnez	s2,80001d9c <handleSupervisorTrap+0x2a0>
                    frame->a0 = (uint64)-1;
    80001d90:	fff00793          	li	a5,-1
    80001d94:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d98:	e09ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signalN(n);
    80001d9c:	00090513          	mv	a0,s2
    80001da0:	00000097          	auipc	ra,0x0
    80001da4:	c20080e7          	jalr	-992(ra) # 800019c0 <_ZN4_sem7signalNEj>
    80001da8:	04a4b023          	sd	a0,64(s1)
                break;
    80001dac:	df5ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001db0:	fff00793          	li	a5,-1
    80001db4:	04f4b023          	sd	a5,64(s1)
                break;
    80001db8:	de9ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)__getc();
    80001dbc:	00007097          	auipc	ra,0x7
    80001dc0:	20c080e7          	jalr	524(ra) # 80008fc8 <__getc>
    80001dc4:	04a4b023          	sd	a0,64(s1)
                break;
    80001dc8:	dd9ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                __putc((char)arg1);
    80001dcc:	0ff97513          	andi	a0,s2,255
    80001dd0:	00007097          	auipc	ra,0x7
    80001dd4:	1bc080e7          	jalr	444(ra) # 80008f8c <__putc>
                frame->a0 = 0;
    80001dd8:	0404b023          	sd	zero,64(s1)
                break;
    80001ddc:	dc5ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001de0:	fff00793          	li	a5,-1
    80001de4:	04f4b023          	sd	a5,64(s1)
                break;
    80001de8:	db9ff06f          	j	80001ba0 <handleSupervisorTrap+0xa4>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001dec:	00200793          	li	a5,2
    80001df0:	1447b073          	csrc	sip,a5
        return;
    80001df4:	db9ff06f          	j	80001bac <handleSupervisorTrap+0xb0>
        console_handler();
    80001df8:	00007097          	auipc	ra,0x7
    80001dfc:	208080e7          	jalr	520(ra) # 80009000 <console_handler>
        return;
    80001e00:	dadff06f          	j	80001bac <handleSupervisorTrap+0xb0>

0000000080001e04 <_ZL14blocksForBytesm>:
#include "../h/MemoryAllocator.hpp"
#include "../h/Semaphore.hpp"

_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00813423          	sd	s0,8(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e10:	03f50513          	addi	a0,a0,63
}
    80001e14:	00655513          	srli	a0,a0,0x6
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret

0000000080001e24 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t size) {
    80001e24:	fe010113          	addi	sp,sp,-32
    80001e28:	00113c23          	sd	ra,24(sp)
    80001e2c:	00813823          	sd	s0,16(sp)
    80001e30:	00913423          	sd	s1,8(sp)
    80001e34:	01213023          	sd	s2,0(sp)
    80001e38:	02010413          	addi	s0,sp,32
    80001e3c:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001e40:	00001097          	auipc	ra,0x1
    80001e44:	eb0080e7          	jalr	-336(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    80001e48:	00050493          	mv	s1,a0
    80001e4c:	00090513          	mv	a0,s2
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	fb4080e7          	jalr	-76(ra) # 80001e04 <_ZL14blocksForBytesm>
    80001e58:	00050593          	mv	a1,a0
    80001e5c:	00048513          	mv	a0,s1
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	f10080e7          	jalr	-240(ra) # 80002d70 <_ZN15MemoryAllocator6mallocEm>
}
    80001e68:	01813083          	ld	ra,24(sp)
    80001e6c:	01013403          	ld	s0,16(sp)
    80001e70:	00813483          	ld	s1,8(sp)
    80001e74:	00013903          	ld	s2,0(sp)
    80001e78:	02010113          	addi	sp,sp,32
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t size) {
    80001e80:	fe010113          	addi	sp,sp,-32
    80001e84:	00113c23          	sd	ra,24(sp)
    80001e88:	00813823          	sd	s0,16(sp)
    80001e8c:	00913423          	sd	s1,8(sp)
    80001e90:	01213023          	sd	s2,0(sp)
    80001e94:	02010413          	addi	s0,sp,32
    80001e98:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001e9c:	00001097          	auipc	ra,0x1
    80001ea0:	e54080e7          	jalr	-428(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    80001ea4:	00050493          	mv	s1,a0
    80001ea8:	00090513          	mv	a0,s2
    80001eac:	00000097          	auipc	ra,0x0
    80001eb0:	f58080e7          	jalr	-168(ra) # 80001e04 <_ZL14blocksForBytesm>
    80001eb4:	00050593          	mv	a1,a0
    80001eb8:	00048513          	mv	a0,s1
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	eb4080e7          	jalr	-332(ra) # 80002d70 <_ZN15MemoryAllocator6mallocEm>
}
    80001ec4:	01813083          	ld	ra,24(sp)
    80001ec8:	01013403          	ld	s0,16(sp)
    80001ecc:	00813483          	ld	s1,8(sp)
    80001ed0:	00013903          	ld	s2,0(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret

0000000080001edc <_ZN7_threaddlEPv>:

void _thread::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001edc:	04050263          	beqz	a0,80001f20 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001ee0:	fe010113          	addi	sp,sp,-32
    80001ee4:	00113c23          	sd	ra,24(sp)
    80001ee8:	00813823          	sd	s0,16(sp)
    80001eec:	00913423          	sd	s1,8(sp)
    80001ef0:	02010413          	addi	s0,sp,32
    80001ef4:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001ef8:	00001097          	auipc	ra,0x1
    80001efc:	df8080e7          	jalr	-520(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    80001f00:	00048593          	mv	a1,s1
    80001f04:	00001097          	auipc	ra,0x1
    80001f08:	fc8080e7          	jalr	-56(ra) # 80002ecc <_ZN15MemoryAllocator4freeEPv>
}
    80001f0c:	01813083          	ld	ra,24(sp)
    80001f10:	01013403          	ld	s0,16(sp)
    80001f14:	00813483          	ld	s1,8(sp)
    80001f18:	02010113          	addi	sp,sp,32
    80001f1c:	00008067          	ret
    80001f20:	00008067          	ret

0000000080001f24 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void* ptr) {
    if (ptr == nullptr) {
    80001f24:	04050263          	beqz	a0,80001f68 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001f28:	fe010113          	addi	sp,sp,-32
    80001f2c:	00113c23          	sd	ra,24(sp)
    80001f30:	00813823          	sd	s0,16(sp)
    80001f34:	00913423          	sd	s1,8(sp)
    80001f38:	02010413          	addi	s0,sp,32
    80001f3c:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	db0080e7          	jalr	-592(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    80001f48:	00048593          	mv	a1,s1
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	f80080e7          	jalr	-128(ra) # 80002ecc <_ZN15MemoryAllocator4freeEPv>
}
    80001f54:	01813083          	ld	ra,24(sp)
    80001f58:	01013403          	ld	s0,16(sp)
    80001f5c:	00813483          	ld	s1,8(sp)
    80001f60:	02010113          	addi	sp,sp,32
    80001f64:	00008067          	ret
    80001f68:	00008067          	ret

0000000080001f6c <_ZN7_threadC1EPFvPvES0_S0_>:

_thread::_thread(Body body, void* arg, void* stackSpace) {
    80001f6c:	fe010113          	addi	sp,sp,-32
    80001f70:	00113c23          	sd	ra,24(sp)
    80001f74:	00813823          	sd	s0,16(sp)
    80001f78:	00913423          	sd	s1,8(sp)
    80001f7c:	02010413          	addi	s0,sp,32
    80001f80:	00050493          	mv	s1,a0
    this->body = body;
    80001f84:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80001f88:	00c53423          	sd	a2,8(a0)

    if (stackSpace != nullptr) {
    80001f8c:	08068663          	beqz	a3,80002018 <_ZN7_threadC1EPFvPvES0_S0_+0xac>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80001f90:	fffff7b7          	lui	a5,0xfffff
    80001f94:	00f687b3          	add	a5,a3,a5
    80001f98:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80001f9c:	02d53023          	sd	a3,32(a0)
    } else {
        this->stack = nullptr;
        this->context.sp = 0;
    }
    this->context.s0 = 0;
    80001fa0:	0204b423          	sd	zero,40(s1)
    this->context.s1 = 0;
    80001fa4:	0204b823          	sd	zero,48(s1)
    this->context.s2 = 0;
    80001fa8:	0204bc23          	sd	zero,56(s1)
    this->context.s3 = 0;
    80001fac:	0404b023          	sd	zero,64(s1)
    this->context.s4 = 0;
    80001fb0:	0404b423          	sd	zero,72(s1)
    this->context.s5 = 0;
    80001fb4:	0404b823          	sd	zero,80(s1)
    this->context.s6 = 0;
    80001fb8:	0404bc23          	sd	zero,88(s1)
    this->context.s7 = 0;
    80001fbc:	0604b023          	sd	zero,96(s1)
    this->context.s8 = 0;
    80001fc0:	0604b423          	sd	zero,104(s1)
    this->context.s9 = 0;
    80001fc4:	0604b823          	sd	zero,112(s1)
    this->context.s10 = 0;
    80001fc8:	0604bc23          	sd	zero,120(s1)
    this->context.s11 = 0;
    80001fcc:	0804b023          	sd	zero,128(s1)

    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    80001fd0:	00000797          	auipc	a5,0x0
    80001fd4:	39878793          	addi	a5,a5,920 # 80002368 <_ZN7_thread13threadWrapperEv>
    80001fd8:	00f4bc23          	sd	a5,24(s1)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80001fdc:	00200793          	li	a5,2
    80001fe0:	08f4b423          	sd	a5,136(s1)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80001fe4:	0804a823          	sw	zero,144(s1)
    this->next = nullptr;
    80001fe8:	0804bc23          	sd	zero,152(s1)
    this->childSem = _sem::createSemaphore(0);
    80001fec:	00000513          	li	a0,0
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	788080e7          	jalr	1928(ra) # 80001778 <_ZN4_sem15createSemaphoreEj>
    80001ff8:	0aa4b023          	sd	a0,160(s1)
    this->parent = nullptr;
    80001ffc:	0a04b823          	sd	zero,176(s1)
    this->childrenLeft = 0;
    80002000:	0a04a423          	sw	zero,168(s1)
}
    80002004:	01813083          	ld	ra,24(sp)
    80002008:	01013403          	ld	s0,16(sp)
    8000200c:	00813483          	ld	s1,8(sp)
    80002010:	02010113          	addi	sp,sp,32
    80002014:	00008067          	ret
        this->stack = nullptr;
    80002018:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    8000201c:	02053023          	sd	zero,32(a0)
    80002020:	f81ff06f          	j	80001fa0 <_ZN7_threadC1EPFvPvES0_S0_+0x34>

0000000080002024 <_ZN7_thread12createThreadEPFvPvES0_S0_>:

_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80002024:	fd010113          	addi	sp,sp,-48
    80002028:	02113423          	sd	ra,40(sp)
    8000202c:	02813023          	sd	s0,32(sp)
    80002030:	00913c23          	sd	s1,24(sp)
    80002034:	01213823          	sd	s2,16(sp)
    80002038:	01313423          	sd	s3,8(sp)
    8000203c:	01413023          	sd	s4,0(sp)
    80002040:	03010413          	addi	s0,sp,48
    80002044:	00050913          	mv	s2,a0
    80002048:	00058993          	mv	s3,a1
    8000204c:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    80002050:	0b800513          	li	a0,184
    80002054:	00000097          	auipc	ra,0x0
    80002058:	dd0080e7          	jalr	-560(ra) # 80001e24 <_ZN7_threadnwEm>
    8000205c:	00050493          	mv	s1,a0
    80002060:	000a0693          	mv	a3,s4
    80002064:	00098613          	mv	a2,s3
    80002068:	00090593          	mv	a1,s2
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	f00080e7          	jalr	-256(ra) # 80001f6c <_ZN7_threadC1EPFvPvES0_S0_>
    80002074:	0200006f          	j	80002094 <_ZN7_thread12createThreadEPFvPvES0_S0_+0x70>
    80002078:	00050913          	mv	s2,a0
    8000207c:	00048513          	mv	a0,s1
    80002080:	00000097          	auipc	ra,0x0
    80002084:	e5c080e7          	jalr	-420(ra) # 80001edc <_ZN7_threaddlEPv>
    80002088:	00090513          	mv	a0,s2
    8000208c:	0000c097          	auipc	ra,0xc
    80002090:	0bc080e7          	jalr	188(ra) # 8000e148 <_Unwind_Resume>
}
    80002094:	00048513          	mv	a0,s1
    80002098:	02813083          	ld	ra,40(sp)
    8000209c:	02013403          	ld	s0,32(sp)
    800020a0:	01813483          	ld	s1,24(sp)
    800020a4:	01013903          	ld	s2,16(sp)
    800020a8:	00813983          	ld	s3,8(sp)
    800020ac:	00013a03          	ld	s4,0(sp)
    800020b0:	03010113          	addi	sp,sp,48
    800020b4:	00008067          	ret

00000000800020b8 <_ZN7_thread13destroyThreadEPS_>:

int _thread::destroyThread(_thread* thread) {
    if (thread == nullptr) {
    800020b8:	06050e63          	beqz	a0,80002134 <_ZN7_thread13destroyThreadEPS_+0x7c>
int _thread::destroyThread(_thread* thread) {
    800020bc:	fe010113          	addi	sp,sp,-32
    800020c0:	00113c23          	sd	ra,24(sp)
    800020c4:	00813823          	sd	s0,16(sp)
    800020c8:	00913423          	sd	s1,8(sp)
    800020cc:	02010413          	addi	s0,sp,32
    800020d0:	00050493          	mv	s1,a0
        return -1;
    }

    if (thread->stack != nullptr) {
    800020d4:	01053783          	ld	a5,16(a0)
    800020d8:	00078e63          	beqz	a5,800020f4 <_ZN7_thread13destroyThreadEPS_+0x3c>
        MemoryAllocator::getInstance().free(thread->stack);
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	c14080e7          	jalr	-1004(ra) # 80002cf0 <_ZN15MemoryAllocator11getInstanceEv>
    800020e4:	0104b583          	ld	a1,16(s1)
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	de4080e7          	jalr	-540(ra) # 80002ecc <_ZN15MemoryAllocator4freeEPv>
        thread->stack = nullptr;
    800020f0:	0004b823          	sd	zero,16(s1)
    }
    if (thread->childSem != nullptr) {
    800020f4:	0a04b503          	ld	a0,160(s1)
    800020f8:	00050c63          	beqz	a0,80002110 <_ZN7_thread13destroyThreadEPS_+0x58>
        thread->childSem->close();
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	9bc080e7          	jalr	-1604(ra) # 80001ab8 <_ZN4_sem5closeEv>
        _sem::destroySemaphore(thread->childSem);
    80002104:	0a04b503          	ld	a0,160(s1)
    80002108:	fffff097          	auipc	ra,0xfffff
    8000210c:	6c4080e7          	jalr	1732(ra) # 800017cc <_ZN4_sem16destroySemaphoreEPS_>
        thread->childSem = nullptr;
    }

    delete thread;
    80002110:	00048513          	mv	a0,s1
    80002114:	00000097          	auipc	ra,0x0
    80002118:	dc8080e7          	jalr	-568(ra) # 80001edc <_ZN7_threaddlEPv>
    return 0;
    8000211c:	00000513          	li	a0,0
}
    80002120:	01813083          	ld	ra,24(sp)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	02010113          	addi	sp,sp,32
    80002130:	00008067          	ret
        return -1;
    80002134:	fff00513          	li	a0,-1
}
    80002138:	00008067          	ret

000000008000213c <_ZN7_thread8dispatchEv>:

void _thread::dispatch() {
    8000213c:	fe010113          	addi	sp,sp,-32
    80002140:	00113c23          	sd	ra,24(sp)
    80002144:	00813823          	sd	s0,16(sp)
    80002148:	00913423          	sd	s1,8(sp)
    8000214c:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80002150:	0000b497          	auipc	s1,0xb
    80002154:	eb04b483          	ld	s1,-336(s1) # 8000d000 <_ZN7_thread7runningE>

    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80002158:	00048c63          	beqz	s1,80002170 <_ZN7_thread8dispatchEv+0x34>
    8000215c:	0904a783          	lw	a5,144(s1)
    80002160:	00400713          	li	a4,4
    80002164:	00e78663          	beq	a5,a4,80002170 <_ZN7_thread8dispatchEv+0x34>
    80002168:	00300713          	li	a4,3
    8000216c:	04e79663          	bne	a5,a4,800021b8 <_ZN7_thread8dispatchEv+0x7c>
        Scheduler::put(old);
    }

    _thread* next = Scheduler::get();
    80002170:	00000097          	auipc	ra,0x0
    80002174:	4d0080e7          	jalr	1232(ra) # 80002640 <_ZN9Scheduler3getEv>

    if (next == nullptr) {
    80002178:	04050863          	beqz	a0,800021c8 <_ZN7_thread8dispatchEv+0x8c>
            running = old;
        }
        return;
    }

    running = next;
    8000217c:	0000b797          	auipc	a5,0xb
    80002180:	e8a7b223          	sd	a0,-380(a5) # 8000d000 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002184:	00200793          	li	a5,2
    80002188:	08f52823          	sw	a5,144(a0)

    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    8000218c:	00048c63          	beqz	s1,800021a4 <_ZN7_thread8dispatchEv+0x68>
    80002190:	00a48a63          	beq	s1,a0,800021a4 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002194:	01850593          	addi	a1,a0,24
    80002198:	01848513          	addi	a0,s1,24
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	f94080e7          	jalr	-108(ra) # 80001130 <contextSwitch>
    }
}
    800021a4:	01813083          	ld	ra,24(sp)
    800021a8:	01013403          	ld	s0,16(sp)
    800021ac:	00813483          	ld	s1,8(sp)
    800021b0:	02010113          	addi	sp,sp,32
    800021b4:	00008067          	ret
        Scheduler::put(old);
    800021b8:	00048513          	mv	a0,s1
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	418080e7          	jalr	1048(ra) # 800025d4 <_ZN9Scheduler3putEP7_thread>
    800021c4:	fadff06f          	j	80002170 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    800021c8:	fc048ee3          	beqz	s1,800021a4 <_ZN7_thread8dispatchEv+0x68>
    800021cc:	0904a703          	lw	a4,144(s1)
    800021d0:	00200793          	li	a5,2
    800021d4:	fcf718e3          	bne	a4,a5,800021a4 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    800021d8:	0000b797          	auipc	a5,0xb
    800021dc:	e297b423          	sd	s1,-472(a5) # 8000d000 <_ZN7_thread7runningE>
        return;
    800021e0:	fc5ff06f          	j	800021a4 <_ZN7_thread8dispatchEv+0x68>

00000000800021e4 <_ZN7_thread8addChildEPS_>:

    dispatch();

    return 0;
}
int _thread::addChild(_thread* child) {
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00813423          	sd	s0,8(sp)
    800021ec:	01010413          	addi	s0,sp,16
    if (running == nullptr || child == nullptr) {
    800021f0:	0000b797          	auipc	a5,0xb
    800021f4:	e107b783          	ld	a5,-496(a5) # 8000d000 <_ZN7_thread7runningE>
    800021f8:	04078063          	beqz	a5,80002238 <_ZN7_thread8addChildEPS_+0x54>
    800021fc:	04050263          	beqz	a0,80002240 <_ZN7_thread8addChildEPS_+0x5c>
        return -1;
    }
    if (child == running) {
    80002200:	04a78463          	beq	a5,a0,80002248 <_ZN7_thread8addChildEPS_+0x64>
        return -1;
    }
    if (child->state == FINISHED) {
    80002204:	09052683          	lw	a3,144(a0)
    80002208:	00400713          	li	a4,4
    8000220c:	04e68263          	beq	a3,a4,80002250 <_ZN7_thread8addChildEPS_+0x6c>
        return 0;
    }
    if (child->parent != nullptr) {
    80002210:	0b053703          	ld	a4,176(a0)
    80002214:	04071263          	bnez	a4,80002258 <_ZN7_thread8addChildEPS_+0x74>
        return -1;
    }
    child->parent = running;
    80002218:	0af53823          	sd	a5,176(a0)
    running->childrenLeft++;
    8000221c:	0a87a703          	lw	a4,168(a5)
    80002220:	0017071b          	addiw	a4,a4,1
    80002224:	0ae7a423          	sw	a4,168(a5)
    return 0;
    80002228:	00000513          	li	a0,0
}
    8000222c:	00813403          	ld	s0,8(sp)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret
        return -1;
    80002238:	fff00513          	li	a0,-1
    8000223c:	ff1ff06f          	j	8000222c <_ZN7_thread8addChildEPS_+0x48>
    80002240:	fff00513          	li	a0,-1
    80002244:	fe9ff06f          	j	8000222c <_ZN7_thread8addChildEPS_+0x48>
        return -1;
    80002248:	fff00513          	li	a0,-1
    8000224c:	fe1ff06f          	j	8000222c <_ZN7_thread8addChildEPS_+0x48>
        return 0;
    80002250:	00000513          	li	a0,0
    80002254:	fd9ff06f          	j	8000222c <_ZN7_thread8addChildEPS_+0x48>
        return -1;
    80002258:	fff00513          	li	a0,-1
    8000225c:	fd1ff06f          	j	8000222c <_ZN7_thread8addChildEPS_+0x48>

0000000080002260 <_ZN7_thread7joinAllEv>:
int _thread::joinAll() {
    if (running == nullptr) {
    80002260:	0000b797          	auipc	a5,0xb
    80002264:	da07b783          	ld	a5,-608(a5) # 8000d000 <_ZN7_thread7runningE>
    80002268:	02078e63          	beqz	a5,800022a4 <_ZN7_thread7joinAllEv+0x44>
        return -1;
    }

    if (running->childrenLeft == 0) {
    8000226c:	0a87a503          	lw	a0,168(a5)
    80002270:	04050263          	beqz	a0,800022b4 <_ZN7_thread7joinAllEv+0x54>
        return 0;
    }

    if (running->childSem == nullptr) {
    80002274:	0a07b503          	ld	a0,160(a5)
    80002278:	02050a63          	beqz	a0,800022ac <_ZN7_thread7joinAllEv+0x4c>
int _thread::joinAll() {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00113423          	sd	ra,8(sp)
    80002284:	00813023          	sd	s0,0(sp)
    80002288:	01010413          	addi	s0,sp,16
        return -1;
    }

    return running->childSem->wait();
    8000228c:	fffff097          	auipc	ra,0xfffff
    80002290:	670080e7          	jalr	1648(ra) # 800018fc <_ZN4_sem4waitEv>
}
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret
        return -1;
    800022a4:	fff00513          	li	a0,-1
    800022a8:	00008067          	ret
        return -1;
    800022ac:	fff00513          	li	a0,-1
    800022b0:	00008067          	ret
}
    800022b4:	00008067          	ret

00000000800022b8 <_ZN7_thread13childFinishedEv>:
void _thread::childFinished() {
    if (childrenLeft <= 0) {
    800022b8:	0a852783          	lw	a5,168(a0)
    800022bc:	04f05263          	blez	a5,80002300 <_ZN7_thread13childFinishedEv+0x48>
        return;
    }

    childrenLeft--;
    800022c0:	fff7879b          	addiw	a5,a5,-1
    800022c4:	0007871b          	sext.w	a4,a5
    800022c8:	0af52423          	sw	a5,168(a0)

    if (childrenLeft == 0 && childSem != nullptr) {
    800022cc:	02071a63          	bnez	a4,80002300 <_ZN7_thread13childFinishedEv+0x48>
    800022d0:	0a053503          	ld	a0,160(a0)
    800022d4:	02050663          	beqz	a0,80002300 <_ZN7_thread13childFinishedEv+0x48>
void _thread::childFinished() {
    800022d8:	ff010113          	addi	sp,sp,-16
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	00813023          	sd	s0,0(sp)
    800022e4:	01010413          	addi	s0,sp,16
        childSem->signal();
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	72c080e7          	jalr	1836(ra) # 80001a14 <_ZN4_sem6signalEv>
    }
}
    800022f0:	00813083          	ld	ra,8(sp)
    800022f4:	00013403          	ld	s0,0(sp)
    800022f8:	01010113          	addi	sp,sp,16
    800022fc:	00008067          	ret
    80002300:	00008067          	ret

0000000080002304 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    80002304:	0000b797          	auipc	a5,0xb
    80002308:	cfc7b783          	ld	a5,-772(a5) # 8000d000 <_ZN7_thread7runningE>
    8000230c:	04078a63          	beqz	a5,80002360 <_ZN7_thread4exitEv+0x5c>
int _thread::exit() {
    80002310:	ff010113          	addi	sp,sp,-16
    80002314:	00113423          	sd	ra,8(sp)
    80002318:	00813023          	sd	s0,0(sp)
    8000231c:	01010413          	addi	s0,sp,16
    running->state = FINISHED;
    80002320:	00400713          	li	a4,4
    80002324:	08e7a823          	sw	a4,144(a5)
    if (running->parent != nullptr) {
    80002328:	0b07b503          	ld	a0,176(a5)
    8000232c:	00050c63          	beqz	a0,80002344 <_ZN7_thread4exitEv+0x40>
        running->parent->childFinished();
    80002330:	00000097          	auipc	ra,0x0
    80002334:	f88080e7          	jalr	-120(ra) # 800022b8 <_ZN7_thread13childFinishedEv>
        running->parent = nullptr;
    80002338:	0000b797          	auipc	a5,0xb
    8000233c:	cc87b783          	ld	a5,-824(a5) # 8000d000 <_ZN7_thread7runningE>
    80002340:	0a07b823          	sd	zero,176(a5)
    dispatch();
    80002344:	00000097          	auipc	ra,0x0
    80002348:	df8080e7          	jalr	-520(ra) # 8000213c <_ZN7_thread8dispatchEv>
    return 0;
    8000234c:	00000513          	li	a0,0
}
    80002350:	00813083          	ld	ra,8(sp)
    80002354:	00013403          	ld	s0,0(sp)
    80002358:	01010113          	addi	sp,sp,16
    8000235c:	00008067          	ret
        return -1;
    80002360:	fff00513          	li	a0,-1
}
    80002364:	00008067          	ret

0000000080002368 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {//
    80002368:	ff010113          	addi	sp,sp,-16
    8000236c:	00113423          	sd	ra,8(sp)
    80002370:	00813023          	sd	s0,0(sp)
    80002374:	01010413          	addi	s0,sp,16
    if (running != nullptr && running->body != nullptr) {
    80002378:	0000b797          	auipc	a5,0xb
    8000237c:	c887b783          	ld	a5,-888(a5) # 8000d000 <_ZN7_thread7runningE>
    80002380:	00078a63          	beqz	a5,80002394 <_ZN7_thread13threadWrapperEv+0x2c>
    80002384:	0007b703          	ld	a4,0(a5)
    80002388:	00070663          	beqz	a4,80002394 <_ZN7_thread13threadWrapperEv+0x2c>
        running->body(running->arg);
    8000238c:	0087b503          	ld	a0,8(a5)
    80002390:	000700e7          	jalr	a4
    }

    _thread::exit();
    80002394:	00000097          	auipc	ra,0x0
    80002398:	f70080e7          	jalr	-144(ra) # 80002304 <_ZN7_thread4exitEv>
    8000239c:	00813083          	ld	ra,8(sp)
    800023a0:	00013403          	ld	s0,0(sp)
    800023a4:	01010113          	addi	sp,sp,16
    800023a8:	00008067          	ret

00000000800023ac <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    800023ac:	ff010113          	addi	sp,sp,-16
    800023b0:	00813423          	sd	s0,8(sp)
    800023b4:	01010413          	addi	s0,sp,16
}
    800023b8:	00053503          	ld	a0,0(a0)
    800023bc:	00813403          	ld	s0,8(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret

00000000800023c8 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00813423          	sd	s0,8(sp)
    800023d0:	01010413          	addi	s0,sp,16
}
    800023d4:	00853503          	ld	a0,8(a0)
    800023d8:	00813403          	ld	s0,8(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800023e4:	ff010113          	addi	sp,sp,-16
    800023e8:	00813423          	sd	s0,8(sp)
    800023ec:	01010413          	addi	s0,sp,16
}
    800023f0:	01053503          	ld	a0,16(a0)
    800023f4:	00813403          	ld	s0,8(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
}
    8000240c:	01850513          	addi	a0,a0,24
    80002410:	00813403          	ld	s0,8(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret

000000008000241c <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00813423          	sd	s0,8(sp)
    80002424:	01010413          	addi	s0,sp,16
}
    80002428:	09052503          	lw	a0,144(a0)
    8000242c:	00813403          	ld	s0,8(sp)
    80002430:	01010113          	addi	sp,sp,16
    80002434:	00008067          	ret

0000000080002438 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002438:	ff010113          	addi	sp,sp,-16
    8000243c:	00813423          	sd	s0,8(sp)
    80002440:	01010413          	addi	s0,sp,16
    this->state = state;
    80002444:	08b52823          	sw	a1,144(a0)
}
    80002448:	00813403          	ld	s0,8(sp)
    8000244c:	01010113          	addi	sp,sp,16
    80002450:	00008067          	ret

0000000080002454 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00813423          	sd	s0,8(sp)
    8000245c:	01010413          	addi	s0,sp,16
}
    80002460:	08853503          	ld	a0,136(a0)
    80002464:	00813403          	ld	s0,8(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002470:	fe010113          	addi	sp,sp,-32
    80002474:	00113c23          	sd	ra,24(sp)
    80002478:	00813823          	sd	s0,16(sp)
    8000247c:	00913423          	sd	s1,8(sp)
    80002480:	01213023          	sd	s2,0(sp)
    80002484:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80002488:	00008517          	auipc	a0,0x8
    8000248c:	ca850513          	addi	a0,a0,-856 # 8000a130 <CONSOLE_STATUS+0x120>
    80002490:	00003097          	auipc	ra,0x3
    80002494:	054080e7          	jalr	84(ra) # 800054e4 <_Z11printStringPKc>
    int test = getc() - '0';
    80002498:	fffff097          	auipc	ra,0xfffff
    8000249c:	178080e7          	jalr	376(ra) # 80001610 <_Z4getcv>
    800024a0:	00050913          	mv	s2,a0
    800024a4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800024a8:	fffff097          	auipc	ra,0xfffff
    800024ac:	168080e7          	jalr	360(ra) # 80001610 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800024b0:	fcb9091b          	addiw	s2,s2,-53
    800024b4:	00100793          	li	a5,1
    800024b8:	0327f463          	bgeu	a5,s2,800024e0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800024bc:	00800793          	li	a5,8
    800024c0:	1097e063          	bltu	a5,s1,800025c0 <_Z8userMainv+0x150>
    800024c4:	00249493          	slli	s1,s1,0x2
    800024c8:	00008717          	auipc	a4,0x8
    800024cc:	ed870713          	addi	a4,a4,-296 # 8000a3a0 <CONSOLE_STATUS+0x390>
    800024d0:	00e484b3          	add	s1,s1,a4
    800024d4:	0004a783          	lw	a5,0(s1)
    800024d8:	00e787b3          	add	a5,a5,a4
    800024dc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800024e0:	00008517          	auipc	a0,0x8
    800024e4:	c7050513          	addi	a0,a0,-912 # 8000a150 <CONSOLE_STATUS+0x140>
    800024e8:	00003097          	auipc	ra,0x3
    800024ec:	ffc080e7          	jalr	-4(ra) # 800054e4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800024f0:	01813083          	ld	ra,24(sp)
    800024f4:	01013403          	ld	s0,16(sp)
    800024f8:	00813483          	ld	s1,8(sp)
    800024fc:	00013903          	ld	s2,0(sp)
    80002500:	02010113          	addi	sp,sp,32
    80002504:	00008067          	ret
            Threads_C_API_test();
    80002508:	00002097          	auipc	ra,0x2
    8000250c:	654080e7          	jalr	1620(ra) # 80004b5c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002510:	00008517          	auipc	a0,0x8
    80002514:	c7050513          	addi	a0,a0,-912 # 8000a180 <CONSOLE_STATUS+0x170>
    80002518:	00003097          	auipc	ra,0x3
    8000251c:	fcc080e7          	jalr	-52(ra) # 800054e4 <_Z11printStringPKc>
            break;
    80002520:	fd1ff06f          	j	800024f0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002524:	00001097          	auipc	ra,0x1
    80002528:	518080e7          	jalr	1304(ra) # 80003a3c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000252c:	00008517          	auipc	a0,0x8
    80002530:	c9450513          	addi	a0,a0,-876 # 8000a1c0 <CONSOLE_STATUS+0x1b0>
    80002534:	00003097          	auipc	ra,0x3
    80002538:	fb0080e7          	jalr	-80(ra) # 800054e4 <_Z11printStringPKc>
            break;
    8000253c:	fb5ff06f          	j	800024f0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80002540:	00001097          	auipc	ra,0x1
    80002544:	d50080e7          	jalr	-688(ra) # 80003290 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002548:	00008517          	auipc	a0,0x8
    8000254c:	cb850513          	addi	a0,a0,-840 # 8000a200 <CONSOLE_STATUS+0x1f0>
    80002550:	00003097          	auipc	ra,0x3
    80002554:	f94080e7          	jalr	-108(ra) # 800054e4 <_Z11printStringPKc>
            break;
    80002558:	f99ff06f          	j	800024f0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000255c:	00003097          	auipc	ra,0x3
    80002560:	944080e7          	jalr	-1724(ra) # 80004ea0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002564:	00008517          	auipc	a0,0x8
    80002568:	cec50513          	addi	a0,a0,-788 # 8000a250 <CONSOLE_STATUS+0x240>
    8000256c:	00003097          	auipc	ra,0x3
    80002570:	f78080e7          	jalr	-136(ra) # 800054e4 <_Z11printStringPKc>
            break;
    80002574:	f7dff06f          	j	800024f0 <_Z8userMainv+0x80>
            System_Mode_test();
    80002578:	00004097          	auipc	ra,0x4
    8000257c:	538080e7          	jalr	1336(ra) # 80006ab0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002580:	00008517          	auipc	a0,0x8
    80002584:	d2850513          	addi	a0,a0,-728 # 8000a2a8 <CONSOLE_STATUS+0x298>
    80002588:	00003097          	auipc	ra,0x3
    8000258c:	f5c080e7          	jalr	-164(ra) # 800054e4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002590:	00008517          	auipc	a0,0x8
    80002594:	d3850513          	addi	a0,a0,-712 # 8000a2c8 <CONSOLE_STATUS+0x2b8>
    80002598:	00003097          	auipc	ra,0x3
    8000259c:	f4c080e7          	jalr	-180(ra) # 800054e4 <_Z11printStringPKc>
            break;
    800025a0:	f51ff06f          	j	800024f0 <_Z8userMainv+0x80>
            ThreadJoinAllTest();
    800025a4:	00003097          	auipc	ra,0x3
    800025a8:	734080e7          	jalr	1844(ra) # 80005cd8 <_Z17ThreadJoinAllTestv>
            printString("TEST 8 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800025ac:	00008517          	auipc	a0,0x8
    800025b0:	d7450513          	addi	a0,a0,-652 # 8000a320 <CONSOLE_STATUS+0x310>
    800025b4:	00003097          	auipc	ra,0x3
    800025b8:	f30080e7          	jalr	-208(ra) # 800054e4 <_Z11printStringPKc>
            break;
    800025bc:	f35ff06f          	j	800024f0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800025c0:	00008517          	auipc	a0,0x8
    800025c4:	db850513          	addi	a0,a0,-584 # 8000a378 <CONSOLE_STATUS+0x368>
    800025c8:	00003097          	auipc	ra,0x3
    800025cc:	f1c080e7          	jalr	-228(ra) # 800054e4 <_Z11printStringPKc>
    800025d0:	f21ff06f          	j	800024f0 <_Z8userMainv+0x80>

00000000800025d4 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    800025d4:	ff010113          	addi	sp,sp,-16
    800025d8:	00813423          	sd	s0,8(sp)
    800025dc:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    800025e0:	04050063          	beqz	a0,80002620 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    800025e4:	09052783          	lw	a5,144(a0)
    800025e8:	ffd7879b          	addiw	a5,a5,-3
    800025ec:	00100713          	li	a4,1
    800025f0:	02f77863          	bgeu	a4,a5,80002620 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    800025f4:	00100793          	li	a5,1
    800025f8:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    800025fc:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    80002600:	0000b797          	auipc	a5,0xb
    80002604:	a087b783          	ld	a5,-1528(a5) # 8000d008 <_ZN9Scheduler4headE>
    80002608:	02078263          	beqz	a5,8000262c <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    8000260c:	0000b797          	auipc	a5,0xb
    80002610:	9fc78793          	addi	a5,a5,-1540 # 8000d008 <_ZN9Scheduler4headE>
    80002614:	0087b703          	ld	a4,8(a5)
    80002618:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    8000261c:	00a7b423          	sd	a0,8(a5)
    }
}
    80002620:	00813403          	ld	s0,8(sp)
    80002624:	01010113          	addi	sp,sp,16
    80002628:	00008067          	ret
        head = thread;
    8000262c:	0000b797          	auipc	a5,0xb
    80002630:	9dc78793          	addi	a5,a5,-1572 # 8000d008 <_ZN9Scheduler4headE>
    80002634:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    80002638:	00a7b423          	sd	a0,8(a5)
    8000263c:	fe5ff06f          	j	80002620 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080002640 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00813423          	sd	s0,8(sp)
    80002648:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    8000264c:	0000b517          	auipc	a0,0xb
    80002650:	9bc53503          	ld	a0,-1604(a0) # 8000d008 <_ZN9Scheduler4headE>
    80002654:	00050c63          	beqz	a0,8000266c <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002658:	09853783          	ld	a5,152(a0)
    8000265c:	0000b717          	auipc	a4,0xb
    80002660:	9af73623          	sd	a5,-1620(a4) # 8000d008 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002664:	00078a63          	beqz	a5,80002678 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    80002668:	08053c23          	sd	zero,152(a0)

    return thread;
}
    8000266c:	00813403          	ld	s0,8(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret
        tail = nullptr;
    80002678:	0000b797          	auipc	a5,0xb
    8000267c:	9807bc23          	sd	zero,-1640(a5) # 8000d010 <_ZN9Scheduler4tailE>
    80002680:	fe9ff06f          	j	80002668 <_ZN9Scheduler3getEv+0x28>

0000000080002684 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00813423          	sd	s0,8(sp)
    8000268c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80002690:	0000b517          	auipc	a0,0xb
    80002694:	97853503          	ld	a0,-1672(a0) # 8000d008 <_ZN9Scheduler4headE>
    80002698:	00153513          	seqz	a0,a0
    8000269c:	00813403          	ld	s0,8(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	b40080e7          	jalr	-1216(ra) # 800011f8 <_Z9mem_allocm>
}
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_Znam>:

void* operator new[](size_t size) {
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026e0:	fffff097          	auipc	ra,0xfffff
    800026e4:	b18080e7          	jalr	-1256(ra) # 800011f8 <_Z9mem_allocm>
}
    800026e8:	00813083          	ld	ra,8(sp)
    800026ec:	00013403          	ld	s0,0(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret

00000000800026f8 <_ZdlPv>:

void operator delete(void* ptr) {
    800026f8:	ff010113          	addi	sp,sp,-16
    800026fc:	00113423          	sd	ra,8(sp)
    80002700:	00813023          	sd	s0,0(sp)
    80002704:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002708:	fffff097          	auipc	ra,0xfffff
    8000270c:	b3c080e7          	jalr	-1220(ra) # 80001244 <_Z8mem_freePv>
}
    80002710:	00813083          	ld	ra,8(sp)
    80002714:	00013403          	ld	s0,0(sp)
    80002718:	01010113          	addi	sp,sp,16
    8000271c:	00008067          	ret

0000000080002720 <_ZdaPv>:

void operator delete[](void* ptr) {
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00113423          	sd	ra,8(sp)
    80002728:	00813023          	sd	s0,0(sp)
    8000272c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002730:	fffff097          	auipc	ra,0xfffff
    80002734:	b14080e7          	jalr	-1260(ra) # 80001244 <_Z8mem_freePv>
    80002738:	00813083          	ld	ra,8(sp)
    8000273c:	00013403          	ld	s0,0(sp)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	00008067          	ret

0000000080002748 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00113423          	sd	ra,8(sp)
    80002750:	00813023          	sd	s0,0(sp)
    80002754:	01010413          	addi	s0,sp,16
    userMain();
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	d18080e7          	jalr	-744(ra) # 80002470 <_Z8userMainv>
    userMainFinished = true;
    80002760:	00100793          	li	a5,1
    80002764:	0000b717          	auipc	a4,0xb
    80002768:	8af70a23          	sb	a5,-1868(a4) # 8000d018 <_ZL16userMainFinished>
    thread_exit();
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	bdc080e7          	jalr	-1060(ra) # 80001348 <_Z11thread_exitv>
}
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <main>:

int main() {
    80002784:	f2010113          	addi	sp,sp,-224
    80002788:	0c113c23          	sd	ra,216(sp)
    8000278c:	0c813823          	sd	s0,208(sp)
    80002790:	0c913423          	sd	s1,200(sp)
    80002794:	0e010413          	addi	s0,sp,224
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002798:	0000b797          	auipc	a5,0xb
    8000279c:	8087b783          	ld	a5,-2040(a5) # 8000cfa0 <_GLOBAL_OFFSET_TABLE_+0x18>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    800027a0:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    800027a4:	00200793          	li	a5,2
    800027a8:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    800027ac:	00000693          	li	a3,0
    800027b0:	00000613          	li	a2,0
    800027b4:	00000593          	li	a1,0
    800027b8:	f2840493          	addi	s1,s0,-216
    800027bc:	00048513          	mv	a0,s1
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	7ac080e7          	jalr	1964(ra) # 80001f6c <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    800027c8:	00200593          	li	a1,2
    800027cc:	00048513          	mv	a0,s1
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	c68080e7          	jalr	-920(ra) # 80002438 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    800027d8:	0000a797          	auipc	a5,0xa
    800027dc:	7c07b783          	ld	a5,1984(a5) # 8000cf98 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027e0:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    800027e4:	f2043023          	sd	zero,-224(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800027e8:	00000613          	li	a2,0
    800027ec:	00000597          	auipc	a1,0x0
    800027f0:	f5c58593          	addi	a1,a1,-164 # 80002748 <_ZL15userMainWrapperPv>
    800027f4:	f2040513          	addi	a0,s0,-224
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	a8c080e7          	jalr	-1396(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    80002800:	00054663          	bltz	a0,8000280c <main+0x88>
    80002804:	f2043783          	ld	a5,-224(s0)
    80002808:	02079063          	bnez	a5,80002828 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    8000280c:	00100737          	lui	a4,0x100
    80002810:	000057b7          	lui	a5,0x5
    80002814:	5557879b          	addiw	a5,a5,1365
    80002818:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    8000281c:	02c0006f          	j	80002848 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	b68080e7          	jalr	-1176(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002828:	0000a797          	auipc	a5,0xa
    8000282c:	7f07c783          	lbu	a5,2032(a5) # 8000d018 <_ZL16userMainFinished>
    80002830:	fe0788e3          	beqz	a5,80002820 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002834:	00100737          	lui	a4,0x100
    80002838:	000057b7          	lui	a5,0x5
    8000283c:	5557879b          	addiw	a5,a5,1365
    80002840:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002844:	00000513          	li	a0,0
    80002848:	0d813083          	ld	ra,216(sp)
    8000284c:	0d013403          	ld	s0,208(sp)
    80002850:	0c813483          	ld	s1,200(sp)
    80002854:	0e010113          	addi	sp,sp,224
    80002858:	00008067          	ret

000000008000285c <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00813423          	sd	s0,8(sp)
    80002864:	01010413          	addi	s0,sp,16
}
    80002868:	00813403          	ld	s0,8(sp)
    8000286c:	01010113          	addi	sp,sp,16
    80002870:	00008067          	ret

0000000080002874 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002874:	02050863          	beqz	a0,800028a4 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002878:	ff010113          	addi	sp,sp,-16
    8000287c:	00113423          	sd	ra,8(sp)
    80002880:	00813023          	sd	s0,0(sp)
    80002884:	01010413          	addi	s0,sp,16
        t->run();
    80002888:	00053783          	ld	a5,0(a0)
    8000288c:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002890:	000780e7          	jalr	a5
    }
}
    80002894:	00813083          	ld	ra,8(sp)
    80002898:	00013403          	ld	s0,0(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret
    800028a4:	00008067          	ret

00000000800028a8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
}
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	e40080e7          	jalr	-448(ra) # 800026f8 <_ZdlPv>
    800028c0:	00813083          	ld	ra,8(sp)
    800028c4:	00013403          	ld	s0,0(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800028d0:	0000a797          	auipc	a5,0xa
    800028d4:	48078793          	addi	a5,a5,1152 # 8000cd50 <_ZTV9Semaphore+0x10>
    800028d8:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    800028dc:	00853503          	ld	a0,8(a0)
    800028e0:	02050663          	beqz	a0,8000290c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800028e4:	ff010113          	addi	sp,sp,-16
    800028e8:	00113423          	sd	ra,8(sp)
    800028ec:	00813023          	sd	s0,0(sp)
    800028f0:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	b94080e7          	jalr	-1132(ra) # 80001488 <_Z9sem_closeP4_sem>
    }
}
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret
    8000290c:	00008067          	ret

0000000080002910 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002910:	fe010113          	addi	sp,sp,-32
    80002914:	00113c23          	sd	ra,24(sp)
    80002918:	00813823          	sd	s0,16(sp)
    8000291c:	00913423          	sd	s1,8(sp)
    80002920:	02010413          	addi	s0,sp,32
    80002924:	00050493          	mv	s1,a0
}
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	fa8080e7          	jalr	-88(ra) # 800028d0 <_ZN9SemaphoreD1Ev>
    80002930:	00048513          	mv	a0,s1
    80002934:	00000097          	auipc	ra,0x0
    80002938:	dc4080e7          	jalr	-572(ra) # 800026f8 <_ZdlPv>
    8000293c:	01813083          	ld	ra,24(sp)
    80002940:	01013403          	ld	s0,16(sp)
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret

0000000080002950 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00813423          	sd	s0,8(sp)
    80002958:	01010413          	addi	s0,sp,16
    8000295c:	0000a797          	auipc	a5,0xa
    80002960:	3cc78793          	addi	a5,a5,972 # 8000cd28 <_ZTV6Thread+0x10>
    80002964:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002968:	00053423          	sd	zero,8(a0)
    this->body = body;
    8000296c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002970:	00c53c23          	sd	a2,24(a0)
}
    80002974:	00813403          	ld	s0,8(sp)
    80002978:	01010113          	addi	sp,sp,16
    8000297c:	00008067          	ret

0000000080002980 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00813423          	sd	s0,8(sp)
    80002988:	01010413          	addi	s0,sp,16
    8000298c:	0000a797          	auipc	a5,0xa
    80002990:	39c78793          	addi	a5,a5,924 # 8000cd28 <_ZTV6Thread+0x10>
    80002994:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002998:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    8000299c:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    800029a0:	00053c23          	sd	zero,24(a0)
}
    800029a4:	00813403          	ld	s0,8(sp)
    800029a8:	01010113          	addi	sp,sp,16
    800029ac:	00008067          	ret

00000000800029b0 <_ZN6Thread5startEv>:
int Thread::start() {
    800029b0:	ff010113          	addi	sp,sp,-16
    800029b4:	00113423          	sd	ra,8(sp)
    800029b8:	00813023          	sd	s0,0(sp)
    800029bc:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800029c0:	01053583          	ld	a1,16(a0)
    800029c4:	02058263          	beqz	a1,800029e8 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    800029c8:	01853603          	ld	a2,24(a0)
    800029cc:	00850513          	addi	a0,a0,8
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	8b4080e7          	jalr	-1868(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800029d8:	00813083          	ld	ra,8(sp)
    800029dc:	00013403          	ld	s0,0(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    800029e8:	00050613          	mv	a2,a0
    800029ec:	00000597          	auipc	a1,0x0
    800029f0:	e8858593          	addi	a1,a1,-376 # 80002874 <_ZN6Thread13threadWrapperEPv>
    800029f4:	00850513          	addi	a0,a0,8
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	88c080e7          	jalr	-1908(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    80002a00:	fd9ff06f          	j	800029d8 <_ZN6Thread5startEv+0x28>

0000000080002a04 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00113423          	sd	ra,8(sp)
    80002a0c:	00813023          	sd	s0,0(sp)
    80002a10:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a14:	fffff097          	auipc	ra,0xfffff
    80002a18:	974080e7          	jalr	-1676(ra) # 80001388 <_Z15thread_dispatchv>
}
    80002a1c:	00813083          	ld	ra,8(sp)
    80002a20:	00013403          	ld	s0,0(sp)
    80002a24:	01010113          	addi	sp,sp,16
    80002a28:	00008067          	ret

0000000080002a2c <_ZN6Thread8addChildEPS_>:
    if (child == nullptr) {
    80002a2c:	02058863          	beqz	a1,80002a5c <_ZN6Thread8addChildEPS_+0x30>
int Thread::addChild(Thread* child) {
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    return thread_add_child(child->myHandle);
    80002a40:	0085b503          	ld	a0,8(a1)
    80002a44:	fffff097          	auipc	ra,0xfffff
    80002a48:	980080e7          	jalr	-1664(ra) # 800013c4 <_Z16thread_add_childP7_thread>
}
    80002a4c:	00813083          	ld	ra,8(sp)
    80002a50:	00013403          	ld	s0,0(sp)
    80002a54:	01010113          	addi	sp,sp,16
    80002a58:	00008067          	ret
        return -1;
    80002a5c:	fff00513          	li	a0,-1
}
    80002a60:	00008067          	ret

0000000080002a64 <_ZN6Thread7joinAllEv>:
int Thread::joinAll() {
    80002a64:	ff010113          	addi	sp,sp,-16
    80002a68:	00113423          	sd	ra,8(sp)
    80002a6c:	00813023          	sd	s0,0(sp)
    80002a70:	01010413          	addi	s0,sp,16
    return thread_join_all();
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	990080e7          	jalr	-1648(ra) # 80001404 <_Z15thread_join_allv>
}
    80002a7c:	00813083          	ld	ra,8(sp)
    80002a80:	00013403          	ld	s0,0(sp)
    80002a84:	01010113          	addi	sp,sp,16
    80002a88:	00008067          	ret

0000000080002a8c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002a8c:	ff010113          	addi	sp,sp,-16
    80002a90:	00113423          	sd	ra,8(sp)
    80002a94:	00813023          	sd	s0,0(sp)
    80002a98:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002a9c:	fffff097          	auipc	ra,0xfffff
    80002aa0:	b34080e7          	jalr	-1228(ra) # 800015d0 <_Z10time_sleepm>
}
    80002aa4:	00813083          	ld	ra,8(sp)
    80002aa8:	00013403          	ld	s0,0(sp)
    80002aac:	01010113          	addi	sp,sp,16
    80002ab0:	00008067          	ret

0000000080002ab4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002ab4:	ff010113          	addi	sp,sp,-16
    80002ab8:	00113423          	sd	ra,8(sp)
    80002abc:	00813023          	sd	s0,0(sp)
    80002ac0:	01010413          	addi	s0,sp,16
    80002ac4:	0000a797          	auipc	a5,0xa
    80002ac8:	28c78793          	addi	a5,a5,652 # 8000cd50 <_ZTV9Semaphore+0x10>
    80002acc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002ad0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002ad4:	00850513          	addi	a0,a0,8
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	96c080e7          	jalr	-1684(ra) # 80001444 <_Z8sem_openPP4_semj>
}
    80002ae0:	00813083          	ld	ra,8(sp)
    80002ae4:	00013403          	ld	s0,0(sp)
    80002ae8:	01010113          	addi	sp,sp,16
    80002aec:	00008067          	ret

0000000080002af0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002b00:	00853503          	ld	a0,8(a0)
    80002b04:	fffff097          	auipc	ra,0xfffff
    80002b08:	9c4080e7          	jalr	-1596(ra) # 800014c8 <_Z8sem_waitP4_sem>
}
    80002b0c:	00813083          	ld	ra,8(sp)
    80002b10:	00013403          	ld	s0,0(sp)
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret

0000000080002b1c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002b1c:	ff010113          	addi	sp,sp,-16
    80002b20:	00113423          	sd	ra,8(sp)
    80002b24:	00813023          	sd	s0,0(sp)
    80002b28:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002b2c:	00853503          	ld	a0,8(a0)
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	9d8080e7          	jalr	-1576(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80002b38:	00813083          	ld	ra,8(sp)
    80002b3c:	00013403          	ld	s0,0(sp)
    80002b40:	01010113          	addi	sp,sp,16
    80002b44:	00008067          	ret

0000000080002b48 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002b48:	fe010113          	addi	sp,sp,-32
    80002b4c:	00113c23          	sd	ra,24(sp)
    80002b50:	00813823          	sd	s0,16(sp)
    80002b54:	00913423          	sd	s1,8(sp)
    80002b58:	01213023          	sd	s2,0(sp)
    80002b5c:	02010413          	addi	s0,sp,32
    80002b60:	00050493          	mv	s1,a0
    80002b64:	00058913          	mv	s2,a1
    80002b68:	00000097          	auipc	ra,0x0
    80002b6c:	e18080e7          	jalr	-488(ra) # 80002980 <_ZN6ThreadC1Ev>
    80002b70:	0000a797          	auipc	a5,0xa
    80002b74:	18878793          	addi	a5,a5,392 # 8000ccf8 <_ZTV14PeriodicThread+0x10>
    80002b78:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002b7c:	0324b023          	sd	s2,32(s1)
}
    80002b80:	01813083          	ld	ra,24(sp)
    80002b84:	01013403          	ld	s0,16(sp)
    80002b88:	00813483          	ld	s1,8(sp)
    80002b8c:	00013903          	ld	s2,0(sp)
    80002b90:	02010113          	addi	sp,sp,32
    80002b94:	00008067          	ret

0000000080002b98 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002b98:	ff010113          	addi	sp,sp,-16
    80002b9c:	00813423          	sd	s0,8(sp)
    80002ba0:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002ba4:	00813403          	ld	s0,8(sp)
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00008067          	ret

0000000080002bb0 <_ZN7Console4getcEv>:

char Console::getc() {
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    return ::getc();
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	a50080e7          	jalr	-1456(ra) # 80001610 <_Z4getcv>
}
    80002bc8:	00813083          	ld	ra,8(sp)
    80002bcc:	00013403          	ld	s0,0(sp)
    80002bd0:	01010113          	addi	sp,sp,16
    80002bd4:	00008067          	ret

0000000080002bd8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	00813023          	sd	s0,0(sp)
    80002be4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	a68080e7          	jalr	-1432(ra) # 80001650 <_Z4putcc>
    80002bf0:	00813083          	ld	ra,8(sp)
    80002bf4:	00013403          	ld	s0,0(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret

0000000080002c00 <_ZN6Thread3runEv>:
    int addChild(Thread* child);
    int joinAll();
protected:
    Thread();

    virtual void run() {}
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00813423          	sd	s0,8(sp)
    80002c08:	01010413          	addi	s0,sp,16
    80002c0c:	00813403          	ld	s0,8(sp)
    80002c10:	01010113          	addi	sp,sp,16
    80002c14:	00008067          	ret

0000000080002c18 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002c18:	ff010113          	addi	sp,sp,-16
    80002c1c:	00813423          	sd	s0,8(sp)
    80002c20:	01010413          	addi	s0,sp,16
    80002c24:	00813403          	ld	s0,8(sp)
    80002c28:	01010113          	addi	sp,sp,16
    80002c2c:	00008067          	ret

0000000080002c30 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002c30:	ff010113          	addi	sp,sp,-16
    80002c34:	00813423          	sd	s0,8(sp)
    80002c38:	01010413          	addi	s0,sp,16
    80002c3c:	0000a797          	auipc	a5,0xa
    80002c40:	0bc78793          	addi	a5,a5,188 # 8000ccf8 <_ZTV14PeriodicThread+0x10>
    80002c44:	00f53023          	sd	a5,0(a0)
    80002c48:	00813403          	ld	s0,8(sp)
    80002c4c:	01010113          	addi	sp,sp,16
    80002c50:	00008067          	ret

0000000080002c54 <_ZN14PeriodicThreadD0Ev>:
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00113423          	sd	ra,8(sp)
    80002c5c:	00813023          	sd	s0,0(sp)
    80002c60:	01010413          	addi	s0,sp,16
    80002c64:	0000a797          	auipc	a5,0xa
    80002c68:	09478793          	addi	a5,a5,148 # 8000ccf8 <_ZTV14PeriodicThread+0x10>
    80002c6c:	00f53023          	sd	a5,0(a0)
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	a88080e7          	jalr	-1400(ra) # 800026f8 <_ZdlPv>
    80002c78:	00813083          	ld	ra,8(sp)
    80002c7c:	00013403          	ld	s0,0(sp)
    80002c80:	01010113          	addi	sp,sp,16
    80002c84:	00008067          	ret

0000000080002c88 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002c88:	ff010113          	addi	sp,sp,-16
    80002c8c:	00813423          	sd	s0,8(sp)
    80002c90:	01010413          	addi	s0,sp,16
    80002c94:	00053023          	sd	zero,0(a0)
    80002c98:	00050423          	sb	zero,8(a0)
    80002c9c:	00813403          	ld	s0,8(sp)
    80002ca0:	01010113          	addi	sp,sp,16
    80002ca4:	00008067          	ret

0000000080002ca8 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002ca8:	00100793          	li	a5,1
    80002cac:	00f50463          	beq	a0,a5,80002cb4 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002cb0:	00008067          	ret
    80002cb4:	000107b7          	lui	a5,0x10
    80002cb8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002cbc:	fef59ae3          	bne	a1,a5,80002cb0 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002cc0:	ff010113          	addi	sp,sp,-16
    80002cc4:	00113423          	sd	ra,8(sp)
    80002cc8:	00813023          	sd	s0,0(sp)
    80002ccc:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002cd0:	0000a517          	auipc	a0,0xa
    80002cd4:	35050513          	addi	a0,a0,848 # 8000d020 <_ZN15MemoryAllocator8instanceE>
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	fb0080e7          	jalr	-80(ra) # 80002c88 <_ZN15MemoryAllocatorC1Ev>
    80002ce0:	00813083          	ld	ra,8(sp)
    80002ce4:	00013403          	ld	s0,0(sp)
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00008067          	ret

0000000080002cf0 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002cf0:	ff010113          	addi	sp,sp,-16
    80002cf4:	00813423          	sd	s0,8(sp)
    80002cf8:	01010413          	addi	s0,sp,16
}
    80002cfc:	0000a517          	auipc	a0,0xa
    80002d00:	32450513          	addi	a0,a0,804 # 8000d020 <_ZN15MemoryAllocator8instanceE>
    80002d04:	00813403          	ld	s0,8(sp)
    80002d08:	01010113          	addi	sp,sp,16
    80002d0c:	00008067          	ret

0000000080002d10 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002d10:	ff010113          	addi	sp,sp,-16
    80002d14:	00813423          	sd	s0,8(sp)
    80002d18:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002d1c:	00854783          	lbu	a5,8(a0)
    80002d20:	04079263          	bnez	a5,80002d64 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002d24:	0000a797          	auipc	a5,0xa
    80002d28:	26c7b783          	ld	a5,620(a5) # 8000cf90 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d2c:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002d30:	0000a797          	auipc	a5,0xa
    80002d34:	2807b783          	ld	a5,640(a5) # 8000cfb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d38:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002d3c:	40e787b3          	sub	a5,a5,a4
    80002d40:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002d44:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002d48:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002d4c:	00053783          	ld	a5,0(a0)
    80002d50:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002d54:	00053783          	ld	a5,0(a0)
    80002d58:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002d5c:	00100793          	li	a5,1
    80002d60:	00f50423          	sb	a5,8(a0)
}
    80002d64:	00813403          	ld	s0,8(sp)
    80002d68:	01010113          	addi	sp,sp,16
    80002d6c:	00008067          	ret

0000000080002d70 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002d70:	fe010113          	addi	sp,sp,-32
    80002d74:	00113c23          	sd	ra,24(sp)
    80002d78:	00813823          	sd	s0,16(sp)
    80002d7c:	00913423          	sd	s1,8(sp)
    80002d80:	01213023          	sd	s2,0(sp)
    80002d84:	02010413          	addi	s0,sp,32
    80002d88:	00050913          	mv	s2,a0
    80002d8c:	00058493          	mv	s1,a1
    init();
    80002d90:	00000097          	auipc	ra,0x0
    80002d94:	f80080e7          	jalr	-128(ra) # 80002d10 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002d98:	0c048863          	beqz	s1,80002e68 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002d9c:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002da0:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002da4:	00050a63          	beqz	a0,80002db8 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002da8:	00053783          	ld	a5,0(a0)
    80002dac:	00b7f663          	bgeu	a5,a1,80002db8 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002db0:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002db4:	ff1ff06f          	j	80002da4 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002db8:	04050063          	beqz	a0,80002df8 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002dbc:	00053783          	ld	a5,0(a0)
    80002dc0:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002dc4:	00100713          	li	a4,1
    80002dc8:	04f76463          	bltu	a4,a5,80002e10 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002dcc:	01053783          	ld	a5,16(a0)
    80002dd0:	08078663          	beqz	a5,80002e5c <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002dd4:	00853703          	ld	a4,8(a0)
    80002dd8:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002ddc:	00853783          	ld	a5,8(a0)
    80002de0:	00078663          	beqz	a5,80002dec <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002de4:	01053703          	ld	a4,16(a0)
    80002de8:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002dec:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002df0:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002df4:	04050513          	addi	a0,a0,64
}
    80002df8:	01813083          	ld	ra,24(sp)
    80002dfc:	01013403          	ld	s0,16(sp)
    80002e00:	00813483          	ld	s1,8(sp)
    80002e04:	00013903          	ld	s2,0(sp)
    80002e08:	02010113          	addi	sp,sp,32
    80002e0c:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002e10:	00659713          	slli	a4,a1,0x6
    80002e14:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002e18:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002e1c:	00853783          	ld	a5,8(a0)
    80002e20:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002e24:	01053783          	ld	a5,16(a0)
    80002e28:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002e2c:	02078463          	beqz	a5,80002e54 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002e30:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002e34:	00853783          	ld	a5,8(a0)
    80002e38:	00078463          	beqz	a5,80002e40 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002e3c:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002e40:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002e44:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002e48:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002e4c:	04050513          	addi	a0,a0,64
    80002e50:	fa9ff06f          	j	80002df8 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002e54:	00e93023          	sd	a4,0(s2)
    80002e58:	fddff06f          	j	80002e34 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002e5c:	00853783          	ld	a5,8(a0)
    80002e60:	00f93023          	sd	a5,0(s2)
    80002e64:	f79ff06f          	j	80002ddc <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002e68:	00000513          	li	a0,0
    80002e6c:	f8dff06f          	j	80002df8 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002e70 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002e70:	ff010113          	addi	sp,sp,-16
    80002e74:	00813423          	sd	s0,8(sp)
    80002e78:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002e7c:	00058e63          	beqz	a1,80002e98 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002e80:	0085b783          	ld	a5,8(a1)
    80002e84:	00078a63          	beqz	a5,80002e98 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002e88:	0005b683          	ld	a3,0(a1)
    80002e8c:	00669713          	slli	a4,a3,0x6
    80002e90:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002e94:	00e78863          	beq	a5,a4,80002ea4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002e98:	00813403          	ld	s0,8(sp)
    80002e9c:	01010113          	addi	sp,sp,16
    80002ea0:	00008067          	ret
        block->size += nextBlock->size;
    80002ea4:	0007b703          	ld	a4,0(a5)
    80002ea8:	00e686b3          	add	a3,a3,a4
    80002eac:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002eb0:	0087b703          	ld	a4,8(a5)
    80002eb4:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002eb8:	00070463          	beqz	a4,80002ec0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002ebc:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002ec0:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002ec4:	0007b823          	sd	zero,16(a5)
    80002ec8:	fd1ff06f          	j	80002e98 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002ecc <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002ecc:	fd010113          	addi	sp,sp,-48
    80002ed0:	02113423          	sd	ra,40(sp)
    80002ed4:	02813023          	sd	s0,32(sp)
    80002ed8:	00913c23          	sd	s1,24(sp)
    80002edc:	01213823          	sd	s2,16(sp)
    80002ee0:	01313423          	sd	s3,8(sp)
    80002ee4:	03010413          	addi	s0,sp,48
    80002ee8:	00050993          	mv	s3,a0
    80002eec:	00058913          	mv	s2,a1
    init();
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	e20080e7          	jalr	-480(ra) # 80002d10 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002ef8:	0e090863          	beqz	s2,80002fe8 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002efc:	0000a797          	auipc	a5,0xa
    80002f00:	0947b783          	ld	a5,148(a5) # 8000cf90 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f04:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002f08:	0000a797          	auipc	a5,0xa
    80002f0c:	0a87b783          	ld	a5,168(a5) # 8000cfb0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f10:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002f14:	04068793          	addi	a5,a3,64
    80002f18:	0cf96c63          	bltu	s2,a5,80002ff0 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002f1c:	0cc97e63          	bgeu	s2,a2,80002ff8 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002f20:	40d907b3          	sub	a5,s2,a3
    80002f24:	03f7f793          	andi	a5,a5,63
    80002f28:	0c079c63          	bnez	a5,80003000 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002f2c:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002f30:	fc093783          	ld	a5,-64(s2)
    80002f34:	00100713          	li	a4,1
    80002f38:	0cf77863          	bgeu	a4,a5,80003008 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002f3c:	00058713          	mv	a4,a1
    80002f40:	0cd5e863          	bltu	a1,a3,80003010 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002f44:	00679793          	slli	a5,a5,0x6
    80002f48:	00f586b3          	add	a3,a1,a5
    80002f4c:	0cd66663          	bltu	a2,a3,80003018 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002f50:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002f54:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f58:	00078a63          	beqz	a5,80002f6c <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002f5c:	00e7f863          	bgeu	a5,a4,80002f6c <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002f60:	00078493          	mv	s1,a5
        current = current->next;
    80002f64:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f68:	ff1ff06f          	j	80002f58 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002f6c:	00048a63          	beqz	s1,80002f80 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002f70:	0004b603          	ld	a2,0(s1)
    80002f74:	00661613          	slli	a2,a2,0x6
    80002f78:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002f7c:	0ac76263          	bltu	a4,a2,80003020 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002f80:	00078463          	beqz	a5,80002f88 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002f84:	0ad7e263          	bltu	a5,a3,80003028 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002f88:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002f8c:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002f90:	04048863          	beqz	s1,80002fe0 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002f94:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002f98:	00078463          	beqz	a5,80002fa0 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002f9c:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002fa0:	00098513          	mv	a0,s3
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	ecc080e7          	jalr	-308(ra) # 80002e70 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002fac:	08048263          	beqz	s1,80003030 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002fb0:	00048593          	mv	a1,s1
    80002fb4:	00098513          	mv	a0,s3
    80002fb8:	00000097          	auipc	ra,0x0
    80002fbc:	eb8080e7          	jalr	-328(ra) # 80002e70 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002fc0:	00000513          	li	a0,0
}
    80002fc4:	02813083          	ld	ra,40(sp)
    80002fc8:	02013403          	ld	s0,32(sp)
    80002fcc:	01813483          	ld	s1,24(sp)
    80002fd0:	01013903          	ld	s2,16(sp)
    80002fd4:	00813983          	ld	s3,8(sp)
    80002fd8:	03010113          	addi	sp,sp,48
    80002fdc:	00008067          	ret
        freeHead = block;
    80002fe0:	00b9b023          	sd	a1,0(s3)
    80002fe4:	fb5ff06f          	j	80002f98 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002fe8:	fff00513          	li	a0,-1
    80002fec:	fd9ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ff0:	fff00513          	li	a0,-1
    80002ff4:	fd1ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002ff8:	fff00513          	li	a0,-1
    80002ffc:	fc9ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003000:	fff00513          	li	a0,-1
    80003004:	fc1ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003008:	fff00513          	li	a0,-1
    8000300c:	fb9ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003010:	fff00513          	li	a0,-1
    80003014:	fb1ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003018:	fff00513          	li	a0,-1
    8000301c:	fa9ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003020:	fff00513          	li	a0,-1
    80003024:	fa1ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003028:	fff00513          	li	a0,-1
    8000302c:	f99ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80003030:	00000513          	li	a0,0
    80003034:	f91ff06f          	j	80002fc4 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080003038 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80003038:	ff010113          	addi	sp,sp,-16
    8000303c:	00113423          	sd	ra,8(sp)
    80003040:	00813023          	sd	s0,0(sp)
    80003044:	01010413          	addi	s0,sp,16
    80003048:	000105b7          	lui	a1,0x10
    8000304c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003050:	00100513          	li	a0,1
    80003054:	00000097          	auipc	ra,0x0
    80003058:	c54080e7          	jalr	-940(ra) # 80002ca8 <_Z41__static_initialization_and_destruction_0ii>
    8000305c:	00813083          	ld	ra,8(sp)
    80003060:	00013403          	ld	s0,0(sp)
    80003064:	01010113          	addi	sp,sp,16
    80003068:	00008067          	ret

000000008000306c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00813823          	sd	s0,16(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	01213023          	sd	s2,0(sp)
    80003080:	02010413          	addi	s0,sp,32
    80003084:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003088:	00000913          	li	s2,0
    8000308c:	00c0006f          	j	80003098 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	2f8080e7          	jalr	760(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003098:	ffffe097          	auipc	ra,0xffffe
    8000309c:	578080e7          	jalr	1400(ra) # 80001610 <_Z4getcv>
    800030a0:	0005059b          	sext.w	a1,a0
    800030a4:	01b00793          	li	a5,27
    800030a8:	02f58a63          	beq	a1,a5,800030dc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800030ac:	0084b503          	ld	a0,8(s1)
    800030b0:	00004097          	auipc	ra,0x4
    800030b4:	b98080e7          	jalr	-1128(ra) # 80006c48 <_ZN6Buffer3putEi>
        i++;
    800030b8:	0019071b          	addiw	a4,s2,1
    800030bc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800030c0:	0004a683          	lw	a3,0(s1)
    800030c4:	0026979b          	slliw	a5,a3,0x2
    800030c8:	00d787bb          	addw	a5,a5,a3
    800030cc:	0017979b          	slliw	a5,a5,0x1
    800030d0:	02f767bb          	remw	a5,a4,a5
    800030d4:	fc0792e3          	bnez	a5,80003098 <_ZL16producerKeyboardPv+0x2c>
    800030d8:	fb9ff06f          	j	80003090 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800030dc:	00100793          	li	a5,1
    800030e0:	0000a717          	auipc	a4,0xa
    800030e4:	f4f72823          	sw	a5,-176(a4) # 8000d030 <_ZL9threadEnd>
    data->buffer->put('!');
    800030e8:	02100593          	li	a1,33
    800030ec:	0084b503          	ld	a0,8(s1)
    800030f0:	00004097          	auipc	ra,0x4
    800030f4:	b58080e7          	jalr	-1192(ra) # 80006c48 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800030f8:	0104b503          	ld	a0,16(s1)
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	40c080e7          	jalr	1036(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	00013903          	ld	s2,0(sp)
    80003114:	02010113          	addi	sp,sp,32
    80003118:	00008067          	ret

000000008000311c <_ZL8producerPv>:

static void producer(void *arg) {
    8000311c:	fe010113          	addi	sp,sp,-32
    80003120:	00113c23          	sd	ra,24(sp)
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	01213023          	sd	s2,0(sp)
    80003130:	02010413          	addi	s0,sp,32
    80003134:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003138:	00000913          	li	s2,0
    8000313c:	00c0006f          	j	80003148 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003140:	ffffe097          	auipc	ra,0xffffe
    80003144:	248080e7          	jalr	584(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003148:	0000a797          	auipc	a5,0xa
    8000314c:	ee87a783          	lw	a5,-280(a5) # 8000d030 <_ZL9threadEnd>
    80003150:	02079e63          	bnez	a5,8000318c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003154:	0004a583          	lw	a1,0(s1)
    80003158:	0305859b          	addiw	a1,a1,48
    8000315c:	0084b503          	ld	a0,8(s1)
    80003160:	00004097          	auipc	ra,0x4
    80003164:	ae8080e7          	jalr	-1304(ra) # 80006c48 <_ZN6Buffer3putEi>
        i++;
    80003168:	0019071b          	addiw	a4,s2,1
    8000316c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003170:	0004a683          	lw	a3,0(s1)
    80003174:	0026979b          	slliw	a5,a3,0x2
    80003178:	00d787bb          	addw	a5,a5,a3
    8000317c:	0017979b          	slliw	a5,a5,0x1
    80003180:	02f767bb          	remw	a5,a4,a5
    80003184:	fc0792e3          	bnez	a5,80003148 <_ZL8producerPv+0x2c>
    80003188:	fb9ff06f          	j	80003140 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000318c:	0104b503          	ld	a0,16(s1)
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	378080e7          	jalr	888(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	00013903          	ld	s2,0(sp)
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret

00000000800031b0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800031b0:	fd010113          	addi	sp,sp,-48
    800031b4:	02113423          	sd	ra,40(sp)
    800031b8:	02813023          	sd	s0,32(sp)
    800031bc:	00913c23          	sd	s1,24(sp)
    800031c0:	01213823          	sd	s2,16(sp)
    800031c4:	01313423          	sd	s3,8(sp)
    800031c8:	03010413          	addi	s0,sp,48
    800031cc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800031d0:	00000993          	li	s3,0
    800031d4:	01c0006f          	j	800031f0 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	1b0080e7          	jalr	432(ra) # 80001388 <_Z15thread_dispatchv>
    800031e0:	0500006f          	j	80003230 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800031e4:	00a00513          	li	a0,10
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	468080e7          	jalr	1128(ra) # 80001650 <_Z4putcc>
    while (!threadEnd) {
    800031f0:	0000a797          	auipc	a5,0xa
    800031f4:	e407a783          	lw	a5,-448(a5) # 8000d030 <_ZL9threadEnd>
    800031f8:	06079063          	bnez	a5,80003258 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800031fc:	00893503          	ld	a0,8(s2)
    80003200:	00004097          	auipc	ra,0x4
    80003204:	ad8080e7          	jalr	-1320(ra) # 80006cd8 <_ZN6Buffer3getEv>
        i++;
    80003208:	0019849b          	addiw	s1,s3,1
    8000320c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003210:	0ff57513          	andi	a0,a0,255
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	43c080e7          	jalr	1084(ra) # 80001650 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000321c:	00092703          	lw	a4,0(s2)
    80003220:	0027179b          	slliw	a5,a4,0x2
    80003224:	00e787bb          	addw	a5,a5,a4
    80003228:	02f4e7bb          	remw	a5,s1,a5
    8000322c:	fa0786e3          	beqz	a5,800031d8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003230:	05000793          	li	a5,80
    80003234:	02f4e4bb          	remw	s1,s1,a5
    80003238:	fa049ce3          	bnez	s1,800031f0 <_ZL8consumerPv+0x40>
    8000323c:	fa9ff06f          	j	800031e4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003240:	00893503          	ld	a0,8(s2)
    80003244:	00004097          	auipc	ra,0x4
    80003248:	a94080e7          	jalr	-1388(ra) # 80006cd8 <_ZN6Buffer3getEv>
        putc(key);
    8000324c:	0ff57513          	andi	a0,a0,255
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	400080e7          	jalr	1024(ra) # 80001650 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003258:	00893503          	ld	a0,8(s2)
    8000325c:	00004097          	auipc	ra,0x4
    80003260:	b08080e7          	jalr	-1272(ra) # 80006d64 <_ZN6Buffer6getCntEv>
    80003264:	fca04ee3          	bgtz	a0,80003240 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003268:	01093503          	ld	a0,16(s2)
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	29c080e7          	jalr	668(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80003274:	02813083          	ld	ra,40(sp)
    80003278:	02013403          	ld	s0,32(sp)
    8000327c:	01813483          	ld	s1,24(sp)
    80003280:	01013903          	ld	s2,16(sp)
    80003284:	00813983          	ld	s3,8(sp)
    80003288:	03010113          	addi	sp,sp,48
    8000328c:	00008067          	ret

0000000080003290 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003290:	f9010113          	addi	sp,sp,-112
    80003294:	06113423          	sd	ra,104(sp)
    80003298:	06813023          	sd	s0,96(sp)
    8000329c:	04913c23          	sd	s1,88(sp)
    800032a0:	05213823          	sd	s2,80(sp)
    800032a4:	05313423          	sd	s3,72(sp)
    800032a8:	05413023          	sd	s4,64(sp)
    800032ac:	03513c23          	sd	s5,56(sp)
    800032b0:	03613823          	sd	s6,48(sp)
    800032b4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800032b8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800032bc:	00007517          	auipc	a0,0x7
    800032c0:	10c50513          	addi	a0,a0,268 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    800032c4:	00002097          	auipc	ra,0x2
    800032c8:	220080e7          	jalr	544(ra) # 800054e4 <_Z11printStringPKc>
    getString(input, 30);
    800032cc:	01e00593          	li	a1,30
    800032d0:	fa040493          	addi	s1,s0,-96
    800032d4:	00048513          	mv	a0,s1
    800032d8:	00002097          	auipc	ra,0x2
    800032dc:	294080e7          	jalr	660(ra) # 8000556c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800032e0:	00048513          	mv	a0,s1
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	360080e7          	jalr	864(ra) # 80005644 <_Z11stringToIntPKc>
    800032ec:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800032f0:	00007517          	auipc	a0,0x7
    800032f4:	0f850513          	addi	a0,a0,248 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	1ec080e7          	jalr	492(ra) # 800054e4 <_Z11printStringPKc>
    getString(input, 30);
    80003300:	01e00593          	li	a1,30
    80003304:	00048513          	mv	a0,s1
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	264080e7          	jalr	612(ra) # 8000556c <_Z9getStringPci>
    n = stringToInt(input);
    80003310:	00048513          	mv	a0,s1
    80003314:	00002097          	auipc	ra,0x2
    80003318:	330080e7          	jalr	816(ra) # 80005644 <_Z11stringToIntPKc>
    8000331c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003320:	00007517          	auipc	a0,0x7
    80003324:	0e850513          	addi	a0,a0,232 # 8000a408 <CONSOLE_STATUS+0x3f8>
    80003328:	00002097          	auipc	ra,0x2
    8000332c:	1bc080e7          	jalr	444(ra) # 800054e4 <_Z11printStringPKc>
    80003330:	00000613          	li	a2,0
    80003334:	00a00593          	li	a1,10
    80003338:	00090513          	mv	a0,s2
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	358080e7          	jalr	856(ra) # 80005694 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003344:	00007517          	auipc	a0,0x7
    80003348:	0dc50513          	addi	a0,a0,220 # 8000a420 <CONSOLE_STATUS+0x410>
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	198080e7          	jalr	408(ra) # 800054e4 <_Z11printStringPKc>
    80003354:	00000613          	li	a2,0
    80003358:	00a00593          	li	a1,10
    8000335c:	00048513          	mv	a0,s1
    80003360:	00002097          	auipc	ra,0x2
    80003364:	334080e7          	jalr	820(ra) # 80005694 <_Z8printIntiii>
    printString(".\n");
    80003368:	00007517          	auipc	a0,0x7
    8000336c:	0d050513          	addi	a0,a0,208 # 8000a438 <CONSOLE_STATUS+0x428>
    80003370:	00002097          	auipc	ra,0x2
    80003374:	174080e7          	jalr	372(ra) # 800054e4 <_Z11printStringPKc>
    if(threadNum > n) {
    80003378:	0324c463          	blt	s1,s2,800033a0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000337c:	03205c63          	blez	s2,800033b4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003380:	03800513          	li	a0,56
    80003384:	fffff097          	auipc	ra,0xfffff
    80003388:	324080e7          	jalr	804(ra) # 800026a8 <_Znwm>
    8000338c:	00050a13          	mv	s4,a0
    80003390:	00048593          	mv	a1,s1
    80003394:	00004097          	auipc	ra,0x4
    80003398:	818080e7          	jalr	-2024(ra) # 80006bac <_ZN6BufferC1Ei>
    8000339c:	0300006f          	j	800033cc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800033a0:	00007517          	auipc	a0,0x7
    800033a4:	0a050513          	addi	a0,a0,160 # 8000a440 <CONSOLE_STATUS+0x430>
    800033a8:	00002097          	auipc	ra,0x2
    800033ac:	13c080e7          	jalr	316(ra) # 800054e4 <_Z11printStringPKc>
        return;
    800033b0:	0140006f          	j	800033c4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800033b4:	00007517          	auipc	a0,0x7
    800033b8:	0cc50513          	addi	a0,a0,204 # 8000a480 <CONSOLE_STATUS+0x470>
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	128080e7          	jalr	296(ra) # 800054e4 <_Z11printStringPKc>
        return;
    800033c4:	000b0113          	mv	sp,s6
    800033c8:	1500006f          	j	80003518 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800033cc:	00000593          	li	a1,0
    800033d0:	0000a517          	auipc	a0,0xa
    800033d4:	c6850513          	addi	a0,a0,-920 # 8000d038 <_ZL10waitForAll>
    800033d8:	ffffe097          	auipc	ra,0xffffe
    800033dc:	06c080e7          	jalr	108(ra) # 80001444 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800033e0:	00391793          	slli	a5,s2,0x3
    800033e4:	00f78793          	addi	a5,a5,15
    800033e8:	ff07f793          	andi	a5,a5,-16
    800033ec:	40f10133          	sub	sp,sp,a5
    800033f0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800033f4:	0019071b          	addiw	a4,s2,1
    800033f8:	00171793          	slli	a5,a4,0x1
    800033fc:	00e787b3          	add	a5,a5,a4
    80003400:	00379793          	slli	a5,a5,0x3
    80003404:	00f78793          	addi	a5,a5,15
    80003408:	ff07f793          	andi	a5,a5,-16
    8000340c:	40f10133          	sub	sp,sp,a5
    80003410:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003414:	00191613          	slli	a2,s2,0x1
    80003418:	012607b3          	add	a5,a2,s2
    8000341c:	00379793          	slli	a5,a5,0x3
    80003420:	00f987b3          	add	a5,s3,a5
    80003424:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003428:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000342c:	0000a717          	auipc	a4,0xa
    80003430:	c0c73703          	ld	a4,-1012(a4) # 8000d038 <_ZL10waitForAll>
    80003434:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003438:	00078613          	mv	a2,a5
    8000343c:	00000597          	auipc	a1,0x0
    80003440:	d7458593          	addi	a1,a1,-652 # 800031b0 <_ZL8consumerPv>
    80003444:	f9840513          	addi	a0,s0,-104
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	e3c080e7          	jalr	-452(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003450:	00000493          	li	s1,0
    80003454:	0280006f          	j	8000347c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003458:	00000597          	auipc	a1,0x0
    8000345c:	c1458593          	addi	a1,a1,-1004 # 8000306c <_ZL16producerKeyboardPv>
                      data + i);
    80003460:	00179613          	slli	a2,a5,0x1
    80003464:	00f60633          	add	a2,a2,a5
    80003468:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000346c:	00c98633          	add	a2,s3,a2
    80003470:	ffffe097          	auipc	ra,0xffffe
    80003474:	e14080e7          	jalr	-492(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003478:	0014849b          	addiw	s1,s1,1
    8000347c:	0524d263          	bge	s1,s2,800034c0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003480:	00149793          	slli	a5,s1,0x1
    80003484:	009787b3          	add	a5,a5,s1
    80003488:	00379793          	slli	a5,a5,0x3
    8000348c:	00f987b3          	add	a5,s3,a5
    80003490:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003494:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003498:	0000a717          	auipc	a4,0xa
    8000349c:	ba073703          	ld	a4,-1120(a4) # 8000d038 <_ZL10waitForAll>
    800034a0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800034a4:	00048793          	mv	a5,s1
    800034a8:	00349513          	slli	a0,s1,0x3
    800034ac:	00aa8533          	add	a0,s5,a0
    800034b0:	fa9054e3          	blez	s1,80003458 <_Z22producerConsumer_C_APIv+0x1c8>
    800034b4:	00000597          	auipc	a1,0x0
    800034b8:	c6858593          	addi	a1,a1,-920 # 8000311c <_ZL8producerPv>
    800034bc:	fa5ff06f          	j	80003460 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	ec8080e7          	jalr	-312(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800034c8:	00000493          	li	s1,0
    800034cc:	00994e63          	blt	s2,s1,800034e8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800034d0:	0000a517          	auipc	a0,0xa
    800034d4:	b6853503          	ld	a0,-1176(a0) # 8000d038 <_ZL10waitForAll>
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	ff0080e7          	jalr	-16(ra) # 800014c8 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800034e0:	0014849b          	addiw	s1,s1,1
    800034e4:	fe9ff06f          	j	800034cc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800034e8:	0000a517          	auipc	a0,0xa
    800034ec:	b5053503          	ld	a0,-1200(a0) # 8000d038 <_ZL10waitForAll>
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	f98080e7          	jalr	-104(ra) # 80001488 <_Z9sem_closeP4_sem>
    delete buffer;
    800034f8:	000a0e63          	beqz	s4,80003514 <_Z22producerConsumer_C_APIv+0x284>
    800034fc:	000a0513          	mv	a0,s4
    80003500:	00004097          	auipc	ra,0x4
    80003504:	8ec080e7          	jalr	-1812(ra) # 80006dec <_ZN6BufferD1Ev>
    80003508:	000a0513          	mv	a0,s4
    8000350c:	fffff097          	auipc	ra,0xfffff
    80003510:	1ec080e7          	jalr	492(ra) # 800026f8 <_ZdlPv>
    80003514:	000b0113          	mv	sp,s6

}
    80003518:	f9040113          	addi	sp,s0,-112
    8000351c:	06813083          	ld	ra,104(sp)
    80003520:	06013403          	ld	s0,96(sp)
    80003524:	05813483          	ld	s1,88(sp)
    80003528:	05013903          	ld	s2,80(sp)
    8000352c:	04813983          	ld	s3,72(sp)
    80003530:	04013a03          	ld	s4,64(sp)
    80003534:	03813a83          	ld	s5,56(sp)
    80003538:	03013b03          	ld	s6,48(sp)
    8000353c:	07010113          	addi	sp,sp,112
    80003540:	00008067          	ret
    80003544:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003548:	000a0513          	mv	a0,s4
    8000354c:	fffff097          	auipc	ra,0xfffff
    80003550:	1ac080e7          	jalr	428(ra) # 800026f8 <_ZdlPv>
    80003554:	00048513          	mv	a0,s1
    80003558:	0000b097          	auipc	ra,0xb
    8000355c:	bf0080e7          	jalr	-1040(ra) # 8000e148 <_Unwind_Resume>

0000000080003560 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003560:	fe010113          	addi	sp,sp,-32
    80003564:	00113c23          	sd	ra,24(sp)
    80003568:	00813823          	sd	s0,16(sp)
    8000356c:	00913423          	sd	s1,8(sp)
    80003570:	01213023          	sd	s2,0(sp)
    80003574:	02010413          	addi	s0,sp,32
    80003578:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000357c:	00100793          	li	a5,1
    80003580:	02a7f863          	bgeu	a5,a0,800035b0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003584:	00a00793          	li	a5,10
    80003588:	02f577b3          	remu	a5,a0,a5
    8000358c:	02078e63          	beqz	a5,800035c8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003590:	fff48513          	addi	a0,s1,-1
    80003594:	00000097          	auipc	ra,0x0
    80003598:	fcc080e7          	jalr	-52(ra) # 80003560 <_ZL9fibonaccim>
    8000359c:	00050913          	mv	s2,a0
    800035a0:	ffe48513          	addi	a0,s1,-2
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	fbc080e7          	jalr	-68(ra) # 80003560 <_ZL9fibonaccim>
    800035ac:	00a90533          	add	a0,s2,a0
}
    800035b0:	01813083          	ld	ra,24(sp)
    800035b4:	01013403          	ld	s0,16(sp)
    800035b8:	00813483          	ld	s1,8(sp)
    800035bc:	00013903          	ld	s2,0(sp)
    800035c0:	02010113          	addi	sp,sp,32
    800035c4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	dc0080e7          	jalr	-576(ra) # 80001388 <_Z15thread_dispatchv>
    800035d0:	fc1ff06f          	j	80003590 <_ZL9fibonaccim+0x30>

00000000800035d4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800035d4:	fe010113          	addi	sp,sp,-32
    800035d8:	00113c23          	sd	ra,24(sp)
    800035dc:	00813823          	sd	s0,16(sp)
    800035e0:	00913423          	sd	s1,8(sp)
    800035e4:	01213023          	sd	s2,0(sp)
    800035e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800035ec:	00000913          	li	s2,0
    800035f0:	0380006f          	j	80003628 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800035f4:	ffffe097          	auipc	ra,0xffffe
    800035f8:	d94080e7          	jalr	-620(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035fc:	00148493          	addi	s1,s1,1
    80003600:	000027b7          	lui	a5,0x2
    80003604:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003608:	0097ee63          	bltu	a5,s1,80003624 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000360c:	00000713          	li	a4,0
    80003610:	000077b7          	lui	a5,0x7
    80003614:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003618:	fce7eee3          	bltu	a5,a4,800035f4 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000361c:	00170713          	addi	a4,a4,1
    80003620:	ff1ff06f          	j	80003610 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003624:	00190913          	addi	s2,s2,1
    80003628:	00900793          	li	a5,9
    8000362c:	0527e063          	bltu	a5,s2,8000366c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003630:	00007517          	auipc	a0,0x7
    80003634:	e8050513          	addi	a0,a0,-384 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    80003638:	00002097          	auipc	ra,0x2
    8000363c:	eac080e7          	jalr	-340(ra) # 800054e4 <_Z11printStringPKc>
    80003640:	00000613          	li	a2,0
    80003644:	00a00593          	li	a1,10
    80003648:	0009051b          	sext.w	a0,s2
    8000364c:	00002097          	auipc	ra,0x2
    80003650:	048080e7          	jalr	72(ra) # 80005694 <_Z8printIntiii>
    80003654:	00007517          	auipc	a0,0x7
    80003658:	c4c50513          	addi	a0,a0,-948 # 8000a2a0 <CONSOLE_STATUS+0x290>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	e88080e7          	jalr	-376(ra) # 800054e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003664:	00000493          	li	s1,0
    80003668:	f99ff06f          	j	80003600 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000366c:	00007517          	auipc	a0,0x7
    80003670:	e4c50513          	addi	a0,a0,-436 # 8000a4b8 <CONSOLE_STATUS+0x4a8>
    80003674:	00002097          	auipc	ra,0x2
    80003678:	e70080e7          	jalr	-400(ra) # 800054e4 <_Z11printStringPKc>
    finishedA = true;
    8000367c:	00100793          	li	a5,1
    80003680:	0000a717          	auipc	a4,0xa
    80003684:	9cf70023          	sb	a5,-1600(a4) # 8000d040 <_ZL9finishedA>
}
    80003688:	01813083          	ld	ra,24(sp)
    8000368c:	01013403          	ld	s0,16(sp)
    80003690:	00813483          	ld	s1,8(sp)
    80003694:	00013903          	ld	s2,0(sp)
    80003698:	02010113          	addi	sp,sp,32
    8000369c:	00008067          	ret

00000000800036a0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800036a0:	fe010113          	addi	sp,sp,-32
    800036a4:	00113c23          	sd	ra,24(sp)
    800036a8:	00813823          	sd	s0,16(sp)
    800036ac:	00913423          	sd	s1,8(sp)
    800036b0:	01213023          	sd	s2,0(sp)
    800036b4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800036b8:	00000913          	li	s2,0
    800036bc:	0380006f          	j	800036f4 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	cc8080e7          	jalr	-824(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036c8:	00148493          	addi	s1,s1,1
    800036cc:	000027b7          	lui	a5,0x2
    800036d0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036d4:	0097ee63          	bltu	a5,s1,800036f0 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036d8:	00000713          	li	a4,0
    800036dc:	000077b7          	lui	a5,0x7
    800036e0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036e4:	fce7eee3          	bltu	a5,a4,800036c0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800036e8:	00170713          	addi	a4,a4,1
    800036ec:	ff1ff06f          	j	800036dc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800036f0:	00190913          	addi	s2,s2,1
    800036f4:	00f00793          	li	a5,15
    800036f8:	0527e063          	bltu	a5,s2,80003738 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800036fc:	00007517          	auipc	a0,0x7
    80003700:	dcc50513          	addi	a0,a0,-564 # 8000a4c8 <CONSOLE_STATUS+0x4b8>
    80003704:	00002097          	auipc	ra,0x2
    80003708:	de0080e7          	jalr	-544(ra) # 800054e4 <_Z11printStringPKc>
    8000370c:	00000613          	li	a2,0
    80003710:	00a00593          	li	a1,10
    80003714:	0009051b          	sext.w	a0,s2
    80003718:	00002097          	auipc	ra,0x2
    8000371c:	f7c080e7          	jalr	-132(ra) # 80005694 <_Z8printIntiii>
    80003720:	00007517          	auipc	a0,0x7
    80003724:	b8050513          	addi	a0,a0,-1152 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	dbc080e7          	jalr	-580(ra) # 800054e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003730:	00000493          	li	s1,0
    80003734:	f99ff06f          	j	800036cc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003738:	00007517          	auipc	a0,0x7
    8000373c:	d9850513          	addi	a0,a0,-616 # 8000a4d0 <CONSOLE_STATUS+0x4c0>
    80003740:	00002097          	auipc	ra,0x2
    80003744:	da4080e7          	jalr	-604(ra) # 800054e4 <_Z11printStringPKc>
    finishedB = true;
    80003748:	00100793          	li	a5,1
    8000374c:	0000a717          	auipc	a4,0xa
    80003750:	8ef70aa3          	sb	a5,-1803(a4) # 8000d041 <_ZL9finishedB>
    thread_dispatch();
    80003754:	ffffe097          	auipc	ra,0xffffe
    80003758:	c34080e7          	jalr	-972(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000375c:	01813083          	ld	ra,24(sp)
    80003760:	01013403          	ld	s0,16(sp)
    80003764:	00813483          	ld	s1,8(sp)
    80003768:	00013903          	ld	s2,0(sp)
    8000376c:	02010113          	addi	sp,sp,32
    80003770:	00008067          	ret

0000000080003774 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003774:	fe010113          	addi	sp,sp,-32
    80003778:	00113c23          	sd	ra,24(sp)
    8000377c:	00813823          	sd	s0,16(sp)
    80003780:	00913423          	sd	s1,8(sp)
    80003784:	01213023          	sd	s2,0(sp)
    80003788:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000378c:	00000493          	li	s1,0
    80003790:	0400006f          	j	800037d0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003794:	00007517          	auipc	a0,0x7
    80003798:	d4c50513          	addi	a0,a0,-692 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    8000379c:	00002097          	auipc	ra,0x2
    800037a0:	d48080e7          	jalr	-696(ra) # 800054e4 <_Z11printStringPKc>
    800037a4:	00000613          	li	a2,0
    800037a8:	00a00593          	li	a1,10
    800037ac:	00048513          	mv	a0,s1
    800037b0:	00002097          	auipc	ra,0x2
    800037b4:	ee4080e7          	jalr	-284(ra) # 80005694 <_Z8printIntiii>
    800037b8:	00007517          	auipc	a0,0x7
    800037bc:	ae850513          	addi	a0,a0,-1304 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800037c0:	00002097          	auipc	ra,0x2
    800037c4:	d24080e7          	jalr	-732(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800037c8:	0014849b          	addiw	s1,s1,1
    800037cc:	0ff4f493          	andi	s1,s1,255
    800037d0:	00200793          	li	a5,2
    800037d4:	fc97f0e3          	bgeu	a5,s1,80003794 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800037d8:	00007517          	auipc	a0,0x7
    800037dc:	d1050513          	addi	a0,a0,-752 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800037e0:	00002097          	auipc	ra,0x2
    800037e4:	d04080e7          	jalr	-764(ra) # 800054e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800037e8:	00700313          	li	t1,7
    thread_dispatch();
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	b9c080e7          	jalr	-1124(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800037f4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800037f8:	00007517          	auipc	a0,0x7
    800037fc:	d0050513          	addi	a0,a0,-768 # 8000a4f8 <CONSOLE_STATUS+0x4e8>
    80003800:	00002097          	auipc	ra,0x2
    80003804:	ce4080e7          	jalr	-796(ra) # 800054e4 <_Z11printStringPKc>
    80003808:	00000613          	li	a2,0
    8000380c:	00a00593          	li	a1,10
    80003810:	0009051b          	sext.w	a0,s2
    80003814:	00002097          	auipc	ra,0x2
    80003818:	e80080e7          	jalr	-384(ra) # 80005694 <_Z8printIntiii>
    8000381c:	00007517          	auipc	a0,0x7
    80003820:	a8450513          	addi	a0,a0,-1404 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80003824:	00002097          	auipc	ra,0x2
    80003828:	cc0080e7          	jalr	-832(ra) # 800054e4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000382c:	00c00513          	li	a0,12
    80003830:	00000097          	auipc	ra,0x0
    80003834:	d30080e7          	jalr	-720(ra) # 80003560 <_ZL9fibonaccim>
    80003838:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000383c:	00007517          	auipc	a0,0x7
    80003840:	cc450513          	addi	a0,a0,-828 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80003844:	00002097          	auipc	ra,0x2
    80003848:	ca0080e7          	jalr	-864(ra) # 800054e4 <_Z11printStringPKc>
    8000384c:	00000613          	li	a2,0
    80003850:	00a00593          	li	a1,10
    80003854:	0009051b          	sext.w	a0,s2
    80003858:	00002097          	auipc	ra,0x2
    8000385c:	e3c080e7          	jalr	-452(ra) # 80005694 <_Z8printIntiii>
    80003860:	00007517          	auipc	a0,0x7
    80003864:	a4050513          	addi	a0,a0,-1472 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	c7c080e7          	jalr	-900(ra) # 800054e4 <_Z11printStringPKc>
    80003870:	0400006f          	j	800038b0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003874:	00007517          	auipc	a0,0x7
    80003878:	c6c50513          	addi	a0,a0,-916 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    8000387c:	00002097          	auipc	ra,0x2
    80003880:	c68080e7          	jalr	-920(ra) # 800054e4 <_Z11printStringPKc>
    80003884:	00000613          	li	a2,0
    80003888:	00a00593          	li	a1,10
    8000388c:	00048513          	mv	a0,s1
    80003890:	00002097          	auipc	ra,0x2
    80003894:	e04080e7          	jalr	-508(ra) # 80005694 <_Z8printIntiii>
    80003898:	00007517          	auipc	a0,0x7
    8000389c:	a0850513          	addi	a0,a0,-1528 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	c44080e7          	jalr	-956(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800038a8:	0014849b          	addiw	s1,s1,1
    800038ac:	0ff4f493          	andi	s1,s1,255
    800038b0:	00500793          	li	a5,5
    800038b4:	fc97f0e3          	bgeu	a5,s1,80003874 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800038b8:	00007517          	auipc	a0,0x7
    800038bc:	c0050513          	addi	a0,a0,-1024 # 8000a4b8 <CONSOLE_STATUS+0x4a8>
    800038c0:	00002097          	auipc	ra,0x2
    800038c4:	c24080e7          	jalr	-988(ra) # 800054e4 <_Z11printStringPKc>
    finishedC = true;
    800038c8:	00100793          	li	a5,1
    800038cc:	00009717          	auipc	a4,0x9
    800038d0:	76f70b23          	sb	a5,1910(a4) # 8000d042 <_ZL9finishedC>
    thread_dispatch();
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	ab4080e7          	jalr	-1356(ra) # 80001388 <_Z15thread_dispatchv>
}
    800038dc:	01813083          	ld	ra,24(sp)
    800038e0:	01013403          	ld	s0,16(sp)
    800038e4:	00813483          	ld	s1,8(sp)
    800038e8:	00013903          	ld	s2,0(sp)
    800038ec:	02010113          	addi	sp,sp,32
    800038f0:	00008067          	ret

00000000800038f4 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	01213023          	sd	s2,0(sp)
    80003908:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000390c:	00a00493          	li	s1,10
    80003910:	0400006f          	j	80003950 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003914:	00007517          	auipc	a0,0x7
    80003918:	bfc50513          	addi	a0,a0,-1028 # 8000a510 <CONSOLE_STATUS+0x500>
    8000391c:	00002097          	auipc	ra,0x2
    80003920:	bc8080e7          	jalr	-1080(ra) # 800054e4 <_Z11printStringPKc>
    80003924:	00000613          	li	a2,0
    80003928:	00a00593          	li	a1,10
    8000392c:	00048513          	mv	a0,s1
    80003930:	00002097          	auipc	ra,0x2
    80003934:	d64080e7          	jalr	-668(ra) # 80005694 <_Z8printIntiii>
    80003938:	00007517          	auipc	a0,0x7
    8000393c:	96850513          	addi	a0,a0,-1688 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80003940:	00002097          	auipc	ra,0x2
    80003944:	ba4080e7          	jalr	-1116(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003948:	0014849b          	addiw	s1,s1,1
    8000394c:	0ff4f493          	andi	s1,s1,255
    80003950:	00c00793          	li	a5,12
    80003954:	fc97f0e3          	bgeu	a5,s1,80003914 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003958:	00007517          	auipc	a0,0x7
    8000395c:	bc050513          	addi	a0,a0,-1088 # 8000a518 <CONSOLE_STATUS+0x508>
    80003960:	00002097          	auipc	ra,0x2
    80003964:	b84080e7          	jalr	-1148(ra) # 800054e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003968:	00500313          	li	t1,5
    thread_dispatch();
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	a1c080e7          	jalr	-1508(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003974:	01000513          	li	a0,16
    80003978:	00000097          	auipc	ra,0x0
    8000397c:	be8080e7          	jalr	-1048(ra) # 80003560 <_ZL9fibonaccim>
    80003980:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003984:	00007517          	auipc	a0,0x7
    80003988:	ba450513          	addi	a0,a0,-1116 # 8000a528 <CONSOLE_STATUS+0x518>
    8000398c:	00002097          	auipc	ra,0x2
    80003990:	b58080e7          	jalr	-1192(ra) # 800054e4 <_Z11printStringPKc>
    80003994:	00000613          	li	a2,0
    80003998:	00a00593          	li	a1,10
    8000399c:	0009051b          	sext.w	a0,s2
    800039a0:	00002097          	auipc	ra,0x2
    800039a4:	cf4080e7          	jalr	-780(ra) # 80005694 <_Z8printIntiii>
    800039a8:	00007517          	auipc	a0,0x7
    800039ac:	8f850513          	addi	a0,a0,-1800 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	b34080e7          	jalr	-1228(ra) # 800054e4 <_Z11printStringPKc>
    800039b8:	0400006f          	j	800039f8 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800039bc:	00007517          	auipc	a0,0x7
    800039c0:	b5450513          	addi	a0,a0,-1196 # 8000a510 <CONSOLE_STATUS+0x500>
    800039c4:	00002097          	auipc	ra,0x2
    800039c8:	b20080e7          	jalr	-1248(ra) # 800054e4 <_Z11printStringPKc>
    800039cc:	00000613          	li	a2,0
    800039d0:	00a00593          	li	a1,10
    800039d4:	00048513          	mv	a0,s1
    800039d8:	00002097          	auipc	ra,0x2
    800039dc:	cbc080e7          	jalr	-836(ra) # 80005694 <_Z8printIntiii>
    800039e0:	00007517          	auipc	a0,0x7
    800039e4:	8c050513          	addi	a0,a0,-1856 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	afc080e7          	jalr	-1284(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800039f0:	0014849b          	addiw	s1,s1,1
    800039f4:	0ff4f493          	andi	s1,s1,255
    800039f8:	00f00793          	li	a5,15
    800039fc:	fc97f0e3          	bgeu	a5,s1,800039bc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003a00:	00007517          	auipc	a0,0x7
    80003a04:	b3850513          	addi	a0,a0,-1224 # 8000a538 <CONSOLE_STATUS+0x528>
    80003a08:	00002097          	auipc	ra,0x2
    80003a0c:	adc080e7          	jalr	-1316(ra) # 800054e4 <_Z11printStringPKc>
    finishedD = true;
    80003a10:	00100793          	li	a5,1
    80003a14:	00009717          	auipc	a4,0x9
    80003a18:	62f707a3          	sb	a5,1583(a4) # 8000d043 <_ZL9finishedD>
    thread_dispatch();
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	96c080e7          	jalr	-1684(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003a24:	01813083          	ld	ra,24(sp)
    80003a28:	01013403          	ld	s0,16(sp)
    80003a2c:	00813483          	ld	s1,8(sp)
    80003a30:	00013903          	ld	s2,0(sp)
    80003a34:	02010113          	addi	sp,sp,32
    80003a38:	00008067          	ret

0000000080003a3c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003a3c:	fc010113          	addi	sp,sp,-64
    80003a40:	02113c23          	sd	ra,56(sp)
    80003a44:	02813823          	sd	s0,48(sp)
    80003a48:	02913423          	sd	s1,40(sp)
    80003a4c:	03213023          	sd	s2,32(sp)
    80003a50:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003a54:	02000513          	li	a0,32
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	c50080e7          	jalr	-944(ra) # 800026a8 <_Znwm>
    80003a60:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	f1c080e7          	jalr	-228(ra) # 80002980 <_ZN6ThreadC1Ev>
    80003a6c:	00009797          	auipc	a5,0x9
    80003a70:	30478793          	addi	a5,a5,772 # 8000cd70 <_ZTV7WorkerA+0x10>
    80003a74:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003a78:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003a7c:	00007517          	auipc	a0,0x7
    80003a80:	acc50513          	addi	a0,a0,-1332 # 8000a548 <CONSOLE_STATUS+0x538>
    80003a84:	00002097          	auipc	ra,0x2
    80003a88:	a60080e7          	jalr	-1440(ra) # 800054e4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003a8c:	02000513          	li	a0,32
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	c18080e7          	jalr	-1000(ra) # 800026a8 <_Znwm>
    80003a98:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003a9c:	fffff097          	auipc	ra,0xfffff
    80003aa0:	ee4080e7          	jalr	-284(ra) # 80002980 <_ZN6ThreadC1Ev>
    80003aa4:	00009797          	auipc	a5,0x9
    80003aa8:	2f478793          	addi	a5,a5,756 # 8000cd98 <_ZTV7WorkerB+0x10>
    80003aac:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003ab0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003ab4:	00007517          	auipc	a0,0x7
    80003ab8:	aac50513          	addi	a0,a0,-1364 # 8000a560 <CONSOLE_STATUS+0x550>
    80003abc:	00002097          	auipc	ra,0x2
    80003ac0:	a28080e7          	jalr	-1496(ra) # 800054e4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003ac4:	02000513          	li	a0,32
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	be0080e7          	jalr	-1056(ra) # 800026a8 <_Znwm>
    80003ad0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	eac080e7          	jalr	-340(ra) # 80002980 <_ZN6ThreadC1Ev>
    80003adc:	00009797          	auipc	a5,0x9
    80003ae0:	2e478793          	addi	a5,a5,740 # 8000cdc0 <_ZTV7WorkerC+0x10>
    80003ae4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003ae8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003aec:	00007517          	auipc	a0,0x7
    80003af0:	a8c50513          	addi	a0,a0,-1396 # 8000a578 <CONSOLE_STATUS+0x568>
    80003af4:	00002097          	auipc	ra,0x2
    80003af8:	9f0080e7          	jalr	-1552(ra) # 800054e4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003afc:	02000513          	li	a0,32
    80003b00:	fffff097          	auipc	ra,0xfffff
    80003b04:	ba8080e7          	jalr	-1112(ra) # 800026a8 <_Znwm>
    80003b08:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003b0c:	fffff097          	auipc	ra,0xfffff
    80003b10:	e74080e7          	jalr	-396(ra) # 80002980 <_ZN6ThreadC1Ev>
    80003b14:	00009797          	auipc	a5,0x9
    80003b18:	2d478793          	addi	a5,a5,724 # 8000cde8 <_ZTV7WorkerD+0x10>
    80003b1c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003b20:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003b24:	00007517          	auipc	a0,0x7
    80003b28:	a6c50513          	addi	a0,a0,-1428 # 8000a590 <CONSOLE_STATUS+0x580>
    80003b2c:	00002097          	auipc	ra,0x2
    80003b30:	9b8080e7          	jalr	-1608(ra) # 800054e4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003b34:	00000493          	li	s1,0
    80003b38:	00300793          	li	a5,3
    80003b3c:	0297c663          	blt	a5,s1,80003b68 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003b40:	00349793          	slli	a5,s1,0x3
    80003b44:	fe040713          	addi	a4,s0,-32
    80003b48:	00f707b3          	add	a5,a4,a5
    80003b4c:	fe07b503          	ld	a0,-32(a5)
    80003b50:	fffff097          	auipc	ra,0xfffff
    80003b54:	e60080e7          	jalr	-416(ra) # 800029b0 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003b58:	0014849b          	addiw	s1,s1,1
    80003b5c:	fddff06f          	j	80003b38 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	ea4080e7          	jalr	-348(ra) # 80002a04 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003b68:	00009797          	auipc	a5,0x9
    80003b6c:	4d87c783          	lbu	a5,1240(a5) # 8000d040 <_ZL9finishedA>
    80003b70:	fe0788e3          	beqz	a5,80003b60 <_Z20Threads_CPP_API_testv+0x124>
    80003b74:	00009797          	auipc	a5,0x9
    80003b78:	4cd7c783          	lbu	a5,1229(a5) # 8000d041 <_ZL9finishedB>
    80003b7c:	fe0782e3          	beqz	a5,80003b60 <_Z20Threads_CPP_API_testv+0x124>
    80003b80:	00009797          	auipc	a5,0x9
    80003b84:	4c27c783          	lbu	a5,1218(a5) # 8000d042 <_ZL9finishedC>
    80003b88:	fc078ce3          	beqz	a5,80003b60 <_Z20Threads_CPP_API_testv+0x124>
    80003b8c:	00009797          	auipc	a5,0x9
    80003b90:	4b77c783          	lbu	a5,1207(a5) # 8000d043 <_ZL9finishedD>
    80003b94:	fc0786e3          	beqz	a5,80003b60 <_Z20Threads_CPP_API_testv+0x124>
    80003b98:	fc040493          	addi	s1,s0,-64
    80003b9c:	0080006f          	j	80003ba4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003ba0:	00848493          	addi	s1,s1,8
    80003ba4:	fe040793          	addi	a5,s0,-32
    80003ba8:	08f48663          	beq	s1,a5,80003c34 <_Z20Threads_CPP_API_testv+0x1f8>
    80003bac:	0004b503          	ld	a0,0(s1)
    80003bb0:	fe0508e3          	beqz	a0,80003ba0 <_Z20Threads_CPP_API_testv+0x164>
    80003bb4:	00053783          	ld	a5,0(a0)
    80003bb8:	0087b783          	ld	a5,8(a5)
    80003bbc:	000780e7          	jalr	a5
    80003bc0:	fe1ff06f          	j	80003ba0 <_Z20Threads_CPP_API_testv+0x164>
    80003bc4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003bc8:	00048513          	mv	a0,s1
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	b2c080e7          	jalr	-1236(ra) # 800026f8 <_ZdlPv>
    80003bd4:	00090513          	mv	a0,s2
    80003bd8:	0000a097          	auipc	ra,0xa
    80003bdc:	570080e7          	jalr	1392(ra) # 8000e148 <_Unwind_Resume>
    80003be0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003be4:	00048513          	mv	a0,s1
    80003be8:	fffff097          	auipc	ra,0xfffff
    80003bec:	b10080e7          	jalr	-1264(ra) # 800026f8 <_ZdlPv>
    80003bf0:	00090513          	mv	a0,s2
    80003bf4:	0000a097          	auipc	ra,0xa
    80003bf8:	554080e7          	jalr	1364(ra) # 8000e148 <_Unwind_Resume>
    80003bfc:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003c00:	00048513          	mv	a0,s1
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	af4080e7          	jalr	-1292(ra) # 800026f8 <_ZdlPv>
    80003c0c:	00090513          	mv	a0,s2
    80003c10:	0000a097          	auipc	ra,0xa
    80003c14:	538080e7          	jalr	1336(ra) # 8000e148 <_Unwind_Resume>
    80003c18:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003c1c:	00048513          	mv	a0,s1
    80003c20:	fffff097          	auipc	ra,0xfffff
    80003c24:	ad8080e7          	jalr	-1320(ra) # 800026f8 <_ZdlPv>
    80003c28:	00090513          	mv	a0,s2
    80003c2c:	0000a097          	auipc	ra,0xa
    80003c30:	51c080e7          	jalr	1308(ra) # 8000e148 <_Unwind_Resume>
}
    80003c34:	03813083          	ld	ra,56(sp)
    80003c38:	03013403          	ld	s0,48(sp)
    80003c3c:	02813483          	ld	s1,40(sp)
    80003c40:	02013903          	ld	s2,32(sp)
    80003c44:	04010113          	addi	sp,sp,64
    80003c48:	00008067          	ret

0000000080003c4c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003c4c:	ff010113          	addi	sp,sp,-16
    80003c50:	00113423          	sd	ra,8(sp)
    80003c54:	00813023          	sd	s0,0(sp)
    80003c58:	01010413          	addi	s0,sp,16
    80003c5c:	00009797          	auipc	a5,0x9
    80003c60:	11478793          	addi	a5,a5,276 # 8000cd70 <_ZTV7WorkerA+0x10>
    80003c64:	00f53023          	sd	a5,0(a0)
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	bf4080e7          	jalr	-1036(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003c70:	00813083          	ld	ra,8(sp)
    80003c74:	00013403          	ld	s0,0(sp)
    80003c78:	01010113          	addi	sp,sp,16
    80003c7c:	00008067          	ret

0000000080003c80 <_ZN7WorkerAD0Ev>:
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	02010413          	addi	s0,sp,32
    80003c94:	00050493          	mv	s1,a0
    80003c98:	00009797          	auipc	a5,0x9
    80003c9c:	0d878793          	addi	a5,a5,216 # 8000cd70 <_ZTV7WorkerA+0x10>
    80003ca0:	00f53023          	sd	a5,0(a0)
    80003ca4:	fffff097          	auipc	ra,0xfffff
    80003ca8:	bb8080e7          	jalr	-1096(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003cac:	00048513          	mv	a0,s1
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	a48080e7          	jalr	-1464(ra) # 800026f8 <_ZdlPv>
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	02010113          	addi	sp,sp,32
    80003cc8:	00008067          	ret

0000000080003ccc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003ccc:	ff010113          	addi	sp,sp,-16
    80003cd0:	00113423          	sd	ra,8(sp)
    80003cd4:	00813023          	sd	s0,0(sp)
    80003cd8:	01010413          	addi	s0,sp,16
    80003cdc:	00009797          	auipc	a5,0x9
    80003ce0:	0bc78793          	addi	a5,a5,188 # 8000cd98 <_ZTV7WorkerB+0x10>
    80003ce4:	00f53023          	sd	a5,0(a0)
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	b74080e7          	jalr	-1164(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003cf0:	00813083          	ld	ra,8(sp)
    80003cf4:	00013403          	ld	s0,0(sp)
    80003cf8:	01010113          	addi	sp,sp,16
    80003cfc:	00008067          	ret

0000000080003d00 <_ZN7WorkerBD0Ev>:
    80003d00:	fe010113          	addi	sp,sp,-32
    80003d04:	00113c23          	sd	ra,24(sp)
    80003d08:	00813823          	sd	s0,16(sp)
    80003d0c:	00913423          	sd	s1,8(sp)
    80003d10:	02010413          	addi	s0,sp,32
    80003d14:	00050493          	mv	s1,a0
    80003d18:	00009797          	auipc	a5,0x9
    80003d1c:	08078793          	addi	a5,a5,128 # 8000cd98 <_ZTV7WorkerB+0x10>
    80003d20:	00f53023          	sd	a5,0(a0)
    80003d24:	fffff097          	auipc	ra,0xfffff
    80003d28:	b38080e7          	jalr	-1224(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003d2c:	00048513          	mv	a0,s1
    80003d30:	fffff097          	auipc	ra,0xfffff
    80003d34:	9c8080e7          	jalr	-1592(ra) # 800026f8 <_ZdlPv>
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret

0000000080003d4c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003d4c:	ff010113          	addi	sp,sp,-16
    80003d50:	00113423          	sd	ra,8(sp)
    80003d54:	00813023          	sd	s0,0(sp)
    80003d58:	01010413          	addi	s0,sp,16
    80003d5c:	00009797          	auipc	a5,0x9
    80003d60:	06478793          	addi	a5,a5,100 # 8000cdc0 <_ZTV7WorkerC+0x10>
    80003d64:	00f53023          	sd	a5,0(a0)
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	af4080e7          	jalr	-1292(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003d70:	00813083          	ld	ra,8(sp)
    80003d74:	00013403          	ld	s0,0(sp)
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00008067          	ret

0000000080003d80 <_ZN7WorkerCD0Ev>:
    80003d80:	fe010113          	addi	sp,sp,-32
    80003d84:	00113c23          	sd	ra,24(sp)
    80003d88:	00813823          	sd	s0,16(sp)
    80003d8c:	00913423          	sd	s1,8(sp)
    80003d90:	02010413          	addi	s0,sp,32
    80003d94:	00050493          	mv	s1,a0
    80003d98:	00009797          	auipc	a5,0x9
    80003d9c:	02878793          	addi	a5,a5,40 # 8000cdc0 <_ZTV7WorkerC+0x10>
    80003da0:	00f53023          	sd	a5,0(a0)
    80003da4:	fffff097          	auipc	ra,0xfffff
    80003da8:	ab8080e7          	jalr	-1352(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003dac:	00048513          	mv	a0,s1
    80003db0:	fffff097          	auipc	ra,0xfffff
    80003db4:	948080e7          	jalr	-1720(ra) # 800026f8 <_ZdlPv>
    80003db8:	01813083          	ld	ra,24(sp)
    80003dbc:	01013403          	ld	s0,16(sp)
    80003dc0:	00813483          	ld	s1,8(sp)
    80003dc4:	02010113          	addi	sp,sp,32
    80003dc8:	00008067          	ret

0000000080003dcc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003dcc:	ff010113          	addi	sp,sp,-16
    80003dd0:	00113423          	sd	ra,8(sp)
    80003dd4:	00813023          	sd	s0,0(sp)
    80003dd8:	01010413          	addi	s0,sp,16
    80003ddc:	00009797          	auipc	a5,0x9
    80003de0:	00c78793          	addi	a5,a5,12 # 8000cde8 <_ZTV7WorkerD+0x10>
    80003de4:	00f53023          	sd	a5,0(a0)
    80003de8:	fffff097          	auipc	ra,0xfffff
    80003dec:	a74080e7          	jalr	-1420(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003df0:	00813083          	ld	ra,8(sp)
    80003df4:	00013403          	ld	s0,0(sp)
    80003df8:	01010113          	addi	sp,sp,16
    80003dfc:	00008067          	ret

0000000080003e00 <_ZN7WorkerDD0Ev>:
    80003e00:	fe010113          	addi	sp,sp,-32
    80003e04:	00113c23          	sd	ra,24(sp)
    80003e08:	00813823          	sd	s0,16(sp)
    80003e0c:	00913423          	sd	s1,8(sp)
    80003e10:	02010413          	addi	s0,sp,32
    80003e14:	00050493          	mv	s1,a0
    80003e18:	00009797          	auipc	a5,0x9
    80003e1c:	fd078793          	addi	a5,a5,-48 # 8000cde8 <_ZTV7WorkerD+0x10>
    80003e20:	00f53023          	sd	a5,0(a0)
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	a38080e7          	jalr	-1480(ra) # 8000285c <_ZN6ThreadD1Ev>
    80003e2c:	00048513          	mv	a0,s1
    80003e30:	fffff097          	auipc	ra,0xfffff
    80003e34:	8c8080e7          	jalr	-1848(ra) # 800026f8 <_ZdlPv>
    80003e38:	01813083          	ld	ra,24(sp)
    80003e3c:	01013403          	ld	s0,16(sp)
    80003e40:	00813483          	ld	s1,8(sp)
    80003e44:	02010113          	addi	sp,sp,32
    80003e48:	00008067          	ret

0000000080003e4c <_ZN7WorkerA3runEv>:
    void run() override {
    80003e4c:	ff010113          	addi	sp,sp,-16
    80003e50:	00113423          	sd	ra,8(sp)
    80003e54:	00813023          	sd	s0,0(sp)
    80003e58:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003e5c:	00000593          	li	a1,0
    80003e60:	fffff097          	auipc	ra,0xfffff
    80003e64:	774080e7          	jalr	1908(ra) # 800035d4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003e68:	00813083          	ld	ra,8(sp)
    80003e6c:	00013403          	ld	s0,0(sp)
    80003e70:	01010113          	addi	sp,sp,16
    80003e74:	00008067          	ret

0000000080003e78 <_ZN7WorkerB3runEv>:
    void run() override {
    80003e78:	ff010113          	addi	sp,sp,-16
    80003e7c:	00113423          	sd	ra,8(sp)
    80003e80:	00813023          	sd	s0,0(sp)
    80003e84:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003e88:	00000593          	li	a1,0
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	814080e7          	jalr	-2028(ra) # 800036a0 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003e94:	00813083          	ld	ra,8(sp)
    80003e98:	00013403          	ld	s0,0(sp)
    80003e9c:	01010113          	addi	sp,sp,16
    80003ea0:	00008067          	ret

0000000080003ea4 <_ZN7WorkerC3runEv>:
    void run() override {
    80003ea4:	ff010113          	addi	sp,sp,-16
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	00813023          	sd	s0,0(sp)
    80003eb0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003eb4:	00000593          	li	a1,0
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	8bc080e7          	jalr	-1860(ra) # 80003774 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003ec0:	00813083          	ld	ra,8(sp)
    80003ec4:	00013403          	ld	s0,0(sp)
    80003ec8:	01010113          	addi	sp,sp,16
    80003ecc:	00008067          	ret

0000000080003ed0 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ed0:	ff010113          	addi	sp,sp,-16
    80003ed4:	00113423          	sd	ra,8(sp)
    80003ed8:	00813023          	sd	s0,0(sp)
    80003edc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003ee0:	00000593          	li	a1,0
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	a10080e7          	jalr	-1520(ra) # 800038f4 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003eec:	00813083          	ld	ra,8(sp)
    80003ef0:	00013403          	ld	s0,0(sp)
    80003ef4:	01010113          	addi	sp,sp,16
    80003ef8:	00008067          	ret

0000000080003efc <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003efc:	f8010113          	addi	sp,sp,-128
    80003f00:	06113c23          	sd	ra,120(sp)
    80003f04:	06813823          	sd	s0,112(sp)
    80003f08:	06913423          	sd	s1,104(sp)
    80003f0c:	07213023          	sd	s2,96(sp)
    80003f10:	05313c23          	sd	s3,88(sp)
    80003f14:	05413823          	sd	s4,80(sp)
    80003f18:	05513423          	sd	s5,72(sp)
    80003f1c:	05613023          	sd	s6,64(sp)
    80003f20:	03713c23          	sd	s7,56(sp)
    80003f24:	03813823          	sd	s8,48(sp)
    80003f28:	03913423          	sd	s9,40(sp)
    80003f2c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f30:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f34:	00006517          	auipc	a0,0x6
    80003f38:	49450513          	addi	a0,a0,1172 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    80003f3c:	00001097          	auipc	ra,0x1
    80003f40:	5a8080e7          	jalr	1448(ra) # 800054e4 <_Z11printStringPKc>
    getString(input, 30);
    80003f44:	01e00593          	li	a1,30
    80003f48:	f8040493          	addi	s1,s0,-128
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00001097          	auipc	ra,0x1
    80003f54:	61c080e7          	jalr	1564(ra) # 8000556c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f58:	00048513          	mv	a0,s1
    80003f5c:	00001097          	auipc	ra,0x1
    80003f60:	6e8080e7          	jalr	1768(ra) # 80005644 <_Z11stringToIntPKc>
    80003f64:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003f68:	00006517          	auipc	a0,0x6
    80003f6c:	48050513          	addi	a0,a0,1152 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80003f70:	00001097          	auipc	ra,0x1
    80003f74:	574080e7          	jalr	1396(ra) # 800054e4 <_Z11printStringPKc>
    getString(input, 30);
    80003f78:	01e00593          	li	a1,30
    80003f7c:	00048513          	mv	a0,s1
    80003f80:	00001097          	auipc	ra,0x1
    80003f84:	5ec080e7          	jalr	1516(ra) # 8000556c <_Z9getStringPci>
    n = stringToInt(input);
    80003f88:	00048513          	mv	a0,s1
    80003f8c:	00001097          	auipc	ra,0x1
    80003f90:	6b8080e7          	jalr	1720(ra) # 80005644 <_Z11stringToIntPKc>
    80003f94:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003f98:	00006517          	auipc	a0,0x6
    80003f9c:	47050513          	addi	a0,a0,1136 # 8000a408 <CONSOLE_STATUS+0x3f8>
    80003fa0:	00001097          	auipc	ra,0x1
    80003fa4:	544080e7          	jalr	1348(ra) # 800054e4 <_Z11printStringPKc>
    printInt(threadNum);
    80003fa8:	00000613          	li	a2,0
    80003fac:	00a00593          	li	a1,10
    80003fb0:	00098513          	mv	a0,s3
    80003fb4:	00001097          	auipc	ra,0x1
    80003fb8:	6e0080e7          	jalr	1760(ra) # 80005694 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003fbc:	00006517          	auipc	a0,0x6
    80003fc0:	46450513          	addi	a0,a0,1124 # 8000a420 <CONSOLE_STATUS+0x410>
    80003fc4:	00001097          	auipc	ra,0x1
    80003fc8:	520080e7          	jalr	1312(ra) # 800054e4 <_Z11printStringPKc>
    printInt(n);
    80003fcc:	00000613          	li	a2,0
    80003fd0:	00a00593          	li	a1,10
    80003fd4:	00048513          	mv	a0,s1
    80003fd8:	00001097          	auipc	ra,0x1
    80003fdc:	6bc080e7          	jalr	1724(ra) # 80005694 <_Z8printIntiii>
    printString(".\n");
    80003fe0:	00006517          	auipc	a0,0x6
    80003fe4:	45850513          	addi	a0,a0,1112 # 8000a438 <CONSOLE_STATUS+0x428>
    80003fe8:	00001097          	auipc	ra,0x1
    80003fec:	4fc080e7          	jalr	1276(ra) # 800054e4 <_Z11printStringPKc>
    if (threadNum > n) {
    80003ff0:	0334c463          	blt	s1,s3,80004018 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003ff4:	03305c63          	blez	s3,8000402c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003ff8:	03800513          	li	a0,56
    80003ffc:	ffffe097          	auipc	ra,0xffffe
    80004000:	6ac080e7          	jalr	1708(ra) # 800026a8 <_Znwm>
    80004004:	00050a93          	mv	s5,a0
    80004008:	00048593          	mv	a1,s1
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	7a8080e7          	jalr	1960(ra) # 800057b4 <_ZN9BufferCPPC1Ei>
    80004014:	0300006f          	j	80004044 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004018:	00006517          	auipc	a0,0x6
    8000401c:	42850513          	addi	a0,a0,1064 # 8000a440 <CONSOLE_STATUS+0x430>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	4c4080e7          	jalr	1220(ra) # 800054e4 <_Z11printStringPKc>
        return;
    80004028:	0140006f          	j	8000403c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000402c:	00006517          	auipc	a0,0x6
    80004030:	45450513          	addi	a0,a0,1108 # 8000a480 <CONSOLE_STATUS+0x470>
    80004034:	00001097          	auipc	ra,0x1
    80004038:	4b0080e7          	jalr	1200(ra) # 800054e4 <_Z11printStringPKc>
        return;
    8000403c:	000c0113          	mv	sp,s8
    80004040:	2140006f          	j	80004254 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004044:	01000513          	li	a0,16
    80004048:	ffffe097          	auipc	ra,0xffffe
    8000404c:	660080e7          	jalr	1632(ra) # 800026a8 <_Znwm>
    80004050:	00050913          	mv	s2,a0
    80004054:	00000593          	li	a1,0
    80004058:	fffff097          	auipc	ra,0xfffff
    8000405c:	a5c080e7          	jalr	-1444(ra) # 80002ab4 <_ZN9SemaphoreC1Ej>
    80004060:	00009797          	auipc	a5,0x9
    80004064:	ff27b823          	sd	s2,-16(a5) # 8000d050 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004068:	00399793          	slli	a5,s3,0x3
    8000406c:	00f78793          	addi	a5,a5,15
    80004070:	ff07f793          	andi	a5,a5,-16
    80004074:	40f10133          	sub	sp,sp,a5
    80004078:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000407c:	0019871b          	addiw	a4,s3,1
    80004080:	00171793          	slli	a5,a4,0x1
    80004084:	00e787b3          	add	a5,a5,a4
    80004088:	00379793          	slli	a5,a5,0x3
    8000408c:	00f78793          	addi	a5,a5,15
    80004090:	ff07f793          	andi	a5,a5,-16
    80004094:	40f10133          	sub	sp,sp,a5
    80004098:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000409c:	00199493          	slli	s1,s3,0x1
    800040a0:	013484b3          	add	s1,s1,s3
    800040a4:	00349493          	slli	s1,s1,0x3
    800040a8:	009b04b3          	add	s1,s6,s1
    800040ac:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800040b0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800040b4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040b8:	02800513          	li	a0,40
    800040bc:	ffffe097          	auipc	ra,0xffffe
    800040c0:	5ec080e7          	jalr	1516(ra) # 800026a8 <_Znwm>
    800040c4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800040c8:	fffff097          	auipc	ra,0xfffff
    800040cc:	8b8080e7          	jalr	-1864(ra) # 80002980 <_ZN6ThreadC1Ev>
    800040d0:	00009797          	auipc	a5,0x9
    800040d4:	d9078793          	addi	a5,a5,-624 # 8000ce60 <_ZTV8Consumer+0x10>
    800040d8:	00fbb023          	sd	a5,0(s7)
    800040dc:	029bb023          	sd	s1,32(s7)
    consumer->start();
    800040e0:	000b8513          	mv	a0,s7
    800040e4:	fffff097          	auipc	ra,0xfffff
    800040e8:	8cc080e7          	jalr	-1844(ra) # 800029b0 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800040ec:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800040f0:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800040f4:	00009797          	auipc	a5,0x9
    800040f8:	f5c7b783          	ld	a5,-164(a5) # 8000d050 <_ZL10waitForAll>
    800040fc:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004100:	02800513          	li	a0,40
    80004104:	ffffe097          	auipc	ra,0xffffe
    80004108:	5a4080e7          	jalr	1444(ra) # 800026a8 <_Znwm>
    8000410c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004110:	fffff097          	auipc	ra,0xfffff
    80004114:	870080e7          	jalr	-1936(ra) # 80002980 <_ZN6ThreadC1Ev>
    80004118:	00009797          	auipc	a5,0x9
    8000411c:	cf878793          	addi	a5,a5,-776 # 8000ce10 <_ZTV16ProducerKeyborad+0x10>
    80004120:	00f4b023          	sd	a5,0(s1)
    80004124:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004128:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000412c:	00048513          	mv	a0,s1
    80004130:	fffff097          	auipc	ra,0xfffff
    80004134:	880080e7          	jalr	-1920(ra) # 800029b0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004138:	00100913          	li	s2,1
    8000413c:	0300006f          	j	8000416c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004140:	00009797          	auipc	a5,0x9
    80004144:	cf878793          	addi	a5,a5,-776 # 8000ce38 <_ZTV8Producer+0x10>
    80004148:	00fcb023          	sd	a5,0(s9)
    8000414c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004150:	00391793          	slli	a5,s2,0x3
    80004154:	00fa07b3          	add	a5,s4,a5
    80004158:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000415c:	000c8513          	mv	a0,s9
    80004160:	fffff097          	auipc	ra,0xfffff
    80004164:	850080e7          	jalr	-1968(ra) # 800029b0 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004168:	0019091b          	addiw	s2,s2,1
    8000416c:	05395263          	bge	s2,s3,800041b0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004170:	00191493          	slli	s1,s2,0x1
    80004174:	012484b3          	add	s1,s1,s2
    80004178:	00349493          	slli	s1,s1,0x3
    8000417c:	009b04b3          	add	s1,s6,s1
    80004180:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004184:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004188:	00009797          	auipc	a5,0x9
    8000418c:	ec87b783          	ld	a5,-312(a5) # 8000d050 <_ZL10waitForAll>
    80004190:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004194:	02800513          	li	a0,40
    80004198:	ffffe097          	auipc	ra,0xffffe
    8000419c:	510080e7          	jalr	1296(ra) # 800026a8 <_Znwm>
    800041a0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800041a4:	ffffe097          	auipc	ra,0xffffe
    800041a8:	7dc080e7          	jalr	2012(ra) # 80002980 <_ZN6ThreadC1Ev>
    800041ac:	f95ff06f          	j	80004140 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800041b0:	fffff097          	auipc	ra,0xfffff
    800041b4:	854080e7          	jalr	-1964(ra) # 80002a04 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800041b8:	00000493          	li	s1,0
    800041bc:	0099ce63          	blt	s3,s1,800041d8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800041c0:	00009517          	auipc	a0,0x9
    800041c4:	e9053503          	ld	a0,-368(a0) # 8000d050 <_ZL10waitForAll>
    800041c8:	fffff097          	auipc	ra,0xfffff
    800041cc:	928080e7          	jalr	-1752(ra) # 80002af0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041d0:	0014849b          	addiw	s1,s1,1
    800041d4:	fe9ff06f          	j	800041bc <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800041d8:	00009517          	auipc	a0,0x9
    800041dc:	e7853503          	ld	a0,-392(a0) # 8000d050 <_ZL10waitForAll>
    800041e0:	00050863          	beqz	a0,800041f0 <_Z20testConsumerProducerv+0x2f4>
    800041e4:	00053783          	ld	a5,0(a0)
    800041e8:	0087b783          	ld	a5,8(a5)
    800041ec:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800041f0:	00000493          	li	s1,0
    800041f4:	0080006f          	j	800041fc <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800041f8:	0014849b          	addiw	s1,s1,1
    800041fc:	0334d263          	bge	s1,s3,80004220 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004200:	00349793          	slli	a5,s1,0x3
    80004204:	00fa07b3          	add	a5,s4,a5
    80004208:	0007b503          	ld	a0,0(a5)
    8000420c:	fe0506e3          	beqz	a0,800041f8 <_Z20testConsumerProducerv+0x2fc>
    80004210:	00053783          	ld	a5,0(a0)
    80004214:	0087b783          	ld	a5,8(a5)
    80004218:	000780e7          	jalr	a5
    8000421c:	fddff06f          	j	800041f8 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004220:	000b8a63          	beqz	s7,80004234 <_Z20testConsumerProducerv+0x338>
    80004224:	000bb783          	ld	a5,0(s7)
    80004228:	0087b783          	ld	a5,8(a5)
    8000422c:	000b8513          	mv	a0,s7
    80004230:	000780e7          	jalr	a5
    delete buffer;
    80004234:	000a8e63          	beqz	s5,80004250 <_Z20testConsumerProducerv+0x354>
    80004238:	000a8513          	mv	a0,s5
    8000423c:	00002097          	auipc	ra,0x2
    80004240:	870080e7          	jalr	-1936(ra) # 80005aac <_ZN9BufferCPPD1Ev>
    80004244:	000a8513          	mv	a0,s5
    80004248:	ffffe097          	auipc	ra,0xffffe
    8000424c:	4b0080e7          	jalr	1200(ra) # 800026f8 <_ZdlPv>
    80004250:	000c0113          	mv	sp,s8
}
    80004254:	f8040113          	addi	sp,s0,-128
    80004258:	07813083          	ld	ra,120(sp)
    8000425c:	07013403          	ld	s0,112(sp)
    80004260:	06813483          	ld	s1,104(sp)
    80004264:	06013903          	ld	s2,96(sp)
    80004268:	05813983          	ld	s3,88(sp)
    8000426c:	05013a03          	ld	s4,80(sp)
    80004270:	04813a83          	ld	s5,72(sp)
    80004274:	04013b03          	ld	s6,64(sp)
    80004278:	03813b83          	ld	s7,56(sp)
    8000427c:	03013c03          	ld	s8,48(sp)
    80004280:	02813c83          	ld	s9,40(sp)
    80004284:	08010113          	addi	sp,sp,128
    80004288:	00008067          	ret
    8000428c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004290:	000a8513          	mv	a0,s5
    80004294:	ffffe097          	auipc	ra,0xffffe
    80004298:	464080e7          	jalr	1124(ra) # 800026f8 <_ZdlPv>
    8000429c:	00048513          	mv	a0,s1
    800042a0:	0000a097          	auipc	ra,0xa
    800042a4:	ea8080e7          	jalr	-344(ra) # 8000e148 <_Unwind_Resume>
    800042a8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800042ac:	00090513          	mv	a0,s2
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	448080e7          	jalr	1096(ra) # 800026f8 <_ZdlPv>
    800042b8:	00048513          	mv	a0,s1
    800042bc:	0000a097          	auipc	ra,0xa
    800042c0:	e8c080e7          	jalr	-372(ra) # 8000e148 <_Unwind_Resume>
    800042c4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042c8:	000b8513          	mv	a0,s7
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	42c080e7          	jalr	1068(ra) # 800026f8 <_ZdlPv>
    800042d4:	00048513          	mv	a0,s1
    800042d8:	0000a097          	auipc	ra,0xa
    800042dc:	e70080e7          	jalr	-400(ra) # 8000e148 <_Unwind_Resume>
    800042e0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800042e4:	00048513          	mv	a0,s1
    800042e8:	ffffe097          	auipc	ra,0xffffe
    800042ec:	410080e7          	jalr	1040(ra) # 800026f8 <_ZdlPv>
    800042f0:	00090513          	mv	a0,s2
    800042f4:	0000a097          	auipc	ra,0xa
    800042f8:	e54080e7          	jalr	-428(ra) # 8000e148 <_Unwind_Resume>
    800042fc:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004300:	000c8513          	mv	a0,s9
    80004304:	ffffe097          	auipc	ra,0xffffe
    80004308:	3f4080e7          	jalr	1012(ra) # 800026f8 <_ZdlPv>
    8000430c:	00048513          	mv	a0,s1
    80004310:	0000a097          	auipc	ra,0xa
    80004314:	e38080e7          	jalr	-456(ra) # 8000e148 <_Unwind_Resume>

0000000080004318 <_ZN8Consumer3runEv>:
    void run() override {
    80004318:	fd010113          	addi	sp,sp,-48
    8000431c:	02113423          	sd	ra,40(sp)
    80004320:	02813023          	sd	s0,32(sp)
    80004324:	00913c23          	sd	s1,24(sp)
    80004328:	01213823          	sd	s2,16(sp)
    8000432c:	01313423          	sd	s3,8(sp)
    80004330:	03010413          	addi	s0,sp,48
    80004334:	00050913          	mv	s2,a0
        int i = 0;
    80004338:	00000993          	li	s3,0
    8000433c:	0100006f          	j	8000434c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004340:	00a00513          	li	a0,10
    80004344:	fffff097          	auipc	ra,0xfffff
    80004348:	894080e7          	jalr	-1900(ra) # 80002bd8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000434c:	00009797          	auipc	a5,0x9
    80004350:	cfc7a783          	lw	a5,-772(a5) # 8000d048 <_ZL9threadEnd>
    80004354:	04079a63          	bnez	a5,800043a8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004358:	02093783          	ld	a5,32(s2)
    8000435c:	0087b503          	ld	a0,8(a5)
    80004360:	00001097          	auipc	ra,0x1
    80004364:	638080e7          	jalr	1592(ra) # 80005998 <_ZN9BufferCPP3getEv>
            i++;
    80004368:	0019849b          	addiw	s1,s3,1
    8000436c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004370:	0ff57513          	andi	a0,a0,255
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	864080e7          	jalr	-1948(ra) # 80002bd8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000437c:	05000793          	li	a5,80
    80004380:	02f4e4bb          	remw	s1,s1,a5
    80004384:	fc0494e3          	bnez	s1,8000434c <_ZN8Consumer3runEv+0x34>
    80004388:	fb9ff06f          	j	80004340 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000438c:	02093783          	ld	a5,32(s2)
    80004390:	0087b503          	ld	a0,8(a5)
    80004394:	00001097          	auipc	ra,0x1
    80004398:	604080e7          	jalr	1540(ra) # 80005998 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000439c:	0ff57513          	andi	a0,a0,255
    800043a0:	fffff097          	auipc	ra,0xfffff
    800043a4:	838080e7          	jalr	-1992(ra) # 80002bd8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800043a8:	02093783          	ld	a5,32(s2)
    800043ac:	0087b503          	ld	a0,8(a5)
    800043b0:	00001097          	auipc	ra,0x1
    800043b4:	674080e7          	jalr	1652(ra) # 80005a24 <_ZN9BufferCPP6getCntEv>
    800043b8:	fca04ae3          	bgtz	a0,8000438c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800043bc:	02093783          	ld	a5,32(s2)
    800043c0:	0107b503          	ld	a0,16(a5)
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	758080e7          	jalr	1880(ra) # 80002b1c <_ZN9Semaphore6signalEv>
    }
    800043cc:	02813083          	ld	ra,40(sp)
    800043d0:	02013403          	ld	s0,32(sp)
    800043d4:	01813483          	ld	s1,24(sp)
    800043d8:	01013903          	ld	s2,16(sp)
    800043dc:	00813983          	ld	s3,8(sp)
    800043e0:	03010113          	addi	sp,sp,48
    800043e4:	00008067          	ret

00000000800043e8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800043e8:	ff010113          	addi	sp,sp,-16
    800043ec:	00113423          	sd	ra,8(sp)
    800043f0:	00813023          	sd	s0,0(sp)
    800043f4:	01010413          	addi	s0,sp,16
    800043f8:	00009797          	auipc	a5,0x9
    800043fc:	a6878793          	addi	a5,a5,-1432 # 8000ce60 <_ZTV8Consumer+0x10>
    80004400:	00f53023          	sd	a5,0(a0)
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	458080e7          	jalr	1112(ra) # 8000285c <_ZN6ThreadD1Ev>
    8000440c:	00813083          	ld	ra,8(sp)
    80004410:	00013403          	ld	s0,0(sp)
    80004414:	01010113          	addi	sp,sp,16
    80004418:	00008067          	ret

000000008000441c <_ZN8ConsumerD0Ev>:
    8000441c:	fe010113          	addi	sp,sp,-32
    80004420:	00113c23          	sd	ra,24(sp)
    80004424:	00813823          	sd	s0,16(sp)
    80004428:	00913423          	sd	s1,8(sp)
    8000442c:	02010413          	addi	s0,sp,32
    80004430:	00050493          	mv	s1,a0
    80004434:	00009797          	auipc	a5,0x9
    80004438:	a2c78793          	addi	a5,a5,-1492 # 8000ce60 <_ZTV8Consumer+0x10>
    8000443c:	00f53023          	sd	a5,0(a0)
    80004440:	ffffe097          	auipc	ra,0xffffe
    80004444:	41c080e7          	jalr	1052(ra) # 8000285c <_ZN6ThreadD1Ev>
    80004448:	00048513          	mv	a0,s1
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	2ac080e7          	jalr	684(ra) # 800026f8 <_ZdlPv>
    80004454:	01813083          	ld	ra,24(sp)
    80004458:	01013403          	ld	s0,16(sp)
    8000445c:	00813483          	ld	s1,8(sp)
    80004460:	02010113          	addi	sp,sp,32
    80004464:	00008067          	ret

0000000080004468 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004468:	ff010113          	addi	sp,sp,-16
    8000446c:	00113423          	sd	ra,8(sp)
    80004470:	00813023          	sd	s0,0(sp)
    80004474:	01010413          	addi	s0,sp,16
    80004478:	00009797          	auipc	a5,0x9
    8000447c:	99878793          	addi	a5,a5,-1640 # 8000ce10 <_ZTV16ProducerKeyborad+0x10>
    80004480:	00f53023          	sd	a5,0(a0)
    80004484:	ffffe097          	auipc	ra,0xffffe
    80004488:	3d8080e7          	jalr	984(ra) # 8000285c <_ZN6ThreadD1Ev>
    8000448c:	00813083          	ld	ra,8(sp)
    80004490:	00013403          	ld	s0,0(sp)
    80004494:	01010113          	addi	sp,sp,16
    80004498:	00008067          	ret

000000008000449c <_ZN16ProducerKeyboradD0Ev>:
    8000449c:	fe010113          	addi	sp,sp,-32
    800044a0:	00113c23          	sd	ra,24(sp)
    800044a4:	00813823          	sd	s0,16(sp)
    800044a8:	00913423          	sd	s1,8(sp)
    800044ac:	02010413          	addi	s0,sp,32
    800044b0:	00050493          	mv	s1,a0
    800044b4:	00009797          	auipc	a5,0x9
    800044b8:	95c78793          	addi	a5,a5,-1700 # 8000ce10 <_ZTV16ProducerKeyborad+0x10>
    800044bc:	00f53023          	sd	a5,0(a0)
    800044c0:	ffffe097          	auipc	ra,0xffffe
    800044c4:	39c080e7          	jalr	924(ra) # 8000285c <_ZN6ThreadD1Ev>
    800044c8:	00048513          	mv	a0,s1
    800044cc:	ffffe097          	auipc	ra,0xffffe
    800044d0:	22c080e7          	jalr	556(ra) # 800026f8 <_ZdlPv>
    800044d4:	01813083          	ld	ra,24(sp)
    800044d8:	01013403          	ld	s0,16(sp)
    800044dc:	00813483          	ld	s1,8(sp)
    800044e0:	02010113          	addi	sp,sp,32
    800044e4:	00008067          	ret

00000000800044e8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800044e8:	ff010113          	addi	sp,sp,-16
    800044ec:	00113423          	sd	ra,8(sp)
    800044f0:	00813023          	sd	s0,0(sp)
    800044f4:	01010413          	addi	s0,sp,16
    800044f8:	00009797          	auipc	a5,0x9
    800044fc:	94078793          	addi	a5,a5,-1728 # 8000ce38 <_ZTV8Producer+0x10>
    80004500:	00f53023          	sd	a5,0(a0)
    80004504:	ffffe097          	auipc	ra,0xffffe
    80004508:	358080e7          	jalr	856(ra) # 8000285c <_ZN6ThreadD1Ev>
    8000450c:	00813083          	ld	ra,8(sp)
    80004510:	00013403          	ld	s0,0(sp)
    80004514:	01010113          	addi	sp,sp,16
    80004518:	00008067          	ret

000000008000451c <_ZN8ProducerD0Ev>:
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00113c23          	sd	ra,24(sp)
    80004524:	00813823          	sd	s0,16(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	02010413          	addi	s0,sp,32
    80004530:	00050493          	mv	s1,a0
    80004534:	00009797          	auipc	a5,0x9
    80004538:	90478793          	addi	a5,a5,-1788 # 8000ce38 <_ZTV8Producer+0x10>
    8000453c:	00f53023          	sd	a5,0(a0)
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	31c080e7          	jalr	796(ra) # 8000285c <_ZN6ThreadD1Ev>
    80004548:	00048513          	mv	a0,s1
    8000454c:	ffffe097          	auipc	ra,0xffffe
    80004550:	1ac080e7          	jalr	428(ra) # 800026f8 <_ZdlPv>
    80004554:	01813083          	ld	ra,24(sp)
    80004558:	01013403          	ld	s0,16(sp)
    8000455c:	00813483          	ld	s1,8(sp)
    80004560:	02010113          	addi	sp,sp,32
    80004564:	00008067          	ret

0000000080004568 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004568:	fe010113          	addi	sp,sp,-32
    8000456c:	00113c23          	sd	ra,24(sp)
    80004570:	00813823          	sd	s0,16(sp)
    80004574:	00913423          	sd	s1,8(sp)
    80004578:	02010413          	addi	s0,sp,32
    8000457c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	090080e7          	jalr	144(ra) # 80001610 <_Z4getcv>
    80004588:	0005059b          	sext.w	a1,a0
    8000458c:	01b00793          	li	a5,27
    80004590:	00f58c63          	beq	a1,a5,800045a8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004594:	0204b783          	ld	a5,32(s1)
    80004598:	0087b503          	ld	a0,8(a5)
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	36c080e7          	jalr	876(ra) # 80005908 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800045a4:	fddff06f          	j	80004580 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800045a8:	00100793          	li	a5,1
    800045ac:	00009717          	auipc	a4,0x9
    800045b0:	a8f72e23          	sw	a5,-1380(a4) # 8000d048 <_ZL9threadEnd>
        td->buffer->put('!');
    800045b4:	0204b783          	ld	a5,32(s1)
    800045b8:	02100593          	li	a1,33
    800045bc:	0087b503          	ld	a0,8(a5)
    800045c0:	00001097          	auipc	ra,0x1
    800045c4:	348080e7          	jalr	840(ra) # 80005908 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800045c8:	0204b783          	ld	a5,32(s1)
    800045cc:	0107b503          	ld	a0,16(a5)
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	54c080e7          	jalr	1356(ra) # 80002b1c <_ZN9Semaphore6signalEv>
    }
    800045d8:	01813083          	ld	ra,24(sp)
    800045dc:	01013403          	ld	s0,16(sp)
    800045e0:	00813483          	ld	s1,8(sp)
    800045e4:	02010113          	addi	sp,sp,32
    800045e8:	00008067          	ret

00000000800045ec <_ZN8Producer3runEv>:
    void run() override {
    800045ec:	fe010113          	addi	sp,sp,-32
    800045f0:	00113c23          	sd	ra,24(sp)
    800045f4:	00813823          	sd	s0,16(sp)
    800045f8:	00913423          	sd	s1,8(sp)
    800045fc:	01213023          	sd	s2,0(sp)
    80004600:	02010413          	addi	s0,sp,32
    80004604:	00050493          	mv	s1,a0
        int i = 0;
    80004608:	00000913          	li	s2,0
        while (!threadEnd) {
    8000460c:	00009797          	auipc	a5,0x9
    80004610:	a3c7a783          	lw	a5,-1476(a5) # 8000d048 <_ZL9threadEnd>
    80004614:	04079263          	bnez	a5,80004658 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004618:	0204b783          	ld	a5,32(s1)
    8000461c:	0007a583          	lw	a1,0(a5)
    80004620:	0305859b          	addiw	a1,a1,48
    80004624:	0087b503          	ld	a0,8(a5)
    80004628:	00001097          	auipc	ra,0x1
    8000462c:	2e0080e7          	jalr	736(ra) # 80005908 <_ZN9BufferCPP3putEi>
            i++;
    80004630:	0019071b          	addiw	a4,s2,1
    80004634:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004638:	0204b783          	ld	a5,32(s1)
    8000463c:	0007a783          	lw	a5,0(a5)
    80004640:	00e787bb          	addw	a5,a5,a4
    80004644:	00500513          	li	a0,5
    80004648:	02a7e53b          	remw	a0,a5,a0
    8000464c:	ffffe097          	auipc	ra,0xffffe
    80004650:	440080e7          	jalr	1088(ra) # 80002a8c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004654:	fb9ff06f          	j	8000460c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004658:	0204b783          	ld	a5,32(s1)
    8000465c:	0107b503          	ld	a0,16(a5)
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	4bc080e7          	jalr	1212(ra) # 80002b1c <_ZN9Semaphore6signalEv>
    }
    80004668:	01813083          	ld	ra,24(sp)
    8000466c:	01013403          	ld	s0,16(sp)
    80004670:	00813483          	ld	s1,8(sp)
    80004674:	00013903          	ld	s2,0(sp)
    80004678:	02010113          	addi	sp,sp,32
    8000467c:	00008067          	ret

0000000080004680 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004680:	fe010113          	addi	sp,sp,-32
    80004684:	00113c23          	sd	ra,24(sp)
    80004688:	00813823          	sd	s0,16(sp)
    8000468c:	00913423          	sd	s1,8(sp)
    80004690:	01213023          	sd	s2,0(sp)
    80004694:	02010413          	addi	s0,sp,32
    80004698:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000469c:	00100793          	li	a5,1
    800046a0:	02a7f863          	bgeu	a5,a0,800046d0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800046a4:	00a00793          	li	a5,10
    800046a8:	02f577b3          	remu	a5,a0,a5
    800046ac:	02078e63          	beqz	a5,800046e8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800046b0:	fff48513          	addi	a0,s1,-1
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	fcc080e7          	jalr	-52(ra) # 80004680 <_ZL9fibonaccim>
    800046bc:	00050913          	mv	s2,a0
    800046c0:	ffe48513          	addi	a0,s1,-2
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	fbc080e7          	jalr	-68(ra) # 80004680 <_ZL9fibonaccim>
    800046cc:	00a90533          	add	a0,s2,a0
}
    800046d0:	01813083          	ld	ra,24(sp)
    800046d4:	01013403          	ld	s0,16(sp)
    800046d8:	00813483          	ld	s1,8(sp)
    800046dc:	00013903          	ld	s2,0(sp)
    800046e0:	02010113          	addi	sp,sp,32
    800046e4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800046e8:	ffffd097          	auipc	ra,0xffffd
    800046ec:	ca0080e7          	jalr	-864(ra) # 80001388 <_Z15thread_dispatchv>
    800046f0:	fc1ff06f          	j	800046b0 <_ZL9fibonaccim+0x30>

00000000800046f4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800046f4:	fe010113          	addi	sp,sp,-32
    800046f8:	00113c23          	sd	ra,24(sp)
    800046fc:	00813823          	sd	s0,16(sp)
    80004700:	00913423          	sd	s1,8(sp)
    80004704:	01213023          	sd	s2,0(sp)
    80004708:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000470c:	00a00493          	li	s1,10
    80004710:	0400006f          	j	80004750 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004714:	00006517          	auipc	a0,0x6
    80004718:	dfc50513          	addi	a0,a0,-516 # 8000a510 <CONSOLE_STATUS+0x500>
    8000471c:	00001097          	auipc	ra,0x1
    80004720:	dc8080e7          	jalr	-568(ra) # 800054e4 <_Z11printStringPKc>
    80004724:	00000613          	li	a2,0
    80004728:	00a00593          	li	a1,10
    8000472c:	00048513          	mv	a0,s1
    80004730:	00001097          	auipc	ra,0x1
    80004734:	f64080e7          	jalr	-156(ra) # 80005694 <_Z8printIntiii>
    80004738:	00006517          	auipc	a0,0x6
    8000473c:	b6850513          	addi	a0,a0,-1176 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	da4080e7          	jalr	-604(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004748:	0014849b          	addiw	s1,s1,1
    8000474c:	0ff4f493          	andi	s1,s1,255
    80004750:	00c00793          	li	a5,12
    80004754:	fc97f0e3          	bgeu	a5,s1,80004714 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004758:	00006517          	auipc	a0,0x6
    8000475c:	dc050513          	addi	a0,a0,-576 # 8000a518 <CONSOLE_STATUS+0x508>
    80004760:	00001097          	auipc	ra,0x1
    80004764:	d84080e7          	jalr	-636(ra) # 800054e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004768:	00500313          	li	t1,5
    thread_dispatch();
    8000476c:	ffffd097          	auipc	ra,0xffffd
    80004770:	c1c080e7          	jalr	-996(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004774:	01000513          	li	a0,16
    80004778:	00000097          	auipc	ra,0x0
    8000477c:	f08080e7          	jalr	-248(ra) # 80004680 <_ZL9fibonaccim>
    80004780:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004784:	00006517          	auipc	a0,0x6
    80004788:	da450513          	addi	a0,a0,-604 # 8000a528 <CONSOLE_STATUS+0x518>
    8000478c:	00001097          	auipc	ra,0x1
    80004790:	d58080e7          	jalr	-680(ra) # 800054e4 <_Z11printStringPKc>
    80004794:	00000613          	li	a2,0
    80004798:	00a00593          	li	a1,10
    8000479c:	0009051b          	sext.w	a0,s2
    800047a0:	00001097          	auipc	ra,0x1
    800047a4:	ef4080e7          	jalr	-268(ra) # 80005694 <_Z8printIntiii>
    800047a8:	00006517          	auipc	a0,0x6
    800047ac:	af850513          	addi	a0,a0,-1288 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	d34080e7          	jalr	-716(ra) # 800054e4 <_Z11printStringPKc>
    800047b8:	0400006f          	j	800047f8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800047bc:	00006517          	auipc	a0,0x6
    800047c0:	d5450513          	addi	a0,a0,-684 # 8000a510 <CONSOLE_STATUS+0x500>
    800047c4:	00001097          	auipc	ra,0x1
    800047c8:	d20080e7          	jalr	-736(ra) # 800054e4 <_Z11printStringPKc>
    800047cc:	00000613          	li	a2,0
    800047d0:	00a00593          	li	a1,10
    800047d4:	00048513          	mv	a0,s1
    800047d8:	00001097          	auipc	ra,0x1
    800047dc:	ebc080e7          	jalr	-324(ra) # 80005694 <_Z8printIntiii>
    800047e0:	00006517          	auipc	a0,0x6
    800047e4:	ac050513          	addi	a0,a0,-1344 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	cfc080e7          	jalr	-772(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800047f0:	0014849b          	addiw	s1,s1,1
    800047f4:	0ff4f493          	andi	s1,s1,255
    800047f8:	00f00793          	li	a5,15
    800047fc:	fc97f0e3          	bgeu	a5,s1,800047bc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004800:	00006517          	auipc	a0,0x6
    80004804:	d3850513          	addi	a0,a0,-712 # 8000a538 <CONSOLE_STATUS+0x528>
    80004808:	00001097          	auipc	ra,0x1
    8000480c:	cdc080e7          	jalr	-804(ra) # 800054e4 <_Z11printStringPKc>
    finishedD = true;
    80004810:	00100793          	li	a5,1
    80004814:	00009717          	auipc	a4,0x9
    80004818:	84f70223          	sb	a5,-1980(a4) # 8000d058 <_ZL9finishedD>
    thread_dispatch();
    8000481c:	ffffd097          	auipc	ra,0xffffd
    80004820:	b6c080e7          	jalr	-1172(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004824:	01813083          	ld	ra,24(sp)
    80004828:	01013403          	ld	s0,16(sp)
    8000482c:	00813483          	ld	s1,8(sp)
    80004830:	00013903          	ld	s2,0(sp)
    80004834:	02010113          	addi	sp,sp,32
    80004838:	00008067          	ret

000000008000483c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000483c:	fe010113          	addi	sp,sp,-32
    80004840:	00113c23          	sd	ra,24(sp)
    80004844:	00813823          	sd	s0,16(sp)
    80004848:	00913423          	sd	s1,8(sp)
    8000484c:	01213023          	sd	s2,0(sp)
    80004850:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004854:	00000493          	li	s1,0
    80004858:	0400006f          	j	80004898 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000485c:	00006517          	auipc	a0,0x6
    80004860:	c8450513          	addi	a0,a0,-892 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    80004864:	00001097          	auipc	ra,0x1
    80004868:	c80080e7          	jalr	-896(ra) # 800054e4 <_Z11printStringPKc>
    8000486c:	00000613          	li	a2,0
    80004870:	00a00593          	li	a1,10
    80004874:	00048513          	mv	a0,s1
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	e1c080e7          	jalr	-484(ra) # 80005694 <_Z8printIntiii>
    80004880:	00006517          	auipc	a0,0x6
    80004884:	a2050513          	addi	a0,a0,-1504 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	c5c080e7          	jalr	-932(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004890:	0014849b          	addiw	s1,s1,1
    80004894:	0ff4f493          	andi	s1,s1,255
    80004898:	00200793          	li	a5,2
    8000489c:	fc97f0e3          	bgeu	a5,s1,8000485c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800048a0:	00006517          	auipc	a0,0x6
    800048a4:	c4850513          	addi	a0,a0,-952 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800048a8:	00001097          	auipc	ra,0x1
    800048ac:	c3c080e7          	jalr	-964(ra) # 800054e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800048b0:	00700313          	li	t1,7
    thread_dispatch();
    800048b4:	ffffd097          	auipc	ra,0xffffd
    800048b8:	ad4080e7          	jalr	-1324(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800048bc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800048c0:	00006517          	auipc	a0,0x6
    800048c4:	c3850513          	addi	a0,a0,-968 # 8000a4f8 <CONSOLE_STATUS+0x4e8>
    800048c8:	00001097          	auipc	ra,0x1
    800048cc:	c1c080e7          	jalr	-996(ra) # 800054e4 <_Z11printStringPKc>
    800048d0:	00000613          	li	a2,0
    800048d4:	00a00593          	li	a1,10
    800048d8:	0009051b          	sext.w	a0,s2
    800048dc:	00001097          	auipc	ra,0x1
    800048e0:	db8080e7          	jalr	-584(ra) # 80005694 <_Z8printIntiii>
    800048e4:	00006517          	auipc	a0,0x6
    800048e8:	9bc50513          	addi	a0,a0,-1604 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	bf8080e7          	jalr	-1032(ra) # 800054e4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800048f4:	00c00513          	li	a0,12
    800048f8:	00000097          	auipc	ra,0x0
    800048fc:	d88080e7          	jalr	-632(ra) # 80004680 <_ZL9fibonaccim>
    80004900:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004904:	00006517          	auipc	a0,0x6
    80004908:	bfc50513          	addi	a0,a0,-1028 # 8000a500 <CONSOLE_STATUS+0x4f0>
    8000490c:	00001097          	auipc	ra,0x1
    80004910:	bd8080e7          	jalr	-1064(ra) # 800054e4 <_Z11printStringPKc>
    80004914:	00000613          	li	a2,0
    80004918:	00a00593          	li	a1,10
    8000491c:	0009051b          	sext.w	a0,s2
    80004920:	00001097          	auipc	ra,0x1
    80004924:	d74080e7          	jalr	-652(ra) # 80005694 <_Z8printIntiii>
    80004928:	00006517          	auipc	a0,0x6
    8000492c:	97850513          	addi	a0,a0,-1672 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004930:	00001097          	auipc	ra,0x1
    80004934:	bb4080e7          	jalr	-1100(ra) # 800054e4 <_Z11printStringPKc>
    80004938:	0400006f          	j	80004978 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000493c:	00006517          	auipc	a0,0x6
    80004940:	ba450513          	addi	a0,a0,-1116 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    80004944:	00001097          	auipc	ra,0x1
    80004948:	ba0080e7          	jalr	-1120(ra) # 800054e4 <_Z11printStringPKc>
    8000494c:	00000613          	li	a2,0
    80004950:	00a00593          	li	a1,10
    80004954:	00048513          	mv	a0,s1
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	d3c080e7          	jalr	-708(ra) # 80005694 <_Z8printIntiii>
    80004960:	00006517          	auipc	a0,0x6
    80004964:	94050513          	addi	a0,a0,-1728 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	b7c080e7          	jalr	-1156(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004970:	0014849b          	addiw	s1,s1,1
    80004974:	0ff4f493          	andi	s1,s1,255
    80004978:	00500793          	li	a5,5
    8000497c:	fc97f0e3          	bgeu	a5,s1,8000493c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004980:	00006517          	auipc	a0,0x6
    80004984:	b3850513          	addi	a0,a0,-1224 # 8000a4b8 <CONSOLE_STATUS+0x4a8>
    80004988:	00001097          	auipc	ra,0x1
    8000498c:	b5c080e7          	jalr	-1188(ra) # 800054e4 <_Z11printStringPKc>
    finishedC = true;
    80004990:	00100793          	li	a5,1
    80004994:	00008717          	auipc	a4,0x8
    80004998:	6cf702a3          	sb	a5,1733(a4) # 8000d059 <_ZL9finishedC>
    thread_dispatch();
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	9ec080e7          	jalr	-1556(ra) # 80001388 <_Z15thread_dispatchv>
}
    800049a4:	01813083          	ld	ra,24(sp)
    800049a8:	01013403          	ld	s0,16(sp)
    800049ac:	00813483          	ld	s1,8(sp)
    800049b0:	00013903          	ld	s2,0(sp)
    800049b4:	02010113          	addi	sp,sp,32
    800049b8:	00008067          	ret

00000000800049bc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800049bc:	fe010113          	addi	sp,sp,-32
    800049c0:	00113c23          	sd	ra,24(sp)
    800049c4:	00813823          	sd	s0,16(sp)
    800049c8:	00913423          	sd	s1,8(sp)
    800049cc:	01213023          	sd	s2,0(sp)
    800049d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800049d4:	00000913          	li	s2,0
    800049d8:	0380006f          	j	80004a10 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	9ac080e7          	jalr	-1620(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800049e4:	00148493          	addi	s1,s1,1
    800049e8:	000027b7          	lui	a5,0x2
    800049ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800049f0:	0097ee63          	bltu	a5,s1,80004a0c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800049f4:	00000713          	li	a4,0
    800049f8:	000077b7          	lui	a5,0x7
    800049fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a00:	fce7eee3          	bltu	a5,a4,800049dc <_ZL11workerBodyBPv+0x20>
    80004a04:	00170713          	addi	a4,a4,1
    80004a08:	ff1ff06f          	j	800049f8 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a0c:	00190913          	addi	s2,s2,1
    80004a10:	00f00793          	li	a5,15
    80004a14:	0527e063          	bltu	a5,s2,80004a54 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004a18:	00006517          	auipc	a0,0x6
    80004a1c:	ab050513          	addi	a0,a0,-1360 # 8000a4c8 <CONSOLE_STATUS+0x4b8>
    80004a20:	00001097          	auipc	ra,0x1
    80004a24:	ac4080e7          	jalr	-1340(ra) # 800054e4 <_Z11printStringPKc>
    80004a28:	00000613          	li	a2,0
    80004a2c:	00a00593          	li	a1,10
    80004a30:	0009051b          	sext.w	a0,s2
    80004a34:	00001097          	auipc	ra,0x1
    80004a38:	c60080e7          	jalr	-928(ra) # 80005694 <_Z8printIntiii>
    80004a3c:	00006517          	auipc	a0,0x6
    80004a40:	86450513          	addi	a0,a0,-1948 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	aa0080e7          	jalr	-1376(ra) # 800054e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a4c:	00000493          	li	s1,0
    80004a50:	f99ff06f          	j	800049e8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004a54:	00006517          	auipc	a0,0x6
    80004a58:	a7c50513          	addi	a0,a0,-1412 # 8000a4d0 <CONSOLE_STATUS+0x4c0>
    80004a5c:	00001097          	auipc	ra,0x1
    80004a60:	a88080e7          	jalr	-1400(ra) # 800054e4 <_Z11printStringPKc>
    finishedB = true;
    80004a64:	00100793          	li	a5,1
    80004a68:	00008717          	auipc	a4,0x8
    80004a6c:	5ef70923          	sb	a5,1522(a4) # 8000d05a <_ZL9finishedB>
    thread_dispatch();
    80004a70:	ffffd097          	auipc	ra,0xffffd
    80004a74:	918080e7          	jalr	-1768(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004a78:	01813083          	ld	ra,24(sp)
    80004a7c:	01013403          	ld	s0,16(sp)
    80004a80:	00813483          	ld	s1,8(sp)
    80004a84:	00013903          	ld	s2,0(sp)
    80004a88:	02010113          	addi	sp,sp,32
    80004a8c:	00008067          	ret

0000000080004a90 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004a90:	fe010113          	addi	sp,sp,-32
    80004a94:	00113c23          	sd	ra,24(sp)
    80004a98:	00813823          	sd	s0,16(sp)
    80004a9c:	00913423          	sd	s1,8(sp)
    80004aa0:	01213023          	sd	s2,0(sp)
    80004aa4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004aa8:	00000913          	li	s2,0
    80004aac:	0380006f          	j	80004ae4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004ab0:	ffffd097          	auipc	ra,0xffffd
    80004ab4:	8d8080e7          	jalr	-1832(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004ab8:	00148493          	addi	s1,s1,1
    80004abc:	000027b7          	lui	a5,0x2
    80004ac0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ac4:	0097ee63          	bltu	a5,s1,80004ae0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ac8:	00000713          	li	a4,0
    80004acc:	000077b7          	lui	a5,0x7
    80004ad0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ad4:	fce7eee3          	bltu	a5,a4,80004ab0 <_ZL11workerBodyAPv+0x20>
    80004ad8:	00170713          	addi	a4,a4,1
    80004adc:	ff1ff06f          	j	80004acc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004ae0:	00190913          	addi	s2,s2,1
    80004ae4:	00900793          	li	a5,9
    80004ae8:	0527e063          	bltu	a5,s2,80004b28 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004aec:	00006517          	auipc	a0,0x6
    80004af0:	9c450513          	addi	a0,a0,-1596 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    80004af4:	00001097          	auipc	ra,0x1
    80004af8:	9f0080e7          	jalr	-1552(ra) # 800054e4 <_Z11printStringPKc>
    80004afc:	00000613          	li	a2,0
    80004b00:	00a00593          	li	a1,10
    80004b04:	0009051b          	sext.w	a0,s2
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	b8c080e7          	jalr	-1140(ra) # 80005694 <_Z8printIntiii>
    80004b10:	00005517          	auipc	a0,0x5
    80004b14:	79050513          	addi	a0,a0,1936 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	9cc080e7          	jalr	-1588(ra) # 800054e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b20:	00000493          	li	s1,0
    80004b24:	f99ff06f          	j	80004abc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004b28:	00006517          	auipc	a0,0x6
    80004b2c:	99050513          	addi	a0,a0,-1648 # 8000a4b8 <CONSOLE_STATUS+0x4a8>
    80004b30:	00001097          	auipc	ra,0x1
    80004b34:	9b4080e7          	jalr	-1612(ra) # 800054e4 <_Z11printStringPKc>
    finishedA = true;
    80004b38:	00100793          	li	a5,1
    80004b3c:	00008717          	auipc	a4,0x8
    80004b40:	50f70fa3          	sb	a5,1311(a4) # 8000d05b <_ZL9finishedA>
}
    80004b44:	01813083          	ld	ra,24(sp)
    80004b48:	01013403          	ld	s0,16(sp)
    80004b4c:	00813483          	ld	s1,8(sp)
    80004b50:	00013903          	ld	s2,0(sp)
    80004b54:	02010113          	addi	sp,sp,32
    80004b58:	00008067          	ret

0000000080004b5c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004b5c:	fd010113          	addi	sp,sp,-48
    80004b60:	02113423          	sd	ra,40(sp)
    80004b64:	02813023          	sd	s0,32(sp)
    80004b68:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004b6c:	00000613          	li	a2,0
    80004b70:	00000597          	auipc	a1,0x0
    80004b74:	f2058593          	addi	a1,a1,-224 # 80004a90 <_ZL11workerBodyAPv>
    80004b78:	fd040513          	addi	a0,s0,-48
    80004b7c:	ffffc097          	auipc	ra,0xffffc
    80004b80:	708080e7          	jalr	1800(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004b84:	00006517          	auipc	a0,0x6
    80004b88:	9c450513          	addi	a0,a0,-1596 # 8000a548 <CONSOLE_STATUS+0x538>
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	958080e7          	jalr	-1704(ra) # 800054e4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004b94:	00000613          	li	a2,0
    80004b98:	00000597          	auipc	a1,0x0
    80004b9c:	e2458593          	addi	a1,a1,-476 # 800049bc <_ZL11workerBodyBPv>
    80004ba0:	fd840513          	addi	a0,s0,-40
    80004ba4:	ffffc097          	auipc	ra,0xffffc
    80004ba8:	6e0080e7          	jalr	1760(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004bac:	00006517          	auipc	a0,0x6
    80004bb0:	9b450513          	addi	a0,a0,-1612 # 8000a560 <CONSOLE_STATUS+0x550>
    80004bb4:	00001097          	auipc	ra,0x1
    80004bb8:	930080e7          	jalr	-1744(ra) # 800054e4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004bbc:	00000613          	li	a2,0
    80004bc0:	00000597          	auipc	a1,0x0
    80004bc4:	c7c58593          	addi	a1,a1,-900 # 8000483c <_ZL11workerBodyCPv>
    80004bc8:	fe040513          	addi	a0,s0,-32
    80004bcc:	ffffc097          	auipc	ra,0xffffc
    80004bd0:	6b8080e7          	jalr	1720(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004bd4:	00006517          	auipc	a0,0x6
    80004bd8:	9a450513          	addi	a0,a0,-1628 # 8000a578 <CONSOLE_STATUS+0x568>
    80004bdc:	00001097          	auipc	ra,0x1
    80004be0:	908080e7          	jalr	-1784(ra) # 800054e4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004be4:	00000613          	li	a2,0
    80004be8:	00000597          	auipc	a1,0x0
    80004bec:	b0c58593          	addi	a1,a1,-1268 # 800046f4 <_ZL11workerBodyDPv>
    80004bf0:	fe840513          	addi	a0,s0,-24
    80004bf4:	ffffc097          	auipc	ra,0xffffc
    80004bf8:	690080e7          	jalr	1680(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004bfc:	00006517          	auipc	a0,0x6
    80004c00:	99450513          	addi	a0,a0,-1644 # 8000a590 <CONSOLE_STATUS+0x580>
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	8e0080e7          	jalr	-1824(ra) # 800054e4 <_Z11printStringPKc>
    80004c0c:	00c0006f          	j	80004c18 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004c10:	ffffc097          	auipc	ra,0xffffc
    80004c14:	778080e7          	jalr	1912(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004c18:	00008797          	auipc	a5,0x8
    80004c1c:	4437c783          	lbu	a5,1091(a5) # 8000d05b <_ZL9finishedA>
    80004c20:	fe0788e3          	beqz	a5,80004c10 <_Z18Threads_C_API_testv+0xb4>
    80004c24:	00008797          	auipc	a5,0x8
    80004c28:	4367c783          	lbu	a5,1078(a5) # 8000d05a <_ZL9finishedB>
    80004c2c:	fe0782e3          	beqz	a5,80004c10 <_Z18Threads_C_API_testv+0xb4>
    80004c30:	00008797          	auipc	a5,0x8
    80004c34:	4297c783          	lbu	a5,1065(a5) # 8000d059 <_ZL9finishedC>
    80004c38:	fc078ce3          	beqz	a5,80004c10 <_Z18Threads_C_API_testv+0xb4>
    80004c3c:	00008797          	auipc	a5,0x8
    80004c40:	41c7c783          	lbu	a5,1052(a5) # 8000d058 <_ZL9finishedD>
    80004c44:	fc0786e3          	beqz	a5,80004c10 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004c48:	02813083          	ld	ra,40(sp)
    80004c4c:	02013403          	ld	s0,32(sp)
    80004c50:	03010113          	addi	sp,sp,48
    80004c54:	00008067          	ret

0000000080004c58 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004c58:	fd010113          	addi	sp,sp,-48
    80004c5c:	02113423          	sd	ra,40(sp)
    80004c60:	02813023          	sd	s0,32(sp)
    80004c64:	00913c23          	sd	s1,24(sp)
    80004c68:	01213823          	sd	s2,16(sp)
    80004c6c:	01313423          	sd	s3,8(sp)
    80004c70:	03010413          	addi	s0,sp,48
    80004c74:	00050993          	mv	s3,a0
    80004c78:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004c7c:	00000913          	li	s2,0
    80004c80:	00c0006f          	j	80004c8c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004c84:	ffffe097          	auipc	ra,0xffffe
    80004c88:	d80080e7          	jalr	-640(ra) # 80002a04 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	984080e7          	jalr	-1660(ra) # 80001610 <_Z4getcv>
    80004c94:	0005059b          	sext.w	a1,a0
    80004c98:	01b00793          	li	a5,27
    80004c9c:	02f58a63          	beq	a1,a5,80004cd0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004ca0:	0084b503          	ld	a0,8(s1)
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	c64080e7          	jalr	-924(ra) # 80005908 <_ZN9BufferCPP3putEi>
        i++;
    80004cac:	0019071b          	addiw	a4,s2,1
    80004cb0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004cb4:	0004a683          	lw	a3,0(s1)
    80004cb8:	0026979b          	slliw	a5,a3,0x2
    80004cbc:	00d787bb          	addw	a5,a5,a3
    80004cc0:	0017979b          	slliw	a5,a5,0x1
    80004cc4:	02f767bb          	remw	a5,a4,a5
    80004cc8:	fc0792e3          	bnez	a5,80004c8c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004ccc:	fb9ff06f          	j	80004c84 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004cd0:	00100793          	li	a5,1
    80004cd4:	00008717          	auipc	a4,0x8
    80004cd8:	38f72623          	sw	a5,908(a4) # 8000d060 <_ZL9threadEnd>
    td->buffer->put('!');
    80004cdc:	0209b783          	ld	a5,32(s3)
    80004ce0:	02100593          	li	a1,33
    80004ce4:	0087b503          	ld	a0,8(a5)
    80004ce8:	00001097          	auipc	ra,0x1
    80004cec:	c20080e7          	jalr	-992(ra) # 80005908 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004cf0:	0104b503          	ld	a0,16(s1)
    80004cf4:	ffffe097          	auipc	ra,0xffffe
    80004cf8:	e28080e7          	jalr	-472(ra) # 80002b1c <_ZN9Semaphore6signalEv>
}
    80004cfc:	02813083          	ld	ra,40(sp)
    80004d00:	02013403          	ld	s0,32(sp)
    80004d04:	01813483          	ld	s1,24(sp)
    80004d08:	01013903          	ld	s2,16(sp)
    80004d0c:	00813983          	ld	s3,8(sp)
    80004d10:	03010113          	addi	sp,sp,48
    80004d14:	00008067          	ret

0000000080004d18 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004d18:	fe010113          	addi	sp,sp,-32
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	00813823          	sd	s0,16(sp)
    80004d24:	00913423          	sd	s1,8(sp)
    80004d28:	01213023          	sd	s2,0(sp)
    80004d2c:	02010413          	addi	s0,sp,32
    80004d30:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004d34:	00000913          	li	s2,0
    80004d38:	00c0006f          	j	80004d44 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004d3c:	ffffe097          	auipc	ra,0xffffe
    80004d40:	cc8080e7          	jalr	-824(ra) # 80002a04 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004d44:	00008797          	auipc	a5,0x8
    80004d48:	31c7a783          	lw	a5,796(a5) # 8000d060 <_ZL9threadEnd>
    80004d4c:	02079e63          	bnez	a5,80004d88 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004d50:	0004a583          	lw	a1,0(s1)
    80004d54:	0305859b          	addiw	a1,a1,48
    80004d58:	0084b503          	ld	a0,8(s1)
    80004d5c:	00001097          	auipc	ra,0x1
    80004d60:	bac080e7          	jalr	-1108(ra) # 80005908 <_ZN9BufferCPP3putEi>
        i++;
    80004d64:	0019071b          	addiw	a4,s2,1
    80004d68:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004d6c:	0004a683          	lw	a3,0(s1)
    80004d70:	0026979b          	slliw	a5,a3,0x2
    80004d74:	00d787bb          	addw	a5,a5,a3
    80004d78:	0017979b          	slliw	a5,a5,0x1
    80004d7c:	02f767bb          	remw	a5,a4,a5
    80004d80:	fc0792e3          	bnez	a5,80004d44 <_ZN12ProducerSync8producerEPv+0x2c>
    80004d84:	fb9ff06f          	j	80004d3c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004d88:	0104b503          	ld	a0,16(s1)
    80004d8c:	ffffe097          	auipc	ra,0xffffe
    80004d90:	d90080e7          	jalr	-624(ra) # 80002b1c <_ZN9Semaphore6signalEv>
}
    80004d94:	01813083          	ld	ra,24(sp)
    80004d98:	01013403          	ld	s0,16(sp)
    80004d9c:	00813483          	ld	s1,8(sp)
    80004da0:	00013903          	ld	s2,0(sp)
    80004da4:	02010113          	addi	sp,sp,32
    80004da8:	00008067          	ret

0000000080004dac <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004dac:	fd010113          	addi	sp,sp,-48
    80004db0:	02113423          	sd	ra,40(sp)
    80004db4:	02813023          	sd	s0,32(sp)
    80004db8:	00913c23          	sd	s1,24(sp)
    80004dbc:	01213823          	sd	s2,16(sp)
    80004dc0:	01313423          	sd	s3,8(sp)
    80004dc4:	01413023          	sd	s4,0(sp)
    80004dc8:	03010413          	addi	s0,sp,48
    80004dcc:	00050993          	mv	s3,a0
    80004dd0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004dd4:	00000a13          	li	s4,0
    80004dd8:	01c0006f          	j	80004df4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004ddc:	ffffe097          	auipc	ra,0xffffe
    80004de0:	c28080e7          	jalr	-984(ra) # 80002a04 <_ZN6Thread8dispatchEv>
    80004de4:	0500006f          	j	80004e34 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004de8:	00a00513          	li	a0,10
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	864080e7          	jalr	-1948(ra) # 80001650 <_Z4putcc>
    while (!threadEnd) {
    80004df4:	00008797          	auipc	a5,0x8
    80004df8:	26c7a783          	lw	a5,620(a5) # 8000d060 <_ZL9threadEnd>
    80004dfc:	06079263          	bnez	a5,80004e60 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004e00:	00893503          	ld	a0,8(s2)
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	b94080e7          	jalr	-1132(ra) # 80005998 <_ZN9BufferCPP3getEv>
        i++;
    80004e0c:	001a049b          	addiw	s1,s4,1
    80004e10:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004e14:	0ff57513          	andi	a0,a0,255
    80004e18:	ffffd097          	auipc	ra,0xffffd
    80004e1c:	838080e7          	jalr	-1992(ra) # 80001650 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004e20:	00092703          	lw	a4,0(s2)
    80004e24:	0027179b          	slliw	a5,a4,0x2
    80004e28:	00e787bb          	addw	a5,a5,a4
    80004e2c:	02f4e7bb          	remw	a5,s1,a5
    80004e30:	fa0786e3          	beqz	a5,80004ddc <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004e34:	05000793          	li	a5,80
    80004e38:	02f4e4bb          	remw	s1,s1,a5
    80004e3c:	fa049ce3          	bnez	s1,80004df4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004e40:	fa9ff06f          	j	80004de8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004e44:	0209b783          	ld	a5,32(s3)
    80004e48:	0087b503          	ld	a0,8(a5)
    80004e4c:	00001097          	auipc	ra,0x1
    80004e50:	b4c080e7          	jalr	-1204(ra) # 80005998 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004e54:	0ff57513          	andi	a0,a0,255
    80004e58:	ffffe097          	auipc	ra,0xffffe
    80004e5c:	d80080e7          	jalr	-640(ra) # 80002bd8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004e60:	0209b783          	ld	a5,32(s3)
    80004e64:	0087b503          	ld	a0,8(a5)
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	bbc080e7          	jalr	-1092(ra) # 80005a24 <_ZN9BufferCPP6getCntEv>
    80004e70:	fca04ae3          	bgtz	a0,80004e44 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004e74:	01093503          	ld	a0,16(s2)
    80004e78:	ffffe097          	auipc	ra,0xffffe
    80004e7c:	ca4080e7          	jalr	-860(ra) # 80002b1c <_ZN9Semaphore6signalEv>
}
    80004e80:	02813083          	ld	ra,40(sp)
    80004e84:	02013403          	ld	s0,32(sp)
    80004e88:	01813483          	ld	s1,24(sp)
    80004e8c:	01013903          	ld	s2,16(sp)
    80004e90:	00813983          	ld	s3,8(sp)
    80004e94:	00013a03          	ld	s4,0(sp)
    80004e98:	03010113          	addi	sp,sp,48
    80004e9c:	00008067          	ret

0000000080004ea0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004ea0:	f8010113          	addi	sp,sp,-128
    80004ea4:	06113c23          	sd	ra,120(sp)
    80004ea8:	06813823          	sd	s0,112(sp)
    80004eac:	06913423          	sd	s1,104(sp)
    80004eb0:	07213023          	sd	s2,96(sp)
    80004eb4:	05313c23          	sd	s3,88(sp)
    80004eb8:	05413823          	sd	s4,80(sp)
    80004ebc:	05513423          	sd	s5,72(sp)
    80004ec0:	05613023          	sd	s6,64(sp)
    80004ec4:	03713c23          	sd	s7,56(sp)
    80004ec8:	03813823          	sd	s8,48(sp)
    80004ecc:	03913423          	sd	s9,40(sp)
    80004ed0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004ed4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004ed8:	00005517          	auipc	a0,0x5
    80004edc:	4f050513          	addi	a0,a0,1264 # 8000a3c8 <CONSOLE_STATUS+0x3b8>
    80004ee0:	00000097          	auipc	ra,0x0
    80004ee4:	604080e7          	jalr	1540(ra) # 800054e4 <_Z11printStringPKc>
    getString(input, 30);
    80004ee8:	01e00593          	li	a1,30
    80004eec:	f8040493          	addi	s1,s0,-128
    80004ef0:	00048513          	mv	a0,s1
    80004ef4:	00000097          	auipc	ra,0x0
    80004ef8:	678080e7          	jalr	1656(ra) # 8000556c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004efc:	00048513          	mv	a0,s1
    80004f00:	00000097          	auipc	ra,0x0
    80004f04:	744080e7          	jalr	1860(ra) # 80005644 <_Z11stringToIntPKc>
    80004f08:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004f0c:	00005517          	auipc	a0,0x5
    80004f10:	4dc50513          	addi	a0,a0,1244 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80004f14:	00000097          	auipc	ra,0x0
    80004f18:	5d0080e7          	jalr	1488(ra) # 800054e4 <_Z11printStringPKc>
    getString(input, 30);
    80004f1c:	01e00593          	li	a1,30
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00000097          	auipc	ra,0x0
    80004f28:	648080e7          	jalr	1608(ra) # 8000556c <_Z9getStringPci>
    n = stringToInt(input);
    80004f2c:	00048513          	mv	a0,s1
    80004f30:	00000097          	auipc	ra,0x0
    80004f34:	714080e7          	jalr	1812(ra) # 80005644 <_Z11stringToIntPKc>
    80004f38:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004f3c:	00005517          	auipc	a0,0x5
    80004f40:	4cc50513          	addi	a0,a0,1228 # 8000a408 <CONSOLE_STATUS+0x3f8>
    80004f44:	00000097          	auipc	ra,0x0
    80004f48:	5a0080e7          	jalr	1440(ra) # 800054e4 <_Z11printStringPKc>
    80004f4c:	00000613          	li	a2,0
    80004f50:	00a00593          	li	a1,10
    80004f54:	00090513          	mv	a0,s2
    80004f58:	00000097          	auipc	ra,0x0
    80004f5c:	73c080e7          	jalr	1852(ra) # 80005694 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004f60:	00005517          	auipc	a0,0x5
    80004f64:	4c050513          	addi	a0,a0,1216 # 8000a420 <CONSOLE_STATUS+0x410>
    80004f68:	00000097          	auipc	ra,0x0
    80004f6c:	57c080e7          	jalr	1404(ra) # 800054e4 <_Z11printStringPKc>
    80004f70:	00000613          	li	a2,0
    80004f74:	00a00593          	li	a1,10
    80004f78:	00048513          	mv	a0,s1
    80004f7c:	00000097          	auipc	ra,0x0
    80004f80:	718080e7          	jalr	1816(ra) # 80005694 <_Z8printIntiii>
    printString(".\n");
    80004f84:	00005517          	auipc	a0,0x5
    80004f88:	4b450513          	addi	a0,a0,1204 # 8000a438 <CONSOLE_STATUS+0x428>
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	558080e7          	jalr	1368(ra) # 800054e4 <_Z11printStringPKc>
    if(threadNum > n) {
    80004f94:	0324c463          	blt	s1,s2,80004fbc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004f98:	03205c63          	blez	s2,80004fd0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004f9c:	03800513          	li	a0,56
    80004fa0:	ffffd097          	auipc	ra,0xffffd
    80004fa4:	708080e7          	jalr	1800(ra) # 800026a8 <_Znwm>
    80004fa8:	00050a93          	mv	s5,a0
    80004fac:	00048593          	mv	a1,s1
    80004fb0:	00001097          	auipc	ra,0x1
    80004fb4:	804080e7          	jalr	-2044(ra) # 800057b4 <_ZN9BufferCPPC1Ei>
    80004fb8:	0300006f          	j	80004fe8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004fbc:	00005517          	auipc	a0,0x5
    80004fc0:	48450513          	addi	a0,a0,1156 # 8000a440 <CONSOLE_STATUS+0x430>
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	520080e7          	jalr	1312(ra) # 800054e4 <_Z11printStringPKc>
        return;
    80004fcc:	0140006f          	j	80004fe0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004fd0:	00005517          	auipc	a0,0x5
    80004fd4:	4b050513          	addi	a0,a0,1200 # 8000a480 <CONSOLE_STATUS+0x470>
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	50c080e7          	jalr	1292(ra) # 800054e4 <_Z11printStringPKc>
        return;
    80004fe0:	000b8113          	mv	sp,s7
    80004fe4:	2380006f          	j	8000521c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004fe8:	01000513          	li	a0,16
    80004fec:	ffffd097          	auipc	ra,0xffffd
    80004ff0:	6bc080e7          	jalr	1724(ra) # 800026a8 <_Znwm>
    80004ff4:	00050493          	mv	s1,a0
    80004ff8:	00000593          	li	a1,0
    80004ffc:	ffffe097          	auipc	ra,0xffffe
    80005000:	ab8080e7          	jalr	-1352(ra) # 80002ab4 <_ZN9SemaphoreC1Ej>
    80005004:	00008797          	auipc	a5,0x8
    80005008:	0697b223          	sd	s1,100(a5) # 8000d068 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000500c:	00391793          	slli	a5,s2,0x3
    80005010:	00f78793          	addi	a5,a5,15
    80005014:	ff07f793          	andi	a5,a5,-16
    80005018:	40f10133          	sub	sp,sp,a5
    8000501c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005020:	0019071b          	addiw	a4,s2,1
    80005024:	00171793          	slli	a5,a4,0x1
    80005028:	00e787b3          	add	a5,a5,a4
    8000502c:	00379793          	slli	a5,a5,0x3
    80005030:	00f78793          	addi	a5,a5,15
    80005034:	ff07f793          	andi	a5,a5,-16
    80005038:	40f10133          	sub	sp,sp,a5
    8000503c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005040:	00191c13          	slli	s8,s2,0x1
    80005044:	012c07b3          	add	a5,s8,s2
    80005048:	00379793          	slli	a5,a5,0x3
    8000504c:	00fa07b3          	add	a5,s4,a5
    80005050:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005054:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005058:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000505c:	02800513          	li	a0,40
    80005060:	ffffd097          	auipc	ra,0xffffd
    80005064:	648080e7          	jalr	1608(ra) # 800026a8 <_Znwm>
    80005068:	00050b13          	mv	s6,a0
    8000506c:	012c0c33          	add	s8,s8,s2
    80005070:	003c1c13          	slli	s8,s8,0x3
    80005074:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005078:	ffffe097          	auipc	ra,0xffffe
    8000507c:	908080e7          	jalr	-1784(ra) # 80002980 <_ZN6ThreadC1Ev>
    80005080:	00008797          	auipc	a5,0x8
    80005084:	e5878793          	addi	a5,a5,-424 # 8000ced8 <_ZTV12ConsumerSync+0x10>
    80005088:	00fb3023          	sd	a5,0(s6)
    8000508c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005090:	000b0513          	mv	a0,s6
    80005094:	ffffe097          	auipc	ra,0xffffe
    80005098:	91c080e7          	jalr	-1764(ra) # 800029b0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000509c:	00000493          	li	s1,0
    800050a0:	0380006f          	j	800050d8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800050a4:	00008797          	auipc	a5,0x8
    800050a8:	e0c78793          	addi	a5,a5,-500 # 8000ceb0 <_ZTV12ProducerSync+0x10>
    800050ac:	00fcb023          	sd	a5,0(s9)
    800050b0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800050b4:	00349793          	slli	a5,s1,0x3
    800050b8:	00f987b3          	add	a5,s3,a5
    800050bc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800050c0:	00349793          	slli	a5,s1,0x3
    800050c4:	00f987b3          	add	a5,s3,a5
    800050c8:	0007b503          	ld	a0,0(a5)
    800050cc:	ffffe097          	auipc	ra,0xffffe
    800050d0:	8e4080e7          	jalr	-1820(ra) # 800029b0 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800050d4:	0014849b          	addiw	s1,s1,1
    800050d8:	0b24d063          	bge	s1,s2,80005178 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800050dc:	00149793          	slli	a5,s1,0x1
    800050e0:	009787b3          	add	a5,a5,s1
    800050e4:	00379793          	slli	a5,a5,0x3
    800050e8:	00fa07b3          	add	a5,s4,a5
    800050ec:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800050f0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800050f4:	00008717          	auipc	a4,0x8
    800050f8:	f7473703          	ld	a4,-140(a4) # 8000d068 <_ZL10waitForAll>
    800050fc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005100:	02905863          	blez	s1,80005130 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005104:	02800513          	li	a0,40
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	5a0080e7          	jalr	1440(ra) # 800026a8 <_Znwm>
    80005110:	00050c93          	mv	s9,a0
    80005114:	00149c13          	slli	s8,s1,0x1
    80005118:	009c0c33          	add	s8,s8,s1
    8000511c:	003c1c13          	slli	s8,s8,0x3
    80005120:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005124:	ffffe097          	auipc	ra,0xffffe
    80005128:	85c080e7          	jalr	-1956(ra) # 80002980 <_ZN6ThreadC1Ev>
    8000512c:	f79ff06f          	j	800050a4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005130:	02800513          	li	a0,40
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	574080e7          	jalr	1396(ra) # 800026a8 <_Znwm>
    8000513c:	00050c93          	mv	s9,a0
    80005140:	00149c13          	slli	s8,s1,0x1
    80005144:	009c0c33          	add	s8,s8,s1
    80005148:	003c1c13          	slli	s8,s8,0x3
    8000514c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005150:	ffffe097          	auipc	ra,0xffffe
    80005154:	830080e7          	jalr	-2000(ra) # 80002980 <_ZN6ThreadC1Ev>
    80005158:	00008797          	auipc	a5,0x8
    8000515c:	d3078793          	addi	a5,a5,-720 # 8000ce88 <_ZTV16ProducerKeyboard+0x10>
    80005160:	00fcb023          	sd	a5,0(s9)
    80005164:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005168:	00349793          	slli	a5,s1,0x3
    8000516c:	00f987b3          	add	a5,s3,a5
    80005170:	0197b023          	sd	s9,0(a5)
    80005174:	f4dff06f          	j	800050c0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005178:	ffffe097          	auipc	ra,0xffffe
    8000517c:	88c080e7          	jalr	-1908(ra) # 80002a04 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005180:	00000493          	li	s1,0
    80005184:	00994e63          	blt	s2,s1,800051a0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005188:	00008517          	auipc	a0,0x8
    8000518c:	ee053503          	ld	a0,-288(a0) # 8000d068 <_ZL10waitForAll>
    80005190:	ffffe097          	auipc	ra,0xffffe
    80005194:	960080e7          	jalr	-1696(ra) # 80002af0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005198:	0014849b          	addiw	s1,s1,1
    8000519c:	fe9ff06f          	j	80005184 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800051a0:	00000493          	li	s1,0
    800051a4:	0080006f          	j	800051ac <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800051a8:	0014849b          	addiw	s1,s1,1
    800051ac:	0324d263          	bge	s1,s2,800051d0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800051b0:	00349793          	slli	a5,s1,0x3
    800051b4:	00f987b3          	add	a5,s3,a5
    800051b8:	0007b503          	ld	a0,0(a5)
    800051bc:	fe0506e3          	beqz	a0,800051a8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800051c0:	00053783          	ld	a5,0(a0)
    800051c4:	0087b783          	ld	a5,8(a5)
    800051c8:	000780e7          	jalr	a5
    800051cc:	fddff06f          	j	800051a8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800051d0:	000b0a63          	beqz	s6,800051e4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800051d4:	000b3783          	ld	a5,0(s6)
    800051d8:	0087b783          	ld	a5,8(a5)
    800051dc:	000b0513          	mv	a0,s6
    800051e0:	000780e7          	jalr	a5
    delete waitForAll;
    800051e4:	00008517          	auipc	a0,0x8
    800051e8:	e8453503          	ld	a0,-380(a0) # 8000d068 <_ZL10waitForAll>
    800051ec:	00050863          	beqz	a0,800051fc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800051f0:	00053783          	ld	a5,0(a0)
    800051f4:	0087b783          	ld	a5,8(a5)
    800051f8:	000780e7          	jalr	a5
    delete buffer;
    800051fc:	000a8e63          	beqz	s5,80005218 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005200:	000a8513          	mv	a0,s5
    80005204:	00001097          	auipc	ra,0x1
    80005208:	8a8080e7          	jalr	-1880(ra) # 80005aac <_ZN9BufferCPPD1Ev>
    8000520c:	000a8513          	mv	a0,s5
    80005210:	ffffd097          	auipc	ra,0xffffd
    80005214:	4e8080e7          	jalr	1256(ra) # 800026f8 <_ZdlPv>
    80005218:	000b8113          	mv	sp,s7

}
    8000521c:	f8040113          	addi	sp,s0,-128
    80005220:	07813083          	ld	ra,120(sp)
    80005224:	07013403          	ld	s0,112(sp)
    80005228:	06813483          	ld	s1,104(sp)
    8000522c:	06013903          	ld	s2,96(sp)
    80005230:	05813983          	ld	s3,88(sp)
    80005234:	05013a03          	ld	s4,80(sp)
    80005238:	04813a83          	ld	s5,72(sp)
    8000523c:	04013b03          	ld	s6,64(sp)
    80005240:	03813b83          	ld	s7,56(sp)
    80005244:	03013c03          	ld	s8,48(sp)
    80005248:	02813c83          	ld	s9,40(sp)
    8000524c:	08010113          	addi	sp,sp,128
    80005250:	00008067          	ret
    80005254:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005258:	000a8513          	mv	a0,s5
    8000525c:	ffffd097          	auipc	ra,0xffffd
    80005260:	49c080e7          	jalr	1180(ra) # 800026f8 <_ZdlPv>
    80005264:	00048513          	mv	a0,s1
    80005268:	00009097          	auipc	ra,0x9
    8000526c:	ee0080e7          	jalr	-288(ra) # 8000e148 <_Unwind_Resume>
    80005270:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005274:	00048513          	mv	a0,s1
    80005278:	ffffd097          	auipc	ra,0xffffd
    8000527c:	480080e7          	jalr	1152(ra) # 800026f8 <_ZdlPv>
    80005280:	00090513          	mv	a0,s2
    80005284:	00009097          	auipc	ra,0x9
    80005288:	ec4080e7          	jalr	-316(ra) # 8000e148 <_Unwind_Resume>
    8000528c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005290:	000b0513          	mv	a0,s6
    80005294:	ffffd097          	auipc	ra,0xffffd
    80005298:	464080e7          	jalr	1124(ra) # 800026f8 <_ZdlPv>
    8000529c:	00048513          	mv	a0,s1
    800052a0:	00009097          	auipc	ra,0x9
    800052a4:	ea8080e7          	jalr	-344(ra) # 8000e148 <_Unwind_Resume>
    800052a8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800052ac:	000c8513          	mv	a0,s9
    800052b0:	ffffd097          	auipc	ra,0xffffd
    800052b4:	448080e7          	jalr	1096(ra) # 800026f8 <_ZdlPv>
    800052b8:	00048513          	mv	a0,s1
    800052bc:	00009097          	auipc	ra,0x9
    800052c0:	e8c080e7          	jalr	-372(ra) # 8000e148 <_Unwind_Resume>
    800052c4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800052c8:	000c8513          	mv	a0,s9
    800052cc:	ffffd097          	auipc	ra,0xffffd
    800052d0:	42c080e7          	jalr	1068(ra) # 800026f8 <_ZdlPv>
    800052d4:	00048513          	mv	a0,s1
    800052d8:	00009097          	auipc	ra,0x9
    800052dc:	e70080e7          	jalr	-400(ra) # 8000e148 <_Unwind_Resume>

00000000800052e0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800052e0:	ff010113          	addi	sp,sp,-16
    800052e4:	00113423          	sd	ra,8(sp)
    800052e8:	00813023          	sd	s0,0(sp)
    800052ec:	01010413          	addi	s0,sp,16
    800052f0:	00008797          	auipc	a5,0x8
    800052f4:	be878793          	addi	a5,a5,-1048 # 8000ced8 <_ZTV12ConsumerSync+0x10>
    800052f8:	00f53023          	sd	a5,0(a0)
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	560080e7          	jalr	1376(ra) # 8000285c <_ZN6ThreadD1Ev>
    80005304:	00813083          	ld	ra,8(sp)
    80005308:	00013403          	ld	s0,0(sp)
    8000530c:	01010113          	addi	sp,sp,16
    80005310:	00008067          	ret

0000000080005314 <_ZN12ConsumerSyncD0Ev>:
    80005314:	fe010113          	addi	sp,sp,-32
    80005318:	00113c23          	sd	ra,24(sp)
    8000531c:	00813823          	sd	s0,16(sp)
    80005320:	00913423          	sd	s1,8(sp)
    80005324:	02010413          	addi	s0,sp,32
    80005328:	00050493          	mv	s1,a0
    8000532c:	00008797          	auipc	a5,0x8
    80005330:	bac78793          	addi	a5,a5,-1108 # 8000ced8 <_ZTV12ConsumerSync+0x10>
    80005334:	00f53023          	sd	a5,0(a0)
    80005338:	ffffd097          	auipc	ra,0xffffd
    8000533c:	524080e7          	jalr	1316(ra) # 8000285c <_ZN6ThreadD1Ev>
    80005340:	00048513          	mv	a0,s1
    80005344:	ffffd097          	auipc	ra,0xffffd
    80005348:	3b4080e7          	jalr	948(ra) # 800026f8 <_ZdlPv>
    8000534c:	01813083          	ld	ra,24(sp)
    80005350:	01013403          	ld	s0,16(sp)
    80005354:	00813483          	ld	s1,8(sp)
    80005358:	02010113          	addi	sp,sp,32
    8000535c:	00008067          	ret

0000000080005360 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005360:	ff010113          	addi	sp,sp,-16
    80005364:	00113423          	sd	ra,8(sp)
    80005368:	00813023          	sd	s0,0(sp)
    8000536c:	01010413          	addi	s0,sp,16
    80005370:	00008797          	auipc	a5,0x8
    80005374:	b4078793          	addi	a5,a5,-1216 # 8000ceb0 <_ZTV12ProducerSync+0x10>
    80005378:	00f53023          	sd	a5,0(a0)
    8000537c:	ffffd097          	auipc	ra,0xffffd
    80005380:	4e0080e7          	jalr	1248(ra) # 8000285c <_ZN6ThreadD1Ev>
    80005384:	00813083          	ld	ra,8(sp)
    80005388:	00013403          	ld	s0,0(sp)
    8000538c:	01010113          	addi	sp,sp,16
    80005390:	00008067          	ret

0000000080005394 <_ZN12ProducerSyncD0Ev>:
    80005394:	fe010113          	addi	sp,sp,-32
    80005398:	00113c23          	sd	ra,24(sp)
    8000539c:	00813823          	sd	s0,16(sp)
    800053a0:	00913423          	sd	s1,8(sp)
    800053a4:	02010413          	addi	s0,sp,32
    800053a8:	00050493          	mv	s1,a0
    800053ac:	00008797          	auipc	a5,0x8
    800053b0:	b0478793          	addi	a5,a5,-1276 # 8000ceb0 <_ZTV12ProducerSync+0x10>
    800053b4:	00f53023          	sd	a5,0(a0)
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	4a4080e7          	jalr	1188(ra) # 8000285c <_ZN6ThreadD1Ev>
    800053c0:	00048513          	mv	a0,s1
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	334080e7          	jalr	820(ra) # 800026f8 <_ZdlPv>
    800053cc:	01813083          	ld	ra,24(sp)
    800053d0:	01013403          	ld	s0,16(sp)
    800053d4:	00813483          	ld	s1,8(sp)
    800053d8:	02010113          	addi	sp,sp,32
    800053dc:	00008067          	ret

00000000800053e0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800053e0:	ff010113          	addi	sp,sp,-16
    800053e4:	00113423          	sd	ra,8(sp)
    800053e8:	00813023          	sd	s0,0(sp)
    800053ec:	01010413          	addi	s0,sp,16
    800053f0:	00008797          	auipc	a5,0x8
    800053f4:	a9878793          	addi	a5,a5,-1384 # 8000ce88 <_ZTV16ProducerKeyboard+0x10>
    800053f8:	00f53023          	sd	a5,0(a0)
    800053fc:	ffffd097          	auipc	ra,0xffffd
    80005400:	460080e7          	jalr	1120(ra) # 8000285c <_ZN6ThreadD1Ev>
    80005404:	00813083          	ld	ra,8(sp)
    80005408:	00013403          	ld	s0,0(sp)
    8000540c:	01010113          	addi	sp,sp,16
    80005410:	00008067          	ret

0000000080005414 <_ZN16ProducerKeyboardD0Ev>:
    80005414:	fe010113          	addi	sp,sp,-32
    80005418:	00113c23          	sd	ra,24(sp)
    8000541c:	00813823          	sd	s0,16(sp)
    80005420:	00913423          	sd	s1,8(sp)
    80005424:	02010413          	addi	s0,sp,32
    80005428:	00050493          	mv	s1,a0
    8000542c:	00008797          	auipc	a5,0x8
    80005430:	a5c78793          	addi	a5,a5,-1444 # 8000ce88 <_ZTV16ProducerKeyboard+0x10>
    80005434:	00f53023          	sd	a5,0(a0)
    80005438:	ffffd097          	auipc	ra,0xffffd
    8000543c:	424080e7          	jalr	1060(ra) # 8000285c <_ZN6ThreadD1Ev>
    80005440:	00048513          	mv	a0,s1
    80005444:	ffffd097          	auipc	ra,0xffffd
    80005448:	2b4080e7          	jalr	692(ra) # 800026f8 <_ZdlPv>
    8000544c:	01813083          	ld	ra,24(sp)
    80005450:	01013403          	ld	s0,16(sp)
    80005454:	00813483          	ld	s1,8(sp)
    80005458:	02010113          	addi	sp,sp,32
    8000545c:	00008067          	ret

0000000080005460 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005460:	ff010113          	addi	sp,sp,-16
    80005464:	00113423          	sd	ra,8(sp)
    80005468:	00813023          	sd	s0,0(sp)
    8000546c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005470:	02053583          	ld	a1,32(a0)
    80005474:	fffff097          	auipc	ra,0xfffff
    80005478:	7e4080e7          	jalr	2020(ra) # 80004c58 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000547c:	00813083          	ld	ra,8(sp)
    80005480:	00013403          	ld	s0,0(sp)
    80005484:	01010113          	addi	sp,sp,16
    80005488:	00008067          	ret

000000008000548c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000548c:	ff010113          	addi	sp,sp,-16
    80005490:	00113423          	sd	ra,8(sp)
    80005494:	00813023          	sd	s0,0(sp)
    80005498:	01010413          	addi	s0,sp,16
        producer(td);
    8000549c:	02053583          	ld	a1,32(a0)
    800054a0:	00000097          	auipc	ra,0x0
    800054a4:	878080e7          	jalr	-1928(ra) # 80004d18 <_ZN12ProducerSync8producerEPv>
    }
    800054a8:	00813083          	ld	ra,8(sp)
    800054ac:	00013403          	ld	s0,0(sp)
    800054b0:	01010113          	addi	sp,sp,16
    800054b4:	00008067          	ret

00000000800054b8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800054b8:	ff010113          	addi	sp,sp,-16
    800054bc:	00113423          	sd	ra,8(sp)
    800054c0:	00813023          	sd	s0,0(sp)
    800054c4:	01010413          	addi	s0,sp,16
        consumer(td);
    800054c8:	02053583          	ld	a1,32(a0)
    800054cc:	00000097          	auipc	ra,0x0
    800054d0:	8e0080e7          	jalr	-1824(ra) # 80004dac <_ZN12ConsumerSync8consumerEPv>
    }
    800054d4:	00813083          	ld	ra,8(sp)
    800054d8:	00013403          	ld	s0,0(sp)
    800054dc:	01010113          	addi	sp,sp,16
    800054e0:	00008067          	ret

00000000800054e4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800054e4:	fe010113          	addi	sp,sp,-32
    800054e8:	00113c23          	sd	ra,24(sp)
    800054ec:	00813823          	sd	s0,16(sp)
    800054f0:	00913423          	sd	s1,8(sp)
    800054f4:	02010413          	addi	s0,sp,32
    800054f8:	00050493          	mv	s1,a0
    LOCK();
    800054fc:	00100613          	li	a2,1
    80005500:	00000593          	li	a1,0
    80005504:	00008517          	auipc	a0,0x8
    80005508:	b6c50513          	addi	a0,a0,-1172 # 8000d070 <lockPrint>
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	c98080e7          	jalr	-872(ra) # 800011a4 <copy_and_swap>
    80005514:	00050863          	beqz	a0,80005524 <_Z11printStringPKc+0x40>
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	e70080e7          	jalr	-400(ra) # 80001388 <_Z15thread_dispatchv>
    80005520:	fddff06f          	j	800054fc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005524:	0004c503          	lbu	a0,0(s1)
    80005528:	00050a63          	beqz	a0,8000553c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000552c:	ffffc097          	auipc	ra,0xffffc
    80005530:	124080e7          	jalr	292(ra) # 80001650 <_Z4putcc>
        string++;
    80005534:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005538:	fedff06f          	j	80005524 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000553c:	00000613          	li	a2,0
    80005540:	00100593          	li	a1,1
    80005544:	00008517          	auipc	a0,0x8
    80005548:	b2c50513          	addi	a0,a0,-1236 # 8000d070 <lockPrint>
    8000554c:	ffffc097          	auipc	ra,0xffffc
    80005550:	c58080e7          	jalr	-936(ra) # 800011a4 <copy_and_swap>
    80005554:	fe0514e3          	bnez	a0,8000553c <_Z11printStringPKc+0x58>
}
    80005558:	01813083          	ld	ra,24(sp)
    8000555c:	01013403          	ld	s0,16(sp)
    80005560:	00813483          	ld	s1,8(sp)
    80005564:	02010113          	addi	sp,sp,32
    80005568:	00008067          	ret

000000008000556c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000556c:	fd010113          	addi	sp,sp,-48
    80005570:	02113423          	sd	ra,40(sp)
    80005574:	02813023          	sd	s0,32(sp)
    80005578:	00913c23          	sd	s1,24(sp)
    8000557c:	01213823          	sd	s2,16(sp)
    80005580:	01313423          	sd	s3,8(sp)
    80005584:	01413023          	sd	s4,0(sp)
    80005588:	03010413          	addi	s0,sp,48
    8000558c:	00050993          	mv	s3,a0
    80005590:	00058a13          	mv	s4,a1
    LOCK();
    80005594:	00100613          	li	a2,1
    80005598:	00000593          	li	a1,0
    8000559c:	00008517          	auipc	a0,0x8
    800055a0:	ad450513          	addi	a0,a0,-1324 # 8000d070 <lockPrint>
    800055a4:	ffffc097          	auipc	ra,0xffffc
    800055a8:	c00080e7          	jalr	-1024(ra) # 800011a4 <copy_and_swap>
    800055ac:	00050863          	beqz	a0,800055bc <_Z9getStringPci+0x50>
    800055b0:	ffffc097          	auipc	ra,0xffffc
    800055b4:	dd8080e7          	jalr	-552(ra) # 80001388 <_Z15thread_dispatchv>
    800055b8:	fddff06f          	j	80005594 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800055bc:	00000913          	li	s2,0
    800055c0:	00090493          	mv	s1,s2
    800055c4:	0019091b          	addiw	s2,s2,1
    800055c8:	03495a63          	bge	s2,s4,800055fc <_Z9getStringPci+0x90>
        cc = getc();
    800055cc:	ffffc097          	auipc	ra,0xffffc
    800055d0:	044080e7          	jalr	68(ra) # 80001610 <_Z4getcv>
        if(cc < 1)
    800055d4:	02050463          	beqz	a0,800055fc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800055d8:	009984b3          	add	s1,s3,s1
    800055dc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800055e0:	00a00793          	li	a5,10
    800055e4:	00f50a63          	beq	a0,a5,800055f8 <_Z9getStringPci+0x8c>
    800055e8:	00d00793          	li	a5,13
    800055ec:	fcf51ae3          	bne	a0,a5,800055c0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800055f0:	00090493          	mv	s1,s2
    800055f4:	0080006f          	j	800055fc <_Z9getStringPci+0x90>
    800055f8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800055fc:	009984b3          	add	s1,s3,s1
    80005600:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005604:	00000613          	li	a2,0
    80005608:	00100593          	li	a1,1
    8000560c:	00008517          	auipc	a0,0x8
    80005610:	a6450513          	addi	a0,a0,-1436 # 8000d070 <lockPrint>
    80005614:	ffffc097          	auipc	ra,0xffffc
    80005618:	b90080e7          	jalr	-1136(ra) # 800011a4 <copy_and_swap>
    8000561c:	fe0514e3          	bnez	a0,80005604 <_Z9getStringPci+0x98>
    return buf;
}
    80005620:	00098513          	mv	a0,s3
    80005624:	02813083          	ld	ra,40(sp)
    80005628:	02013403          	ld	s0,32(sp)
    8000562c:	01813483          	ld	s1,24(sp)
    80005630:	01013903          	ld	s2,16(sp)
    80005634:	00813983          	ld	s3,8(sp)
    80005638:	00013a03          	ld	s4,0(sp)
    8000563c:	03010113          	addi	sp,sp,48
    80005640:	00008067          	ret

0000000080005644 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005644:	ff010113          	addi	sp,sp,-16
    80005648:	00813423          	sd	s0,8(sp)
    8000564c:	01010413          	addi	s0,sp,16
    80005650:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005654:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005658:	0006c603          	lbu	a2,0(a3)
    8000565c:	fd06071b          	addiw	a4,a2,-48
    80005660:	0ff77713          	andi	a4,a4,255
    80005664:	00900793          	li	a5,9
    80005668:	02e7e063          	bltu	a5,a4,80005688 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000566c:	0025179b          	slliw	a5,a0,0x2
    80005670:	00a787bb          	addw	a5,a5,a0
    80005674:	0017979b          	slliw	a5,a5,0x1
    80005678:	00168693          	addi	a3,a3,1
    8000567c:	00c787bb          	addw	a5,a5,a2
    80005680:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005684:	fd5ff06f          	j	80005658 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005688:	00813403          	ld	s0,8(sp)
    8000568c:	01010113          	addi	sp,sp,16
    80005690:	00008067          	ret

0000000080005694 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005694:	fc010113          	addi	sp,sp,-64
    80005698:	02113c23          	sd	ra,56(sp)
    8000569c:	02813823          	sd	s0,48(sp)
    800056a0:	02913423          	sd	s1,40(sp)
    800056a4:	03213023          	sd	s2,32(sp)
    800056a8:	01313c23          	sd	s3,24(sp)
    800056ac:	04010413          	addi	s0,sp,64
    800056b0:	00050493          	mv	s1,a0
    800056b4:	00058913          	mv	s2,a1
    800056b8:	00060993          	mv	s3,a2
    LOCK();
    800056bc:	00100613          	li	a2,1
    800056c0:	00000593          	li	a1,0
    800056c4:	00008517          	auipc	a0,0x8
    800056c8:	9ac50513          	addi	a0,a0,-1620 # 8000d070 <lockPrint>
    800056cc:	ffffc097          	auipc	ra,0xffffc
    800056d0:	ad8080e7          	jalr	-1320(ra) # 800011a4 <copy_and_swap>
    800056d4:	00050863          	beqz	a0,800056e4 <_Z8printIntiii+0x50>
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	cb0080e7          	jalr	-848(ra) # 80001388 <_Z15thread_dispatchv>
    800056e0:	fddff06f          	j	800056bc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800056e4:	00098463          	beqz	s3,800056ec <_Z8printIntiii+0x58>
    800056e8:	0804c463          	bltz	s1,80005770 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800056ec:	0004851b          	sext.w	a0,s1
    neg = 0;
    800056f0:	00000593          	li	a1,0
    }

    i = 0;
    800056f4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800056f8:	0009079b          	sext.w	a5,s2
    800056fc:	0325773b          	remuw	a4,a0,s2
    80005700:	00048613          	mv	a2,s1
    80005704:	0014849b          	addiw	s1,s1,1
    80005708:	02071693          	slli	a3,a4,0x20
    8000570c:	0206d693          	srli	a3,a3,0x20
    80005710:	00007717          	auipc	a4,0x7
    80005714:	7e070713          	addi	a4,a4,2016 # 8000cef0 <digits>
    80005718:	00d70733          	add	a4,a4,a3
    8000571c:	00074683          	lbu	a3,0(a4)
    80005720:	fd040713          	addi	a4,s0,-48
    80005724:	00c70733          	add	a4,a4,a2
    80005728:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000572c:	0005071b          	sext.w	a4,a0
    80005730:	0325553b          	divuw	a0,a0,s2
    80005734:	fcf772e3          	bgeu	a4,a5,800056f8 <_Z8printIntiii+0x64>
    if(neg)
    80005738:	00058c63          	beqz	a1,80005750 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    8000573c:	fd040793          	addi	a5,s0,-48
    80005740:	009784b3          	add	s1,a5,s1
    80005744:	02d00793          	li	a5,45
    80005748:	fef48823          	sb	a5,-16(s1)
    8000574c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005750:	fff4849b          	addiw	s1,s1,-1
    80005754:	0204c463          	bltz	s1,8000577c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005758:	fd040793          	addi	a5,s0,-48
    8000575c:	009787b3          	add	a5,a5,s1
    80005760:	ff07c503          	lbu	a0,-16(a5)
    80005764:	ffffc097          	auipc	ra,0xffffc
    80005768:	eec080e7          	jalr	-276(ra) # 80001650 <_Z4putcc>
    8000576c:	fe5ff06f          	j	80005750 <_Z8printIntiii+0xbc>
        x = -xx;
    80005770:	4090053b          	negw	a0,s1
        neg = 1;
    80005774:	00100593          	li	a1,1
        x = -xx;
    80005778:	f7dff06f          	j	800056f4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000577c:	00000613          	li	a2,0
    80005780:	00100593          	li	a1,1
    80005784:	00008517          	auipc	a0,0x8
    80005788:	8ec50513          	addi	a0,a0,-1812 # 8000d070 <lockPrint>
    8000578c:	ffffc097          	auipc	ra,0xffffc
    80005790:	a18080e7          	jalr	-1512(ra) # 800011a4 <copy_and_swap>
    80005794:	fe0514e3          	bnez	a0,8000577c <_Z8printIntiii+0xe8>
    80005798:	03813083          	ld	ra,56(sp)
    8000579c:	03013403          	ld	s0,48(sp)
    800057a0:	02813483          	ld	s1,40(sp)
    800057a4:	02013903          	ld	s2,32(sp)
    800057a8:	01813983          	ld	s3,24(sp)
    800057ac:	04010113          	addi	sp,sp,64
    800057b0:	00008067          	ret

00000000800057b4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800057b4:	fd010113          	addi	sp,sp,-48
    800057b8:	02113423          	sd	ra,40(sp)
    800057bc:	02813023          	sd	s0,32(sp)
    800057c0:	00913c23          	sd	s1,24(sp)
    800057c4:	01213823          	sd	s2,16(sp)
    800057c8:	01313423          	sd	s3,8(sp)
    800057cc:	03010413          	addi	s0,sp,48
    800057d0:	00050493          	mv	s1,a0
    800057d4:	00058913          	mv	s2,a1
    800057d8:	0015879b          	addiw	a5,a1,1
    800057dc:	0007851b          	sext.w	a0,a5
    800057e0:	00f4a023          	sw	a5,0(s1)
    800057e4:	0004a823          	sw	zero,16(s1)
    800057e8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800057ec:	00251513          	slli	a0,a0,0x2
    800057f0:	ffffc097          	auipc	ra,0xffffc
    800057f4:	a08080e7          	jalr	-1528(ra) # 800011f8 <_Z9mem_allocm>
    800057f8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800057fc:	01000513          	li	a0,16
    80005800:	ffffd097          	auipc	ra,0xffffd
    80005804:	ea8080e7          	jalr	-344(ra) # 800026a8 <_Znwm>
    80005808:	00050993          	mv	s3,a0
    8000580c:	00000593          	li	a1,0
    80005810:	ffffd097          	auipc	ra,0xffffd
    80005814:	2a4080e7          	jalr	676(ra) # 80002ab4 <_ZN9SemaphoreC1Ej>
    80005818:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000581c:	01000513          	li	a0,16
    80005820:	ffffd097          	auipc	ra,0xffffd
    80005824:	e88080e7          	jalr	-376(ra) # 800026a8 <_Znwm>
    80005828:	00050993          	mv	s3,a0
    8000582c:	00090593          	mv	a1,s2
    80005830:	ffffd097          	auipc	ra,0xffffd
    80005834:	284080e7          	jalr	644(ra) # 80002ab4 <_ZN9SemaphoreC1Ej>
    80005838:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000583c:	01000513          	li	a0,16
    80005840:	ffffd097          	auipc	ra,0xffffd
    80005844:	e68080e7          	jalr	-408(ra) # 800026a8 <_Znwm>
    80005848:	00050913          	mv	s2,a0
    8000584c:	00100593          	li	a1,1
    80005850:	ffffd097          	auipc	ra,0xffffd
    80005854:	264080e7          	jalr	612(ra) # 80002ab4 <_ZN9SemaphoreC1Ej>
    80005858:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000585c:	01000513          	li	a0,16
    80005860:	ffffd097          	auipc	ra,0xffffd
    80005864:	e48080e7          	jalr	-440(ra) # 800026a8 <_Znwm>
    80005868:	00050913          	mv	s2,a0
    8000586c:	00100593          	li	a1,1
    80005870:	ffffd097          	auipc	ra,0xffffd
    80005874:	244080e7          	jalr	580(ra) # 80002ab4 <_ZN9SemaphoreC1Ej>
    80005878:	0324b823          	sd	s2,48(s1)
}
    8000587c:	02813083          	ld	ra,40(sp)
    80005880:	02013403          	ld	s0,32(sp)
    80005884:	01813483          	ld	s1,24(sp)
    80005888:	01013903          	ld	s2,16(sp)
    8000588c:	00813983          	ld	s3,8(sp)
    80005890:	03010113          	addi	sp,sp,48
    80005894:	00008067          	ret
    80005898:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000589c:	00098513          	mv	a0,s3
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	e58080e7          	jalr	-424(ra) # 800026f8 <_ZdlPv>
    800058a8:	00048513          	mv	a0,s1
    800058ac:	00009097          	auipc	ra,0x9
    800058b0:	89c080e7          	jalr	-1892(ra) # 8000e148 <_Unwind_Resume>
    800058b4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800058b8:	00098513          	mv	a0,s3
    800058bc:	ffffd097          	auipc	ra,0xffffd
    800058c0:	e3c080e7          	jalr	-452(ra) # 800026f8 <_ZdlPv>
    800058c4:	00048513          	mv	a0,s1
    800058c8:	00009097          	auipc	ra,0x9
    800058cc:	880080e7          	jalr	-1920(ra) # 8000e148 <_Unwind_Resume>
    800058d0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800058d4:	00090513          	mv	a0,s2
    800058d8:	ffffd097          	auipc	ra,0xffffd
    800058dc:	e20080e7          	jalr	-480(ra) # 800026f8 <_ZdlPv>
    800058e0:	00048513          	mv	a0,s1
    800058e4:	00009097          	auipc	ra,0x9
    800058e8:	864080e7          	jalr	-1948(ra) # 8000e148 <_Unwind_Resume>
    800058ec:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800058f0:	00090513          	mv	a0,s2
    800058f4:	ffffd097          	auipc	ra,0xffffd
    800058f8:	e04080e7          	jalr	-508(ra) # 800026f8 <_ZdlPv>
    800058fc:	00048513          	mv	a0,s1
    80005900:	00009097          	auipc	ra,0x9
    80005904:	848080e7          	jalr	-1976(ra) # 8000e148 <_Unwind_Resume>

0000000080005908 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005908:	fe010113          	addi	sp,sp,-32
    8000590c:	00113c23          	sd	ra,24(sp)
    80005910:	00813823          	sd	s0,16(sp)
    80005914:	00913423          	sd	s1,8(sp)
    80005918:	01213023          	sd	s2,0(sp)
    8000591c:	02010413          	addi	s0,sp,32
    80005920:	00050493          	mv	s1,a0
    80005924:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005928:	01853503          	ld	a0,24(a0)
    8000592c:	ffffd097          	auipc	ra,0xffffd
    80005930:	1c4080e7          	jalr	452(ra) # 80002af0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005934:	0304b503          	ld	a0,48(s1)
    80005938:	ffffd097          	auipc	ra,0xffffd
    8000593c:	1b8080e7          	jalr	440(ra) # 80002af0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005940:	0084b783          	ld	a5,8(s1)
    80005944:	0144a703          	lw	a4,20(s1)
    80005948:	00271713          	slli	a4,a4,0x2
    8000594c:	00e787b3          	add	a5,a5,a4
    80005950:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005954:	0144a783          	lw	a5,20(s1)
    80005958:	0017879b          	addiw	a5,a5,1
    8000595c:	0004a703          	lw	a4,0(s1)
    80005960:	02e7e7bb          	remw	a5,a5,a4
    80005964:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005968:	0304b503          	ld	a0,48(s1)
    8000596c:	ffffd097          	auipc	ra,0xffffd
    80005970:	1b0080e7          	jalr	432(ra) # 80002b1c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005974:	0204b503          	ld	a0,32(s1)
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	1a4080e7          	jalr	420(ra) # 80002b1c <_ZN9Semaphore6signalEv>

}
    80005980:	01813083          	ld	ra,24(sp)
    80005984:	01013403          	ld	s0,16(sp)
    80005988:	00813483          	ld	s1,8(sp)
    8000598c:	00013903          	ld	s2,0(sp)
    80005990:	02010113          	addi	sp,sp,32
    80005994:	00008067          	ret

0000000080005998 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005998:	fe010113          	addi	sp,sp,-32
    8000599c:	00113c23          	sd	ra,24(sp)
    800059a0:	00813823          	sd	s0,16(sp)
    800059a4:	00913423          	sd	s1,8(sp)
    800059a8:	01213023          	sd	s2,0(sp)
    800059ac:	02010413          	addi	s0,sp,32
    800059b0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800059b4:	02053503          	ld	a0,32(a0)
    800059b8:	ffffd097          	auipc	ra,0xffffd
    800059bc:	138080e7          	jalr	312(ra) # 80002af0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800059c0:	0284b503          	ld	a0,40(s1)
    800059c4:	ffffd097          	auipc	ra,0xffffd
    800059c8:	12c080e7          	jalr	300(ra) # 80002af0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800059cc:	0084b703          	ld	a4,8(s1)
    800059d0:	0104a783          	lw	a5,16(s1)
    800059d4:	00279693          	slli	a3,a5,0x2
    800059d8:	00d70733          	add	a4,a4,a3
    800059dc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800059e0:	0017879b          	addiw	a5,a5,1
    800059e4:	0004a703          	lw	a4,0(s1)
    800059e8:	02e7e7bb          	remw	a5,a5,a4
    800059ec:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800059f0:	0284b503          	ld	a0,40(s1)
    800059f4:	ffffd097          	auipc	ra,0xffffd
    800059f8:	128080e7          	jalr	296(ra) # 80002b1c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800059fc:	0184b503          	ld	a0,24(s1)
    80005a00:	ffffd097          	auipc	ra,0xffffd
    80005a04:	11c080e7          	jalr	284(ra) # 80002b1c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a08:	00090513          	mv	a0,s2
    80005a0c:	01813083          	ld	ra,24(sp)
    80005a10:	01013403          	ld	s0,16(sp)
    80005a14:	00813483          	ld	s1,8(sp)
    80005a18:	00013903          	ld	s2,0(sp)
    80005a1c:	02010113          	addi	sp,sp,32
    80005a20:	00008067          	ret

0000000080005a24 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005a24:	fe010113          	addi	sp,sp,-32
    80005a28:	00113c23          	sd	ra,24(sp)
    80005a2c:	00813823          	sd	s0,16(sp)
    80005a30:	00913423          	sd	s1,8(sp)
    80005a34:	01213023          	sd	s2,0(sp)
    80005a38:	02010413          	addi	s0,sp,32
    80005a3c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005a40:	02853503          	ld	a0,40(a0)
    80005a44:	ffffd097          	auipc	ra,0xffffd
    80005a48:	0ac080e7          	jalr	172(ra) # 80002af0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005a4c:	0304b503          	ld	a0,48(s1)
    80005a50:	ffffd097          	auipc	ra,0xffffd
    80005a54:	0a0080e7          	jalr	160(ra) # 80002af0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005a58:	0144a783          	lw	a5,20(s1)
    80005a5c:	0104a903          	lw	s2,16(s1)
    80005a60:	0327ce63          	blt	a5,s2,80005a9c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005a64:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005a68:	0304b503          	ld	a0,48(s1)
    80005a6c:	ffffd097          	auipc	ra,0xffffd
    80005a70:	0b0080e7          	jalr	176(ra) # 80002b1c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005a74:	0284b503          	ld	a0,40(s1)
    80005a78:	ffffd097          	auipc	ra,0xffffd
    80005a7c:	0a4080e7          	jalr	164(ra) # 80002b1c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a80:	00090513          	mv	a0,s2
    80005a84:	01813083          	ld	ra,24(sp)
    80005a88:	01013403          	ld	s0,16(sp)
    80005a8c:	00813483          	ld	s1,8(sp)
    80005a90:	00013903          	ld	s2,0(sp)
    80005a94:	02010113          	addi	sp,sp,32
    80005a98:	00008067          	ret
        ret = cap - head + tail;
    80005a9c:	0004a703          	lw	a4,0(s1)
    80005aa0:	4127093b          	subw	s2,a4,s2
    80005aa4:	00f9093b          	addw	s2,s2,a5
    80005aa8:	fc1ff06f          	j	80005a68 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005aac <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005aac:	fe010113          	addi	sp,sp,-32
    80005ab0:	00113c23          	sd	ra,24(sp)
    80005ab4:	00813823          	sd	s0,16(sp)
    80005ab8:	00913423          	sd	s1,8(sp)
    80005abc:	02010413          	addi	s0,sp,32
    80005ac0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005ac4:	00a00513          	li	a0,10
    80005ac8:	ffffd097          	auipc	ra,0xffffd
    80005acc:	110080e7          	jalr	272(ra) # 80002bd8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005ad0:	00005517          	auipc	a0,0x5
    80005ad4:	ad850513          	addi	a0,a0,-1320 # 8000a5a8 <CONSOLE_STATUS+0x598>
    80005ad8:	00000097          	auipc	ra,0x0
    80005adc:	a0c080e7          	jalr	-1524(ra) # 800054e4 <_Z11printStringPKc>
    while (getCnt()) {
    80005ae0:	00048513          	mv	a0,s1
    80005ae4:	00000097          	auipc	ra,0x0
    80005ae8:	f40080e7          	jalr	-192(ra) # 80005a24 <_ZN9BufferCPP6getCntEv>
    80005aec:	02050c63          	beqz	a0,80005b24 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005af0:	0084b783          	ld	a5,8(s1)
    80005af4:	0104a703          	lw	a4,16(s1)
    80005af8:	00271713          	slli	a4,a4,0x2
    80005afc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005b00:	0007c503          	lbu	a0,0(a5)
    80005b04:	ffffd097          	auipc	ra,0xffffd
    80005b08:	0d4080e7          	jalr	212(ra) # 80002bd8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005b0c:	0104a783          	lw	a5,16(s1)
    80005b10:	0017879b          	addiw	a5,a5,1
    80005b14:	0004a703          	lw	a4,0(s1)
    80005b18:	02e7e7bb          	remw	a5,a5,a4
    80005b1c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005b20:	fc1ff06f          	j	80005ae0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005b24:	02100513          	li	a0,33
    80005b28:	ffffd097          	auipc	ra,0xffffd
    80005b2c:	0b0080e7          	jalr	176(ra) # 80002bd8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005b30:	00a00513          	li	a0,10
    80005b34:	ffffd097          	auipc	ra,0xffffd
    80005b38:	0a4080e7          	jalr	164(ra) # 80002bd8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005b3c:	0084b503          	ld	a0,8(s1)
    80005b40:	ffffb097          	auipc	ra,0xffffb
    80005b44:	704080e7          	jalr	1796(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80005b48:	0204b503          	ld	a0,32(s1)
    80005b4c:	00050863          	beqz	a0,80005b5c <_ZN9BufferCPPD1Ev+0xb0>
    80005b50:	00053783          	ld	a5,0(a0)
    80005b54:	0087b783          	ld	a5,8(a5)
    80005b58:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005b5c:	0184b503          	ld	a0,24(s1)
    80005b60:	00050863          	beqz	a0,80005b70 <_ZN9BufferCPPD1Ev+0xc4>
    80005b64:	00053783          	ld	a5,0(a0)
    80005b68:	0087b783          	ld	a5,8(a5)
    80005b6c:	000780e7          	jalr	a5
    delete mutexTail;
    80005b70:	0304b503          	ld	a0,48(s1)
    80005b74:	00050863          	beqz	a0,80005b84 <_ZN9BufferCPPD1Ev+0xd8>
    80005b78:	00053783          	ld	a5,0(a0)
    80005b7c:	0087b783          	ld	a5,8(a5)
    80005b80:	000780e7          	jalr	a5
    delete mutexHead;
    80005b84:	0284b503          	ld	a0,40(s1)
    80005b88:	00050863          	beqz	a0,80005b98 <_ZN9BufferCPPD1Ev+0xec>
    80005b8c:	00053783          	ld	a5,0(a0)
    80005b90:	0087b783          	ld	a5,8(a5)
    80005b94:	000780e7          	jalr	a5
}
    80005b98:	01813083          	ld	ra,24(sp)
    80005b9c:	01013403          	ld	s0,16(sp)
    80005ba0:	00813483          	ld	s1,8(sp)
    80005ba4:	02010113          	addi	sp,sp,32
    80005ba8:	00008067          	ret

0000000080005bac <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005bac:	fe010113          	addi	sp,sp,-32
    80005bb0:	00113c23          	sd	ra,24(sp)
    80005bb4:	00813823          	sd	s0,16(sp)
    80005bb8:	00913423          	sd	s1,8(sp)
    80005bbc:	01213023          	sd	s2,0(sp)
    80005bc0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005bc4:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005bc8:	00600493          	li	s1,6
    while (--i > 0) {
    80005bcc:	fff4849b          	addiw	s1,s1,-1
    80005bd0:	04905463          	blez	s1,80005c18 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005bd4:	00005517          	auipc	a0,0x5
    80005bd8:	9ec50513          	addi	a0,a0,-1556 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80005bdc:	00000097          	auipc	ra,0x0
    80005be0:	908080e7          	jalr	-1784(ra) # 800054e4 <_Z11printStringPKc>
        printInt(sleep_time);
    80005be4:	00000613          	li	a2,0
    80005be8:	00a00593          	li	a1,10
    80005bec:	0009051b          	sext.w	a0,s2
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	aa4080e7          	jalr	-1372(ra) # 80005694 <_Z8printIntiii>
        printString(" !\n");
    80005bf8:	00005517          	auipc	a0,0x5
    80005bfc:	9d050513          	addi	a0,a0,-1584 # 8000a5c8 <CONSOLE_STATUS+0x5b8>
    80005c00:	00000097          	auipc	ra,0x0
    80005c04:	8e4080e7          	jalr	-1820(ra) # 800054e4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005c08:	00090513          	mv	a0,s2
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	9c4080e7          	jalr	-1596(ra) # 800015d0 <_Z10time_sleepm>
    while (--i > 0) {
    80005c14:	fb9ff06f          	j	80005bcc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005c18:	00a00793          	li	a5,10
    80005c1c:	02f95933          	divu	s2,s2,a5
    80005c20:	fff90913          	addi	s2,s2,-1
    80005c24:	00007797          	auipc	a5,0x7
    80005c28:	45478793          	addi	a5,a5,1108 # 8000d078 <_ZL8finished>
    80005c2c:	01278933          	add	s2,a5,s2
    80005c30:	00100793          	li	a5,1
    80005c34:	00f90023          	sb	a5,0(s2)
}
    80005c38:	01813083          	ld	ra,24(sp)
    80005c3c:	01013403          	ld	s0,16(sp)
    80005c40:	00813483          	ld	s1,8(sp)
    80005c44:	00013903          	ld	s2,0(sp)
    80005c48:	02010113          	addi	sp,sp,32
    80005c4c:	00008067          	ret

0000000080005c50 <_Z12testSleepingv>:

void testSleeping() {
    80005c50:	fc010113          	addi	sp,sp,-64
    80005c54:	02113c23          	sd	ra,56(sp)
    80005c58:	02813823          	sd	s0,48(sp)
    80005c5c:	02913423          	sd	s1,40(sp)
    80005c60:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005c64:	00a00793          	li	a5,10
    80005c68:	fcf43823          	sd	a5,-48(s0)
    80005c6c:	01400793          	li	a5,20
    80005c70:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005c74:	00000493          	li	s1,0
    80005c78:	02c0006f          	j	80005ca4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005c7c:	00349793          	slli	a5,s1,0x3
    80005c80:	fd040613          	addi	a2,s0,-48
    80005c84:	00f60633          	add	a2,a2,a5
    80005c88:	00000597          	auipc	a1,0x0
    80005c8c:	f2458593          	addi	a1,a1,-220 # 80005bac <_ZL9sleepyRunPv>
    80005c90:	fc040513          	addi	a0,s0,-64
    80005c94:	00f50533          	add	a0,a0,a5
    80005c98:	ffffb097          	auipc	ra,0xffffb
    80005c9c:	5ec080e7          	jalr	1516(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005ca0:	0014849b          	addiw	s1,s1,1
    80005ca4:	00100793          	li	a5,1
    80005ca8:	fc97dae3          	bge	a5,s1,80005c7c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005cac:	00007797          	auipc	a5,0x7
    80005cb0:	3cc7c783          	lbu	a5,972(a5) # 8000d078 <_ZL8finished>
    80005cb4:	fe078ce3          	beqz	a5,80005cac <_Z12testSleepingv+0x5c>
    80005cb8:	00007797          	auipc	a5,0x7
    80005cbc:	3c17c783          	lbu	a5,961(a5) # 8000d079 <_ZL8finished+0x1>
    80005cc0:	fe0786e3          	beqz	a5,80005cac <_Z12testSleepingv+0x5c>
}
    80005cc4:	03813083          	ld	ra,56(sp)
    80005cc8:	03013403          	ld	s0,48(sp)
    80005ccc:	02813483          	ld	s1,40(sp)
    80005cd0:	04010113          	addi	sp,sp,64
    80005cd4:	00008067          	ret

0000000080005cd8 <_Z17ThreadJoinAllTestv>:

        finishedA = true;
    }
};

void ThreadJoinAllTest() {
    80005cd8:	fe010113          	addi	sp,sp,-32
    80005cdc:	00113c23          	sd	ra,24(sp)
    80005ce0:	00813823          	sd	s0,16(sp)
    80005ce4:	00913423          	sd	s1,8(sp)
    80005ce8:	01213023          	sd	s2,0(sp)
    80005cec:	02010413          	addi	s0,sp,32
    AThread* a = new AThread();
    80005cf0:	02000513          	li	a0,32
    80005cf4:	ffffd097          	auipc	ra,0xffffd
    80005cf8:	9b4080e7          	jalr	-1612(ra) # 800026a8 <_Znwm>
    80005cfc:	00050493          	mv	s1,a0
    AThread() : Thread() {}
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	c80080e7          	jalr	-896(ra) # 80002980 <_ZN6ThreadC1Ev>
    80005d08:	00007797          	auipc	a5,0x7
    80005d0c:	26878793          	addi	a5,a5,616 # 8000cf70 <_ZTV7AThread+0x10>
    80005d10:	00f4b023          	sd	a5,0(s1)

    printString("A created\n");
    80005d14:	00005517          	auipc	a0,0x5
    80005d18:	98c50513          	addi	a0,a0,-1652 # 8000a6a0 <CONSOLE_STATUS+0x690>
    80005d1c:	fffff097          	auipc	ra,0xfffff
    80005d20:	7c8080e7          	jalr	1992(ra) # 800054e4 <_Z11printStringPKc>

    a->start();
    80005d24:	00048513          	mv	a0,s1
    80005d28:	ffffd097          	auipc	ra,0xffffd
    80005d2c:	c88080e7          	jalr	-888(ra) # 800029b0 <_ZN6Thread5startEv>

    while (!finishedA) {
    80005d30:	00007797          	auipc	a5,0x7
    80005d34:	34a7c783          	lbu	a5,842(a5) # 8000d07a <_ZL9finishedA>
    80005d38:	00079863          	bnez	a5,80005d48 <_Z17ThreadJoinAllTestv+0x70>
        Thread::dispatch();
    80005d3c:	ffffd097          	auipc	ra,0xffffd
    80005d40:	cc8080e7          	jalr	-824(ra) # 80002a04 <_ZN6Thread8dispatchEv>
    while (!finishedA) {
    80005d44:	fedff06f          	j	80005d30 <_Z17ThreadJoinAllTestv+0x58>
    }

    delete a;
    80005d48:	00048a63          	beqz	s1,80005d5c <_Z17ThreadJoinAllTestv+0x84>
    80005d4c:	0004b783          	ld	a5,0(s1)
    80005d50:	0087b783          	ld	a5,8(a5)
    80005d54:	00048513          	mv	a0,s1
    80005d58:	000780e7          	jalr	a5

    printString("THREAD JOIN ALL TEST FINISHED\n");
    80005d5c:	00005517          	auipc	a0,0x5
    80005d60:	95450513          	addi	a0,a0,-1708 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80005d64:	fffff097          	auipc	ra,0xfffff
    80005d68:	780080e7          	jalr	1920(ra) # 800054e4 <_Z11printStringPKc>
    80005d6c:	01813083          	ld	ra,24(sp)
    80005d70:	01013403          	ld	s0,16(sp)
    80005d74:	00813483          	ld	s1,8(sp)
    80005d78:	00013903          	ld	s2,0(sp)
    80005d7c:	02010113          	addi	sp,sp,32
    80005d80:	00008067          	ret
    80005d84:	00050913          	mv	s2,a0
    AThread* a = new AThread();
    80005d88:	00048513          	mv	a0,s1
    80005d8c:	ffffd097          	auipc	ra,0xffffd
    80005d90:	96c080e7          	jalr	-1684(ra) # 800026f8 <_ZdlPv>
    80005d94:	00090513          	mv	a0,s2
    80005d98:	00008097          	auipc	ra,0x8
    80005d9c:	3b0080e7          	jalr	944(ra) # 8000e148 <_Unwind_Resume>

0000000080005da0 <_ZN7AThread3runEv>:
    void run() override {
    80005da0:	fc010113          	addi	sp,sp,-64
    80005da4:	02113c23          	sd	ra,56(sp)
    80005da8:	02813823          	sd	s0,48(sp)
    80005dac:	02913423          	sd	s1,40(sp)
    80005db0:	03213023          	sd	s2,32(sp)
    80005db4:	01313c23          	sd	s3,24(sp)
    80005db8:	01413823          	sd	s4,16(sp)
    80005dbc:	01513423          	sd	s5,8(sp)
    80005dc0:	01613023          	sd	s6,0(sp)
    80005dc4:	04010413          	addi	s0,sp,64
    80005dc8:	00050a13          	mv	s4,a0
        printString("A started\n");
    80005dcc:	00005517          	auipc	a0,0x5
    80005dd0:	80450513          	addi	a0,a0,-2044 # 8000a5d0 <CONSOLE_STATUS+0x5c0>
    80005dd4:	fffff097          	auipc	ra,0xfffff
    80005dd8:	710080e7          	jalr	1808(ra) # 800054e4 <_Z11printStringPKc>
        BThread* b1 = new BThread(nextB++);
    80005ddc:	00007717          	auipc	a4,0x7
    80005de0:	12870713          	addi	a4,a4,296 # 8000cf04 <_ZL5nextB>
    80005de4:	00072783          	lw	a5,0(a4)
    80005de8:	0007849b          	sext.w	s1,a5
    80005dec:	0017879b          	addiw	a5,a5,1
    80005df0:	00f72023          	sw	a5,0(a4)
    80005df4:	02800513          	li	a0,40
    80005df8:	ffffd097          	auipc	ra,0xffffd
    80005dfc:	8b0080e7          	jalr	-1872(ra) # 800026a8 <_Znwm>
    80005e00:	00050993          	mv	s3,a0
    BThread(int id) : Thread(), id(id) {}
    80005e04:	ffffd097          	auipc	ra,0xffffd
    80005e08:	b7c080e7          	jalr	-1156(ra) # 80002980 <_ZN6ThreadC1Ev>
    80005e0c:	00007797          	auipc	a5,0x7
    80005e10:	13c78793          	addi	a5,a5,316 # 8000cf48 <_ZTV7BThread+0x10>
    80005e14:	00f9b023          	sd	a5,0(s3)
    80005e18:	0299a023          	sw	s1,32(s3)
        BThread* b2 = new BThread(nextB++);
    80005e1c:	00007717          	auipc	a4,0x7
    80005e20:	0e870713          	addi	a4,a4,232 # 8000cf04 <_ZL5nextB>
    80005e24:	00072783          	lw	a5,0(a4)
    80005e28:	0007849b          	sext.w	s1,a5
    80005e2c:	0017879b          	addiw	a5,a5,1
    80005e30:	00f72023          	sw	a5,0(a4)
    80005e34:	02800513          	li	a0,40
    80005e38:	ffffd097          	auipc	ra,0xffffd
    80005e3c:	870080e7          	jalr	-1936(ra) # 800026a8 <_Znwm>
    80005e40:	00050913          	mv	s2,a0
    BThread(int id) : Thread(), id(id) {}
    80005e44:	ffffd097          	auipc	ra,0xffffd
    80005e48:	b3c080e7          	jalr	-1220(ra) # 80002980 <_ZN6ThreadC1Ev>
    80005e4c:	00007797          	auipc	a5,0x7
    80005e50:	0fc78793          	addi	a5,a5,252 # 8000cf48 <_ZTV7BThread+0x10>
    80005e54:	00f93023          	sd	a5,0(s2)
    80005e58:	02992023          	sw	s1,32(s2)
        BThread* b3 = new BThread(nextB++);
    80005e5c:	00007717          	auipc	a4,0x7
    80005e60:	0a870713          	addi	a4,a4,168 # 8000cf04 <_ZL5nextB>
    80005e64:	00072783          	lw	a5,0(a4)
    80005e68:	0007849b          	sext.w	s1,a5
    80005e6c:	0017879b          	addiw	a5,a5,1
    80005e70:	00f72023          	sw	a5,0(a4)
    80005e74:	02800513          	li	a0,40
    80005e78:	ffffd097          	auipc	ra,0xffffd
    80005e7c:	830080e7          	jalr	-2000(ra) # 800026a8 <_Znwm>
    80005e80:	00050b13          	mv	s6,a0
    BThread(int id) : Thread(), id(id) {}
    80005e84:	ffffd097          	auipc	ra,0xffffd
    80005e88:	afc080e7          	jalr	-1284(ra) # 80002980 <_ZN6ThreadC1Ev>
    80005e8c:	00007797          	auipc	a5,0x7
    80005e90:	0bc78793          	addi	a5,a5,188 # 8000cf48 <_ZTV7BThread+0x10>
    80005e94:	00fb3023          	sd	a5,0(s6)
    80005e98:	029b2023          	sw	s1,32(s6)
        CThread* c1 = new CThread(nextC++);
    80005e9c:	00007717          	auipc	a4,0x7
    80005ea0:	06870713          	addi	a4,a4,104 # 8000cf04 <_ZL5nextB>
    80005ea4:	00472783          	lw	a5,4(a4)
    80005ea8:	00078a9b          	sext.w	s5,a5
    80005eac:	0017879b          	addiw	a5,a5,1
    80005eb0:	00f72223          	sw	a5,4(a4)
    80005eb4:	02800513          	li	a0,40
    80005eb8:	ffffc097          	auipc	ra,0xffffc
    80005ebc:	7f0080e7          	jalr	2032(ra) # 800026a8 <_Znwm>
    80005ec0:	00050493          	mv	s1,a0
    CThread(int id) : Thread(), id(id) {}
    80005ec4:	ffffd097          	auipc	ra,0xffffd
    80005ec8:	abc080e7          	jalr	-1348(ra) # 80002980 <_ZN6ThreadC1Ev>
    80005ecc:	00007797          	auipc	a5,0x7
    80005ed0:	05478793          	addi	a5,a5,84 # 8000cf20 <_ZTV7CThread+0x10>
    80005ed4:	00f4b023          	sd	a5,0(s1)
    80005ed8:	0354a023          	sw	s5,32(s1)
        b1->start();
    80005edc:	00098513          	mv	a0,s3
    80005ee0:	ffffd097          	auipc	ra,0xffffd
    80005ee4:	ad0080e7          	jalr	-1328(ra) # 800029b0 <_ZN6Thread5startEv>
        addChild(b1);
    80005ee8:	00098593          	mv	a1,s3
    80005eec:	000a0513          	mv	a0,s4
    80005ef0:	ffffd097          	auipc	ra,0xffffd
    80005ef4:	b3c080e7          	jalr	-1220(ra) # 80002a2c <_ZN6Thread8addChildEPS_>
        b2->start();
    80005ef8:	00090513          	mv	a0,s2
    80005efc:	ffffd097          	auipc	ra,0xffffd
    80005f00:	ab4080e7          	jalr	-1356(ra) # 800029b0 <_ZN6Thread5startEv>
        addChild(b2);
    80005f04:	00090593          	mv	a1,s2
    80005f08:	000a0513          	mv	a0,s4
    80005f0c:	ffffd097          	auipc	ra,0xffffd
    80005f10:	b20080e7          	jalr	-1248(ra) # 80002a2c <_ZN6Thread8addChildEPS_>
        b3->start();
    80005f14:	000b0513          	mv	a0,s6
    80005f18:	ffffd097          	auipc	ra,0xffffd
    80005f1c:	a98080e7          	jalr	-1384(ra) # 800029b0 <_ZN6Thread5startEv>
        addChild(b3);
    80005f20:	000b0593          	mv	a1,s6
    80005f24:	000a0513          	mv	a0,s4
    80005f28:	ffffd097          	auipc	ra,0xffffd
    80005f2c:	b04080e7          	jalr	-1276(ra) # 80002a2c <_ZN6Thread8addChildEPS_>
        c1->start();
    80005f30:	00048513          	mv	a0,s1
    80005f34:	ffffd097          	auipc	ra,0xffffd
    80005f38:	a7c080e7          	jalr	-1412(ra) # 800029b0 <_ZN6Thread5startEv>
        addChild(c1);
    80005f3c:	00048593          	mv	a1,s1
    80005f40:	000a0513          	mv	a0,s4
    80005f44:	ffffd097          	auipc	ra,0xffffd
    80005f48:	ae8080e7          	jalr	-1304(ra) # 80002a2c <_ZN6Thread8addChildEPS_>
        printString("A waiting for all children\n");
    80005f4c:	00004517          	auipc	a0,0x4
    80005f50:	69450513          	addi	a0,a0,1684 # 8000a5e0 <CONSOLE_STATUS+0x5d0>
    80005f54:	fffff097          	auipc	ra,0xfffff
    80005f58:	590080e7          	jalr	1424(ra) # 800054e4 <_Z11printStringPKc>
        joinAll();
    80005f5c:	000a0513          	mv	a0,s4
    80005f60:	ffffd097          	auipc	ra,0xffffd
    80005f64:	b04080e7          	jalr	-1276(ra) # 80002a64 <_ZN6Thread7joinAllEv>
        printString("A continued after all children\n");
    80005f68:	00004517          	auipc	a0,0x4
    80005f6c:	69850513          	addi	a0,a0,1688 # 8000a600 <CONSOLE_STATUS+0x5f0>
    80005f70:	fffff097          	auipc	ra,0xfffff
    80005f74:	574080e7          	jalr	1396(ra) # 800054e4 <_Z11printStringPKc>
        delete b1;
    80005f78:	00098a63          	beqz	s3,80005f8c <_ZN7AThread3runEv+0x1ec>
    80005f7c:	0009b783          	ld	a5,0(s3)
    80005f80:	0087b783          	ld	a5,8(a5)
    80005f84:	00098513          	mv	a0,s3
    80005f88:	000780e7          	jalr	a5
        delete b2;
    80005f8c:	00090a63          	beqz	s2,80005fa0 <_ZN7AThread3runEv+0x200>
    80005f90:	00093783          	ld	a5,0(s2)
    80005f94:	0087b783          	ld	a5,8(a5)
    80005f98:	00090513          	mv	a0,s2
    80005f9c:	000780e7          	jalr	a5
        delete b3;
    80005fa0:	000b0a63          	beqz	s6,80005fb4 <_ZN7AThread3runEv+0x214>
    80005fa4:	000b3783          	ld	a5,0(s6)
    80005fa8:	0087b783          	ld	a5,8(a5)
    80005fac:	000b0513          	mv	a0,s6
    80005fb0:	000780e7          	jalr	a5
        delete c1;
    80005fb4:	00048a63          	beqz	s1,80005fc8 <_ZN7AThread3runEv+0x228>
    80005fb8:	0004b783          	ld	a5,0(s1)
    80005fbc:	0087b783          	ld	a5,8(a5)
    80005fc0:	00048513          	mv	a0,s1
    80005fc4:	000780e7          	jalr	a5
        printString("A finished\n");
    80005fc8:	00004517          	auipc	a0,0x4
    80005fcc:	65850513          	addi	a0,a0,1624 # 8000a620 <CONSOLE_STATUS+0x610>
    80005fd0:	fffff097          	auipc	ra,0xfffff
    80005fd4:	514080e7          	jalr	1300(ra) # 800054e4 <_Z11printStringPKc>
        finishedA = true;
    80005fd8:	00100793          	li	a5,1
    80005fdc:	00007717          	auipc	a4,0x7
    80005fe0:	08f70f23          	sb	a5,158(a4) # 8000d07a <_ZL9finishedA>
    }
    80005fe4:	03813083          	ld	ra,56(sp)
    80005fe8:	03013403          	ld	s0,48(sp)
    80005fec:	02813483          	ld	s1,40(sp)
    80005ff0:	02013903          	ld	s2,32(sp)
    80005ff4:	01813983          	ld	s3,24(sp)
    80005ff8:	01013a03          	ld	s4,16(sp)
    80005ffc:	00813a83          	ld	s5,8(sp)
    80006000:	00013b03          	ld	s6,0(sp)
    80006004:	04010113          	addi	sp,sp,64
    80006008:	00008067          	ret
    8000600c:	00050493          	mv	s1,a0
        BThread* b1 = new BThread(nextB++);
    80006010:	00098513          	mv	a0,s3
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	6e4080e7          	jalr	1764(ra) # 800026f8 <_ZdlPv>
    8000601c:	00048513          	mv	a0,s1
    80006020:	00008097          	auipc	ra,0x8
    80006024:	128080e7          	jalr	296(ra) # 8000e148 <_Unwind_Resume>
    80006028:	00050493          	mv	s1,a0
        BThread* b2 = new BThread(nextB++);
    8000602c:	00090513          	mv	a0,s2
    80006030:	ffffc097          	auipc	ra,0xffffc
    80006034:	6c8080e7          	jalr	1736(ra) # 800026f8 <_ZdlPv>
    80006038:	00048513          	mv	a0,s1
    8000603c:	00008097          	auipc	ra,0x8
    80006040:	10c080e7          	jalr	268(ra) # 8000e148 <_Unwind_Resume>
    80006044:	00050493          	mv	s1,a0
        BThread* b3 = new BThread(nextB++);
    80006048:	000b0513          	mv	a0,s6
    8000604c:	ffffc097          	auipc	ra,0xffffc
    80006050:	6ac080e7          	jalr	1708(ra) # 800026f8 <_ZdlPv>
    80006054:	00048513          	mv	a0,s1
    80006058:	00008097          	auipc	ra,0x8
    8000605c:	0f0080e7          	jalr	240(ra) # 8000e148 <_Unwind_Resume>
    80006060:	00050913          	mv	s2,a0
        CThread* c1 = new CThread(nextC++);
    80006064:	00048513          	mv	a0,s1
    80006068:	ffffc097          	auipc	ra,0xffffc
    8000606c:	690080e7          	jalr	1680(ra) # 800026f8 <_ZdlPv>
    80006070:	00090513          	mv	a0,s2
    80006074:	00008097          	auipc	ra,0x8
    80006078:	0d4080e7          	jalr	212(ra) # 8000e148 <_Unwind_Resume>

000000008000607c <_ZN7BThread3runEv>:
    void run() override {
    8000607c:	fc010113          	addi	sp,sp,-64
    80006080:	02113c23          	sd	ra,56(sp)
    80006084:	02813823          	sd	s0,48(sp)
    80006088:	02913423          	sd	s1,40(sp)
    8000608c:	03213023          	sd	s2,32(sp)
    80006090:	01313c23          	sd	s3,24(sp)
    80006094:	01413823          	sd	s4,16(sp)
    80006098:	01513423          	sd	s5,8(sp)
    8000609c:	04010413          	addi	s0,sp,64
    800060a0:	00050493          	mv	s1,a0
        printString("B");
    800060a4:	00004517          	auipc	a0,0x4
    800060a8:	58c50513          	addi	a0,a0,1420 # 8000a630 <CONSOLE_STATUS+0x620>
    800060ac:	fffff097          	auipc	ra,0xfffff
    800060b0:	438080e7          	jalr	1080(ra) # 800054e4 <_Z11printStringPKc>
        printInt(id);
    800060b4:	00000613          	li	a2,0
    800060b8:	00a00593          	li	a1,10
    800060bc:	0204a503          	lw	a0,32(s1)
    800060c0:	fffff097          	auipc	ra,0xfffff
    800060c4:	5d4080e7          	jalr	1492(ra) # 80005694 <_Z8printIntiii>
        printString(" started\n");
    800060c8:	00004517          	auipc	a0,0x4
    800060cc:	57050513          	addi	a0,a0,1392 # 8000a638 <CONSOLE_STATUS+0x628>
    800060d0:	fffff097          	auipc	ra,0xfffff
    800060d4:	414080e7          	jalr	1044(ra) # 800054e4 <_Z11printStringPKc>
        CThread* c1 = new CThread(nextC++);
    800060d8:	00007717          	auipc	a4,0x7
    800060dc:	e2c70713          	addi	a4,a4,-468 # 8000cf04 <_ZL5nextB>
    800060e0:	00472783          	lw	a5,4(a4)
    800060e4:	0007891b          	sext.w	s2,a5
    800060e8:	0017879b          	addiw	a5,a5,1
    800060ec:	00f72223          	sw	a5,4(a4)
    800060f0:	02800513          	li	a0,40
    800060f4:	ffffc097          	auipc	ra,0xffffc
    800060f8:	5b4080e7          	jalr	1460(ra) # 800026a8 <_Znwm>
    800060fc:	00050993          	mv	s3,a0
    CThread(int id) : Thread(), id(id) {}
    80006100:	ffffd097          	auipc	ra,0xffffd
    80006104:	880080e7          	jalr	-1920(ra) # 80002980 <_ZN6ThreadC1Ev>
    80006108:	00007797          	auipc	a5,0x7
    8000610c:	e1878793          	addi	a5,a5,-488 # 8000cf20 <_ZTV7CThread+0x10>
    80006110:	00f9b023          	sd	a5,0(s3)
    80006114:	0329a023          	sw	s2,32(s3)
        CThread* c2 = new CThread(nextC++);
    80006118:	00007717          	auipc	a4,0x7
    8000611c:	dec70713          	addi	a4,a4,-532 # 8000cf04 <_ZL5nextB>
    80006120:	00472783          	lw	a5,4(a4)
    80006124:	0007891b          	sext.w	s2,a5
    80006128:	0017879b          	addiw	a5,a5,1
    8000612c:	00f72223          	sw	a5,4(a4)
    80006130:	02800513          	li	a0,40
    80006134:	ffffc097          	auipc	ra,0xffffc
    80006138:	574080e7          	jalr	1396(ra) # 800026a8 <_Znwm>
    8000613c:	00050a93          	mv	s5,a0
    CThread(int id) : Thread(), id(id) {}
    80006140:	ffffd097          	auipc	ra,0xffffd
    80006144:	840080e7          	jalr	-1984(ra) # 80002980 <_ZN6ThreadC1Ev>
    80006148:	00007797          	auipc	a5,0x7
    8000614c:	dd878793          	addi	a5,a5,-552 # 8000cf20 <_ZTV7CThread+0x10>
    80006150:	00fab023          	sd	a5,0(s5)
    80006154:	032aa023          	sw	s2,32(s5)
        CThread* c3 = new CThread(nextC++);
    80006158:	00007717          	auipc	a4,0x7
    8000615c:	dac70713          	addi	a4,a4,-596 # 8000cf04 <_ZL5nextB>
    80006160:	00472783          	lw	a5,4(a4)
    80006164:	00078a1b          	sext.w	s4,a5
    80006168:	0017879b          	addiw	a5,a5,1
    8000616c:	00f72223          	sw	a5,4(a4)
    80006170:	02800513          	li	a0,40
    80006174:	ffffc097          	auipc	ra,0xffffc
    80006178:	534080e7          	jalr	1332(ra) # 800026a8 <_Znwm>
    8000617c:	00050913          	mv	s2,a0
    CThread(int id) : Thread(), id(id) {}
    80006180:	ffffd097          	auipc	ra,0xffffd
    80006184:	800080e7          	jalr	-2048(ra) # 80002980 <_ZN6ThreadC1Ev>
    80006188:	00007797          	auipc	a5,0x7
    8000618c:	d9878793          	addi	a5,a5,-616 # 8000cf20 <_ZTV7CThread+0x10>
    80006190:	00f93023          	sd	a5,0(s2)
    80006194:	03492023          	sw	s4,32(s2)
        c1->start();
    80006198:	00098513          	mv	a0,s3
    8000619c:	ffffd097          	auipc	ra,0xffffd
    800061a0:	814080e7          	jalr	-2028(ra) # 800029b0 <_ZN6Thread5startEv>
        addChild(c1);
    800061a4:	00098593          	mv	a1,s3
    800061a8:	00048513          	mv	a0,s1
    800061ac:	ffffd097          	auipc	ra,0xffffd
    800061b0:	880080e7          	jalr	-1920(ra) # 80002a2c <_ZN6Thread8addChildEPS_>
        c2->start();
    800061b4:	000a8513          	mv	a0,s5
    800061b8:	ffffc097          	auipc	ra,0xffffc
    800061bc:	7f8080e7          	jalr	2040(ra) # 800029b0 <_ZN6Thread5startEv>
        addChild(c2);
    800061c0:	000a8593          	mv	a1,s5
    800061c4:	00048513          	mv	a0,s1
    800061c8:	ffffd097          	auipc	ra,0xffffd
    800061cc:	864080e7          	jalr	-1948(ra) # 80002a2c <_ZN6Thread8addChildEPS_>
        c3->start();
    800061d0:	00090513          	mv	a0,s2
    800061d4:	ffffc097          	auipc	ra,0xffffc
    800061d8:	7dc080e7          	jalr	2012(ra) # 800029b0 <_ZN6Thread5startEv>
        addChild(c3);
    800061dc:	00090593          	mv	a1,s2
    800061e0:	00048513          	mv	a0,s1
    800061e4:	ffffd097          	auipc	ra,0xffffd
    800061e8:	848080e7          	jalr	-1976(ra) # 80002a2c <_ZN6Thread8addChildEPS_>
        printString("B");
    800061ec:	00004517          	auipc	a0,0x4
    800061f0:	44450513          	addi	a0,a0,1092 # 8000a630 <CONSOLE_STATUS+0x620>
    800061f4:	fffff097          	auipc	ra,0xfffff
    800061f8:	2f0080e7          	jalr	752(ra) # 800054e4 <_Z11printStringPKc>
        printInt(id);
    800061fc:	00000613          	li	a2,0
    80006200:	00a00593          	li	a1,10
    80006204:	0204a503          	lw	a0,32(s1)
    80006208:	fffff097          	auipc	ra,0xfffff
    8000620c:	48c080e7          	jalr	1164(ra) # 80005694 <_Z8printIntiii>
        printString(" waiting for all children\n");
    80006210:	00004517          	auipc	a0,0x4
    80006214:	43850513          	addi	a0,a0,1080 # 8000a648 <CONSOLE_STATUS+0x638>
    80006218:	fffff097          	auipc	ra,0xfffff
    8000621c:	2cc080e7          	jalr	716(ra) # 800054e4 <_Z11printStringPKc>
        joinAll();
    80006220:	00048513          	mv	a0,s1
    80006224:	ffffd097          	auipc	ra,0xffffd
    80006228:	840080e7          	jalr	-1984(ra) # 80002a64 <_ZN6Thread7joinAllEv>
        printString("B");
    8000622c:	00004517          	auipc	a0,0x4
    80006230:	40450513          	addi	a0,a0,1028 # 8000a630 <CONSOLE_STATUS+0x620>
    80006234:	fffff097          	auipc	ra,0xfffff
    80006238:	2b0080e7          	jalr	688(ra) # 800054e4 <_Z11printStringPKc>
        printInt(id);
    8000623c:	00000613          	li	a2,0
    80006240:	00a00593          	li	a1,10
    80006244:	0204a503          	lw	a0,32(s1)
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	44c080e7          	jalr	1100(ra) # 80005694 <_Z8printIntiii>
        printString(" continued after all children\n");
    80006250:	00004517          	auipc	a0,0x4
    80006254:	41850513          	addi	a0,a0,1048 # 8000a668 <CONSOLE_STATUS+0x658>
    80006258:	fffff097          	auipc	ra,0xfffff
    8000625c:	28c080e7          	jalr	652(ra) # 800054e4 <_Z11printStringPKc>
        delete c1;
    80006260:	00098a63          	beqz	s3,80006274 <_ZN7BThread3runEv+0x1f8>
    80006264:	0009b783          	ld	a5,0(s3)
    80006268:	0087b783          	ld	a5,8(a5)
    8000626c:	00098513          	mv	a0,s3
    80006270:	000780e7          	jalr	a5
        delete c2;
    80006274:	000a8a63          	beqz	s5,80006288 <_ZN7BThread3runEv+0x20c>
    80006278:	000ab783          	ld	a5,0(s5)
    8000627c:	0087b783          	ld	a5,8(a5)
    80006280:	000a8513          	mv	a0,s5
    80006284:	000780e7          	jalr	a5
        delete c3;
    80006288:	00090a63          	beqz	s2,8000629c <_ZN7BThread3runEv+0x220>
    8000628c:	00093783          	ld	a5,0(s2)
    80006290:	0087b783          	ld	a5,8(a5)
    80006294:	00090513          	mv	a0,s2
    80006298:	000780e7          	jalr	a5
        printString("B");
    8000629c:	00004517          	auipc	a0,0x4
    800062a0:	39450513          	addi	a0,a0,916 # 8000a630 <CONSOLE_STATUS+0x620>
    800062a4:	fffff097          	auipc	ra,0xfffff
    800062a8:	240080e7          	jalr	576(ra) # 800054e4 <_Z11printStringPKc>
        printInt(id);
    800062ac:	00000613          	li	a2,0
    800062b0:	00a00593          	li	a1,10
    800062b4:	0204a503          	lw	a0,32(s1)
    800062b8:	fffff097          	auipc	ra,0xfffff
    800062bc:	3dc080e7          	jalr	988(ra) # 80005694 <_Z8printIntiii>
        printString(" finished\n");
    800062c0:	00004517          	auipc	a0,0x4
    800062c4:	3c850513          	addi	a0,a0,968 # 8000a688 <CONSOLE_STATUS+0x678>
    800062c8:	fffff097          	auipc	ra,0xfffff
    800062cc:	21c080e7          	jalr	540(ra) # 800054e4 <_Z11printStringPKc>
    }
    800062d0:	03813083          	ld	ra,56(sp)
    800062d4:	03013403          	ld	s0,48(sp)
    800062d8:	02813483          	ld	s1,40(sp)
    800062dc:	02013903          	ld	s2,32(sp)
    800062e0:	01813983          	ld	s3,24(sp)
    800062e4:	01013a03          	ld	s4,16(sp)
    800062e8:	00813a83          	ld	s5,8(sp)
    800062ec:	04010113          	addi	sp,sp,64
    800062f0:	00008067          	ret
    800062f4:	00050493          	mv	s1,a0
        CThread* c1 = new CThread(nextC++);
    800062f8:	00098513          	mv	a0,s3
    800062fc:	ffffc097          	auipc	ra,0xffffc
    80006300:	3fc080e7          	jalr	1020(ra) # 800026f8 <_ZdlPv>
    80006304:	00048513          	mv	a0,s1
    80006308:	00008097          	auipc	ra,0x8
    8000630c:	e40080e7          	jalr	-448(ra) # 8000e148 <_Unwind_Resume>
    80006310:	00050493          	mv	s1,a0
        CThread* c2 = new CThread(nextC++);
    80006314:	000a8513          	mv	a0,s5
    80006318:	ffffc097          	auipc	ra,0xffffc
    8000631c:	3e0080e7          	jalr	992(ra) # 800026f8 <_ZdlPv>
    80006320:	00048513          	mv	a0,s1
    80006324:	00008097          	auipc	ra,0x8
    80006328:	e24080e7          	jalr	-476(ra) # 8000e148 <_Unwind_Resume>
    8000632c:	00050493          	mv	s1,a0
        CThread* c3 = new CThread(nextC++);
    80006330:	00090513          	mv	a0,s2
    80006334:	ffffc097          	auipc	ra,0xffffc
    80006338:	3c4080e7          	jalr	964(ra) # 800026f8 <_ZdlPv>
    8000633c:	00048513          	mv	a0,s1
    80006340:	00008097          	auipc	ra,0x8
    80006344:	e08080e7          	jalr	-504(ra) # 8000e148 <_Unwind_Resume>

0000000080006348 <_ZN7BThreadD1Ev>:
class BThread : public Thread {
    80006348:	ff010113          	addi	sp,sp,-16
    8000634c:	00113423          	sd	ra,8(sp)
    80006350:	00813023          	sd	s0,0(sp)
    80006354:	01010413          	addi	s0,sp,16
    80006358:	00007797          	auipc	a5,0x7
    8000635c:	bf078793          	addi	a5,a5,-1040 # 8000cf48 <_ZTV7BThread+0x10>
    80006360:	00f53023          	sd	a5,0(a0)
    80006364:	ffffc097          	auipc	ra,0xffffc
    80006368:	4f8080e7          	jalr	1272(ra) # 8000285c <_ZN6ThreadD1Ev>
    8000636c:	00813083          	ld	ra,8(sp)
    80006370:	00013403          	ld	s0,0(sp)
    80006374:	01010113          	addi	sp,sp,16
    80006378:	00008067          	ret

000000008000637c <_ZN7BThreadD0Ev>:
    8000637c:	fe010113          	addi	sp,sp,-32
    80006380:	00113c23          	sd	ra,24(sp)
    80006384:	00813823          	sd	s0,16(sp)
    80006388:	00913423          	sd	s1,8(sp)
    8000638c:	02010413          	addi	s0,sp,32
    80006390:	00050493          	mv	s1,a0
    80006394:	00007797          	auipc	a5,0x7
    80006398:	bb478793          	addi	a5,a5,-1100 # 8000cf48 <_ZTV7BThread+0x10>
    8000639c:	00f53023          	sd	a5,0(a0)
    800063a0:	ffffc097          	auipc	ra,0xffffc
    800063a4:	4bc080e7          	jalr	1212(ra) # 8000285c <_ZN6ThreadD1Ev>
    800063a8:	00048513          	mv	a0,s1
    800063ac:	ffffc097          	auipc	ra,0xffffc
    800063b0:	34c080e7          	jalr	844(ra) # 800026f8 <_ZdlPv>
    800063b4:	01813083          	ld	ra,24(sp)
    800063b8:	01013403          	ld	s0,16(sp)
    800063bc:	00813483          	ld	s1,8(sp)
    800063c0:	02010113          	addi	sp,sp,32
    800063c4:	00008067          	ret

00000000800063c8 <_ZN7CThreadD1Ev>:
class CThread : public Thread {
    800063c8:	ff010113          	addi	sp,sp,-16
    800063cc:	00113423          	sd	ra,8(sp)
    800063d0:	00813023          	sd	s0,0(sp)
    800063d4:	01010413          	addi	s0,sp,16
    800063d8:	00007797          	auipc	a5,0x7
    800063dc:	b4878793          	addi	a5,a5,-1208 # 8000cf20 <_ZTV7CThread+0x10>
    800063e0:	00f53023          	sd	a5,0(a0)
    800063e4:	ffffc097          	auipc	ra,0xffffc
    800063e8:	478080e7          	jalr	1144(ra) # 8000285c <_ZN6ThreadD1Ev>
    800063ec:	00813083          	ld	ra,8(sp)
    800063f0:	00013403          	ld	s0,0(sp)
    800063f4:	01010113          	addi	sp,sp,16
    800063f8:	00008067          	ret

00000000800063fc <_ZN7CThreadD0Ev>:
    800063fc:	fe010113          	addi	sp,sp,-32
    80006400:	00113c23          	sd	ra,24(sp)
    80006404:	00813823          	sd	s0,16(sp)
    80006408:	00913423          	sd	s1,8(sp)
    8000640c:	02010413          	addi	s0,sp,32
    80006410:	00050493          	mv	s1,a0
    80006414:	00007797          	auipc	a5,0x7
    80006418:	b0c78793          	addi	a5,a5,-1268 # 8000cf20 <_ZTV7CThread+0x10>
    8000641c:	00f53023          	sd	a5,0(a0)
    80006420:	ffffc097          	auipc	ra,0xffffc
    80006424:	43c080e7          	jalr	1084(ra) # 8000285c <_ZN6ThreadD1Ev>
    80006428:	00048513          	mv	a0,s1
    8000642c:	ffffc097          	auipc	ra,0xffffc
    80006430:	2cc080e7          	jalr	716(ra) # 800026f8 <_ZdlPv>
    80006434:	01813083          	ld	ra,24(sp)
    80006438:	01013403          	ld	s0,16(sp)
    8000643c:	00813483          	ld	s1,8(sp)
    80006440:	02010113          	addi	sp,sp,32
    80006444:	00008067          	ret

0000000080006448 <_ZN7AThreadD1Ev>:
class AThread : public Thread {
    80006448:	ff010113          	addi	sp,sp,-16
    8000644c:	00113423          	sd	ra,8(sp)
    80006450:	00813023          	sd	s0,0(sp)
    80006454:	01010413          	addi	s0,sp,16
    80006458:	00007797          	auipc	a5,0x7
    8000645c:	b1878793          	addi	a5,a5,-1256 # 8000cf70 <_ZTV7AThread+0x10>
    80006460:	00f53023          	sd	a5,0(a0)
    80006464:	ffffc097          	auipc	ra,0xffffc
    80006468:	3f8080e7          	jalr	1016(ra) # 8000285c <_ZN6ThreadD1Ev>
    8000646c:	00813083          	ld	ra,8(sp)
    80006470:	00013403          	ld	s0,0(sp)
    80006474:	01010113          	addi	sp,sp,16
    80006478:	00008067          	ret

000000008000647c <_ZN7AThreadD0Ev>:
    8000647c:	fe010113          	addi	sp,sp,-32
    80006480:	00113c23          	sd	ra,24(sp)
    80006484:	00813823          	sd	s0,16(sp)
    80006488:	00913423          	sd	s1,8(sp)
    8000648c:	02010413          	addi	s0,sp,32
    80006490:	00050493          	mv	s1,a0
    80006494:	00007797          	auipc	a5,0x7
    80006498:	adc78793          	addi	a5,a5,-1316 # 8000cf70 <_ZTV7AThread+0x10>
    8000649c:	00f53023          	sd	a5,0(a0)
    800064a0:	ffffc097          	auipc	ra,0xffffc
    800064a4:	3bc080e7          	jalr	956(ra) # 8000285c <_ZN6ThreadD1Ev>
    800064a8:	00048513          	mv	a0,s1
    800064ac:	ffffc097          	auipc	ra,0xffffc
    800064b0:	24c080e7          	jalr	588(ra) # 800026f8 <_ZdlPv>
    800064b4:	01813083          	ld	ra,24(sp)
    800064b8:	01013403          	ld	s0,16(sp)
    800064bc:	00813483          	ld	s1,8(sp)
    800064c0:	02010113          	addi	sp,sp,32
    800064c4:	00008067          	ret

00000000800064c8 <_ZL8busyWaitv>:
static void busyWait() {
    800064c8:	fe010113          	addi	sp,sp,-32
    800064cc:	00113c23          	sd	ra,24(sp)
    800064d0:	00813823          	sd	s0,16(sp)
    800064d4:	00913423          	sd	s1,8(sp)
    800064d8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10000; i++) {
    800064dc:	00000493          	li	s1,0
    800064e0:	0100006f          	j	800064f0 <_ZL8busyWaitv+0x28>
        thread_dispatch();
    800064e4:	ffffb097          	auipc	ra,0xffffb
    800064e8:	ea4080e7          	jalr	-348(ra) # 80001388 <_Z15thread_dispatchv>
    for (uint64 i = 0; i < 10000; i++) {
    800064ec:	00148493          	addi	s1,s1,1
    800064f0:	000027b7          	lui	a5,0x2
    800064f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800064f8:	0097ee63          	bltu	a5,s1,80006514 <_ZL8busyWaitv+0x4c>
        for (uint64 j = 0; j < 30000; j++) {
    800064fc:	00000713          	li	a4,0
    80006500:	000077b7          	lui	a5,0x7
    80006504:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006508:	fce7eee3          	bltu	a5,a4,800064e4 <_ZL8busyWaitv+0x1c>
    8000650c:	00170713          	addi	a4,a4,1
    80006510:	ff1ff06f          	j	80006500 <_ZL8busyWaitv+0x38>
}
    80006514:	01813083          	ld	ra,24(sp)
    80006518:	01013403          	ld	s0,16(sp)
    8000651c:	00813483          	ld	s1,8(sp)
    80006520:	02010113          	addi	sp,sp,32
    80006524:	00008067          	ret

0000000080006528 <_ZN7CThread3runEv>:
    void run() override {
    80006528:	fe010113          	addi	sp,sp,-32
    8000652c:	00113c23          	sd	ra,24(sp)
    80006530:	00813823          	sd	s0,16(sp)
    80006534:	00913423          	sd	s1,8(sp)
    80006538:	02010413          	addi	s0,sp,32
    8000653c:	00050493          	mv	s1,a0
        printString("C");
    80006540:	00004517          	auipc	a0,0x4
    80006544:	15850513          	addi	a0,a0,344 # 8000a698 <CONSOLE_STATUS+0x688>
    80006548:	fffff097          	auipc	ra,0xfffff
    8000654c:	f9c080e7          	jalr	-100(ra) # 800054e4 <_Z11printStringPKc>
        printInt(id);
    80006550:	00000613          	li	a2,0
    80006554:	00a00593          	li	a1,10
    80006558:	0204a503          	lw	a0,32(s1)
    8000655c:	fffff097          	auipc	ra,0xfffff
    80006560:	138080e7          	jalr	312(ra) # 80005694 <_Z8printIntiii>
        printString(" started\n");
    80006564:	00004517          	auipc	a0,0x4
    80006568:	0d450513          	addi	a0,a0,212 # 8000a638 <CONSOLE_STATUS+0x628>
    8000656c:	fffff097          	auipc	ra,0xfffff
    80006570:	f78080e7          	jalr	-136(ra) # 800054e4 <_Z11printStringPKc>
        busyWait();
    80006574:	00000097          	auipc	ra,0x0
    80006578:	f54080e7          	jalr	-172(ra) # 800064c8 <_ZL8busyWaitv>
        printString("C");
    8000657c:	00004517          	auipc	a0,0x4
    80006580:	11c50513          	addi	a0,a0,284 # 8000a698 <CONSOLE_STATUS+0x688>
    80006584:	fffff097          	auipc	ra,0xfffff
    80006588:	f60080e7          	jalr	-160(ra) # 800054e4 <_Z11printStringPKc>
        printInt(id);
    8000658c:	00000613          	li	a2,0
    80006590:	00a00593          	li	a1,10
    80006594:	0204a503          	lw	a0,32(s1)
    80006598:	fffff097          	auipc	ra,0xfffff
    8000659c:	0fc080e7          	jalr	252(ra) # 80005694 <_Z8printIntiii>
        printString(" finished\n");
    800065a0:	00004517          	auipc	a0,0x4
    800065a4:	0e850513          	addi	a0,a0,232 # 8000a688 <CONSOLE_STATUS+0x678>
    800065a8:	fffff097          	auipc	ra,0xfffff
    800065ac:	f3c080e7          	jalr	-196(ra) # 800054e4 <_Z11printStringPKc>
    }
    800065b0:	01813083          	ld	ra,24(sp)
    800065b4:	01013403          	ld	s0,16(sp)
    800065b8:	00813483          	ld	s1,8(sp)
    800065bc:	02010113          	addi	sp,sp,32
    800065c0:	00008067          	ret

00000000800065c4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800065c4:	fe010113          	addi	sp,sp,-32
    800065c8:	00113c23          	sd	ra,24(sp)
    800065cc:	00813823          	sd	s0,16(sp)
    800065d0:	00913423          	sd	s1,8(sp)
    800065d4:	01213023          	sd	s2,0(sp)
    800065d8:	02010413          	addi	s0,sp,32
    800065dc:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800065e0:	00100793          	li	a5,1
    800065e4:	02a7f863          	bgeu	a5,a0,80006614 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800065e8:	00a00793          	li	a5,10
    800065ec:	02f577b3          	remu	a5,a0,a5
    800065f0:	02078e63          	beqz	a5,8000662c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800065f4:	fff48513          	addi	a0,s1,-1
    800065f8:	00000097          	auipc	ra,0x0
    800065fc:	fcc080e7          	jalr	-52(ra) # 800065c4 <_ZL9fibonaccim>
    80006600:	00050913          	mv	s2,a0
    80006604:	ffe48513          	addi	a0,s1,-2
    80006608:	00000097          	auipc	ra,0x0
    8000660c:	fbc080e7          	jalr	-68(ra) # 800065c4 <_ZL9fibonaccim>
    80006610:	00a90533          	add	a0,s2,a0
}
    80006614:	01813083          	ld	ra,24(sp)
    80006618:	01013403          	ld	s0,16(sp)
    8000661c:	00813483          	ld	s1,8(sp)
    80006620:	00013903          	ld	s2,0(sp)
    80006624:	02010113          	addi	sp,sp,32
    80006628:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000662c:	ffffb097          	auipc	ra,0xffffb
    80006630:	d5c080e7          	jalr	-676(ra) # 80001388 <_Z15thread_dispatchv>
    80006634:	fc1ff06f          	j	800065f4 <_ZL9fibonaccim+0x30>

0000000080006638 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006638:	fe010113          	addi	sp,sp,-32
    8000663c:	00113c23          	sd	ra,24(sp)
    80006640:	00813823          	sd	s0,16(sp)
    80006644:	00913423          	sd	s1,8(sp)
    80006648:	01213023          	sd	s2,0(sp)
    8000664c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006650:	00a00493          	li	s1,10
    80006654:	0400006f          	j	80006694 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006658:	00004517          	auipc	a0,0x4
    8000665c:	eb850513          	addi	a0,a0,-328 # 8000a510 <CONSOLE_STATUS+0x500>
    80006660:	fffff097          	auipc	ra,0xfffff
    80006664:	e84080e7          	jalr	-380(ra) # 800054e4 <_Z11printStringPKc>
    80006668:	00000613          	li	a2,0
    8000666c:	00a00593          	li	a1,10
    80006670:	00048513          	mv	a0,s1
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	020080e7          	jalr	32(ra) # 80005694 <_Z8printIntiii>
    8000667c:	00004517          	auipc	a0,0x4
    80006680:	c2450513          	addi	a0,a0,-988 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	e60080e7          	jalr	-416(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000668c:	0014849b          	addiw	s1,s1,1
    80006690:	0ff4f493          	andi	s1,s1,255
    80006694:	00c00793          	li	a5,12
    80006698:	fc97f0e3          	bgeu	a5,s1,80006658 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000669c:	00004517          	auipc	a0,0x4
    800066a0:	e7c50513          	addi	a0,a0,-388 # 8000a518 <CONSOLE_STATUS+0x508>
    800066a4:	fffff097          	auipc	ra,0xfffff
    800066a8:	e40080e7          	jalr	-448(ra) # 800054e4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800066ac:	00500313          	li	t1,5
    thread_dispatch();
    800066b0:	ffffb097          	auipc	ra,0xffffb
    800066b4:	cd8080e7          	jalr	-808(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800066b8:	01000513          	li	a0,16
    800066bc:	00000097          	auipc	ra,0x0
    800066c0:	f08080e7          	jalr	-248(ra) # 800065c4 <_ZL9fibonaccim>
    800066c4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800066c8:	00004517          	auipc	a0,0x4
    800066cc:	e6050513          	addi	a0,a0,-416 # 8000a528 <CONSOLE_STATUS+0x518>
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	e14080e7          	jalr	-492(ra) # 800054e4 <_Z11printStringPKc>
    800066d8:	00000613          	li	a2,0
    800066dc:	00a00593          	li	a1,10
    800066e0:	0009051b          	sext.w	a0,s2
    800066e4:	fffff097          	auipc	ra,0xfffff
    800066e8:	fb0080e7          	jalr	-80(ra) # 80005694 <_Z8printIntiii>
    800066ec:	00004517          	auipc	a0,0x4
    800066f0:	bb450513          	addi	a0,a0,-1100 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800066f4:	fffff097          	auipc	ra,0xfffff
    800066f8:	df0080e7          	jalr	-528(ra) # 800054e4 <_Z11printStringPKc>
    800066fc:	0400006f          	j	8000673c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006700:	00004517          	auipc	a0,0x4
    80006704:	e1050513          	addi	a0,a0,-496 # 8000a510 <CONSOLE_STATUS+0x500>
    80006708:	fffff097          	auipc	ra,0xfffff
    8000670c:	ddc080e7          	jalr	-548(ra) # 800054e4 <_Z11printStringPKc>
    80006710:	00000613          	li	a2,0
    80006714:	00a00593          	li	a1,10
    80006718:	00048513          	mv	a0,s1
    8000671c:	fffff097          	auipc	ra,0xfffff
    80006720:	f78080e7          	jalr	-136(ra) # 80005694 <_Z8printIntiii>
    80006724:	00004517          	auipc	a0,0x4
    80006728:	b7c50513          	addi	a0,a0,-1156 # 8000a2a0 <CONSOLE_STATUS+0x290>
    8000672c:	fffff097          	auipc	ra,0xfffff
    80006730:	db8080e7          	jalr	-584(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006734:	0014849b          	addiw	s1,s1,1
    80006738:	0ff4f493          	andi	s1,s1,255
    8000673c:	00f00793          	li	a5,15
    80006740:	fc97f0e3          	bgeu	a5,s1,80006700 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006744:	00004517          	auipc	a0,0x4
    80006748:	df450513          	addi	a0,a0,-524 # 8000a538 <CONSOLE_STATUS+0x528>
    8000674c:	fffff097          	auipc	ra,0xfffff
    80006750:	d98080e7          	jalr	-616(ra) # 800054e4 <_Z11printStringPKc>
    finishedD = true;
    80006754:	00100793          	li	a5,1
    80006758:	00007717          	auipc	a4,0x7
    8000675c:	92f701a3          	sb	a5,-1757(a4) # 8000d07b <_ZL9finishedD>
    thread_dispatch();
    80006760:	ffffb097          	auipc	ra,0xffffb
    80006764:	c28080e7          	jalr	-984(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006768:	01813083          	ld	ra,24(sp)
    8000676c:	01013403          	ld	s0,16(sp)
    80006770:	00813483          	ld	s1,8(sp)
    80006774:	00013903          	ld	s2,0(sp)
    80006778:	02010113          	addi	sp,sp,32
    8000677c:	00008067          	ret

0000000080006780 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006780:	fe010113          	addi	sp,sp,-32
    80006784:	00113c23          	sd	ra,24(sp)
    80006788:	00813823          	sd	s0,16(sp)
    8000678c:	00913423          	sd	s1,8(sp)
    80006790:	01213023          	sd	s2,0(sp)
    80006794:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006798:	00000493          	li	s1,0
    8000679c:	0400006f          	j	800067dc <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800067a0:	00004517          	auipc	a0,0x4
    800067a4:	d4050513          	addi	a0,a0,-704 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    800067a8:	fffff097          	auipc	ra,0xfffff
    800067ac:	d3c080e7          	jalr	-708(ra) # 800054e4 <_Z11printStringPKc>
    800067b0:	00000613          	li	a2,0
    800067b4:	00a00593          	li	a1,10
    800067b8:	00048513          	mv	a0,s1
    800067bc:	fffff097          	auipc	ra,0xfffff
    800067c0:	ed8080e7          	jalr	-296(ra) # 80005694 <_Z8printIntiii>
    800067c4:	00004517          	auipc	a0,0x4
    800067c8:	adc50513          	addi	a0,a0,-1316 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800067cc:	fffff097          	auipc	ra,0xfffff
    800067d0:	d18080e7          	jalr	-744(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800067d4:	0014849b          	addiw	s1,s1,1
    800067d8:	0ff4f493          	andi	s1,s1,255
    800067dc:	00200793          	li	a5,2
    800067e0:	fc97f0e3          	bgeu	a5,s1,800067a0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800067e4:	00004517          	auipc	a0,0x4
    800067e8:	d0450513          	addi	a0,a0,-764 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    800067ec:	fffff097          	auipc	ra,0xfffff
    800067f0:	cf8080e7          	jalr	-776(ra) # 800054e4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800067f4:	00700313          	li	t1,7
    thread_dispatch();
    800067f8:	ffffb097          	auipc	ra,0xffffb
    800067fc:	b90080e7          	jalr	-1136(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006800:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006804:	00004517          	auipc	a0,0x4
    80006808:	cf450513          	addi	a0,a0,-780 # 8000a4f8 <CONSOLE_STATUS+0x4e8>
    8000680c:	fffff097          	auipc	ra,0xfffff
    80006810:	cd8080e7          	jalr	-808(ra) # 800054e4 <_Z11printStringPKc>
    80006814:	00000613          	li	a2,0
    80006818:	00a00593          	li	a1,10
    8000681c:	0009051b          	sext.w	a0,s2
    80006820:	fffff097          	auipc	ra,0xfffff
    80006824:	e74080e7          	jalr	-396(ra) # 80005694 <_Z8printIntiii>
    80006828:	00004517          	auipc	a0,0x4
    8000682c:	a7850513          	addi	a0,a0,-1416 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006830:	fffff097          	auipc	ra,0xfffff
    80006834:	cb4080e7          	jalr	-844(ra) # 800054e4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006838:	00c00513          	li	a0,12
    8000683c:	00000097          	auipc	ra,0x0
    80006840:	d88080e7          	jalr	-632(ra) # 800065c4 <_ZL9fibonaccim>
    80006844:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006848:	00004517          	auipc	a0,0x4
    8000684c:	cb850513          	addi	a0,a0,-840 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80006850:	fffff097          	auipc	ra,0xfffff
    80006854:	c94080e7          	jalr	-876(ra) # 800054e4 <_Z11printStringPKc>
    80006858:	00000613          	li	a2,0
    8000685c:	00a00593          	li	a1,10
    80006860:	0009051b          	sext.w	a0,s2
    80006864:	fffff097          	auipc	ra,0xfffff
    80006868:	e30080e7          	jalr	-464(ra) # 80005694 <_Z8printIntiii>
    8000686c:	00004517          	auipc	a0,0x4
    80006870:	a3450513          	addi	a0,a0,-1484 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006874:	fffff097          	auipc	ra,0xfffff
    80006878:	c70080e7          	jalr	-912(ra) # 800054e4 <_Z11printStringPKc>
    8000687c:	0400006f          	j	800068bc <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006880:	00004517          	auipc	a0,0x4
    80006884:	c6050513          	addi	a0,a0,-928 # 8000a4e0 <CONSOLE_STATUS+0x4d0>
    80006888:	fffff097          	auipc	ra,0xfffff
    8000688c:	c5c080e7          	jalr	-932(ra) # 800054e4 <_Z11printStringPKc>
    80006890:	00000613          	li	a2,0
    80006894:	00a00593          	li	a1,10
    80006898:	00048513          	mv	a0,s1
    8000689c:	fffff097          	auipc	ra,0xfffff
    800068a0:	df8080e7          	jalr	-520(ra) # 80005694 <_Z8printIntiii>
    800068a4:	00004517          	auipc	a0,0x4
    800068a8:	9fc50513          	addi	a0,a0,-1540 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800068ac:	fffff097          	auipc	ra,0xfffff
    800068b0:	c38080e7          	jalr	-968(ra) # 800054e4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800068b4:	0014849b          	addiw	s1,s1,1
    800068b8:	0ff4f493          	andi	s1,s1,255
    800068bc:	00500793          	li	a5,5
    800068c0:	fc97f0e3          	bgeu	a5,s1,80006880 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800068c4:	00004517          	auipc	a0,0x4
    800068c8:	bf450513          	addi	a0,a0,-1036 # 8000a4b8 <CONSOLE_STATUS+0x4a8>
    800068cc:	fffff097          	auipc	ra,0xfffff
    800068d0:	c18080e7          	jalr	-1000(ra) # 800054e4 <_Z11printStringPKc>
    finishedC = true;
    800068d4:	00100793          	li	a5,1
    800068d8:	00006717          	auipc	a4,0x6
    800068dc:	7af70223          	sb	a5,1956(a4) # 8000d07c <_ZL9finishedC>
    thread_dispatch();
    800068e0:	ffffb097          	auipc	ra,0xffffb
    800068e4:	aa8080e7          	jalr	-1368(ra) # 80001388 <_Z15thread_dispatchv>
}
    800068e8:	01813083          	ld	ra,24(sp)
    800068ec:	01013403          	ld	s0,16(sp)
    800068f0:	00813483          	ld	s1,8(sp)
    800068f4:	00013903          	ld	s2,0(sp)
    800068f8:	02010113          	addi	sp,sp,32
    800068fc:	00008067          	ret

0000000080006900 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006900:	fe010113          	addi	sp,sp,-32
    80006904:	00113c23          	sd	ra,24(sp)
    80006908:	00813823          	sd	s0,16(sp)
    8000690c:	00913423          	sd	s1,8(sp)
    80006910:	01213023          	sd	s2,0(sp)
    80006914:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006918:	00000913          	li	s2,0
    8000691c:	0400006f          	j	8000695c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006920:	ffffb097          	auipc	ra,0xffffb
    80006924:	a68080e7          	jalr	-1432(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006928:	00148493          	addi	s1,s1,1
    8000692c:	000027b7          	lui	a5,0x2
    80006930:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006934:	0097ee63          	bltu	a5,s1,80006950 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006938:	00000713          	li	a4,0
    8000693c:	000077b7          	lui	a5,0x7
    80006940:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006944:	fce7eee3          	bltu	a5,a4,80006920 <_ZL11workerBodyBPv+0x20>
    80006948:	00170713          	addi	a4,a4,1
    8000694c:	ff1ff06f          	j	8000693c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006950:	00a00793          	li	a5,10
    80006954:	04f90663          	beq	s2,a5,800069a0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006958:	00190913          	addi	s2,s2,1
    8000695c:	00f00793          	li	a5,15
    80006960:	0527e463          	bltu	a5,s2,800069a8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006964:	00004517          	auipc	a0,0x4
    80006968:	b6450513          	addi	a0,a0,-1180 # 8000a4c8 <CONSOLE_STATUS+0x4b8>
    8000696c:	fffff097          	auipc	ra,0xfffff
    80006970:	b78080e7          	jalr	-1160(ra) # 800054e4 <_Z11printStringPKc>
    80006974:	00000613          	li	a2,0
    80006978:	00a00593          	li	a1,10
    8000697c:	0009051b          	sext.w	a0,s2
    80006980:	fffff097          	auipc	ra,0xfffff
    80006984:	d14080e7          	jalr	-748(ra) # 80005694 <_Z8printIntiii>
    80006988:	00004517          	auipc	a0,0x4
    8000698c:	91850513          	addi	a0,a0,-1768 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006990:	fffff097          	auipc	ra,0xfffff
    80006994:	b54080e7          	jalr	-1196(ra) # 800054e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006998:	00000493          	li	s1,0
    8000699c:	f91ff06f          	j	8000692c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800069a0:	14102ff3          	csrr	t6,sepc
    800069a4:	fb5ff06f          	j	80006958 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800069a8:	00004517          	auipc	a0,0x4
    800069ac:	b2850513          	addi	a0,a0,-1240 # 8000a4d0 <CONSOLE_STATUS+0x4c0>
    800069b0:	fffff097          	auipc	ra,0xfffff
    800069b4:	b34080e7          	jalr	-1228(ra) # 800054e4 <_Z11printStringPKc>
    finishedB = true;
    800069b8:	00100793          	li	a5,1
    800069bc:	00006717          	auipc	a4,0x6
    800069c0:	6cf700a3          	sb	a5,1729(a4) # 8000d07d <_ZL9finishedB>
    thread_dispatch();
    800069c4:	ffffb097          	auipc	ra,0xffffb
    800069c8:	9c4080e7          	jalr	-1596(ra) # 80001388 <_Z15thread_dispatchv>
}
    800069cc:	01813083          	ld	ra,24(sp)
    800069d0:	01013403          	ld	s0,16(sp)
    800069d4:	00813483          	ld	s1,8(sp)
    800069d8:	00013903          	ld	s2,0(sp)
    800069dc:	02010113          	addi	sp,sp,32
    800069e0:	00008067          	ret

00000000800069e4 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800069e4:	fe010113          	addi	sp,sp,-32
    800069e8:	00113c23          	sd	ra,24(sp)
    800069ec:	00813823          	sd	s0,16(sp)
    800069f0:	00913423          	sd	s1,8(sp)
    800069f4:	01213023          	sd	s2,0(sp)
    800069f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800069fc:	00000913          	li	s2,0
    80006a00:	0380006f          	j	80006a38 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006a04:	ffffb097          	auipc	ra,0xffffb
    80006a08:	984080e7          	jalr	-1660(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006a0c:	00148493          	addi	s1,s1,1
    80006a10:	000027b7          	lui	a5,0x2
    80006a14:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006a18:	0097ee63          	bltu	a5,s1,80006a34 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006a1c:	00000713          	li	a4,0
    80006a20:	000077b7          	lui	a5,0x7
    80006a24:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006a28:	fce7eee3          	bltu	a5,a4,80006a04 <_ZL11workerBodyAPv+0x20>
    80006a2c:	00170713          	addi	a4,a4,1
    80006a30:	ff1ff06f          	j	80006a20 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006a34:	00190913          	addi	s2,s2,1
    80006a38:	00900793          	li	a5,9
    80006a3c:	0527e063          	bltu	a5,s2,80006a7c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006a40:	00004517          	auipc	a0,0x4
    80006a44:	a7050513          	addi	a0,a0,-1424 # 8000a4b0 <CONSOLE_STATUS+0x4a0>
    80006a48:	fffff097          	auipc	ra,0xfffff
    80006a4c:	a9c080e7          	jalr	-1380(ra) # 800054e4 <_Z11printStringPKc>
    80006a50:	00000613          	li	a2,0
    80006a54:	00a00593          	li	a1,10
    80006a58:	0009051b          	sext.w	a0,s2
    80006a5c:	fffff097          	auipc	ra,0xfffff
    80006a60:	c38080e7          	jalr	-968(ra) # 80005694 <_Z8printIntiii>
    80006a64:	00004517          	auipc	a0,0x4
    80006a68:	83c50513          	addi	a0,a0,-1988 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80006a6c:	fffff097          	auipc	ra,0xfffff
    80006a70:	a78080e7          	jalr	-1416(ra) # 800054e4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006a74:	00000493          	li	s1,0
    80006a78:	f99ff06f          	j	80006a10 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006a7c:	00004517          	auipc	a0,0x4
    80006a80:	a3c50513          	addi	a0,a0,-1476 # 8000a4b8 <CONSOLE_STATUS+0x4a8>
    80006a84:	fffff097          	auipc	ra,0xfffff
    80006a88:	a60080e7          	jalr	-1440(ra) # 800054e4 <_Z11printStringPKc>
    finishedA = true;
    80006a8c:	00100793          	li	a5,1
    80006a90:	00006717          	auipc	a4,0x6
    80006a94:	5ef70723          	sb	a5,1518(a4) # 8000d07e <_ZL9finishedA>
}
    80006a98:	01813083          	ld	ra,24(sp)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	00813483          	ld	s1,8(sp)
    80006aa4:	00013903          	ld	s2,0(sp)
    80006aa8:	02010113          	addi	sp,sp,32
    80006aac:	00008067          	ret

0000000080006ab0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006ab0:	fd010113          	addi	sp,sp,-48
    80006ab4:	02113423          	sd	ra,40(sp)
    80006ab8:	02813023          	sd	s0,32(sp)
    80006abc:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ac0:	00000613          	li	a2,0
    80006ac4:	00000597          	auipc	a1,0x0
    80006ac8:	f2058593          	addi	a1,a1,-224 # 800069e4 <_ZL11workerBodyAPv>
    80006acc:	fd040513          	addi	a0,s0,-48
    80006ad0:	ffffa097          	auipc	ra,0xffffa
    80006ad4:	7b4080e7          	jalr	1972(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006ad8:	00004517          	auipc	a0,0x4
    80006adc:	a7050513          	addi	a0,a0,-1424 # 8000a548 <CONSOLE_STATUS+0x538>
    80006ae0:	fffff097          	auipc	ra,0xfffff
    80006ae4:	a04080e7          	jalr	-1532(ra) # 800054e4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006ae8:	00000613          	li	a2,0
    80006aec:	00000597          	auipc	a1,0x0
    80006af0:	e1458593          	addi	a1,a1,-492 # 80006900 <_ZL11workerBodyBPv>
    80006af4:	fd840513          	addi	a0,s0,-40
    80006af8:	ffffa097          	auipc	ra,0xffffa
    80006afc:	78c080e7          	jalr	1932(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006b00:	00004517          	auipc	a0,0x4
    80006b04:	a6050513          	addi	a0,a0,-1440 # 8000a560 <CONSOLE_STATUS+0x550>
    80006b08:	fffff097          	auipc	ra,0xfffff
    80006b0c:	9dc080e7          	jalr	-1572(ra) # 800054e4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006b10:	00000613          	li	a2,0
    80006b14:	00000597          	auipc	a1,0x0
    80006b18:	c6c58593          	addi	a1,a1,-916 # 80006780 <_ZL11workerBodyCPv>
    80006b1c:	fe040513          	addi	a0,s0,-32
    80006b20:	ffffa097          	auipc	ra,0xffffa
    80006b24:	764080e7          	jalr	1892(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80006b28:	00004517          	auipc	a0,0x4
    80006b2c:	a5050513          	addi	a0,a0,-1456 # 8000a578 <CONSOLE_STATUS+0x568>
    80006b30:	fffff097          	auipc	ra,0xfffff
    80006b34:	9b4080e7          	jalr	-1612(ra) # 800054e4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006b38:	00000613          	li	a2,0
    80006b3c:	00000597          	auipc	a1,0x0
    80006b40:	afc58593          	addi	a1,a1,-1284 # 80006638 <_ZL11workerBodyDPv>
    80006b44:	fe840513          	addi	a0,s0,-24
    80006b48:	ffffa097          	auipc	ra,0xffffa
    80006b4c:	73c080e7          	jalr	1852(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006b50:	00004517          	auipc	a0,0x4
    80006b54:	a4050513          	addi	a0,a0,-1472 # 8000a590 <CONSOLE_STATUS+0x580>
    80006b58:	fffff097          	auipc	ra,0xfffff
    80006b5c:	98c080e7          	jalr	-1652(ra) # 800054e4 <_Z11printStringPKc>
    80006b60:	00c0006f          	j	80006b6c <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006b64:	ffffb097          	auipc	ra,0xffffb
    80006b68:	824080e7          	jalr	-2012(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006b6c:	00006797          	auipc	a5,0x6
    80006b70:	5127c783          	lbu	a5,1298(a5) # 8000d07e <_ZL9finishedA>
    80006b74:	fe0788e3          	beqz	a5,80006b64 <_Z16System_Mode_testv+0xb4>
    80006b78:	00006797          	auipc	a5,0x6
    80006b7c:	5057c783          	lbu	a5,1285(a5) # 8000d07d <_ZL9finishedB>
    80006b80:	fe0782e3          	beqz	a5,80006b64 <_Z16System_Mode_testv+0xb4>
    80006b84:	00006797          	auipc	a5,0x6
    80006b88:	4f87c783          	lbu	a5,1272(a5) # 8000d07c <_ZL9finishedC>
    80006b8c:	fc078ce3          	beqz	a5,80006b64 <_Z16System_Mode_testv+0xb4>
    80006b90:	00006797          	auipc	a5,0x6
    80006b94:	4eb7c783          	lbu	a5,1259(a5) # 8000d07b <_ZL9finishedD>
    80006b98:	fc0786e3          	beqz	a5,80006b64 <_Z16System_Mode_testv+0xb4>
    }

}
    80006b9c:	02813083          	ld	ra,40(sp)
    80006ba0:	02013403          	ld	s0,32(sp)
    80006ba4:	03010113          	addi	sp,sp,48
    80006ba8:	00008067          	ret

0000000080006bac <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006bac:	fe010113          	addi	sp,sp,-32
    80006bb0:	00113c23          	sd	ra,24(sp)
    80006bb4:	00813823          	sd	s0,16(sp)
    80006bb8:	00913423          	sd	s1,8(sp)
    80006bbc:	01213023          	sd	s2,0(sp)
    80006bc0:	02010413          	addi	s0,sp,32
    80006bc4:	00050493          	mv	s1,a0
    80006bc8:	00058913          	mv	s2,a1
    80006bcc:	0015879b          	addiw	a5,a1,1
    80006bd0:	0007851b          	sext.w	a0,a5
    80006bd4:	00f4a023          	sw	a5,0(s1)
    80006bd8:	0004a823          	sw	zero,16(s1)
    80006bdc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006be0:	00251513          	slli	a0,a0,0x2
    80006be4:	ffffa097          	auipc	ra,0xffffa
    80006be8:	614080e7          	jalr	1556(ra) # 800011f8 <_Z9mem_allocm>
    80006bec:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006bf0:	00000593          	li	a1,0
    80006bf4:	02048513          	addi	a0,s1,32
    80006bf8:	ffffb097          	auipc	ra,0xffffb
    80006bfc:	84c080e7          	jalr	-1972(ra) # 80001444 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006c00:	00090593          	mv	a1,s2
    80006c04:	01848513          	addi	a0,s1,24
    80006c08:	ffffb097          	auipc	ra,0xffffb
    80006c0c:	83c080e7          	jalr	-1988(ra) # 80001444 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006c10:	00100593          	li	a1,1
    80006c14:	02848513          	addi	a0,s1,40
    80006c18:	ffffb097          	auipc	ra,0xffffb
    80006c1c:	82c080e7          	jalr	-2004(ra) # 80001444 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006c20:	00100593          	li	a1,1
    80006c24:	03048513          	addi	a0,s1,48
    80006c28:	ffffb097          	auipc	ra,0xffffb
    80006c2c:	81c080e7          	jalr	-2020(ra) # 80001444 <_Z8sem_openPP4_semj>
}
    80006c30:	01813083          	ld	ra,24(sp)
    80006c34:	01013403          	ld	s0,16(sp)
    80006c38:	00813483          	ld	s1,8(sp)
    80006c3c:	00013903          	ld	s2,0(sp)
    80006c40:	02010113          	addi	sp,sp,32
    80006c44:	00008067          	ret

0000000080006c48 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006c48:	fe010113          	addi	sp,sp,-32
    80006c4c:	00113c23          	sd	ra,24(sp)
    80006c50:	00813823          	sd	s0,16(sp)
    80006c54:	00913423          	sd	s1,8(sp)
    80006c58:	01213023          	sd	s2,0(sp)
    80006c5c:	02010413          	addi	s0,sp,32
    80006c60:	00050493          	mv	s1,a0
    80006c64:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006c68:	01853503          	ld	a0,24(a0)
    80006c6c:	ffffb097          	auipc	ra,0xffffb
    80006c70:	85c080e7          	jalr	-1956(ra) # 800014c8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006c74:	0304b503          	ld	a0,48(s1)
    80006c78:	ffffb097          	auipc	ra,0xffffb
    80006c7c:	850080e7          	jalr	-1968(ra) # 800014c8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006c80:	0084b783          	ld	a5,8(s1)
    80006c84:	0144a703          	lw	a4,20(s1)
    80006c88:	00271713          	slli	a4,a4,0x2
    80006c8c:	00e787b3          	add	a5,a5,a4
    80006c90:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006c94:	0144a783          	lw	a5,20(s1)
    80006c98:	0017879b          	addiw	a5,a5,1
    80006c9c:	0004a703          	lw	a4,0(s1)
    80006ca0:	02e7e7bb          	remw	a5,a5,a4
    80006ca4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006ca8:	0304b503          	ld	a0,48(s1)
    80006cac:	ffffb097          	auipc	ra,0xffffb
    80006cb0:	85c080e7          	jalr	-1956(ra) # 80001508 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006cb4:	0204b503          	ld	a0,32(s1)
    80006cb8:	ffffb097          	auipc	ra,0xffffb
    80006cbc:	850080e7          	jalr	-1968(ra) # 80001508 <_Z10sem_signalP4_sem>

}
    80006cc0:	01813083          	ld	ra,24(sp)
    80006cc4:	01013403          	ld	s0,16(sp)
    80006cc8:	00813483          	ld	s1,8(sp)
    80006ccc:	00013903          	ld	s2,0(sp)
    80006cd0:	02010113          	addi	sp,sp,32
    80006cd4:	00008067          	ret

0000000080006cd8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006cd8:	fe010113          	addi	sp,sp,-32
    80006cdc:	00113c23          	sd	ra,24(sp)
    80006ce0:	00813823          	sd	s0,16(sp)
    80006ce4:	00913423          	sd	s1,8(sp)
    80006ce8:	01213023          	sd	s2,0(sp)
    80006cec:	02010413          	addi	s0,sp,32
    80006cf0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006cf4:	02053503          	ld	a0,32(a0)
    80006cf8:	ffffa097          	auipc	ra,0xffffa
    80006cfc:	7d0080e7          	jalr	2000(ra) # 800014c8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006d00:	0284b503          	ld	a0,40(s1)
    80006d04:	ffffa097          	auipc	ra,0xffffa
    80006d08:	7c4080e7          	jalr	1988(ra) # 800014c8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006d0c:	0084b703          	ld	a4,8(s1)
    80006d10:	0104a783          	lw	a5,16(s1)
    80006d14:	00279693          	slli	a3,a5,0x2
    80006d18:	00d70733          	add	a4,a4,a3
    80006d1c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006d20:	0017879b          	addiw	a5,a5,1
    80006d24:	0004a703          	lw	a4,0(s1)
    80006d28:	02e7e7bb          	remw	a5,a5,a4
    80006d2c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006d30:	0284b503          	ld	a0,40(s1)
    80006d34:	ffffa097          	auipc	ra,0xffffa
    80006d38:	7d4080e7          	jalr	2004(ra) # 80001508 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006d3c:	0184b503          	ld	a0,24(s1)
    80006d40:	ffffa097          	auipc	ra,0xffffa
    80006d44:	7c8080e7          	jalr	1992(ra) # 80001508 <_Z10sem_signalP4_sem>

    return ret;
}
    80006d48:	00090513          	mv	a0,s2
    80006d4c:	01813083          	ld	ra,24(sp)
    80006d50:	01013403          	ld	s0,16(sp)
    80006d54:	00813483          	ld	s1,8(sp)
    80006d58:	00013903          	ld	s2,0(sp)
    80006d5c:	02010113          	addi	sp,sp,32
    80006d60:	00008067          	ret

0000000080006d64 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006d64:	fe010113          	addi	sp,sp,-32
    80006d68:	00113c23          	sd	ra,24(sp)
    80006d6c:	00813823          	sd	s0,16(sp)
    80006d70:	00913423          	sd	s1,8(sp)
    80006d74:	01213023          	sd	s2,0(sp)
    80006d78:	02010413          	addi	s0,sp,32
    80006d7c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006d80:	02853503          	ld	a0,40(a0)
    80006d84:	ffffa097          	auipc	ra,0xffffa
    80006d88:	744080e7          	jalr	1860(ra) # 800014c8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006d8c:	0304b503          	ld	a0,48(s1)
    80006d90:	ffffa097          	auipc	ra,0xffffa
    80006d94:	738080e7          	jalr	1848(ra) # 800014c8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006d98:	0144a783          	lw	a5,20(s1)
    80006d9c:	0104a903          	lw	s2,16(s1)
    80006da0:	0327ce63          	blt	a5,s2,80006ddc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006da4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006da8:	0304b503          	ld	a0,48(s1)
    80006dac:	ffffa097          	auipc	ra,0xffffa
    80006db0:	75c080e7          	jalr	1884(ra) # 80001508 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006db4:	0284b503          	ld	a0,40(s1)
    80006db8:	ffffa097          	auipc	ra,0xffffa
    80006dbc:	750080e7          	jalr	1872(ra) # 80001508 <_Z10sem_signalP4_sem>

    return ret;
}
    80006dc0:	00090513          	mv	a0,s2
    80006dc4:	01813083          	ld	ra,24(sp)
    80006dc8:	01013403          	ld	s0,16(sp)
    80006dcc:	00813483          	ld	s1,8(sp)
    80006dd0:	00013903          	ld	s2,0(sp)
    80006dd4:	02010113          	addi	sp,sp,32
    80006dd8:	00008067          	ret
        ret = cap - head + tail;
    80006ddc:	0004a703          	lw	a4,0(s1)
    80006de0:	4127093b          	subw	s2,a4,s2
    80006de4:	00f9093b          	addw	s2,s2,a5
    80006de8:	fc1ff06f          	j	80006da8 <_ZN6Buffer6getCntEv+0x44>

0000000080006dec <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006dec:	fe010113          	addi	sp,sp,-32
    80006df0:	00113c23          	sd	ra,24(sp)
    80006df4:	00813823          	sd	s0,16(sp)
    80006df8:	00913423          	sd	s1,8(sp)
    80006dfc:	02010413          	addi	s0,sp,32
    80006e00:	00050493          	mv	s1,a0
    putc('\n');
    80006e04:	00a00513          	li	a0,10
    80006e08:	ffffb097          	auipc	ra,0xffffb
    80006e0c:	848080e7          	jalr	-1976(ra) # 80001650 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006e10:	00003517          	auipc	a0,0x3
    80006e14:	79850513          	addi	a0,a0,1944 # 8000a5a8 <CONSOLE_STATUS+0x598>
    80006e18:	ffffe097          	auipc	ra,0xffffe
    80006e1c:	6cc080e7          	jalr	1740(ra) # 800054e4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006e20:	00048513          	mv	a0,s1
    80006e24:	00000097          	auipc	ra,0x0
    80006e28:	f40080e7          	jalr	-192(ra) # 80006d64 <_ZN6Buffer6getCntEv>
    80006e2c:	02a05c63          	blez	a0,80006e64 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006e30:	0084b783          	ld	a5,8(s1)
    80006e34:	0104a703          	lw	a4,16(s1)
    80006e38:	00271713          	slli	a4,a4,0x2
    80006e3c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006e40:	0007c503          	lbu	a0,0(a5)
    80006e44:	ffffb097          	auipc	ra,0xffffb
    80006e48:	80c080e7          	jalr	-2036(ra) # 80001650 <_Z4putcc>
        head = (head + 1) % cap;
    80006e4c:	0104a783          	lw	a5,16(s1)
    80006e50:	0017879b          	addiw	a5,a5,1
    80006e54:	0004a703          	lw	a4,0(s1)
    80006e58:	02e7e7bb          	remw	a5,a5,a4
    80006e5c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006e60:	fc1ff06f          	j	80006e20 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006e64:	02100513          	li	a0,33
    80006e68:	ffffa097          	auipc	ra,0xffffa
    80006e6c:	7e8080e7          	jalr	2024(ra) # 80001650 <_Z4putcc>
    putc('\n');
    80006e70:	00a00513          	li	a0,10
    80006e74:	ffffa097          	auipc	ra,0xffffa
    80006e78:	7dc080e7          	jalr	2012(ra) # 80001650 <_Z4putcc>
    mem_free(buffer);
    80006e7c:	0084b503          	ld	a0,8(s1)
    80006e80:	ffffa097          	auipc	ra,0xffffa
    80006e84:	3c4080e7          	jalr	964(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006e88:	0204b503          	ld	a0,32(s1)
    80006e8c:	ffffa097          	auipc	ra,0xffffa
    80006e90:	5fc080e7          	jalr	1532(ra) # 80001488 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006e94:	0184b503          	ld	a0,24(s1)
    80006e98:	ffffa097          	auipc	ra,0xffffa
    80006e9c:	5f0080e7          	jalr	1520(ra) # 80001488 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006ea0:	0304b503          	ld	a0,48(s1)
    80006ea4:	ffffa097          	auipc	ra,0xffffa
    80006ea8:	5e4080e7          	jalr	1508(ra) # 80001488 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006eac:	0284b503          	ld	a0,40(s1)
    80006eb0:	ffffa097          	auipc	ra,0xffffa
    80006eb4:	5d8080e7          	jalr	1496(ra) # 80001488 <_Z9sem_closeP4_sem>
}
    80006eb8:	01813083          	ld	ra,24(sp)
    80006ebc:	01013403          	ld	s0,16(sp)
    80006ec0:	00813483          	ld	s1,8(sp)
    80006ec4:	02010113          	addi	sp,sp,32
    80006ec8:	00008067          	ret

0000000080006ecc <start>:
    80006ecc:	ff010113          	addi	sp,sp,-16
    80006ed0:	00813423          	sd	s0,8(sp)
    80006ed4:	01010413          	addi	s0,sp,16
    80006ed8:	300027f3          	csrr	a5,mstatus
    80006edc:	ffffe737          	lui	a4,0xffffe
    80006ee0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff051f>
    80006ee4:	00e7f7b3          	and	a5,a5,a4
    80006ee8:	00001737          	lui	a4,0x1
    80006eec:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006ef0:	00e7e7b3          	or	a5,a5,a4
    80006ef4:	30079073          	csrw	mstatus,a5
    80006ef8:	00000797          	auipc	a5,0x0
    80006efc:	16078793          	addi	a5,a5,352 # 80007058 <system_main>
    80006f00:	34179073          	csrw	mepc,a5
    80006f04:	00000793          	li	a5,0
    80006f08:	18079073          	csrw	satp,a5
    80006f0c:	000107b7          	lui	a5,0x10
    80006f10:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006f14:	30279073          	csrw	medeleg,a5
    80006f18:	30379073          	csrw	mideleg,a5
    80006f1c:	104027f3          	csrr	a5,sie
    80006f20:	2227e793          	ori	a5,a5,546
    80006f24:	10479073          	csrw	sie,a5
    80006f28:	fff00793          	li	a5,-1
    80006f2c:	00a7d793          	srli	a5,a5,0xa
    80006f30:	3b079073          	csrw	pmpaddr0,a5
    80006f34:	00f00793          	li	a5,15
    80006f38:	3a079073          	csrw	pmpcfg0,a5
    80006f3c:	f14027f3          	csrr	a5,mhartid
    80006f40:	0200c737          	lui	a4,0x200c
    80006f44:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006f48:	0007869b          	sext.w	a3,a5
    80006f4c:	00269713          	slli	a4,a3,0x2
    80006f50:	000f4637          	lui	a2,0xf4
    80006f54:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006f58:	00d70733          	add	a4,a4,a3
    80006f5c:	0037979b          	slliw	a5,a5,0x3
    80006f60:	020046b7          	lui	a3,0x2004
    80006f64:	00d787b3          	add	a5,a5,a3
    80006f68:	00c585b3          	add	a1,a1,a2
    80006f6c:	00371693          	slli	a3,a4,0x3
    80006f70:	00006717          	auipc	a4,0x6
    80006f74:	11070713          	addi	a4,a4,272 # 8000d080 <timer_scratch>
    80006f78:	00b7b023          	sd	a1,0(a5)
    80006f7c:	00d70733          	add	a4,a4,a3
    80006f80:	00f73c23          	sd	a5,24(a4)
    80006f84:	02c73023          	sd	a2,32(a4)
    80006f88:	34071073          	csrw	mscratch,a4
    80006f8c:	00000797          	auipc	a5,0x0
    80006f90:	6e478793          	addi	a5,a5,1764 # 80007670 <timervec>
    80006f94:	30579073          	csrw	mtvec,a5
    80006f98:	300027f3          	csrr	a5,mstatus
    80006f9c:	0087e793          	ori	a5,a5,8
    80006fa0:	30079073          	csrw	mstatus,a5
    80006fa4:	304027f3          	csrr	a5,mie
    80006fa8:	0807e793          	ori	a5,a5,128
    80006fac:	30479073          	csrw	mie,a5
    80006fb0:	f14027f3          	csrr	a5,mhartid
    80006fb4:	0007879b          	sext.w	a5,a5
    80006fb8:	00078213          	mv	tp,a5
    80006fbc:	30200073          	mret
    80006fc0:	00813403          	ld	s0,8(sp)
    80006fc4:	01010113          	addi	sp,sp,16
    80006fc8:	00008067          	ret

0000000080006fcc <timerinit>:
    80006fcc:	ff010113          	addi	sp,sp,-16
    80006fd0:	00813423          	sd	s0,8(sp)
    80006fd4:	01010413          	addi	s0,sp,16
    80006fd8:	f14027f3          	csrr	a5,mhartid
    80006fdc:	0200c737          	lui	a4,0x200c
    80006fe0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006fe4:	0007869b          	sext.w	a3,a5
    80006fe8:	00269713          	slli	a4,a3,0x2
    80006fec:	000f4637          	lui	a2,0xf4
    80006ff0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006ff4:	00d70733          	add	a4,a4,a3
    80006ff8:	0037979b          	slliw	a5,a5,0x3
    80006ffc:	020046b7          	lui	a3,0x2004
    80007000:	00d787b3          	add	a5,a5,a3
    80007004:	00c585b3          	add	a1,a1,a2
    80007008:	00371693          	slli	a3,a4,0x3
    8000700c:	00006717          	auipc	a4,0x6
    80007010:	07470713          	addi	a4,a4,116 # 8000d080 <timer_scratch>
    80007014:	00b7b023          	sd	a1,0(a5)
    80007018:	00d70733          	add	a4,a4,a3
    8000701c:	00f73c23          	sd	a5,24(a4)
    80007020:	02c73023          	sd	a2,32(a4)
    80007024:	34071073          	csrw	mscratch,a4
    80007028:	00000797          	auipc	a5,0x0
    8000702c:	64878793          	addi	a5,a5,1608 # 80007670 <timervec>
    80007030:	30579073          	csrw	mtvec,a5
    80007034:	300027f3          	csrr	a5,mstatus
    80007038:	0087e793          	ori	a5,a5,8
    8000703c:	30079073          	csrw	mstatus,a5
    80007040:	304027f3          	csrr	a5,mie
    80007044:	0807e793          	ori	a5,a5,128
    80007048:	30479073          	csrw	mie,a5
    8000704c:	00813403          	ld	s0,8(sp)
    80007050:	01010113          	addi	sp,sp,16
    80007054:	00008067          	ret

0000000080007058 <system_main>:
    80007058:	fe010113          	addi	sp,sp,-32
    8000705c:	00813823          	sd	s0,16(sp)
    80007060:	00913423          	sd	s1,8(sp)
    80007064:	00113c23          	sd	ra,24(sp)
    80007068:	02010413          	addi	s0,sp,32
    8000706c:	00000097          	auipc	ra,0x0
    80007070:	0c4080e7          	jalr	196(ra) # 80007130 <cpuid>
    80007074:	00006497          	auipc	s1,0x6
    80007078:	f5c48493          	addi	s1,s1,-164 # 8000cfd0 <started>
    8000707c:	02050263          	beqz	a0,800070a0 <system_main+0x48>
    80007080:	0004a783          	lw	a5,0(s1)
    80007084:	0007879b          	sext.w	a5,a5
    80007088:	fe078ce3          	beqz	a5,80007080 <system_main+0x28>
    8000708c:	0ff0000f          	fence
    80007090:	00003517          	auipc	a0,0x3
    80007094:	67050513          	addi	a0,a0,1648 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80007098:	00001097          	auipc	ra,0x1
    8000709c:	a74080e7          	jalr	-1420(ra) # 80007b0c <panic>
    800070a0:	00001097          	auipc	ra,0x1
    800070a4:	9c8080e7          	jalr	-1592(ra) # 80007a68 <consoleinit>
    800070a8:	00001097          	auipc	ra,0x1
    800070ac:	154080e7          	jalr	340(ra) # 800081fc <printfinit>
    800070b0:	00003517          	auipc	a0,0x3
    800070b4:	1f050513          	addi	a0,a0,496 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800070b8:	00001097          	auipc	ra,0x1
    800070bc:	ab0080e7          	jalr	-1360(ra) # 80007b68 <__printf>
    800070c0:	00003517          	auipc	a0,0x3
    800070c4:	61050513          	addi	a0,a0,1552 # 8000a6d0 <CONSOLE_STATUS+0x6c0>
    800070c8:	00001097          	auipc	ra,0x1
    800070cc:	aa0080e7          	jalr	-1376(ra) # 80007b68 <__printf>
    800070d0:	00003517          	auipc	a0,0x3
    800070d4:	1d050513          	addi	a0,a0,464 # 8000a2a0 <CONSOLE_STATUS+0x290>
    800070d8:	00001097          	auipc	ra,0x1
    800070dc:	a90080e7          	jalr	-1392(ra) # 80007b68 <__printf>
    800070e0:	00001097          	auipc	ra,0x1
    800070e4:	4a8080e7          	jalr	1192(ra) # 80008588 <kinit>
    800070e8:	00000097          	auipc	ra,0x0
    800070ec:	148080e7          	jalr	328(ra) # 80007230 <trapinit>
    800070f0:	00000097          	auipc	ra,0x0
    800070f4:	16c080e7          	jalr	364(ra) # 8000725c <trapinithart>
    800070f8:	00000097          	auipc	ra,0x0
    800070fc:	5b8080e7          	jalr	1464(ra) # 800076b0 <plicinit>
    80007100:	00000097          	auipc	ra,0x0
    80007104:	5d8080e7          	jalr	1496(ra) # 800076d8 <plicinithart>
    80007108:	00000097          	auipc	ra,0x0
    8000710c:	078080e7          	jalr	120(ra) # 80007180 <userinit>
    80007110:	0ff0000f          	fence
    80007114:	00100793          	li	a5,1
    80007118:	00003517          	auipc	a0,0x3
    8000711c:	5d050513          	addi	a0,a0,1488 # 8000a6e8 <CONSOLE_STATUS+0x6d8>
    80007120:	00f4a023          	sw	a5,0(s1)
    80007124:	00001097          	auipc	ra,0x1
    80007128:	a44080e7          	jalr	-1468(ra) # 80007b68 <__printf>
    8000712c:	0000006f          	j	8000712c <system_main+0xd4>

0000000080007130 <cpuid>:
    80007130:	ff010113          	addi	sp,sp,-16
    80007134:	00813423          	sd	s0,8(sp)
    80007138:	01010413          	addi	s0,sp,16
    8000713c:	00020513          	mv	a0,tp
    80007140:	00813403          	ld	s0,8(sp)
    80007144:	0005051b          	sext.w	a0,a0
    80007148:	01010113          	addi	sp,sp,16
    8000714c:	00008067          	ret

0000000080007150 <mycpu>:
    80007150:	ff010113          	addi	sp,sp,-16
    80007154:	00813423          	sd	s0,8(sp)
    80007158:	01010413          	addi	s0,sp,16
    8000715c:	00020793          	mv	a5,tp
    80007160:	00813403          	ld	s0,8(sp)
    80007164:	0007879b          	sext.w	a5,a5
    80007168:	00779793          	slli	a5,a5,0x7
    8000716c:	00007517          	auipc	a0,0x7
    80007170:	f4450513          	addi	a0,a0,-188 # 8000e0b0 <cpus>
    80007174:	00f50533          	add	a0,a0,a5
    80007178:	01010113          	addi	sp,sp,16
    8000717c:	00008067          	ret

0000000080007180 <userinit>:
    80007180:	ff010113          	addi	sp,sp,-16
    80007184:	00813423          	sd	s0,8(sp)
    80007188:	01010413          	addi	s0,sp,16
    8000718c:	00813403          	ld	s0,8(sp)
    80007190:	01010113          	addi	sp,sp,16
    80007194:	ffffb317          	auipc	t1,0xffffb
    80007198:	5f030067          	jr	1520(t1) # 80002784 <main>

000000008000719c <either_copyout>:
    8000719c:	ff010113          	addi	sp,sp,-16
    800071a0:	00813023          	sd	s0,0(sp)
    800071a4:	00113423          	sd	ra,8(sp)
    800071a8:	01010413          	addi	s0,sp,16
    800071ac:	02051663          	bnez	a0,800071d8 <either_copyout+0x3c>
    800071b0:	00058513          	mv	a0,a1
    800071b4:	00060593          	mv	a1,a2
    800071b8:	0006861b          	sext.w	a2,a3
    800071bc:	00002097          	auipc	ra,0x2
    800071c0:	c58080e7          	jalr	-936(ra) # 80008e14 <__memmove>
    800071c4:	00813083          	ld	ra,8(sp)
    800071c8:	00013403          	ld	s0,0(sp)
    800071cc:	00000513          	li	a0,0
    800071d0:	01010113          	addi	sp,sp,16
    800071d4:	00008067          	ret
    800071d8:	00003517          	auipc	a0,0x3
    800071dc:	55050513          	addi	a0,a0,1360 # 8000a728 <CONSOLE_STATUS+0x718>
    800071e0:	00001097          	auipc	ra,0x1
    800071e4:	92c080e7          	jalr	-1748(ra) # 80007b0c <panic>

00000000800071e8 <either_copyin>:
    800071e8:	ff010113          	addi	sp,sp,-16
    800071ec:	00813023          	sd	s0,0(sp)
    800071f0:	00113423          	sd	ra,8(sp)
    800071f4:	01010413          	addi	s0,sp,16
    800071f8:	02059463          	bnez	a1,80007220 <either_copyin+0x38>
    800071fc:	00060593          	mv	a1,a2
    80007200:	0006861b          	sext.w	a2,a3
    80007204:	00002097          	auipc	ra,0x2
    80007208:	c10080e7          	jalr	-1008(ra) # 80008e14 <__memmove>
    8000720c:	00813083          	ld	ra,8(sp)
    80007210:	00013403          	ld	s0,0(sp)
    80007214:	00000513          	li	a0,0
    80007218:	01010113          	addi	sp,sp,16
    8000721c:	00008067          	ret
    80007220:	00003517          	auipc	a0,0x3
    80007224:	53050513          	addi	a0,a0,1328 # 8000a750 <CONSOLE_STATUS+0x740>
    80007228:	00001097          	auipc	ra,0x1
    8000722c:	8e4080e7          	jalr	-1820(ra) # 80007b0c <panic>

0000000080007230 <trapinit>:
    80007230:	ff010113          	addi	sp,sp,-16
    80007234:	00813423          	sd	s0,8(sp)
    80007238:	01010413          	addi	s0,sp,16
    8000723c:	00813403          	ld	s0,8(sp)
    80007240:	00003597          	auipc	a1,0x3
    80007244:	53858593          	addi	a1,a1,1336 # 8000a778 <CONSOLE_STATUS+0x768>
    80007248:	00007517          	auipc	a0,0x7
    8000724c:	ee850513          	addi	a0,a0,-280 # 8000e130 <tickslock>
    80007250:	01010113          	addi	sp,sp,16
    80007254:	00001317          	auipc	t1,0x1
    80007258:	5c430067          	jr	1476(t1) # 80008818 <initlock>

000000008000725c <trapinithart>:
    8000725c:	ff010113          	addi	sp,sp,-16
    80007260:	00813423          	sd	s0,8(sp)
    80007264:	01010413          	addi	s0,sp,16
    80007268:	00000797          	auipc	a5,0x0
    8000726c:	2f878793          	addi	a5,a5,760 # 80007560 <kernelvec>
    80007270:	10579073          	csrw	stvec,a5
    80007274:	00813403          	ld	s0,8(sp)
    80007278:	01010113          	addi	sp,sp,16
    8000727c:	00008067          	ret

0000000080007280 <usertrap>:
    80007280:	ff010113          	addi	sp,sp,-16
    80007284:	00813423          	sd	s0,8(sp)
    80007288:	01010413          	addi	s0,sp,16
    8000728c:	00813403          	ld	s0,8(sp)
    80007290:	01010113          	addi	sp,sp,16
    80007294:	00008067          	ret

0000000080007298 <usertrapret>:
    80007298:	ff010113          	addi	sp,sp,-16
    8000729c:	00813423          	sd	s0,8(sp)
    800072a0:	01010413          	addi	s0,sp,16
    800072a4:	00813403          	ld	s0,8(sp)
    800072a8:	01010113          	addi	sp,sp,16
    800072ac:	00008067          	ret

00000000800072b0 <kerneltrap>:
    800072b0:	fe010113          	addi	sp,sp,-32
    800072b4:	00813823          	sd	s0,16(sp)
    800072b8:	00113c23          	sd	ra,24(sp)
    800072bc:	00913423          	sd	s1,8(sp)
    800072c0:	02010413          	addi	s0,sp,32
    800072c4:	142025f3          	csrr	a1,scause
    800072c8:	100027f3          	csrr	a5,sstatus
    800072cc:	0027f793          	andi	a5,a5,2
    800072d0:	10079c63          	bnez	a5,800073e8 <kerneltrap+0x138>
    800072d4:	142027f3          	csrr	a5,scause
    800072d8:	0207ce63          	bltz	a5,80007314 <kerneltrap+0x64>
    800072dc:	00003517          	auipc	a0,0x3
    800072e0:	4e450513          	addi	a0,a0,1252 # 8000a7c0 <CONSOLE_STATUS+0x7b0>
    800072e4:	00001097          	auipc	ra,0x1
    800072e8:	884080e7          	jalr	-1916(ra) # 80007b68 <__printf>
    800072ec:	141025f3          	csrr	a1,sepc
    800072f0:	14302673          	csrr	a2,stval
    800072f4:	00003517          	auipc	a0,0x3
    800072f8:	4dc50513          	addi	a0,a0,1244 # 8000a7d0 <CONSOLE_STATUS+0x7c0>
    800072fc:	00001097          	auipc	ra,0x1
    80007300:	86c080e7          	jalr	-1940(ra) # 80007b68 <__printf>
    80007304:	00003517          	auipc	a0,0x3
    80007308:	4e450513          	addi	a0,a0,1252 # 8000a7e8 <CONSOLE_STATUS+0x7d8>
    8000730c:	00001097          	auipc	ra,0x1
    80007310:	800080e7          	jalr	-2048(ra) # 80007b0c <panic>
    80007314:	0ff7f713          	andi	a4,a5,255
    80007318:	00900693          	li	a3,9
    8000731c:	04d70063          	beq	a4,a3,8000735c <kerneltrap+0xac>
    80007320:	fff00713          	li	a4,-1
    80007324:	03f71713          	slli	a4,a4,0x3f
    80007328:	00170713          	addi	a4,a4,1
    8000732c:	fae798e3          	bne	a5,a4,800072dc <kerneltrap+0x2c>
    80007330:	00000097          	auipc	ra,0x0
    80007334:	e00080e7          	jalr	-512(ra) # 80007130 <cpuid>
    80007338:	06050663          	beqz	a0,800073a4 <kerneltrap+0xf4>
    8000733c:	144027f3          	csrr	a5,sip
    80007340:	ffd7f793          	andi	a5,a5,-3
    80007344:	14479073          	csrw	sip,a5
    80007348:	01813083          	ld	ra,24(sp)
    8000734c:	01013403          	ld	s0,16(sp)
    80007350:	00813483          	ld	s1,8(sp)
    80007354:	02010113          	addi	sp,sp,32
    80007358:	00008067          	ret
    8000735c:	00000097          	auipc	ra,0x0
    80007360:	3c8080e7          	jalr	968(ra) # 80007724 <plic_claim>
    80007364:	00a00793          	li	a5,10
    80007368:	00050493          	mv	s1,a0
    8000736c:	06f50863          	beq	a0,a5,800073dc <kerneltrap+0x12c>
    80007370:	fc050ce3          	beqz	a0,80007348 <kerneltrap+0x98>
    80007374:	00050593          	mv	a1,a0
    80007378:	00003517          	auipc	a0,0x3
    8000737c:	42850513          	addi	a0,a0,1064 # 8000a7a0 <CONSOLE_STATUS+0x790>
    80007380:	00000097          	auipc	ra,0x0
    80007384:	7e8080e7          	jalr	2024(ra) # 80007b68 <__printf>
    80007388:	01013403          	ld	s0,16(sp)
    8000738c:	01813083          	ld	ra,24(sp)
    80007390:	00048513          	mv	a0,s1
    80007394:	00813483          	ld	s1,8(sp)
    80007398:	02010113          	addi	sp,sp,32
    8000739c:	00000317          	auipc	t1,0x0
    800073a0:	3c030067          	jr	960(t1) # 8000775c <plic_complete>
    800073a4:	00007517          	auipc	a0,0x7
    800073a8:	d8c50513          	addi	a0,a0,-628 # 8000e130 <tickslock>
    800073ac:	00001097          	auipc	ra,0x1
    800073b0:	490080e7          	jalr	1168(ra) # 8000883c <acquire>
    800073b4:	00006717          	auipc	a4,0x6
    800073b8:	c2070713          	addi	a4,a4,-992 # 8000cfd4 <ticks>
    800073bc:	00072783          	lw	a5,0(a4)
    800073c0:	00007517          	auipc	a0,0x7
    800073c4:	d7050513          	addi	a0,a0,-656 # 8000e130 <tickslock>
    800073c8:	0017879b          	addiw	a5,a5,1
    800073cc:	00f72023          	sw	a5,0(a4)
    800073d0:	00001097          	auipc	ra,0x1
    800073d4:	538080e7          	jalr	1336(ra) # 80008908 <release>
    800073d8:	f65ff06f          	j	8000733c <kerneltrap+0x8c>
    800073dc:	00001097          	auipc	ra,0x1
    800073e0:	094080e7          	jalr	148(ra) # 80008470 <uartintr>
    800073e4:	fa5ff06f          	j	80007388 <kerneltrap+0xd8>
    800073e8:	00003517          	auipc	a0,0x3
    800073ec:	39850513          	addi	a0,a0,920 # 8000a780 <CONSOLE_STATUS+0x770>
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	71c080e7          	jalr	1820(ra) # 80007b0c <panic>

00000000800073f8 <clockintr>:
    800073f8:	fe010113          	addi	sp,sp,-32
    800073fc:	00813823          	sd	s0,16(sp)
    80007400:	00913423          	sd	s1,8(sp)
    80007404:	00113c23          	sd	ra,24(sp)
    80007408:	02010413          	addi	s0,sp,32
    8000740c:	00007497          	auipc	s1,0x7
    80007410:	d2448493          	addi	s1,s1,-732 # 8000e130 <tickslock>
    80007414:	00048513          	mv	a0,s1
    80007418:	00001097          	auipc	ra,0x1
    8000741c:	424080e7          	jalr	1060(ra) # 8000883c <acquire>
    80007420:	00006717          	auipc	a4,0x6
    80007424:	bb470713          	addi	a4,a4,-1100 # 8000cfd4 <ticks>
    80007428:	00072783          	lw	a5,0(a4)
    8000742c:	01013403          	ld	s0,16(sp)
    80007430:	01813083          	ld	ra,24(sp)
    80007434:	00048513          	mv	a0,s1
    80007438:	0017879b          	addiw	a5,a5,1
    8000743c:	00813483          	ld	s1,8(sp)
    80007440:	00f72023          	sw	a5,0(a4)
    80007444:	02010113          	addi	sp,sp,32
    80007448:	00001317          	auipc	t1,0x1
    8000744c:	4c030067          	jr	1216(t1) # 80008908 <release>

0000000080007450 <devintr>:
    80007450:	142027f3          	csrr	a5,scause
    80007454:	00000513          	li	a0,0
    80007458:	0007c463          	bltz	a5,80007460 <devintr+0x10>
    8000745c:	00008067          	ret
    80007460:	fe010113          	addi	sp,sp,-32
    80007464:	00813823          	sd	s0,16(sp)
    80007468:	00113c23          	sd	ra,24(sp)
    8000746c:	00913423          	sd	s1,8(sp)
    80007470:	02010413          	addi	s0,sp,32
    80007474:	0ff7f713          	andi	a4,a5,255
    80007478:	00900693          	li	a3,9
    8000747c:	04d70c63          	beq	a4,a3,800074d4 <devintr+0x84>
    80007480:	fff00713          	li	a4,-1
    80007484:	03f71713          	slli	a4,a4,0x3f
    80007488:	00170713          	addi	a4,a4,1
    8000748c:	00e78c63          	beq	a5,a4,800074a4 <devintr+0x54>
    80007490:	01813083          	ld	ra,24(sp)
    80007494:	01013403          	ld	s0,16(sp)
    80007498:	00813483          	ld	s1,8(sp)
    8000749c:	02010113          	addi	sp,sp,32
    800074a0:	00008067          	ret
    800074a4:	00000097          	auipc	ra,0x0
    800074a8:	c8c080e7          	jalr	-884(ra) # 80007130 <cpuid>
    800074ac:	06050663          	beqz	a0,80007518 <devintr+0xc8>
    800074b0:	144027f3          	csrr	a5,sip
    800074b4:	ffd7f793          	andi	a5,a5,-3
    800074b8:	14479073          	csrw	sip,a5
    800074bc:	01813083          	ld	ra,24(sp)
    800074c0:	01013403          	ld	s0,16(sp)
    800074c4:	00813483          	ld	s1,8(sp)
    800074c8:	00200513          	li	a0,2
    800074cc:	02010113          	addi	sp,sp,32
    800074d0:	00008067          	ret
    800074d4:	00000097          	auipc	ra,0x0
    800074d8:	250080e7          	jalr	592(ra) # 80007724 <plic_claim>
    800074dc:	00a00793          	li	a5,10
    800074e0:	00050493          	mv	s1,a0
    800074e4:	06f50663          	beq	a0,a5,80007550 <devintr+0x100>
    800074e8:	00100513          	li	a0,1
    800074ec:	fa0482e3          	beqz	s1,80007490 <devintr+0x40>
    800074f0:	00048593          	mv	a1,s1
    800074f4:	00003517          	auipc	a0,0x3
    800074f8:	2ac50513          	addi	a0,a0,684 # 8000a7a0 <CONSOLE_STATUS+0x790>
    800074fc:	00000097          	auipc	ra,0x0
    80007500:	66c080e7          	jalr	1644(ra) # 80007b68 <__printf>
    80007504:	00048513          	mv	a0,s1
    80007508:	00000097          	auipc	ra,0x0
    8000750c:	254080e7          	jalr	596(ra) # 8000775c <plic_complete>
    80007510:	00100513          	li	a0,1
    80007514:	f7dff06f          	j	80007490 <devintr+0x40>
    80007518:	00007517          	auipc	a0,0x7
    8000751c:	c1850513          	addi	a0,a0,-1000 # 8000e130 <tickslock>
    80007520:	00001097          	auipc	ra,0x1
    80007524:	31c080e7          	jalr	796(ra) # 8000883c <acquire>
    80007528:	00006717          	auipc	a4,0x6
    8000752c:	aac70713          	addi	a4,a4,-1364 # 8000cfd4 <ticks>
    80007530:	00072783          	lw	a5,0(a4)
    80007534:	00007517          	auipc	a0,0x7
    80007538:	bfc50513          	addi	a0,a0,-1028 # 8000e130 <tickslock>
    8000753c:	0017879b          	addiw	a5,a5,1
    80007540:	00f72023          	sw	a5,0(a4)
    80007544:	00001097          	auipc	ra,0x1
    80007548:	3c4080e7          	jalr	964(ra) # 80008908 <release>
    8000754c:	f65ff06f          	j	800074b0 <devintr+0x60>
    80007550:	00001097          	auipc	ra,0x1
    80007554:	f20080e7          	jalr	-224(ra) # 80008470 <uartintr>
    80007558:	fadff06f          	j	80007504 <devintr+0xb4>
    8000755c:	0000                	unimp
	...

0000000080007560 <kernelvec>:
    80007560:	f0010113          	addi	sp,sp,-256
    80007564:	00113023          	sd	ra,0(sp)
    80007568:	00213423          	sd	sp,8(sp)
    8000756c:	00313823          	sd	gp,16(sp)
    80007570:	00413c23          	sd	tp,24(sp)
    80007574:	02513023          	sd	t0,32(sp)
    80007578:	02613423          	sd	t1,40(sp)
    8000757c:	02713823          	sd	t2,48(sp)
    80007580:	02813c23          	sd	s0,56(sp)
    80007584:	04913023          	sd	s1,64(sp)
    80007588:	04a13423          	sd	a0,72(sp)
    8000758c:	04b13823          	sd	a1,80(sp)
    80007590:	04c13c23          	sd	a2,88(sp)
    80007594:	06d13023          	sd	a3,96(sp)
    80007598:	06e13423          	sd	a4,104(sp)
    8000759c:	06f13823          	sd	a5,112(sp)
    800075a0:	07013c23          	sd	a6,120(sp)
    800075a4:	09113023          	sd	a7,128(sp)
    800075a8:	09213423          	sd	s2,136(sp)
    800075ac:	09313823          	sd	s3,144(sp)
    800075b0:	09413c23          	sd	s4,152(sp)
    800075b4:	0b513023          	sd	s5,160(sp)
    800075b8:	0b613423          	sd	s6,168(sp)
    800075bc:	0b713823          	sd	s7,176(sp)
    800075c0:	0b813c23          	sd	s8,184(sp)
    800075c4:	0d913023          	sd	s9,192(sp)
    800075c8:	0da13423          	sd	s10,200(sp)
    800075cc:	0db13823          	sd	s11,208(sp)
    800075d0:	0dc13c23          	sd	t3,216(sp)
    800075d4:	0fd13023          	sd	t4,224(sp)
    800075d8:	0fe13423          	sd	t5,232(sp)
    800075dc:	0ff13823          	sd	t6,240(sp)
    800075e0:	cd1ff0ef          	jal	ra,800072b0 <kerneltrap>
    800075e4:	00013083          	ld	ra,0(sp)
    800075e8:	00813103          	ld	sp,8(sp)
    800075ec:	01013183          	ld	gp,16(sp)
    800075f0:	02013283          	ld	t0,32(sp)
    800075f4:	02813303          	ld	t1,40(sp)
    800075f8:	03013383          	ld	t2,48(sp)
    800075fc:	03813403          	ld	s0,56(sp)
    80007600:	04013483          	ld	s1,64(sp)
    80007604:	04813503          	ld	a0,72(sp)
    80007608:	05013583          	ld	a1,80(sp)
    8000760c:	05813603          	ld	a2,88(sp)
    80007610:	06013683          	ld	a3,96(sp)
    80007614:	06813703          	ld	a4,104(sp)
    80007618:	07013783          	ld	a5,112(sp)
    8000761c:	07813803          	ld	a6,120(sp)
    80007620:	08013883          	ld	a7,128(sp)
    80007624:	08813903          	ld	s2,136(sp)
    80007628:	09013983          	ld	s3,144(sp)
    8000762c:	09813a03          	ld	s4,152(sp)
    80007630:	0a013a83          	ld	s5,160(sp)
    80007634:	0a813b03          	ld	s6,168(sp)
    80007638:	0b013b83          	ld	s7,176(sp)
    8000763c:	0b813c03          	ld	s8,184(sp)
    80007640:	0c013c83          	ld	s9,192(sp)
    80007644:	0c813d03          	ld	s10,200(sp)
    80007648:	0d013d83          	ld	s11,208(sp)
    8000764c:	0d813e03          	ld	t3,216(sp)
    80007650:	0e013e83          	ld	t4,224(sp)
    80007654:	0e813f03          	ld	t5,232(sp)
    80007658:	0f013f83          	ld	t6,240(sp)
    8000765c:	10010113          	addi	sp,sp,256
    80007660:	10200073          	sret
    80007664:	00000013          	nop
    80007668:	00000013          	nop
    8000766c:	00000013          	nop

0000000080007670 <timervec>:
    80007670:	34051573          	csrrw	a0,mscratch,a0
    80007674:	00b53023          	sd	a1,0(a0)
    80007678:	00c53423          	sd	a2,8(a0)
    8000767c:	00d53823          	sd	a3,16(a0)
    80007680:	01853583          	ld	a1,24(a0)
    80007684:	02053603          	ld	a2,32(a0)
    80007688:	0005b683          	ld	a3,0(a1)
    8000768c:	00c686b3          	add	a3,a3,a2
    80007690:	00d5b023          	sd	a3,0(a1)
    80007694:	00200593          	li	a1,2
    80007698:	14459073          	csrw	sip,a1
    8000769c:	01053683          	ld	a3,16(a0)
    800076a0:	00853603          	ld	a2,8(a0)
    800076a4:	00053583          	ld	a1,0(a0)
    800076a8:	34051573          	csrrw	a0,mscratch,a0
    800076ac:	30200073          	mret

00000000800076b0 <plicinit>:
    800076b0:	ff010113          	addi	sp,sp,-16
    800076b4:	00813423          	sd	s0,8(sp)
    800076b8:	01010413          	addi	s0,sp,16
    800076bc:	00813403          	ld	s0,8(sp)
    800076c0:	0c0007b7          	lui	a5,0xc000
    800076c4:	00100713          	li	a4,1
    800076c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800076cc:	00e7a223          	sw	a4,4(a5)
    800076d0:	01010113          	addi	sp,sp,16
    800076d4:	00008067          	ret

00000000800076d8 <plicinithart>:
    800076d8:	ff010113          	addi	sp,sp,-16
    800076dc:	00813023          	sd	s0,0(sp)
    800076e0:	00113423          	sd	ra,8(sp)
    800076e4:	01010413          	addi	s0,sp,16
    800076e8:	00000097          	auipc	ra,0x0
    800076ec:	a48080e7          	jalr	-1464(ra) # 80007130 <cpuid>
    800076f0:	0085171b          	slliw	a4,a0,0x8
    800076f4:	0c0027b7          	lui	a5,0xc002
    800076f8:	00e787b3          	add	a5,a5,a4
    800076fc:	40200713          	li	a4,1026
    80007700:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007704:	00813083          	ld	ra,8(sp)
    80007708:	00013403          	ld	s0,0(sp)
    8000770c:	00d5151b          	slliw	a0,a0,0xd
    80007710:	0c2017b7          	lui	a5,0xc201
    80007714:	00a78533          	add	a0,a5,a0
    80007718:	00052023          	sw	zero,0(a0)
    8000771c:	01010113          	addi	sp,sp,16
    80007720:	00008067          	ret

0000000080007724 <plic_claim>:
    80007724:	ff010113          	addi	sp,sp,-16
    80007728:	00813023          	sd	s0,0(sp)
    8000772c:	00113423          	sd	ra,8(sp)
    80007730:	01010413          	addi	s0,sp,16
    80007734:	00000097          	auipc	ra,0x0
    80007738:	9fc080e7          	jalr	-1540(ra) # 80007130 <cpuid>
    8000773c:	00813083          	ld	ra,8(sp)
    80007740:	00013403          	ld	s0,0(sp)
    80007744:	00d5151b          	slliw	a0,a0,0xd
    80007748:	0c2017b7          	lui	a5,0xc201
    8000774c:	00a78533          	add	a0,a5,a0
    80007750:	00452503          	lw	a0,4(a0)
    80007754:	01010113          	addi	sp,sp,16
    80007758:	00008067          	ret

000000008000775c <plic_complete>:
    8000775c:	fe010113          	addi	sp,sp,-32
    80007760:	00813823          	sd	s0,16(sp)
    80007764:	00913423          	sd	s1,8(sp)
    80007768:	00113c23          	sd	ra,24(sp)
    8000776c:	02010413          	addi	s0,sp,32
    80007770:	00050493          	mv	s1,a0
    80007774:	00000097          	auipc	ra,0x0
    80007778:	9bc080e7          	jalr	-1604(ra) # 80007130 <cpuid>
    8000777c:	01813083          	ld	ra,24(sp)
    80007780:	01013403          	ld	s0,16(sp)
    80007784:	00d5179b          	slliw	a5,a0,0xd
    80007788:	0c201737          	lui	a4,0xc201
    8000778c:	00f707b3          	add	a5,a4,a5
    80007790:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007794:	00813483          	ld	s1,8(sp)
    80007798:	02010113          	addi	sp,sp,32
    8000779c:	00008067          	ret

00000000800077a0 <consolewrite>:
    800077a0:	fb010113          	addi	sp,sp,-80
    800077a4:	04813023          	sd	s0,64(sp)
    800077a8:	04113423          	sd	ra,72(sp)
    800077ac:	02913c23          	sd	s1,56(sp)
    800077b0:	03213823          	sd	s2,48(sp)
    800077b4:	03313423          	sd	s3,40(sp)
    800077b8:	03413023          	sd	s4,32(sp)
    800077bc:	01513c23          	sd	s5,24(sp)
    800077c0:	05010413          	addi	s0,sp,80
    800077c4:	06c05c63          	blez	a2,8000783c <consolewrite+0x9c>
    800077c8:	00060993          	mv	s3,a2
    800077cc:	00050a13          	mv	s4,a0
    800077d0:	00058493          	mv	s1,a1
    800077d4:	00000913          	li	s2,0
    800077d8:	fff00a93          	li	s5,-1
    800077dc:	01c0006f          	j	800077f8 <consolewrite+0x58>
    800077e0:	fbf44503          	lbu	a0,-65(s0)
    800077e4:	0019091b          	addiw	s2,s2,1
    800077e8:	00148493          	addi	s1,s1,1
    800077ec:	00001097          	auipc	ra,0x1
    800077f0:	a9c080e7          	jalr	-1380(ra) # 80008288 <uartputc>
    800077f4:	03298063          	beq	s3,s2,80007814 <consolewrite+0x74>
    800077f8:	00048613          	mv	a2,s1
    800077fc:	00100693          	li	a3,1
    80007800:	000a0593          	mv	a1,s4
    80007804:	fbf40513          	addi	a0,s0,-65
    80007808:	00000097          	auipc	ra,0x0
    8000780c:	9e0080e7          	jalr	-1568(ra) # 800071e8 <either_copyin>
    80007810:	fd5518e3          	bne	a0,s5,800077e0 <consolewrite+0x40>
    80007814:	04813083          	ld	ra,72(sp)
    80007818:	04013403          	ld	s0,64(sp)
    8000781c:	03813483          	ld	s1,56(sp)
    80007820:	02813983          	ld	s3,40(sp)
    80007824:	02013a03          	ld	s4,32(sp)
    80007828:	01813a83          	ld	s5,24(sp)
    8000782c:	00090513          	mv	a0,s2
    80007830:	03013903          	ld	s2,48(sp)
    80007834:	05010113          	addi	sp,sp,80
    80007838:	00008067          	ret
    8000783c:	00000913          	li	s2,0
    80007840:	fd5ff06f          	j	80007814 <consolewrite+0x74>

0000000080007844 <consoleread>:
    80007844:	f9010113          	addi	sp,sp,-112
    80007848:	06813023          	sd	s0,96(sp)
    8000784c:	04913c23          	sd	s1,88(sp)
    80007850:	05213823          	sd	s2,80(sp)
    80007854:	05313423          	sd	s3,72(sp)
    80007858:	05413023          	sd	s4,64(sp)
    8000785c:	03513c23          	sd	s5,56(sp)
    80007860:	03613823          	sd	s6,48(sp)
    80007864:	03713423          	sd	s7,40(sp)
    80007868:	03813023          	sd	s8,32(sp)
    8000786c:	06113423          	sd	ra,104(sp)
    80007870:	01913c23          	sd	s9,24(sp)
    80007874:	07010413          	addi	s0,sp,112
    80007878:	00060b93          	mv	s7,a2
    8000787c:	00050913          	mv	s2,a0
    80007880:	00058c13          	mv	s8,a1
    80007884:	00060b1b          	sext.w	s6,a2
    80007888:	00007497          	auipc	s1,0x7
    8000788c:	8d048493          	addi	s1,s1,-1840 # 8000e158 <cons>
    80007890:	00400993          	li	s3,4
    80007894:	fff00a13          	li	s4,-1
    80007898:	00a00a93          	li	s5,10
    8000789c:	05705e63          	blez	s7,800078f8 <consoleread+0xb4>
    800078a0:	09c4a703          	lw	a4,156(s1)
    800078a4:	0984a783          	lw	a5,152(s1)
    800078a8:	0007071b          	sext.w	a4,a4
    800078ac:	08e78463          	beq	a5,a4,80007934 <consoleread+0xf0>
    800078b0:	07f7f713          	andi	a4,a5,127
    800078b4:	00e48733          	add	a4,s1,a4
    800078b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800078bc:	0017869b          	addiw	a3,a5,1
    800078c0:	08d4ac23          	sw	a3,152(s1)
    800078c4:	00070c9b          	sext.w	s9,a4
    800078c8:	0b370663          	beq	a4,s3,80007974 <consoleread+0x130>
    800078cc:	00100693          	li	a3,1
    800078d0:	f9f40613          	addi	a2,s0,-97
    800078d4:	000c0593          	mv	a1,s8
    800078d8:	00090513          	mv	a0,s2
    800078dc:	f8e40fa3          	sb	a4,-97(s0)
    800078e0:	00000097          	auipc	ra,0x0
    800078e4:	8bc080e7          	jalr	-1860(ra) # 8000719c <either_copyout>
    800078e8:	01450863          	beq	a0,s4,800078f8 <consoleread+0xb4>
    800078ec:	001c0c13          	addi	s8,s8,1
    800078f0:	fffb8b9b          	addiw	s7,s7,-1
    800078f4:	fb5c94e3          	bne	s9,s5,8000789c <consoleread+0x58>
    800078f8:	000b851b          	sext.w	a0,s7
    800078fc:	06813083          	ld	ra,104(sp)
    80007900:	06013403          	ld	s0,96(sp)
    80007904:	05813483          	ld	s1,88(sp)
    80007908:	05013903          	ld	s2,80(sp)
    8000790c:	04813983          	ld	s3,72(sp)
    80007910:	04013a03          	ld	s4,64(sp)
    80007914:	03813a83          	ld	s5,56(sp)
    80007918:	02813b83          	ld	s7,40(sp)
    8000791c:	02013c03          	ld	s8,32(sp)
    80007920:	01813c83          	ld	s9,24(sp)
    80007924:	40ab053b          	subw	a0,s6,a0
    80007928:	03013b03          	ld	s6,48(sp)
    8000792c:	07010113          	addi	sp,sp,112
    80007930:	00008067          	ret
    80007934:	00001097          	auipc	ra,0x1
    80007938:	1d8080e7          	jalr	472(ra) # 80008b0c <push_on>
    8000793c:	0984a703          	lw	a4,152(s1)
    80007940:	09c4a783          	lw	a5,156(s1)
    80007944:	0007879b          	sext.w	a5,a5
    80007948:	fef70ce3          	beq	a4,a5,80007940 <consoleread+0xfc>
    8000794c:	00001097          	auipc	ra,0x1
    80007950:	234080e7          	jalr	564(ra) # 80008b80 <pop_on>
    80007954:	0984a783          	lw	a5,152(s1)
    80007958:	07f7f713          	andi	a4,a5,127
    8000795c:	00e48733          	add	a4,s1,a4
    80007960:	01874703          	lbu	a4,24(a4)
    80007964:	0017869b          	addiw	a3,a5,1
    80007968:	08d4ac23          	sw	a3,152(s1)
    8000796c:	00070c9b          	sext.w	s9,a4
    80007970:	f5371ee3          	bne	a4,s3,800078cc <consoleread+0x88>
    80007974:	000b851b          	sext.w	a0,s7
    80007978:	f96bf2e3          	bgeu	s7,s6,800078fc <consoleread+0xb8>
    8000797c:	08f4ac23          	sw	a5,152(s1)
    80007980:	f7dff06f          	j	800078fc <consoleread+0xb8>

0000000080007984 <consputc>:
    80007984:	10000793          	li	a5,256
    80007988:	00f50663          	beq	a0,a5,80007994 <consputc+0x10>
    8000798c:	00001317          	auipc	t1,0x1
    80007990:	9f430067          	jr	-1548(t1) # 80008380 <uartputc_sync>
    80007994:	ff010113          	addi	sp,sp,-16
    80007998:	00113423          	sd	ra,8(sp)
    8000799c:	00813023          	sd	s0,0(sp)
    800079a0:	01010413          	addi	s0,sp,16
    800079a4:	00800513          	li	a0,8
    800079a8:	00001097          	auipc	ra,0x1
    800079ac:	9d8080e7          	jalr	-1576(ra) # 80008380 <uartputc_sync>
    800079b0:	02000513          	li	a0,32
    800079b4:	00001097          	auipc	ra,0x1
    800079b8:	9cc080e7          	jalr	-1588(ra) # 80008380 <uartputc_sync>
    800079bc:	00013403          	ld	s0,0(sp)
    800079c0:	00813083          	ld	ra,8(sp)
    800079c4:	00800513          	li	a0,8
    800079c8:	01010113          	addi	sp,sp,16
    800079cc:	00001317          	auipc	t1,0x1
    800079d0:	9b430067          	jr	-1612(t1) # 80008380 <uartputc_sync>

00000000800079d4 <consoleintr>:
    800079d4:	fe010113          	addi	sp,sp,-32
    800079d8:	00813823          	sd	s0,16(sp)
    800079dc:	00913423          	sd	s1,8(sp)
    800079e0:	01213023          	sd	s2,0(sp)
    800079e4:	00113c23          	sd	ra,24(sp)
    800079e8:	02010413          	addi	s0,sp,32
    800079ec:	00006917          	auipc	s2,0x6
    800079f0:	76c90913          	addi	s2,s2,1900 # 8000e158 <cons>
    800079f4:	00050493          	mv	s1,a0
    800079f8:	00090513          	mv	a0,s2
    800079fc:	00001097          	auipc	ra,0x1
    80007a00:	e40080e7          	jalr	-448(ra) # 8000883c <acquire>
    80007a04:	02048c63          	beqz	s1,80007a3c <consoleintr+0x68>
    80007a08:	0a092783          	lw	a5,160(s2)
    80007a0c:	09892703          	lw	a4,152(s2)
    80007a10:	07f00693          	li	a3,127
    80007a14:	40e7873b          	subw	a4,a5,a4
    80007a18:	02e6e263          	bltu	a3,a4,80007a3c <consoleintr+0x68>
    80007a1c:	00d00713          	li	a4,13
    80007a20:	04e48063          	beq	s1,a4,80007a60 <consoleintr+0x8c>
    80007a24:	07f7f713          	andi	a4,a5,127
    80007a28:	00e90733          	add	a4,s2,a4
    80007a2c:	0017879b          	addiw	a5,a5,1
    80007a30:	0af92023          	sw	a5,160(s2)
    80007a34:	00970c23          	sb	s1,24(a4)
    80007a38:	08f92e23          	sw	a5,156(s2)
    80007a3c:	01013403          	ld	s0,16(sp)
    80007a40:	01813083          	ld	ra,24(sp)
    80007a44:	00813483          	ld	s1,8(sp)
    80007a48:	00013903          	ld	s2,0(sp)
    80007a4c:	00006517          	auipc	a0,0x6
    80007a50:	70c50513          	addi	a0,a0,1804 # 8000e158 <cons>
    80007a54:	02010113          	addi	sp,sp,32
    80007a58:	00001317          	auipc	t1,0x1
    80007a5c:	eb030067          	jr	-336(t1) # 80008908 <release>
    80007a60:	00a00493          	li	s1,10
    80007a64:	fc1ff06f          	j	80007a24 <consoleintr+0x50>

0000000080007a68 <consoleinit>:
    80007a68:	fe010113          	addi	sp,sp,-32
    80007a6c:	00113c23          	sd	ra,24(sp)
    80007a70:	00813823          	sd	s0,16(sp)
    80007a74:	00913423          	sd	s1,8(sp)
    80007a78:	02010413          	addi	s0,sp,32
    80007a7c:	00006497          	auipc	s1,0x6
    80007a80:	6dc48493          	addi	s1,s1,1756 # 8000e158 <cons>
    80007a84:	00048513          	mv	a0,s1
    80007a88:	00003597          	auipc	a1,0x3
    80007a8c:	d7058593          	addi	a1,a1,-656 # 8000a7f8 <CONSOLE_STATUS+0x7e8>
    80007a90:	00001097          	auipc	ra,0x1
    80007a94:	d88080e7          	jalr	-632(ra) # 80008818 <initlock>
    80007a98:	00000097          	auipc	ra,0x0
    80007a9c:	7ac080e7          	jalr	1964(ra) # 80008244 <uartinit>
    80007aa0:	01813083          	ld	ra,24(sp)
    80007aa4:	01013403          	ld	s0,16(sp)
    80007aa8:	00000797          	auipc	a5,0x0
    80007aac:	d9c78793          	addi	a5,a5,-612 # 80007844 <consoleread>
    80007ab0:	0af4bc23          	sd	a5,184(s1)
    80007ab4:	00000797          	auipc	a5,0x0
    80007ab8:	cec78793          	addi	a5,a5,-788 # 800077a0 <consolewrite>
    80007abc:	0cf4b023          	sd	a5,192(s1)
    80007ac0:	00813483          	ld	s1,8(sp)
    80007ac4:	02010113          	addi	sp,sp,32
    80007ac8:	00008067          	ret

0000000080007acc <console_read>:
    80007acc:	ff010113          	addi	sp,sp,-16
    80007ad0:	00813423          	sd	s0,8(sp)
    80007ad4:	01010413          	addi	s0,sp,16
    80007ad8:	00813403          	ld	s0,8(sp)
    80007adc:	00006317          	auipc	t1,0x6
    80007ae0:	73433303          	ld	t1,1844(t1) # 8000e210 <devsw+0x10>
    80007ae4:	01010113          	addi	sp,sp,16
    80007ae8:	00030067          	jr	t1

0000000080007aec <console_write>:
    80007aec:	ff010113          	addi	sp,sp,-16
    80007af0:	00813423          	sd	s0,8(sp)
    80007af4:	01010413          	addi	s0,sp,16
    80007af8:	00813403          	ld	s0,8(sp)
    80007afc:	00006317          	auipc	t1,0x6
    80007b00:	71c33303          	ld	t1,1820(t1) # 8000e218 <devsw+0x18>
    80007b04:	01010113          	addi	sp,sp,16
    80007b08:	00030067          	jr	t1

0000000080007b0c <panic>:
    80007b0c:	fe010113          	addi	sp,sp,-32
    80007b10:	00113c23          	sd	ra,24(sp)
    80007b14:	00813823          	sd	s0,16(sp)
    80007b18:	00913423          	sd	s1,8(sp)
    80007b1c:	02010413          	addi	s0,sp,32
    80007b20:	00050493          	mv	s1,a0
    80007b24:	00003517          	auipc	a0,0x3
    80007b28:	cdc50513          	addi	a0,a0,-804 # 8000a800 <CONSOLE_STATUS+0x7f0>
    80007b2c:	00006797          	auipc	a5,0x6
    80007b30:	7807a623          	sw	zero,1932(a5) # 8000e2b8 <pr+0x18>
    80007b34:	00000097          	auipc	ra,0x0
    80007b38:	034080e7          	jalr	52(ra) # 80007b68 <__printf>
    80007b3c:	00048513          	mv	a0,s1
    80007b40:	00000097          	auipc	ra,0x0
    80007b44:	028080e7          	jalr	40(ra) # 80007b68 <__printf>
    80007b48:	00002517          	auipc	a0,0x2
    80007b4c:	75850513          	addi	a0,a0,1880 # 8000a2a0 <CONSOLE_STATUS+0x290>
    80007b50:	00000097          	auipc	ra,0x0
    80007b54:	018080e7          	jalr	24(ra) # 80007b68 <__printf>
    80007b58:	00100793          	li	a5,1
    80007b5c:	00005717          	auipc	a4,0x5
    80007b60:	46f72e23          	sw	a5,1148(a4) # 8000cfd8 <panicked>
    80007b64:	0000006f          	j	80007b64 <panic+0x58>

0000000080007b68 <__printf>:
    80007b68:	f3010113          	addi	sp,sp,-208
    80007b6c:	08813023          	sd	s0,128(sp)
    80007b70:	07313423          	sd	s3,104(sp)
    80007b74:	09010413          	addi	s0,sp,144
    80007b78:	05813023          	sd	s8,64(sp)
    80007b7c:	08113423          	sd	ra,136(sp)
    80007b80:	06913c23          	sd	s1,120(sp)
    80007b84:	07213823          	sd	s2,112(sp)
    80007b88:	07413023          	sd	s4,96(sp)
    80007b8c:	05513c23          	sd	s5,88(sp)
    80007b90:	05613823          	sd	s6,80(sp)
    80007b94:	05713423          	sd	s7,72(sp)
    80007b98:	03913c23          	sd	s9,56(sp)
    80007b9c:	03a13823          	sd	s10,48(sp)
    80007ba0:	03b13423          	sd	s11,40(sp)
    80007ba4:	00006317          	auipc	t1,0x6
    80007ba8:	6fc30313          	addi	t1,t1,1788 # 8000e2a0 <pr>
    80007bac:	01832c03          	lw	s8,24(t1)
    80007bb0:	00b43423          	sd	a1,8(s0)
    80007bb4:	00c43823          	sd	a2,16(s0)
    80007bb8:	00d43c23          	sd	a3,24(s0)
    80007bbc:	02e43023          	sd	a4,32(s0)
    80007bc0:	02f43423          	sd	a5,40(s0)
    80007bc4:	03043823          	sd	a6,48(s0)
    80007bc8:	03143c23          	sd	a7,56(s0)
    80007bcc:	00050993          	mv	s3,a0
    80007bd0:	4a0c1663          	bnez	s8,8000807c <__printf+0x514>
    80007bd4:	60098c63          	beqz	s3,800081ec <__printf+0x684>
    80007bd8:	0009c503          	lbu	a0,0(s3)
    80007bdc:	00840793          	addi	a5,s0,8
    80007be0:	f6f43c23          	sd	a5,-136(s0)
    80007be4:	00000493          	li	s1,0
    80007be8:	22050063          	beqz	a0,80007e08 <__printf+0x2a0>
    80007bec:	00002a37          	lui	s4,0x2
    80007bf0:	00018ab7          	lui	s5,0x18
    80007bf4:	000f4b37          	lui	s6,0xf4
    80007bf8:	00989bb7          	lui	s7,0x989
    80007bfc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007c00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007c04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007c08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007c0c:	00148c9b          	addiw	s9,s1,1
    80007c10:	02500793          	li	a5,37
    80007c14:	01998933          	add	s2,s3,s9
    80007c18:	38f51263          	bne	a0,a5,80007f9c <__printf+0x434>
    80007c1c:	00094783          	lbu	a5,0(s2)
    80007c20:	00078c9b          	sext.w	s9,a5
    80007c24:	1e078263          	beqz	a5,80007e08 <__printf+0x2a0>
    80007c28:	0024849b          	addiw	s1,s1,2
    80007c2c:	07000713          	li	a4,112
    80007c30:	00998933          	add	s2,s3,s1
    80007c34:	38e78a63          	beq	a5,a4,80007fc8 <__printf+0x460>
    80007c38:	20f76863          	bltu	a4,a5,80007e48 <__printf+0x2e0>
    80007c3c:	42a78863          	beq	a5,a0,8000806c <__printf+0x504>
    80007c40:	06400713          	li	a4,100
    80007c44:	40e79663          	bne	a5,a4,80008050 <__printf+0x4e8>
    80007c48:	f7843783          	ld	a5,-136(s0)
    80007c4c:	0007a603          	lw	a2,0(a5)
    80007c50:	00878793          	addi	a5,a5,8
    80007c54:	f6f43c23          	sd	a5,-136(s0)
    80007c58:	42064a63          	bltz	a2,8000808c <__printf+0x524>
    80007c5c:	00a00713          	li	a4,10
    80007c60:	02e677bb          	remuw	a5,a2,a4
    80007c64:	00003d97          	auipc	s11,0x3
    80007c68:	bc4d8d93          	addi	s11,s11,-1084 # 8000a828 <digits>
    80007c6c:	00900593          	li	a1,9
    80007c70:	0006051b          	sext.w	a0,a2
    80007c74:	00000c93          	li	s9,0
    80007c78:	02079793          	slli	a5,a5,0x20
    80007c7c:	0207d793          	srli	a5,a5,0x20
    80007c80:	00fd87b3          	add	a5,s11,a5
    80007c84:	0007c783          	lbu	a5,0(a5)
    80007c88:	02e656bb          	divuw	a3,a2,a4
    80007c8c:	f8f40023          	sb	a5,-128(s0)
    80007c90:	14c5d863          	bge	a1,a2,80007de0 <__printf+0x278>
    80007c94:	06300593          	li	a1,99
    80007c98:	00100c93          	li	s9,1
    80007c9c:	02e6f7bb          	remuw	a5,a3,a4
    80007ca0:	02079793          	slli	a5,a5,0x20
    80007ca4:	0207d793          	srli	a5,a5,0x20
    80007ca8:	00fd87b3          	add	a5,s11,a5
    80007cac:	0007c783          	lbu	a5,0(a5)
    80007cb0:	02e6d73b          	divuw	a4,a3,a4
    80007cb4:	f8f400a3          	sb	a5,-127(s0)
    80007cb8:	12a5f463          	bgeu	a1,a0,80007de0 <__printf+0x278>
    80007cbc:	00a00693          	li	a3,10
    80007cc0:	00900593          	li	a1,9
    80007cc4:	02d777bb          	remuw	a5,a4,a3
    80007cc8:	02079793          	slli	a5,a5,0x20
    80007ccc:	0207d793          	srli	a5,a5,0x20
    80007cd0:	00fd87b3          	add	a5,s11,a5
    80007cd4:	0007c503          	lbu	a0,0(a5)
    80007cd8:	02d757bb          	divuw	a5,a4,a3
    80007cdc:	f8a40123          	sb	a0,-126(s0)
    80007ce0:	48e5f263          	bgeu	a1,a4,80008164 <__printf+0x5fc>
    80007ce4:	06300513          	li	a0,99
    80007ce8:	02d7f5bb          	remuw	a1,a5,a3
    80007cec:	02059593          	slli	a1,a1,0x20
    80007cf0:	0205d593          	srli	a1,a1,0x20
    80007cf4:	00bd85b3          	add	a1,s11,a1
    80007cf8:	0005c583          	lbu	a1,0(a1)
    80007cfc:	02d7d7bb          	divuw	a5,a5,a3
    80007d00:	f8b401a3          	sb	a1,-125(s0)
    80007d04:	48e57263          	bgeu	a0,a4,80008188 <__printf+0x620>
    80007d08:	3e700513          	li	a0,999
    80007d0c:	02d7f5bb          	remuw	a1,a5,a3
    80007d10:	02059593          	slli	a1,a1,0x20
    80007d14:	0205d593          	srli	a1,a1,0x20
    80007d18:	00bd85b3          	add	a1,s11,a1
    80007d1c:	0005c583          	lbu	a1,0(a1)
    80007d20:	02d7d7bb          	divuw	a5,a5,a3
    80007d24:	f8b40223          	sb	a1,-124(s0)
    80007d28:	46e57663          	bgeu	a0,a4,80008194 <__printf+0x62c>
    80007d2c:	02d7f5bb          	remuw	a1,a5,a3
    80007d30:	02059593          	slli	a1,a1,0x20
    80007d34:	0205d593          	srli	a1,a1,0x20
    80007d38:	00bd85b3          	add	a1,s11,a1
    80007d3c:	0005c583          	lbu	a1,0(a1)
    80007d40:	02d7d7bb          	divuw	a5,a5,a3
    80007d44:	f8b402a3          	sb	a1,-123(s0)
    80007d48:	46ea7863          	bgeu	s4,a4,800081b8 <__printf+0x650>
    80007d4c:	02d7f5bb          	remuw	a1,a5,a3
    80007d50:	02059593          	slli	a1,a1,0x20
    80007d54:	0205d593          	srli	a1,a1,0x20
    80007d58:	00bd85b3          	add	a1,s11,a1
    80007d5c:	0005c583          	lbu	a1,0(a1)
    80007d60:	02d7d7bb          	divuw	a5,a5,a3
    80007d64:	f8b40323          	sb	a1,-122(s0)
    80007d68:	3eeaf863          	bgeu	s5,a4,80008158 <__printf+0x5f0>
    80007d6c:	02d7f5bb          	remuw	a1,a5,a3
    80007d70:	02059593          	slli	a1,a1,0x20
    80007d74:	0205d593          	srli	a1,a1,0x20
    80007d78:	00bd85b3          	add	a1,s11,a1
    80007d7c:	0005c583          	lbu	a1,0(a1)
    80007d80:	02d7d7bb          	divuw	a5,a5,a3
    80007d84:	f8b403a3          	sb	a1,-121(s0)
    80007d88:	42eb7e63          	bgeu	s6,a4,800081c4 <__printf+0x65c>
    80007d8c:	02d7f5bb          	remuw	a1,a5,a3
    80007d90:	02059593          	slli	a1,a1,0x20
    80007d94:	0205d593          	srli	a1,a1,0x20
    80007d98:	00bd85b3          	add	a1,s11,a1
    80007d9c:	0005c583          	lbu	a1,0(a1)
    80007da0:	02d7d7bb          	divuw	a5,a5,a3
    80007da4:	f8b40423          	sb	a1,-120(s0)
    80007da8:	42ebfc63          	bgeu	s7,a4,800081e0 <__printf+0x678>
    80007dac:	02079793          	slli	a5,a5,0x20
    80007db0:	0207d793          	srli	a5,a5,0x20
    80007db4:	00fd8db3          	add	s11,s11,a5
    80007db8:	000dc703          	lbu	a4,0(s11)
    80007dbc:	00a00793          	li	a5,10
    80007dc0:	00900c93          	li	s9,9
    80007dc4:	f8e404a3          	sb	a4,-119(s0)
    80007dc8:	00065c63          	bgez	a2,80007de0 <__printf+0x278>
    80007dcc:	f9040713          	addi	a4,s0,-112
    80007dd0:	00f70733          	add	a4,a4,a5
    80007dd4:	02d00693          	li	a3,45
    80007dd8:	fed70823          	sb	a3,-16(a4)
    80007ddc:	00078c93          	mv	s9,a5
    80007de0:	f8040793          	addi	a5,s0,-128
    80007de4:	01978cb3          	add	s9,a5,s9
    80007de8:	f7f40d13          	addi	s10,s0,-129
    80007dec:	000cc503          	lbu	a0,0(s9)
    80007df0:	fffc8c93          	addi	s9,s9,-1
    80007df4:	00000097          	auipc	ra,0x0
    80007df8:	b90080e7          	jalr	-1136(ra) # 80007984 <consputc>
    80007dfc:	ffac98e3          	bne	s9,s10,80007dec <__printf+0x284>
    80007e00:	00094503          	lbu	a0,0(s2)
    80007e04:	e00514e3          	bnez	a0,80007c0c <__printf+0xa4>
    80007e08:	1a0c1663          	bnez	s8,80007fb4 <__printf+0x44c>
    80007e0c:	08813083          	ld	ra,136(sp)
    80007e10:	08013403          	ld	s0,128(sp)
    80007e14:	07813483          	ld	s1,120(sp)
    80007e18:	07013903          	ld	s2,112(sp)
    80007e1c:	06813983          	ld	s3,104(sp)
    80007e20:	06013a03          	ld	s4,96(sp)
    80007e24:	05813a83          	ld	s5,88(sp)
    80007e28:	05013b03          	ld	s6,80(sp)
    80007e2c:	04813b83          	ld	s7,72(sp)
    80007e30:	04013c03          	ld	s8,64(sp)
    80007e34:	03813c83          	ld	s9,56(sp)
    80007e38:	03013d03          	ld	s10,48(sp)
    80007e3c:	02813d83          	ld	s11,40(sp)
    80007e40:	0d010113          	addi	sp,sp,208
    80007e44:	00008067          	ret
    80007e48:	07300713          	li	a4,115
    80007e4c:	1ce78a63          	beq	a5,a4,80008020 <__printf+0x4b8>
    80007e50:	07800713          	li	a4,120
    80007e54:	1ee79e63          	bne	a5,a4,80008050 <__printf+0x4e8>
    80007e58:	f7843783          	ld	a5,-136(s0)
    80007e5c:	0007a703          	lw	a4,0(a5)
    80007e60:	00878793          	addi	a5,a5,8
    80007e64:	f6f43c23          	sd	a5,-136(s0)
    80007e68:	28074263          	bltz	a4,800080ec <__printf+0x584>
    80007e6c:	00003d97          	auipc	s11,0x3
    80007e70:	9bcd8d93          	addi	s11,s11,-1604 # 8000a828 <digits>
    80007e74:	00f77793          	andi	a5,a4,15
    80007e78:	00fd87b3          	add	a5,s11,a5
    80007e7c:	0007c683          	lbu	a3,0(a5)
    80007e80:	00f00613          	li	a2,15
    80007e84:	0007079b          	sext.w	a5,a4
    80007e88:	f8d40023          	sb	a3,-128(s0)
    80007e8c:	0047559b          	srliw	a1,a4,0x4
    80007e90:	0047569b          	srliw	a3,a4,0x4
    80007e94:	00000c93          	li	s9,0
    80007e98:	0ee65063          	bge	a2,a4,80007f78 <__printf+0x410>
    80007e9c:	00f6f693          	andi	a3,a3,15
    80007ea0:	00dd86b3          	add	a3,s11,a3
    80007ea4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007ea8:	0087d79b          	srliw	a5,a5,0x8
    80007eac:	00100c93          	li	s9,1
    80007eb0:	f8d400a3          	sb	a3,-127(s0)
    80007eb4:	0cb67263          	bgeu	a2,a1,80007f78 <__printf+0x410>
    80007eb8:	00f7f693          	andi	a3,a5,15
    80007ebc:	00dd86b3          	add	a3,s11,a3
    80007ec0:	0006c583          	lbu	a1,0(a3)
    80007ec4:	00f00613          	li	a2,15
    80007ec8:	0047d69b          	srliw	a3,a5,0x4
    80007ecc:	f8b40123          	sb	a1,-126(s0)
    80007ed0:	0047d593          	srli	a1,a5,0x4
    80007ed4:	28f67e63          	bgeu	a2,a5,80008170 <__printf+0x608>
    80007ed8:	00f6f693          	andi	a3,a3,15
    80007edc:	00dd86b3          	add	a3,s11,a3
    80007ee0:	0006c503          	lbu	a0,0(a3)
    80007ee4:	0087d813          	srli	a6,a5,0x8
    80007ee8:	0087d69b          	srliw	a3,a5,0x8
    80007eec:	f8a401a3          	sb	a0,-125(s0)
    80007ef0:	28b67663          	bgeu	a2,a1,8000817c <__printf+0x614>
    80007ef4:	00f6f693          	andi	a3,a3,15
    80007ef8:	00dd86b3          	add	a3,s11,a3
    80007efc:	0006c583          	lbu	a1,0(a3)
    80007f00:	00c7d513          	srli	a0,a5,0xc
    80007f04:	00c7d69b          	srliw	a3,a5,0xc
    80007f08:	f8b40223          	sb	a1,-124(s0)
    80007f0c:	29067a63          	bgeu	a2,a6,800081a0 <__printf+0x638>
    80007f10:	00f6f693          	andi	a3,a3,15
    80007f14:	00dd86b3          	add	a3,s11,a3
    80007f18:	0006c583          	lbu	a1,0(a3)
    80007f1c:	0107d813          	srli	a6,a5,0x10
    80007f20:	0107d69b          	srliw	a3,a5,0x10
    80007f24:	f8b402a3          	sb	a1,-123(s0)
    80007f28:	28a67263          	bgeu	a2,a0,800081ac <__printf+0x644>
    80007f2c:	00f6f693          	andi	a3,a3,15
    80007f30:	00dd86b3          	add	a3,s11,a3
    80007f34:	0006c683          	lbu	a3,0(a3)
    80007f38:	0147d79b          	srliw	a5,a5,0x14
    80007f3c:	f8d40323          	sb	a3,-122(s0)
    80007f40:	21067663          	bgeu	a2,a6,8000814c <__printf+0x5e4>
    80007f44:	02079793          	slli	a5,a5,0x20
    80007f48:	0207d793          	srli	a5,a5,0x20
    80007f4c:	00fd8db3          	add	s11,s11,a5
    80007f50:	000dc683          	lbu	a3,0(s11)
    80007f54:	00800793          	li	a5,8
    80007f58:	00700c93          	li	s9,7
    80007f5c:	f8d403a3          	sb	a3,-121(s0)
    80007f60:	00075c63          	bgez	a4,80007f78 <__printf+0x410>
    80007f64:	f9040713          	addi	a4,s0,-112
    80007f68:	00f70733          	add	a4,a4,a5
    80007f6c:	02d00693          	li	a3,45
    80007f70:	fed70823          	sb	a3,-16(a4)
    80007f74:	00078c93          	mv	s9,a5
    80007f78:	f8040793          	addi	a5,s0,-128
    80007f7c:	01978cb3          	add	s9,a5,s9
    80007f80:	f7f40d13          	addi	s10,s0,-129
    80007f84:	000cc503          	lbu	a0,0(s9)
    80007f88:	fffc8c93          	addi	s9,s9,-1
    80007f8c:	00000097          	auipc	ra,0x0
    80007f90:	9f8080e7          	jalr	-1544(ra) # 80007984 <consputc>
    80007f94:	ff9d18e3          	bne	s10,s9,80007f84 <__printf+0x41c>
    80007f98:	0100006f          	j	80007fa8 <__printf+0x440>
    80007f9c:	00000097          	auipc	ra,0x0
    80007fa0:	9e8080e7          	jalr	-1560(ra) # 80007984 <consputc>
    80007fa4:	000c8493          	mv	s1,s9
    80007fa8:	00094503          	lbu	a0,0(s2)
    80007fac:	c60510e3          	bnez	a0,80007c0c <__printf+0xa4>
    80007fb0:	e40c0ee3          	beqz	s8,80007e0c <__printf+0x2a4>
    80007fb4:	00006517          	auipc	a0,0x6
    80007fb8:	2ec50513          	addi	a0,a0,748 # 8000e2a0 <pr>
    80007fbc:	00001097          	auipc	ra,0x1
    80007fc0:	94c080e7          	jalr	-1716(ra) # 80008908 <release>
    80007fc4:	e49ff06f          	j	80007e0c <__printf+0x2a4>
    80007fc8:	f7843783          	ld	a5,-136(s0)
    80007fcc:	03000513          	li	a0,48
    80007fd0:	01000d13          	li	s10,16
    80007fd4:	00878713          	addi	a4,a5,8
    80007fd8:	0007bc83          	ld	s9,0(a5)
    80007fdc:	f6e43c23          	sd	a4,-136(s0)
    80007fe0:	00000097          	auipc	ra,0x0
    80007fe4:	9a4080e7          	jalr	-1628(ra) # 80007984 <consputc>
    80007fe8:	07800513          	li	a0,120
    80007fec:	00000097          	auipc	ra,0x0
    80007ff0:	998080e7          	jalr	-1640(ra) # 80007984 <consputc>
    80007ff4:	00003d97          	auipc	s11,0x3
    80007ff8:	834d8d93          	addi	s11,s11,-1996 # 8000a828 <digits>
    80007ffc:	03ccd793          	srli	a5,s9,0x3c
    80008000:	00fd87b3          	add	a5,s11,a5
    80008004:	0007c503          	lbu	a0,0(a5)
    80008008:	fffd0d1b          	addiw	s10,s10,-1
    8000800c:	004c9c93          	slli	s9,s9,0x4
    80008010:	00000097          	auipc	ra,0x0
    80008014:	974080e7          	jalr	-1676(ra) # 80007984 <consputc>
    80008018:	fe0d12e3          	bnez	s10,80007ffc <__printf+0x494>
    8000801c:	f8dff06f          	j	80007fa8 <__printf+0x440>
    80008020:	f7843783          	ld	a5,-136(s0)
    80008024:	0007bc83          	ld	s9,0(a5)
    80008028:	00878793          	addi	a5,a5,8
    8000802c:	f6f43c23          	sd	a5,-136(s0)
    80008030:	000c9a63          	bnez	s9,80008044 <__printf+0x4dc>
    80008034:	1080006f          	j	8000813c <__printf+0x5d4>
    80008038:	001c8c93          	addi	s9,s9,1
    8000803c:	00000097          	auipc	ra,0x0
    80008040:	948080e7          	jalr	-1720(ra) # 80007984 <consputc>
    80008044:	000cc503          	lbu	a0,0(s9)
    80008048:	fe0518e3          	bnez	a0,80008038 <__printf+0x4d0>
    8000804c:	f5dff06f          	j	80007fa8 <__printf+0x440>
    80008050:	02500513          	li	a0,37
    80008054:	00000097          	auipc	ra,0x0
    80008058:	930080e7          	jalr	-1744(ra) # 80007984 <consputc>
    8000805c:	000c8513          	mv	a0,s9
    80008060:	00000097          	auipc	ra,0x0
    80008064:	924080e7          	jalr	-1756(ra) # 80007984 <consputc>
    80008068:	f41ff06f          	j	80007fa8 <__printf+0x440>
    8000806c:	02500513          	li	a0,37
    80008070:	00000097          	auipc	ra,0x0
    80008074:	914080e7          	jalr	-1772(ra) # 80007984 <consputc>
    80008078:	f31ff06f          	j	80007fa8 <__printf+0x440>
    8000807c:	00030513          	mv	a0,t1
    80008080:	00000097          	auipc	ra,0x0
    80008084:	7bc080e7          	jalr	1980(ra) # 8000883c <acquire>
    80008088:	b4dff06f          	j	80007bd4 <__printf+0x6c>
    8000808c:	40c0053b          	negw	a0,a2
    80008090:	00a00713          	li	a4,10
    80008094:	02e576bb          	remuw	a3,a0,a4
    80008098:	00002d97          	auipc	s11,0x2
    8000809c:	790d8d93          	addi	s11,s11,1936 # 8000a828 <digits>
    800080a0:	ff700593          	li	a1,-9
    800080a4:	02069693          	slli	a3,a3,0x20
    800080a8:	0206d693          	srli	a3,a3,0x20
    800080ac:	00dd86b3          	add	a3,s11,a3
    800080b0:	0006c683          	lbu	a3,0(a3)
    800080b4:	02e557bb          	divuw	a5,a0,a4
    800080b8:	f8d40023          	sb	a3,-128(s0)
    800080bc:	10b65e63          	bge	a2,a1,800081d8 <__printf+0x670>
    800080c0:	06300593          	li	a1,99
    800080c4:	02e7f6bb          	remuw	a3,a5,a4
    800080c8:	02069693          	slli	a3,a3,0x20
    800080cc:	0206d693          	srli	a3,a3,0x20
    800080d0:	00dd86b3          	add	a3,s11,a3
    800080d4:	0006c683          	lbu	a3,0(a3)
    800080d8:	02e7d73b          	divuw	a4,a5,a4
    800080dc:	00200793          	li	a5,2
    800080e0:	f8d400a3          	sb	a3,-127(s0)
    800080e4:	bca5ece3          	bltu	a1,a0,80007cbc <__printf+0x154>
    800080e8:	ce5ff06f          	j	80007dcc <__printf+0x264>
    800080ec:	40e007bb          	negw	a5,a4
    800080f0:	00002d97          	auipc	s11,0x2
    800080f4:	738d8d93          	addi	s11,s11,1848 # 8000a828 <digits>
    800080f8:	00f7f693          	andi	a3,a5,15
    800080fc:	00dd86b3          	add	a3,s11,a3
    80008100:	0006c583          	lbu	a1,0(a3)
    80008104:	ff100613          	li	a2,-15
    80008108:	0047d69b          	srliw	a3,a5,0x4
    8000810c:	f8b40023          	sb	a1,-128(s0)
    80008110:	0047d59b          	srliw	a1,a5,0x4
    80008114:	0ac75e63          	bge	a4,a2,800081d0 <__printf+0x668>
    80008118:	00f6f693          	andi	a3,a3,15
    8000811c:	00dd86b3          	add	a3,s11,a3
    80008120:	0006c603          	lbu	a2,0(a3)
    80008124:	00f00693          	li	a3,15
    80008128:	0087d79b          	srliw	a5,a5,0x8
    8000812c:	f8c400a3          	sb	a2,-127(s0)
    80008130:	d8b6e4e3          	bltu	a3,a1,80007eb8 <__printf+0x350>
    80008134:	00200793          	li	a5,2
    80008138:	e2dff06f          	j	80007f64 <__printf+0x3fc>
    8000813c:	00002c97          	auipc	s9,0x2
    80008140:	6ccc8c93          	addi	s9,s9,1740 # 8000a808 <CONSOLE_STATUS+0x7f8>
    80008144:	02800513          	li	a0,40
    80008148:	ef1ff06f          	j	80008038 <__printf+0x4d0>
    8000814c:	00700793          	li	a5,7
    80008150:	00600c93          	li	s9,6
    80008154:	e0dff06f          	j	80007f60 <__printf+0x3f8>
    80008158:	00700793          	li	a5,7
    8000815c:	00600c93          	li	s9,6
    80008160:	c69ff06f          	j	80007dc8 <__printf+0x260>
    80008164:	00300793          	li	a5,3
    80008168:	00200c93          	li	s9,2
    8000816c:	c5dff06f          	j	80007dc8 <__printf+0x260>
    80008170:	00300793          	li	a5,3
    80008174:	00200c93          	li	s9,2
    80008178:	de9ff06f          	j	80007f60 <__printf+0x3f8>
    8000817c:	00400793          	li	a5,4
    80008180:	00300c93          	li	s9,3
    80008184:	dddff06f          	j	80007f60 <__printf+0x3f8>
    80008188:	00400793          	li	a5,4
    8000818c:	00300c93          	li	s9,3
    80008190:	c39ff06f          	j	80007dc8 <__printf+0x260>
    80008194:	00500793          	li	a5,5
    80008198:	00400c93          	li	s9,4
    8000819c:	c2dff06f          	j	80007dc8 <__printf+0x260>
    800081a0:	00500793          	li	a5,5
    800081a4:	00400c93          	li	s9,4
    800081a8:	db9ff06f          	j	80007f60 <__printf+0x3f8>
    800081ac:	00600793          	li	a5,6
    800081b0:	00500c93          	li	s9,5
    800081b4:	dadff06f          	j	80007f60 <__printf+0x3f8>
    800081b8:	00600793          	li	a5,6
    800081bc:	00500c93          	li	s9,5
    800081c0:	c09ff06f          	j	80007dc8 <__printf+0x260>
    800081c4:	00800793          	li	a5,8
    800081c8:	00700c93          	li	s9,7
    800081cc:	bfdff06f          	j	80007dc8 <__printf+0x260>
    800081d0:	00100793          	li	a5,1
    800081d4:	d91ff06f          	j	80007f64 <__printf+0x3fc>
    800081d8:	00100793          	li	a5,1
    800081dc:	bf1ff06f          	j	80007dcc <__printf+0x264>
    800081e0:	00900793          	li	a5,9
    800081e4:	00800c93          	li	s9,8
    800081e8:	be1ff06f          	j	80007dc8 <__printf+0x260>
    800081ec:	00002517          	auipc	a0,0x2
    800081f0:	62450513          	addi	a0,a0,1572 # 8000a810 <CONSOLE_STATUS+0x800>
    800081f4:	00000097          	auipc	ra,0x0
    800081f8:	918080e7          	jalr	-1768(ra) # 80007b0c <panic>

00000000800081fc <printfinit>:
    800081fc:	fe010113          	addi	sp,sp,-32
    80008200:	00813823          	sd	s0,16(sp)
    80008204:	00913423          	sd	s1,8(sp)
    80008208:	00113c23          	sd	ra,24(sp)
    8000820c:	02010413          	addi	s0,sp,32
    80008210:	00006497          	auipc	s1,0x6
    80008214:	09048493          	addi	s1,s1,144 # 8000e2a0 <pr>
    80008218:	00048513          	mv	a0,s1
    8000821c:	00002597          	auipc	a1,0x2
    80008220:	60458593          	addi	a1,a1,1540 # 8000a820 <CONSOLE_STATUS+0x810>
    80008224:	00000097          	auipc	ra,0x0
    80008228:	5f4080e7          	jalr	1524(ra) # 80008818 <initlock>
    8000822c:	01813083          	ld	ra,24(sp)
    80008230:	01013403          	ld	s0,16(sp)
    80008234:	0004ac23          	sw	zero,24(s1)
    80008238:	00813483          	ld	s1,8(sp)
    8000823c:	02010113          	addi	sp,sp,32
    80008240:	00008067          	ret

0000000080008244 <uartinit>:
    80008244:	ff010113          	addi	sp,sp,-16
    80008248:	00813423          	sd	s0,8(sp)
    8000824c:	01010413          	addi	s0,sp,16
    80008250:	100007b7          	lui	a5,0x10000
    80008254:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008258:	f8000713          	li	a4,-128
    8000825c:	00e781a3          	sb	a4,3(a5)
    80008260:	00300713          	li	a4,3
    80008264:	00e78023          	sb	a4,0(a5)
    80008268:	000780a3          	sb	zero,1(a5)
    8000826c:	00e781a3          	sb	a4,3(a5)
    80008270:	00700693          	li	a3,7
    80008274:	00d78123          	sb	a3,2(a5)
    80008278:	00e780a3          	sb	a4,1(a5)
    8000827c:	00813403          	ld	s0,8(sp)
    80008280:	01010113          	addi	sp,sp,16
    80008284:	00008067          	ret

0000000080008288 <uartputc>:
    80008288:	00005797          	auipc	a5,0x5
    8000828c:	d507a783          	lw	a5,-688(a5) # 8000cfd8 <panicked>
    80008290:	00078463          	beqz	a5,80008298 <uartputc+0x10>
    80008294:	0000006f          	j	80008294 <uartputc+0xc>
    80008298:	fd010113          	addi	sp,sp,-48
    8000829c:	02813023          	sd	s0,32(sp)
    800082a0:	00913c23          	sd	s1,24(sp)
    800082a4:	01213823          	sd	s2,16(sp)
    800082a8:	01313423          	sd	s3,8(sp)
    800082ac:	02113423          	sd	ra,40(sp)
    800082b0:	03010413          	addi	s0,sp,48
    800082b4:	00005917          	auipc	s2,0x5
    800082b8:	d2c90913          	addi	s2,s2,-724 # 8000cfe0 <uart_tx_r>
    800082bc:	00093783          	ld	a5,0(s2)
    800082c0:	00005497          	auipc	s1,0x5
    800082c4:	d2848493          	addi	s1,s1,-728 # 8000cfe8 <uart_tx_w>
    800082c8:	0004b703          	ld	a4,0(s1)
    800082cc:	02078693          	addi	a3,a5,32
    800082d0:	00050993          	mv	s3,a0
    800082d4:	02e69c63          	bne	a3,a4,8000830c <uartputc+0x84>
    800082d8:	00001097          	auipc	ra,0x1
    800082dc:	834080e7          	jalr	-1996(ra) # 80008b0c <push_on>
    800082e0:	00093783          	ld	a5,0(s2)
    800082e4:	0004b703          	ld	a4,0(s1)
    800082e8:	02078793          	addi	a5,a5,32
    800082ec:	00e79463          	bne	a5,a4,800082f4 <uartputc+0x6c>
    800082f0:	0000006f          	j	800082f0 <uartputc+0x68>
    800082f4:	00001097          	auipc	ra,0x1
    800082f8:	88c080e7          	jalr	-1908(ra) # 80008b80 <pop_on>
    800082fc:	00093783          	ld	a5,0(s2)
    80008300:	0004b703          	ld	a4,0(s1)
    80008304:	02078693          	addi	a3,a5,32
    80008308:	fce688e3          	beq	a3,a4,800082d8 <uartputc+0x50>
    8000830c:	01f77693          	andi	a3,a4,31
    80008310:	00006597          	auipc	a1,0x6
    80008314:	fb058593          	addi	a1,a1,-80 # 8000e2c0 <uart_tx_buf>
    80008318:	00d586b3          	add	a3,a1,a3
    8000831c:	00170713          	addi	a4,a4,1
    80008320:	01368023          	sb	s3,0(a3)
    80008324:	00e4b023          	sd	a4,0(s1)
    80008328:	10000637          	lui	a2,0x10000
    8000832c:	02f71063          	bne	a4,a5,8000834c <uartputc+0xc4>
    80008330:	0340006f          	j	80008364 <uartputc+0xdc>
    80008334:	00074703          	lbu	a4,0(a4)
    80008338:	00f93023          	sd	a5,0(s2)
    8000833c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008340:	00093783          	ld	a5,0(s2)
    80008344:	0004b703          	ld	a4,0(s1)
    80008348:	00f70e63          	beq	a4,a5,80008364 <uartputc+0xdc>
    8000834c:	00564683          	lbu	a3,5(a2)
    80008350:	01f7f713          	andi	a4,a5,31
    80008354:	00e58733          	add	a4,a1,a4
    80008358:	0206f693          	andi	a3,a3,32
    8000835c:	00178793          	addi	a5,a5,1
    80008360:	fc069ae3          	bnez	a3,80008334 <uartputc+0xac>
    80008364:	02813083          	ld	ra,40(sp)
    80008368:	02013403          	ld	s0,32(sp)
    8000836c:	01813483          	ld	s1,24(sp)
    80008370:	01013903          	ld	s2,16(sp)
    80008374:	00813983          	ld	s3,8(sp)
    80008378:	03010113          	addi	sp,sp,48
    8000837c:	00008067          	ret

0000000080008380 <uartputc_sync>:
    80008380:	ff010113          	addi	sp,sp,-16
    80008384:	00813423          	sd	s0,8(sp)
    80008388:	01010413          	addi	s0,sp,16
    8000838c:	00005717          	auipc	a4,0x5
    80008390:	c4c72703          	lw	a4,-948(a4) # 8000cfd8 <panicked>
    80008394:	02071663          	bnez	a4,800083c0 <uartputc_sync+0x40>
    80008398:	00050793          	mv	a5,a0
    8000839c:	100006b7          	lui	a3,0x10000
    800083a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800083a4:	02077713          	andi	a4,a4,32
    800083a8:	fe070ce3          	beqz	a4,800083a0 <uartputc_sync+0x20>
    800083ac:	0ff7f793          	andi	a5,a5,255
    800083b0:	00f68023          	sb	a5,0(a3)
    800083b4:	00813403          	ld	s0,8(sp)
    800083b8:	01010113          	addi	sp,sp,16
    800083bc:	00008067          	ret
    800083c0:	0000006f          	j	800083c0 <uartputc_sync+0x40>

00000000800083c4 <uartstart>:
    800083c4:	ff010113          	addi	sp,sp,-16
    800083c8:	00813423          	sd	s0,8(sp)
    800083cc:	01010413          	addi	s0,sp,16
    800083d0:	00005617          	auipc	a2,0x5
    800083d4:	c1060613          	addi	a2,a2,-1008 # 8000cfe0 <uart_tx_r>
    800083d8:	00005517          	auipc	a0,0x5
    800083dc:	c1050513          	addi	a0,a0,-1008 # 8000cfe8 <uart_tx_w>
    800083e0:	00063783          	ld	a5,0(a2)
    800083e4:	00053703          	ld	a4,0(a0)
    800083e8:	04f70263          	beq	a4,a5,8000842c <uartstart+0x68>
    800083ec:	100005b7          	lui	a1,0x10000
    800083f0:	00006817          	auipc	a6,0x6
    800083f4:	ed080813          	addi	a6,a6,-304 # 8000e2c0 <uart_tx_buf>
    800083f8:	01c0006f          	j	80008414 <uartstart+0x50>
    800083fc:	0006c703          	lbu	a4,0(a3)
    80008400:	00f63023          	sd	a5,0(a2)
    80008404:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008408:	00063783          	ld	a5,0(a2)
    8000840c:	00053703          	ld	a4,0(a0)
    80008410:	00f70e63          	beq	a4,a5,8000842c <uartstart+0x68>
    80008414:	01f7f713          	andi	a4,a5,31
    80008418:	00e806b3          	add	a3,a6,a4
    8000841c:	0055c703          	lbu	a4,5(a1)
    80008420:	00178793          	addi	a5,a5,1
    80008424:	02077713          	andi	a4,a4,32
    80008428:	fc071ae3          	bnez	a4,800083fc <uartstart+0x38>
    8000842c:	00813403          	ld	s0,8(sp)
    80008430:	01010113          	addi	sp,sp,16
    80008434:	00008067          	ret

0000000080008438 <uartgetc>:
    80008438:	ff010113          	addi	sp,sp,-16
    8000843c:	00813423          	sd	s0,8(sp)
    80008440:	01010413          	addi	s0,sp,16
    80008444:	10000737          	lui	a4,0x10000
    80008448:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000844c:	0017f793          	andi	a5,a5,1
    80008450:	00078c63          	beqz	a5,80008468 <uartgetc+0x30>
    80008454:	00074503          	lbu	a0,0(a4)
    80008458:	0ff57513          	andi	a0,a0,255
    8000845c:	00813403          	ld	s0,8(sp)
    80008460:	01010113          	addi	sp,sp,16
    80008464:	00008067          	ret
    80008468:	fff00513          	li	a0,-1
    8000846c:	ff1ff06f          	j	8000845c <uartgetc+0x24>

0000000080008470 <uartintr>:
    80008470:	100007b7          	lui	a5,0x10000
    80008474:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008478:	0017f793          	andi	a5,a5,1
    8000847c:	0a078463          	beqz	a5,80008524 <uartintr+0xb4>
    80008480:	fe010113          	addi	sp,sp,-32
    80008484:	00813823          	sd	s0,16(sp)
    80008488:	00913423          	sd	s1,8(sp)
    8000848c:	00113c23          	sd	ra,24(sp)
    80008490:	02010413          	addi	s0,sp,32
    80008494:	100004b7          	lui	s1,0x10000
    80008498:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000849c:	0ff57513          	andi	a0,a0,255
    800084a0:	fffff097          	auipc	ra,0xfffff
    800084a4:	534080e7          	jalr	1332(ra) # 800079d4 <consoleintr>
    800084a8:	0054c783          	lbu	a5,5(s1)
    800084ac:	0017f793          	andi	a5,a5,1
    800084b0:	fe0794e3          	bnez	a5,80008498 <uartintr+0x28>
    800084b4:	00005617          	auipc	a2,0x5
    800084b8:	b2c60613          	addi	a2,a2,-1236 # 8000cfe0 <uart_tx_r>
    800084bc:	00005517          	auipc	a0,0x5
    800084c0:	b2c50513          	addi	a0,a0,-1236 # 8000cfe8 <uart_tx_w>
    800084c4:	00063783          	ld	a5,0(a2)
    800084c8:	00053703          	ld	a4,0(a0)
    800084cc:	04f70263          	beq	a4,a5,80008510 <uartintr+0xa0>
    800084d0:	100005b7          	lui	a1,0x10000
    800084d4:	00006817          	auipc	a6,0x6
    800084d8:	dec80813          	addi	a6,a6,-532 # 8000e2c0 <uart_tx_buf>
    800084dc:	01c0006f          	j	800084f8 <uartintr+0x88>
    800084e0:	0006c703          	lbu	a4,0(a3)
    800084e4:	00f63023          	sd	a5,0(a2)
    800084e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800084ec:	00063783          	ld	a5,0(a2)
    800084f0:	00053703          	ld	a4,0(a0)
    800084f4:	00f70e63          	beq	a4,a5,80008510 <uartintr+0xa0>
    800084f8:	01f7f713          	andi	a4,a5,31
    800084fc:	00e806b3          	add	a3,a6,a4
    80008500:	0055c703          	lbu	a4,5(a1)
    80008504:	00178793          	addi	a5,a5,1
    80008508:	02077713          	andi	a4,a4,32
    8000850c:	fc071ae3          	bnez	a4,800084e0 <uartintr+0x70>
    80008510:	01813083          	ld	ra,24(sp)
    80008514:	01013403          	ld	s0,16(sp)
    80008518:	00813483          	ld	s1,8(sp)
    8000851c:	02010113          	addi	sp,sp,32
    80008520:	00008067          	ret
    80008524:	00005617          	auipc	a2,0x5
    80008528:	abc60613          	addi	a2,a2,-1348 # 8000cfe0 <uart_tx_r>
    8000852c:	00005517          	auipc	a0,0x5
    80008530:	abc50513          	addi	a0,a0,-1348 # 8000cfe8 <uart_tx_w>
    80008534:	00063783          	ld	a5,0(a2)
    80008538:	00053703          	ld	a4,0(a0)
    8000853c:	04f70263          	beq	a4,a5,80008580 <uartintr+0x110>
    80008540:	100005b7          	lui	a1,0x10000
    80008544:	00006817          	auipc	a6,0x6
    80008548:	d7c80813          	addi	a6,a6,-644 # 8000e2c0 <uart_tx_buf>
    8000854c:	01c0006f          	j	80008568 <uartintr+0xf8>
    80008550:	0006c703          	lbu	a4,0(a3)
    80008554:	00f63023          	sd	a5,0(a2)
    80008558:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000855c:	00063783          	ld	a5,0(a2)
    80008560:	00053703          	ld	a4,0(a0)
    80008564:	02f70063          	beq	a4,a5,80008584 <uartintr+0x114>
    80008568:	01f7f713          	andi	a4,a5,31
    8000856c:	00e806b3          	add	a3,a6,a4
    80008570:	0055c703          	lbu	a4,5(a1)
    80008574:	00178793          	addi	a5,a5,1
    80008578:	02077713          	andi	a4,a4,32
    8000857c:	fc071ae3          	bnez	a4,80008550 <uartintr+0xe0>
    80008580:	00008067          	ret
    80008584:	00008067          	ret

0000000080008588 <kinit>:
    80008588:	fc010113          	addi	sp,sp,-64
    8000858c:	02913423          	sd	s1,40(sp)
    80008590:	fffff7b7          	lui	a5,0xfffff
    80008594:	00007497          	auipc	s1,0x7
    80008598:	d4b48493          	addi	s1,s1,-693 # 8000f2df <end+0xfff>
    8000859c:	02813823          	sd	s0,48(sp)
    800085a0:	01313c23          	sd	s3,24(sp)
    800085a4:	00f4f4b3          	and	s1,s1,a5
    800085a8:	02113c23          	sd	ra,56(sp)
    800085ac:	03213023          	sd	s2,32(sp)
    800085b0:	01413823          	sd	s4,16(sp)
    800085b4:	01513423          	sd	s5,8(sp)
    800085b8:	04010413          	addi	s0,sp,64
    800085bc:	000017b7          	lui	a5,0x1
    800085c0:	01100993          	li	s3,17
    800085c4:	00f487b3          	add	a5,s1,a5
    800085c8:	01b99993          	slli	s3,s3,0x1b
    800085cc:	06f9e063          	bltu	s3,a5,8000862c <kinit+0xa4>
    800085d0:	00006a97          	auipc	s5,0x6
    800085d4:	d10a8a93          	addi	s5,s5,-752 # 8000e2e0 <end>
    800085d8:	0754ec63          	bltu	s1,s5,80008650 <kinit+0xc8>
    800085dc:	0734fa63          	bgeu	s1,s3,80008650 <kinit+0xc8>
    800085e0:	00088a37          	lui	s4,0x88
    800085e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800085e8:	00005917          	auipc	s2,0x5
    800085ec:	a0890913          	addi	s2,s2,-1528 # 8000cff0 <kmem>
    800085f0:	00ca1a13          	slli	s4,s4,0xc
    800085f4:	0140006f          	j	80008608 <kinit+0x80>
    800085f8:	000017b7          	lui	a5,0x1
    800085fc:	00f484b3          	add	s1,s1,a5
    80008600:	0554e863          	bltu	s1,s5,80008650 <kinit+0xc8>
    80008604:	0534f663          	bgeu	s1,s3,80008650 <kinit+0xc8>
    80008608:	00001637          	lui	a2,0x1
    8000860c:	00100593          	li	a1,1
    80008610:	00048513          	mv	a0,s1
    80008614:	00000097          	auipc	ra,0x0
    80008618:	5e4080e7          	jalr	1508(ra) # 80008bf8 <__memset>
    8000861c:	00093783          	ld	a5,0(s2)
    80008620:	00f4b023          	sd	a5,0(s1)
    80008624:	00993023          	sd	s1,0(s2)
    80008628:	fd4498e3          	bne	s1,s4,800085f8 <kinit+0x70>
    8000862c:	03813083          	ld	ra,56(sp)
    80008630:	03013403          	ld	s0,48(sp)
    80008634:	02813483          	ld	s1,40(sp)
    80008638:	02013903          	ld	s2,32(sp)
    8000863c:	01813983          	ld	s3,24(sp)
    80008640:	01013a03          	ld	s4,16(sp)
    80008644:	00813a83          	ld	s5,8(sp)
    80008648:	04010113          	addi	sp,sp,64
    8000864c:	00008067          	ret
    80008650:	00002517          	auipc	a0,0x2
    80008654:	1f050513          	addi	a0,a0,496 # 8000a840 <digits+0x18>
    80008658:	fffff097          	auipc	ra,0xfffff
    8000865c:	4b4080e7          	jalr	1204(ra) # 80007b0c <panic>

0000000080008660 <freerange>:
    80008660:	fc010113          	addi	sp,sp,-64
    80008664:	000017b7          	lui	a5,0x1
    80008668:	02913423          	sd	s1,40(sp)
    8000866c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008670:	009504b3          	add	s1,a0,s1
    80008674:	fffff537          	lui	a0,0xfffff
    80008678:	02813823          	sd	s0,48(sp)
    8000867c:	02113c23          	sd	ra,56(sp)
    80008680:	03213023          	sd	s2,32(sp)
    80008684:	01313c23          	sd	s3,24(sp)
    80008688:	01413823          	sd	s4,16(sp)
    8000868c:	01513423          	sd	s5,8(sp)
    80008690:	01613023          	sd	s6,0(sp)
    80008694:	04010413          	addi	s0,sp,64
    80008698:	00a4f4b3          	and	s1,s1,a0
    8000869c:	00f487b3          	add	a5,s1,a5
    800086a0:	06f5e463          	bltu	a1,a5,80008708 <freerange+0xa8>
    800086a4:	00006a97          	auipc	s5,0x6
    800086a8:	c3ca8a93          	addi	s5,s5,-964 # 8000e2e0 <end>
    800086ac:	0954e263          	bltu	s1,s5,80008730 <freerange+0xd0>
    800086b0:	01100993          	li	s3,17
    800086b4:	01b99993          	slli	s3,s3,0x1b
    800086b8:	0734fc63          	bgeu	s1,s3,80008730 <freerange+0xd0>
    800086bc:	00058a13          	mv	s4,a1
    800086c0:	00005917          	auipc	s2,0x5
    800086c4:	93090913          	addi	s2,s2,-1744 # 8000cff0 <kmem>
    800086c8:	00002b37          	lui	s6,0x2
    800086cc:	0140006f          	j	800086e0 <freerange+0x80>
    800086d0:	000017b7          	lui	a5,0x1
    800086d4:	00f484b3          	add	s1,s1,a5
    800086d8:	0554ec63          	bltu	s1,s5,80008730 <freerange+0xd0>
    800086dc:	0534fa63          	bgeu	s1,s3,80008730 <freerange+0xd0>
    800086e0:	00001637          	lui	a2,0x1
    800086e4:	00100593          	li	a1,1
    800086e8:	00048513          	mv	a0,s1
    800086ec:	00000097          	auipc	ra,0x0
    800086f0:	50c080e7          	jalr	1292(ra) # 80008bf8 <__memset>
    800086f4:	00093703          	ld	a4,0(s2)
    800086f8:	016487b3          	add	a5,s1,s6
    800086fc:	00e4b023          	sd	a4,0(s1)
    80008700:	00993023          	sd	s1,0(s2)
    80008704:	fcfa76e3          	bgeu	s4,a5,800086d0 <freerange+0x70>
    80008708:	03813083          	ld	ra,56(sp)
    8000870c:	03013403          	ld	s0,48(sp)
    80008710:	02813483          	ld	s1,40(sp)
    80008714:	02013903          	ld	s2,32(sp)
    80008718:	01813983          	ld	s3,24(sp)
    8000871c:	01013a03          	ld	s4,16(sp)
    80008720:	00813a83          	ld	s5,8(sp)
    80008724:	00013b03          	ld	s6,0(sp)
    80008728:	04010113          	addi	sp,sp,64
    8000872c:	00008067          	ret
    80008730:	00002517          	auipc	a0,0x2
    80008734:	11050513          	addi	a0,a0,272 # 8000a840 <digits+0x18>
    80008738:	fffff097          	auipc	ra,0xfffff
    8000873c:	3d4080e7          	jalr	980(ra) # 80007b0c <panic>

0000000080008740 <kfree>:
    80008740:	fe010113          	addi	sp,sp,-32
    80008744:	00813823          	sd	s0,16(sp)
    80008748:	00113c23          	sd	ra,24(sp)
    8000874c:	00913423          	sd	s1,8(sp)
    80008750:	02010413          	addi	s0,sp,32
    80008754:	03451793          	slli	a5,a0,0x34
    80008758:	04079c63          	bnez	a5,800087b0 <kfree+0x70>
    8000875c:	00006797          	auipc	a5,0x6
    80008760:	b8478793          	addi	a5,a5,-1148 # 8000e2e0 <end>
    80008764:	00050493          	mv	s1,a0
    80008768:	04f56463          	bltu	a0,a5,800087b0 <kfree+0x70>
    8000876c:	01100793          	li	a5,17
    80008770:	01b79793          	slli	a5,a5,0x1b
    80008774:	02f57e63          	bgeu	a0,a5,800087b0 <kfree+0x70>
    80008778:	00001637          	lui	a2,0x1
    8000877c:	00100593          	li	a1,1
    80008780:	00000097          	auipc	ra,0x0
    80008784:	478080e7          	jalr	1144(ra) # 80008bf8 <__memset>
    80008788:	00005797          	auipc	a5,0x5
    8000878c:	86878793          	addi	a5,a5,-1944 # 8000cff0 <kmem>
    80008790:	0007b703          	ld	a4,0(a5)
    80008794:	01813083          	ld	ra,24(sp)
    80008798:	01013403          	ld	s0,16(sp)
    8000879c:	00e4b023          	sd	a4,0(s1)
    800087a0:	0097b023          	sd	s1,0(a5)
    800087a4:	00813483          	ld	s1,8(sp)
    800087a8:	02010113          	addi	sp,sp,32
    800087ac:	00008067          	ret
    800087b0:	00002517          	auipc	a0,0x2
    800087b4:	09050513          	addi	a0,a0,144 # 8000a840 <digits+0x18>
    800087b8:	fffff097          	auipc	ra,0xfffff
    800087bc:	354080e7          	jalr	852(ra) # 80007b0c <panic>

00000000800087c0 <kalloc>:
    800087c0:	fe010113          	addi	sp,sp,-32
    800087c4:	00813823          	sd	s0,16(sp)
    800087c8:	00913423          	sd	s1,8(sp)
    800087cc:	00113c23          	sd	ra,24(sp)
    800087d0:	02010413          	addi	s0,sp,32
    800087d4:	00005797          	auipc	a5,0x5
    800087d8:	81c78793          	addi	a5,a5,-2020 # 8000cff0 <kmem>
    800087dc:	0007b483          	ld	s1,0(a5)
    800087e0:	02048063          	beqz	s1,80008800 <kalloc+0x40>
    800087e4:	0004b703          	ld	a4,0(s1)
    800087e8:	00001637          	lui	a2,0x1
    800087ec:	00500593          	li	a1,5
    800087f0:	00048513          	mv	a0,s1
    800087f4:	00e7b023          	sd	a4,0(a5)
    800087f8:	00000097          	auipc	ra,0x0
    800087fc:	400080e7          	jalr	1024(ra) # 80008bf8 <__memset>
    80008800:	01813083          	ld	ra,24(sp)
    80008804:	01013403          	ld	s0,16(sp)
    80008808:	00048513          	mv	a0,s1
    8000880c:	00813483          	ld	s1,8(sp)
    80008810:	02010113          	addi	sp,sp,32
    80008814:	00008067          	ret

0000000080008818 <initlock>:
    80008818:	ff010113          	addi	sp,sp,-16
    8000881c:	00813423          	sd	s0,8(sp)
    80008820:	01010413          	addi	s0,sp,16
    80008824:	00813403          	ld	s0,8(sp)
    80008828:	00b53423          	sd	a1,8(a0)
    8000882c:	00052023          	sw	zero,0(a0)
    80008830:	00053823          	sd	zero,16(a0)
    80008834:	01010113          	addi	sp,sp,16
    80008838:	00008067          	ret

000000008000883c <acquire>:
    8000883c:	fe010113          	addi	sp,sp,-32
    80008840:	00813823          	sd	s0,16(sp)
    80008844:	00913423          	sd	s1,8(sp)
    80008848:	00113c23          	sd	ra,24(sp)
    8000884c:	01213023          	sd	s2,0(sp)
    80008850:	02010413          	addi	s0,sp,32
    80008854:	00050493          	mv	s1,a0
    80008858:	10002973          	csrr	s2,sstatus
    8000885c:	100027f3          	csrr	a5,sstatus
    80008860:	ffd7f793          	andi	a5,a5,-3
    80008864:	10079073          	csrw	sstatus,a5
    80008868:	fffff097          	auipc	ra,0xfffff
    8000886c:	8e8080e7          	jalr	-1816(ra) # 80007150 <mycpu>
    80008870:	07852783          	lw	a5,120(a0)
    80008874:	06078e63          	beqz	a5,800088f0 <acquire+0xb4>
    80008878:	fffff097          	auipc	ra,0xfffff
    8000887c:	8d8080e7          	jalr	-1832(ra) # 80007150 <mycpu>
    80008880:	07852783          	lw	a5,120(a0)
    80008884:	0004a703          	lw	a4,0(s1)
    80008888:	0017879b          	addiw	a5,a5,1
    8000888c:	06f52c23          	sw	a5,120(a0)
    80008890:	04071063          	bnez	a4,800088d0 <acquire+0x94>
    80008894:	00100713          	li	a4,1
    80008898:	00070793          	mv	a5,a4
    8000889c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800088a0:	0007879b          	sext.w	a5,a5
    800088a4:	fe079ae3          	bnez	a5,80008898 <acquire+0x5c>
    800088a8:	0ff0000f          	fence
    800088ac:	fffff097          	auipc	ra,0xfffff
    800088b0:	8a4080e7          	jalr	-1884(ra) # 80007150 <mycpu>
    800088b4:	01813083          	ld	ra,24(sp)
    800088b8:	01013403          	ld	s0,16(sp)
    800088bc:	00a4b823          	sd	a0,16(s1)
    800088c0:	00013903          	ld	s2,0(sp)
    800088c4:	00813483          	ld	s1,8(sp)
    800088c8:	02010113          	addi	sp,sp,32
    800088cc:	00008067          	ret
    800088d0:	0104b903          	ld	s2,16(s1)
    800088d4:	fffff097          	auipc	ra,0xfffff
    800088d8:	87c080e7          	jalr	-1924(ra) # 80007150 <mycpu>
    800088dc:	faa91ce3          	bne	s2,a0,80008894 <acquire+0x58>
    800088e0:	00002517          	auipc	a0,0x2
    800088e4:	f6850513          	addi	a0,a0,-152 # 8000a848 <digits+0x20>
    800088e8:	fffff097          	auipc	ra,0xfffff
    800088ec:	224080e7          	jalr	548(ra) # 80007b0c <panic>
    800088f0:	00195913          	srli	s2,s2,0x1
    800088f4:	fffff097          	auipc	ra,0xfffff
    800088f8:	85c080e7          	jalr	-1956(ra) # 80007150 <mycpu>
    800088fc:	00197913          	andi	s2,s2,1
    80008900:	07252e23          	sw	s2,124(a0)
    80008904:	f75ff06f          	j	80008878 <acquire+0x3c>

0000000080008908 <release>:
    80008908:	fe010113          	addi	sp,sp,-32
    8000890c:	00813823          	sd	s0,16(sp)
    80008910:	00113c23          	sd	ra,24(sp)
    80008914:	00913423          	sd	s1,8(sp)
    80008918:	01213023          	sd	s2,0(sp)
    8000891c:	02010413          	addi	s0,sp,32
    80008920:	00052783          	lw	a5,0(a0)
    80008924:	00079a63          	bnez	a5,80008938 <release+0x30>
    80008928:	00002517          	auipc	a0,0x2
    8000892c:	f2850513          	addi	a0,a0,-216 # 8000a850 <digits+0x28>
    80008930:	fffff097          	auipc	ra,0xfffff
    80008934:	1dc080e7          	jalr	476(ra) # 80007b0c <panic>
    80008938:	01053903          	ld	s2,16(a0)
    8000893c:	00050493          	mv	s1,a0
    80008940:	fffff097          	auipc	ra,0xfffff
    80008944:	810080e7          	jalr	-2032(ra) # 80007150 <mycpu>
    80008948:	fea910e3          	bne	s2,a0,80008928 <release+0x20>
    8000894c:	0004b823          	sd	zero,16(s1)
    80008950:	0ff0000f          	fence
    80008954:	0f50000f          	fence	iorw,ow
    80008958:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000895c:	ffffe097          	auipc	ra,0xffffe
    80008960:	7f4080e7          	jalr	2036(ra) # 80007150 <mycpu>
    80008964:	100027f3          	csrr	a5,sstatus
    80008968:	0027f793          	andi	a5,a5,2
    8000896c:	04079a63          	bnez	a5,800089c0 <release+0xb8>
    80008970:	07852783          	lw	a5,120(a0)
    80008974:	02f05e63          	blez	a5,800089b0 <release+0xa8>
    80008978:	fff7871b          	addiw	a4,a5,-1
    8000897c:	06e52c23          	sw	a4,120(a0)
    80008980:	00071c63          	bnez	a4,80008998 <release+0x90>
    80008984:	07c52783          	lw	a5,124(a0)
    80008988:	00078863          	beqz	a5,80008998 <release+0x90>
    8000898c:	100027f3          	csrr	a5,sstatus
    80008990:	0027e793          	ori	a5,a5,2
    80008994:	10079073          	csrw	sstatus,a5
    80008998:	01813083          	ld	ra,24(sp)
    8000899c:	01013403          	ld	s0,16(sp)
    800089a0:	00813483          	ld	s1,8(sp)
    800089a4:	00013903          	ld	s2,0(sp)
    800089a8:	02010113          	addi	sp,sp,32
    800089ac:	00008067          	ret
    800089b0:	00002517          	auipc	a0,0x2
    800089b4:	ec050513          	addi	a0,a0,-320 # 8000a870 <digits+0x48>
    800089b8:	fffff097          	auipc	ra,0xfffff
    800089bc:	154080e7          	jalr	340(ra) # 80007b0c <panic>
    800089c0:	00002517          	auipc	a0,0x2
    800089c4:	e9850513          	addi	a0,a0,-360 # 8000a858 <digits+0x30>
    800089c8:	fffff097          	auipc	ra,0xfffff
    800089cc:	144080e7          	jalr	324(ra) # 80007b0c <panic>

00000000800089d0 <holding>:
    800089d0:	00052783          	lw	a5,0(a0)
    800089d4:	00079663          	bnez	a5,800089e0 <holding+0x10>
    800089d8:	00000513          	li	a0,0
    800089dc:	00008067          	ret
    800089e0:	fe010113          	addi	sp,sp,-32
    800089e4:	00813823          	sd	s0,16(sp)
    800089e8:	00913423          	sd	s1,8(sp)
    800089ec:	00113c23          	sd	ra,24(sp)
    800089f0:	02010413          	addi	s0,sp,32
    800089f4:	01053483          	ld	s1,16(a0)
    800089f8:	ffffe097          	auipc	ra,0xffffe
    800089fc:	758080e7          	jalr	1880(ra) # 80007150 <mycpu>
    80008a00:	01813083          	ld	ra,24(sp)
    80008a04:	01013403          	ld	s0,16(sp)
    80008a08:	40a48533          	sub	a0,s1,a0
    80008a0c:	00153513          	seqz	a0,a0
    80008a10:	00813483          	ld	s1,8(sp)
    80008a14:	02010113          	addi	sp,sp,32
    80008a18:	00008067          	ret

0000000080008a1c <push_off>:
    80008a1c:	fe010113          	addi	sp,sp,-32
    80008a20:	00813823          	sd	s0,16(sp)
    80008a24:	00113c23          	sd	ra,24(sp)
    80008a28:	00913423          	sd	s1,8(sp)
    80008a2c:	02010413          	addi	s0,sp,32
    80008a30:	100024f3          	csrr	s1,sstatus
    80008a34:	100027f3          	csrr	a5,sstatus
    80008a38:	ffd7f793          	andi	a5,a5,-3
    80008a3c:	10079073          	csrw	sstatus,a5
    80008a40:	ffffe097          	auipc	ra,0xffffe
    80008a44:	710080e7          	jalr	1808(ra) # 80007150 <mycpu>
    80008a48:	07852783          	lw	a5,120(a0)
    80008a4c:	02078663          	beqz	a5,80008a78 <push_off+0x5c>
    80008a50:	ffffe097          	auipc	ra,0xffffe
    80008a54:	700080e7          	jalr	1792(ra) # 80007150 <mycpu>
    80008a58:	07852783          	lw	a5,120(a0)
    80008a5c:	01813083          	ld	ra,24(sp)
    80008a60:	01013403          	ld	s0,16(sp)
    80008a64:	0017879b          	addiw	a5,a5,1
    80008a68:	06f52c23          	sw	a5,120(a0)
    80008a6c:	00813483          	ld	s1,8(sp)
    80008a70:	02010113          	addi	sp,sp,32
    80008a74:	00008067          	ret
    80008a78:	0014d493          	srli	s1,s1,0x1
    80008a7c:	ffffe097          	auipc	ra,0xffffe
    80008a80:	6d4080e7          	jalr	1748(ra) # 80007150 <mycpu>
    80008a84:	0014f493          	andi	s1,s1,1
    80008a88:	06952e23          	sw	s1,124(a0)
    80008a8c:	fc5ff06f          	j	80008a50 <push_off+0x34>

0000000080008a90 <pop_off>:
    80008a90:	ff010113          	addi	sp,sp,-16
    80008a94:	00813023          	sd	s0,0(sp)
    80008a98:	00113423          	sd	ra,8(sp)
    80008a9c:	01010413          	addi	s0,sp,16
    80008aa0:	ffffe097          	auipc	ra,0xffffe
    80008aa4:	6b0080e7          	jalr	1712(ra) # 80007150 <mycpu>
    80008aa8:	100027f3          	csrr	a5,sstatus
    80008aac:	0027f793          	andi	a5,a5,2
    80008ab0:	04079663          	bnez	a5,80008afc <pop_off+0x6c>
    80008ab4:	07852783          	lw	a5,120(a0)
    80008ab8:	02f05a63          	blez	a5,80008aec <pop_off+0x5c>
    80008abc:	fff7871b          	addiw	a4,a5,-1
    80008ac0:	06e52c23          	sw	a4,120(a0)
    80008ac4:	00071c63          	bnez	a4,80008adc <pop_off+0x4c>
    80008ac8:	07c52783          	lw	a5,124(a0)
    80008acc:	00078863          	beqz	a5,80008adc <pop_off+0x4c>
    80008ad0:	100027f3          	csrr	a5,sstatus
    80008ad4:	0027e793          	ori	a5,a5,2
    80008ad8:	10079073          	csrw	sstatus,a5
    80008adc:	00813083          	ld	ra,8(sp)
    80008ae0:	00013403          	ld	s0,0(sp)
    80008ae4:	01010113          	addi	sp,sp,16
    80008ae8:	00008067          	ret
    80008aec:	00002517          	auipc	a0,0x2
    80008af0:	d8450513          	addi	a0,a0,-636 # 8000a870 <digits+0x48>
    80008af4:	fffff097          	auipc	ra,0xfffff
    80008af8:	018080e7          	jalr	24(ra) # 80007b0c <panic>
    80008afc:	00002517          	auipc	a0,0x2
    80008b00:	d5c50513          	addi	a0,a0,-676 # 8000a858 <digits+0x30>
    80008b04:	fffff097          	auipc	ra,0xfffff
    80008b08:	008080e7          	jalr	8(ra) # 80007b0c <panic>

0000000080008b0c <push_on>:
    80008b0c:	fe010113          	addi	sp,sp,-32
    80008b10:	00813823          	sd	s0,16(sp)
    80008b14:	00113c23          	sd	ra,24(sp)
    80008b18:	00913423          	sd	s1,8(sp)
    80008b1c:	02010413          	addi	s0,sp,32
    80008b20:	100024f3          	csrr	s1,sstatus
    80008b24:	100027f3          	csrr	a5,sstatus
    80008b28:	0027e793          	ori	a5,a5,2
    80008b2c:	10079073          	csrw	sstatus,a5
    80008b30:	ffffe097          	auipc	ra,0xffffe
    80008b34:	620080e7          	jalr	1568(ra) # 80007150 <mycpu>
    80008b38:	07852783          	lw	a5,120(a0)
    80008b3c:	02078663          	beqz	a5,80008b68 <push_on+0x5c>
    80008b40:	ffffe097          	auipc	ra,0xffffe
    80008b44:	610080e7          	jalr	1552(ra) # 80007150 <mycpu>
    80008b48:	07852783          	lw	a5,120(a0)
    80008b4c:	01813083          	ld	ra,24(sp)
    80008b50:	01013403          	ld	s0,16(sp)
    80008b54:	0017879b          	addiw	a5,a5,1
    80008b58:	06f52c23          	sw	a5,120(a0)
    80008b5c:	00813483          	ld	s1,8(sp)
    80008b60:	02010113          	addi	sp,sp,32
    80008b64:	00008067          	ret
    80008b68:	0014d493          	srli	s1,s1,0x1
    80008b6c:	ffffe097          	auipc	ra,0xffffe
    80008b70:	5e4080e7          	jalr	1508(ra) # 80007150 <mycpu>
    80008b74:	0014f493          	andi	s1,s1,1
    80008b78:	06952e23          	sw	s1,124(a0)
    80008b7c:	fc5ff06f          	j	80008b40 <push_on+0x34>

0000000080008b80 <pop_on>:
    80008b80:	ff010113          	addi	sp,sp,-16
    80008b84:	00813023          	sd	s0,0(sp)
    80008b88:	00113423          	sd	ra,8(sp)
    80008b8c:	01010413          	addi	s0,sp,16
    80008b90:	ffffe097          	auipc	ra,0xffffe
    80008b94:	5c0080e7          	jalr	1472(ra) # 80007150 <mycpu>
    80008b98:	100027f3          	csrr	a5,sstatus
    80008b9c:	0027f793          	andi	a5,a5,2
    80008ba0:	04078463          	beqz	a5,80008be8 <pop_on+0x68>
    80008ba4:	07852783          	lw	a5,120(a0)
    80008ba8:	02f05863          	blez	a5,80008bd8 <pop_on+0x58>
    80008bac:	fff7879b          	addiw	a5,a5,-1
    80008bb0:	06f52c23          	sw	a5,120(a0)
    80008bb4:	07853783          	ld	a5,120(a0)
    80008bb8:	00079863          	bnez	a5,80008bc8 <pop_on+0x48>
    80008bbc:	100027f3          	csrr	a5,sstatus
    80008bc0:	ffd7f793          	andi	a5,a5,-3
    80008bc4:	10079073          	csrw	sstatus,a5
    80008bc8:	00813083          	ld	ra,8(sp)
    80008bcc:	00013403          	ld	s0,0(sp)
    80008bd0:	01010113          	addi	sp,sp,16
    80008bd4:	00008067          	ret
    80008bd8:	00002517          	auipc	a0,0x2
    80008bdc:	cc050513          	addi	a0,a0,-832 # 8000a898 <digits+0x70>
    80008be0:	fffff097          	auipc	ra,0xfffff
    80008be4:	f2c080e7          	jalr	-212(ra) # 80007b0c <panic>
    80008be8:	00002517          	auipc	a0,0x2
    80008bec:	c9050513          	addi	a0,a0,-880 # 8000a878 <digits+0x50>
    80008bf0:	fffff097          	auipc	ra,0xfffff
    80008bf4:	f1c080e7          	jalr	-228(ra) # 80007b0c <panic>

0000000080008bf8 <__memset>:
    80008bf8:	ff010113          	addi	sp,sp,-16
    80008bfc:	00813423          	sd	s0,8(sp)
    80008c00:	01010413          	addi	s0,sp,16
    80008c04:	1a060e63          	beqz	a2,80008dc0 <__memset+0x1c8>
    80008c08:	40a007b3          	neg	a5,a0
    80008c0c:	0077f793          	andi	a5,a5,7
    80008c10:	00778693          	addi	a3,a5,7
    80008c14:	00b00813          	li	a6,11
    80008c18:	0ff5f593          	andi	a1,a1,255
    80008c1c:	fff6071b          	addiw	a4,a2,-1
    80008c20:	1b06e663          	bltu	a3,a6,80008dcc <__memset+0x1d4>
    80008c24:	1cd76463          	bltu	a4,a3,80008dec <__memset+0x1f4>
    80008c28:	1a078e63          	beqz	a5,80008de4 <__memset+0x1ec>
    80008c2c:	00b50023          	sb	a1,0(a0)
    80008c30:	00100713          	li	a4,1
    80008c34:	1ae78463          	beq	a5,a4,80008ddc <__memset+0x1e4>
    80008c38:	00b500a3          	sb	a1,1(a0)
    80008c3c:	00200713          	li	a4,2
    80008c40:	1ae78a63          	beq	a5,a4,80008df4 <__memset+0x1fc>
    80008c44:	00b50123          	sb	a1,2(a0)
    80008c48:	00300713          	li	a4,3
    80008c4c:	18e78463          	beq	a5,a4,80008dd4 <__memset+0x1dc>
    80008c50:	00b501a3          	sb	a1,3(a0)
    80008c54:	00400713          	li	a4,4
    80008c58:	1ae78263          	beq	a5,a4,80008dfc <__memset+0x204>
    80008c5c:	00b50223          	sb	a1,4(a0)
    80008c60:	00500713          	li	a4,5
    80008c64:	1ae78063          	beq	a5,a4,80008e04 <__memset+0x20c>
    80008c68:	00b502a3          	sb	a1,5(a0)
    80008c6c:	00700713          	li	a4,7
    80008c70:	18e79e63          	bne	a5,a4,80008e0c <__memset+0x214>
    80008c74:	00b50323          	sb	a1,6(a0)
    80008c78:	00700e93          	li	t4,7
    80008c7c:	00859713          	slli	a4,a1,0x8
    80008c80:	00e5e733          	or	a4,a1,a4
    80008c84:	01059e13          	slli	t3,a1,0x10
    80008c88:	01c76e33          	or	t3,a4,t3
    80008c8c:	01859313          	slli	t1,a1,0x18
    80008c90:	006e6333          	or	t1,t3,t1
    80008c94:	02059893          	slli	a7,a1,0x20
    80008c98:	40f60e3b          	subw	t3,a2,a5
    80008c9c:	011368b3          	or	a7,t1,a7
    80008ca0:	02859813          	slli	a6,a1,0x28
    80008ca4:	0108e833          	or	a6,a7,a6
    80008ca8:	03059693          	slli	a3,a1,0x30
    80008cac:	003e589b          	srliw	a7,t3,0x3
    80008cb0:	00d866b3          	or	a3,a6,a3
    80008cb4:	03859713          	slli	a4,a1,0x38
    80008cb8:	00389813          	slli	a6,a7,0x3
    80008cbc:	00f507b3          	add	a5,a0,a5
    80008cc0:	00e6e733          	or	a4,a3,a4
    80008cc4:	000e089b          	sext.w	a7,t3
    80008cc8:	00f806b3          	add	a3,a6,a5
    80008ccc:	00e7b023          	sd	a4,0(a5)
    80008cd0:	00878793          	addi	a5,a5,8
    80008cd4:	fed79ce3          	bne	a5,a3,80008ccc <__memset+0xd4>
    80008cd8:	ff8e7793          	andi	a5,t3,-8
    80008cdc:	0007871b          	sext.w	a4,a5
    80008ce0:	01d787bb          	addw	a5,a5,t4
    80008ce4:	0ce88e63          	beq	a7,a4,80008dc0 <__memset+0x1c8>
    80008ce8:	00f50733          	add	a4,a0,a5
    80008cec:	00b70023          	sb	a1,0(a4)
    80008cf0:	0017871b          	addiw	a4,a5,1
    80008cf4:	0cc77663          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008cf8:	00e50733          	add	a4,a0,a4
    80008cfc:	00b70023          	sb	a1,0(a4)
    80008d00:	0027871b          	addiw	a4,a5,2
    80008d04:	0ac77e63          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d08:	00e50733          	add	a4,a0,a4
    80008d0c:	00b70023          	sb	a1,0(a4)
    80008d10:	0037871b          	addiw	a4,a5,3
    80008d14:	0ac77663          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d18:	00e50733          	add	a4,a0,a4
    80008d1c:	00b70023          	sb	a1,0(a4)
    80008d20:	0047871b          	addiw	a4,a5,4
    80008d24:	08c77e63          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d28:	00e50733          	add	a4,a0,a4
    80008d2c:	00b70023          	sb	a1,0(a4)
    80008d30:	0057871b          	addiw	a4,a5,5
    80008d34:	08c77663          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d38:	00e50733          	add	a4,a0,a4
    80008d3c:	00b70023          	sb	a1,0(a4)
    80008d40:	0067871b          	addiw	a4,a5,6
    80008d44:	06c77e63          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d48:	00e50733          	add	a4,a0,a4
    80008d4c:	00b70023          	sb	a1,0(a4)
    80008d50:	0077871b          	addiw	a4,a5,7
    80008d54:	06c77663          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d58:	00e50733          	add	a4,a0,a4
    80008d5c:	00b70023          	sb	a1,0(a4)
    80008d60:	0087871b          	addiw	a4,a5,8
    80008d64:	04c77e63          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00b70023          	sb	a1,0(a4)
    80008d70:	0097871b          	addiw	a4,a5,9
    80008d74:	04c77663          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d78:	00e50733          	add	a4,a0,a4
    80008d7c:	00b70023          	sb	a1,0(a4)
    80008d80:	00a7871b          	addiw	a4,a5,10
    80008d84:	02c77e63          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d88:	00e50733          	add	a4,a0,a4
    80008d8c:	00b70023          	sb	a1,0(a4)
    80008d90:	00b7871b          	addiw	a4,a5,11
    80008d94:	02c77663          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008d98:	00e50733          	add	a4,a0,a4
    80008d9c:	00b70023          	sb	a1,0(a4)
    80008da0:	00c7871b          	addiw	a4,a5,12
    80008da4:	00c77e63          	bgeu	a4,a2,80008dc0 <__memset+0x1c8>
    80008da8:	00e50733          	add	a4,a0,a4
    80008dac:	00b70023          	sb	a1,0(a4)
    80008db0:	00d7879b          	addiw	a5,a5,13
    80008db4:	00c7f663          	bgeu	a5,a2,80008dc0 <__memset+0x1c8>
    80008db8:	00f507b3          	add	a5,a0,a5
    80008dbc:	00b78023          	sb	a1,0(a5)
    80008dc0:	00813403          	ld	s0,8(sp)
    80008dc4:	01010113          	addi	sp,sp,16
    80008dc8:	00008067          	ret
    80008dcc:	00b00693          	li	a3,11
    80008dd0:	e55ff06f          	j	80008c24 <__memset+0x2c>
    80008dd4:	00300e93          	li	t4,3
    80008dd8:	ea5ff06f          	j	80008c7c <__memset+0x84>
    80008ddc:	00100e93          	li	t4,1
    80008de0:	e9dff06f          	j	80008c7c <__memset+0x84>
    80008de4:	00000e93          	li	t4,0
    80008de8:	e95ff06f          	j	80008c7c <__memset+0x84>
    80008dec:	00000793          	li	a5,0
    80008df0:	ef9ff06f          	j	80008ce8 <__memset+0xf0>
    80008df4:	00200e93          	li	t4,2
    80008df8:	e85ff06f          	j	80008c7c <__memset+0x84>
    80008dfc:	00400e93          	li	t4,4
    80008e00:	e7dff06f          	j	80008c7c <__memset+0x84>
    80008e04:	00500e93          	li	t4,5
    80008e08:	e75ff06f          	j	80008c7c <__memset+0x84>
    80008e0c:	00600e93          	li	t4,6
    80008e10:	e6dff06f          	j	80008c7c <__memset+0x84>

0000000080008e14 <__memmove>:
    80008e14:	ff010113          	addi	sp,sp,-16
    80008e18:	00813423          	sd	s0,8(sp)
    80008e1c:	01010413          	addi	s0,sp,16
    80008e20:	0e060863          	beqz	a2,80008f10 <__memmove+0xfc>
    80008e24:	fff6069b          	addiw	a3,a2,-1
    80008e28:	0006881b          	sext.w	a6,a3
    80008e2c:	0ea5e863          	bltu	a1,a0,80008f1c <__memmove+0x108>
    80008e30:	00758713          	addi	a4,a1,7
    80008e34:	00a5e7b3          	or	a5,a1,a0
    80008e38:	40a70733          	sub	a4,a4,a0
    80008e3c:	0077f793          	andi	a5,a5,7
    80008e40:	00f73713          	sltiu	a4,a4,15
    80008e44:	00174713          	xori	a4,a4,1
    80008e48:	0017b793          	seqz	a5,a5
    80008e4c:	00e7f7b3          	and	a5,a5,a4
    80008e50:	10078863          	beqz	a5,80008f60 <__memmove+0x14c>
    80008e54:	00900793          	li	a5,9
    80008e58:	1107f463          	bgeu	a5,a6,80008f60 <__memmove+0x14c>
    80008e5c:	0036581b          	srliw	a6,a2,0x3
    80008e60:	fff8081b          	addiw	a6,a6,-1
    80008e64:	02081813          	slli	a6,a6,0x20
    80008e68:	01d85893          	srli	a7,a6,0x1d
    80008e6c:	00858813          	addi	a6,a1,8
    80008e70:	00058793          	mv	a5,a1
    80008e74:	00050713          	mv	a4,a0
    80008e78:	01088833          	add	a6,a7,a6
    80008e7c:	0007b883          	ld	a7,0(a5)
    80008e80:	00878793          	addi	a5,a5,8
    80008e84:	00870713          	addi	a4,a4,8
    80008e88:	ff173c23          	sd	a7,-8(a4)
    80008e8c:	ff0798e3          	bne	a5,a6,80008e7c <__memmove+0x68>
    80008e90:	ff867713          	andi	a4,a2,-8
    80008e94:	02071793          	slli	a5,a4,0x20
    80008e98:	0207d793          	srli	a5,a5,0x20
    80008e9c:	00f585b3          	add	a1,a1,a5
    80008ea0:	40e686bb          	subw	a3,a3,a4
    80008ea4:	00f507b3          	add	a5,a0,a5
    80008ea8:	06e60463          	beq	a2,a4,80008f10 <__memmove+0xfc>
    80008eac:	0005c703          	lbu	a4,0(a1)
    80008eb0:	00e78023          	sb	a4,0(a5)
    80008eb4:	04068e63          	beqz	a3,80008f10 <__memmove+0xfc>
    80008eb8:	0015c603          	lbu	a2,1(a1)
    80008ebc:	00100713          	li	a4,1
    80008ec0:	00c780a3          	sb	a2,1(a5)
    80008ec4:	04e68663          	beq	a3,a4,80008f10 <__memmove+0xfc>
    80008ec8:	0025c603          	lbu	a2,2(a1)
    80008ecc:	00200713          	li	a4,2
    80008ed0:	00c78123          	sb	a2,2(a5)
    80008ed4:	02e68e63          	beq	a3,a4,80008f10 <__memmove+0xfc>
    80008ed8:	0035c603          	lbu	a2,3(a1)
    80008edc:	00300713          	li	a4,3
    80008ee0:	00c781a3          	sb	a2,3(a5)
    80008ee4:	02e68663          	beq	a3,a4,80008f10 <__memmove+0xfc>
    80008ee8:	0045c603          	lbu	a2,4(a1)
    80008eec:	00400713          	li	a4,4
    80008ef0:	00c78223          	sb	a2,4(a5)
    80008ef4:	00e68e63          	beq	a3,a4,80008f10 <__memmove+0xfc>
    80008ef8:	0055c603          	lbu	a2,5(a1)
    80008efc:	00500713          	li	a4,5
    80008f00:	00c782a3          	sb	a2,5(a5)
    80008f04:	00e68663          	beq	a3,a4,80008f10 <__memmove+0xfc>
    80008f08:	0065c703          	lbu	a4,6(a1)
    80008f0c:	00e78323          	sb	a4,6(a5)
    80008f10:	00813403          	ld	s0,8(sp)
    80008f14:	01010113          	addi	sp,sp,16
    80008f18:	00008067          	ret
    80008f1c:	02061713          	slli	a4,a2,0x20
    80008f20:	02075713          	srli	a4,a4,0x20
    80008f24:	00e587b3          	add	a5,a1,a4
    80008f28:	f0f574e3          	bgeu	a0,a5,80008e30 <__memmove+0x1c>
    80008f2c:	02069613          	slli	a2,a3,0x20
    80008f30:	02065613          	srli	a2,a2,0x20
    80008f34:	fff64613          	not	a2,a2
    80008f38:	00e50733          	add	a4,a0,a4
    80008f3c:	00c78633          	add	a2,a5,a2
    80008f40:	fff7c683          	lbu	a3,-1(a5)
    80008f44:	fff78793          	addi	a5,a5,-1
    80008f48:	fff70713          	addi	a4,a4,-1
    80008f4c:	00d70023          	sb	a3,0(a4)
    80008f50:	fec798e3          	bne	a5,a2,80008f40 <__memmove+0x12c>
    80008f54:	00813403          	ld	s0,8(sp)
    80008f58:	01010113          	addi	sp,sp,16
    80008f5c:	00008067          	ret
    80008f60:	02069713          	slli	a4,a3,0x20
    80008f64:	02075713          	srli	a4,a4,0x20
    80008f68:	00170713          	addi	a4,a4,1
    80008f6c:	00e50733          	add	a4,a0,a4
    80008f70:	00050793          	mv	a5,a0
    80008f74:	0005c683          	lbu	a3,0(a1)
    80008f78:	00178793          	addi	a5,a5,1
    80008f7c:	00158593          	addi	a1,a1,1
    80008f80:	fed78fa3          	sb	a3,-1(a5)
    80008f84:	fee798e3          	bne	a5,a4,80008f74 <__memmove+0x160>
    80008f88:	f89ff06f          	j	80008f10 <__memmove+0xfc>

0000000080008f8c <__putc>:
    80008f8c:	fe010113          	addi	sp,sp,-32
    80008f90:	00813823          	sd	s0,16(sp)
    80008f94:	00113c23          	sd	ra,24(sp)
    80008f98:	02010413          	addi	s0,sp,32
    80008f9c:	00050793          	mv	a5,a0
    80008fa0:	fef40593          	addi	a1,s0,-17
    80008fa4:	00100613          	li	a2,1
    80008fa8:	00000513          	li	a0,0
    80008fac:	fef407a3          	sb	a5,-17(s0)
    80008fb0:	fffff097          	auipc	ra,0xfffff
    80008fb4:	b3c080e7          	jalr	-1220(ra) # 80007aec <console_write>
    80008fb8:	01813083          	ld	ra,24(sp)
    80008fbc:	01013403          	ld	s0,16(sp)
    80008fc0:	02010113          	addi	sp,sp,32
    80008fc4:	00008067          	ret

0000000080008fc8 <__getc>:
    80008fc8:	fe010113          	addi	sp,sp,-32
    80008fcc:	00813823          	sd	s0,16(sp)
    80008fd0:	00113c23          	sd	ra,24(sp)
    80008fd4:	02010413          	addi	s0,sp,32
    80008fd8:	fe840593          	addi	a1,s0,-24
    80008fdc:	00100613          	li	a2,1
    80008fe0:	00000513          	li	a0,0
    80008fe4:	fffff097          	auipc	ra,0xfffff
    80008fe8:	ae8080e7          	jalr	-1304(ra) # 80007acc <console_read>
    80008fec:	fe844503          	lbu	a0,-24(s0)
    80008ff0:	01813083          	ld	ra,24(sp)
    80008ff4:	01013403          	ld	s0,16(sp)
    80008ff8:	02010113          	addi	sp,sp,32
    80008ffc:	00008067          	ret

0000000080009000 <console_handler>:
    80009000:	fe010113          	addi	sp,sp,-32
    80009004:	00813823          	sd	s0,16(sp)
    80009008:	00113c23          	sd	ra,24(sp)
    8000900c:	00913423          	sd	s1,8(sp)
    80009010:	02010413          	addi	s0,sp,32
    80009014:	14202773          	csrr	a4,scause
    80009018:	100027f3          	csrr	a5,sstatus
    8000901c:	0027f793          	andi	a5,a5,2
    80009020:	06079e63          	bnez	a5,8000909c <console_handler+0x9c>
    80009024:	00074c63          	bltz	a4,8000903c <console_handler+0x3c>
    80009028:	01813083          	ld	ra,24(sp)
    8000902c:	01013403          	ld	s0,16(sp)
    80009030:	00813483          	ld	s1,8(sp)
    80009034:	02010113          	addi	sp,sp,32
    80009038:	00008067          	ret
    8000903c:	0ff77713          	andi	a4,a4,255
    80009040:	00900793          	li	a5,9
    80009044:	fef712e3          	bne	a4,a5,80009028 <console_handler+0x28>
    80009048:	ffffe097          	auipc	ra,0xffffe
    8000904c:	6dc080e7          	jalr	1756(ra) # 80007724 <plic_claim>
    80009050:	00a00793          	li	a5,10
    80009054:	00050493          	mv	s1,a0
    80009058:	02f50c63          	beq	a0,a5,80009090 <console_handler+0x90>
    8000905c:	fc0506e3          	beqz	a0,80009028 <console_handler+0x28>
    80009060:	00050593          	mv	a1,a0
    80009064:	00001517          	auipc	a0,0x1
    80009068:	73c50513          	addi	a0,a0,1852 # 8000a7a0 <CONSOLE_STATUS+0x790>
    8000906c:	fffff097          	auipc	ra,0xfffff
    80009070:	afc080e7          	jalr	-1284(ra) # 80007b68 <__printf>
    80009074:	01013403          	ld	s0,16(sp)
    80009078:	01813083          	ld	ra,24(sp)
    8000907c:	00048513          	mv	a0,s1
    80009080:	00813483          	ld	s1,8(sp)
    80009084:	02010113          	addi	sp,sp,32
    80009088:	ffffe317          	auipc	t1,0xffffe
    8000908c:	6d430067          	jr	1748(t1) # 8000775c <plic_complete>
    80009090:	fffff097          	auipc	ra,0xfffff
    80009094:	3e0080e7          	jalr	992(ra) # 80008470 <uartintr>
    80009098:	fddff06f          	j	80009074 <console_handler+0x74>
    8000909c:	00002517          	auipc	a0,0x2
    800090a0:	80450513          	addi	a0,a0,-2044 # 8000a8a0 <digits+0x78>
    800090a4:	fffff097          	auipc	ra,0xfffff
    800090a8:	a68080e7          	jalr	-1432(ra) # 80007b0c <panic>
	...
