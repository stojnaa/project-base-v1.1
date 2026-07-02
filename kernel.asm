
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	de813103          	ld	sp,-536(sp) # 8000bde8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4b5060ef          	jal	ra,80006cd0 <start>

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

00000000800013c4 <_Z11getThreadIdv>:

int getThreadId() {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x14);
    800013d4:	00000713          	li	a4,0
    800013d8:	00000693          	li	a3,0
    800013dc:	00000613          	li	a2,0
    800013e0:	00000593          	li	a1,0
    800013e4:	01400513          	li	a0,20
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	ddc080e7          	jalr	-548(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f0:	0005051b          	sext.w	a0,a0
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
    8000168c:	510080e7          	jalr	1296(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80001690:	00050493          	mv	s1,a0
    80001694:	00090513          	mv	a0,s2
    80001698:	00000097          	auipc	ra,0x0
    8000169c:	fb4080e7          	jalr	-76(ra) # 8000164c <_ZL23blocksForBytesSemaphorem>
    800016a0:	00050593          	mv	a1,a0
    800016a4:	00048513          	mv	a0,s1
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	570080e7          	jalr	1392(ra) # 80002c18 <_ZN15MemoryAllocator6mallocEm>
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
    800016e8:	4b4080e7          	jalr	1204(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    800016ec:	00048593          	mv	a1,s1
    800016f0:	00001097          	auipc	ra,0x1
    800016f4:	684080e7          	jalr	1668(ra) # 80002d74 <_ZN15MemoryAllocator4freeEPv>
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
    80001808:	5d47b783          	ld	a5,1492(a5) # 8000bdd8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    8000185c:	5807b783          	ld	a5,1408(a5) # 8000bdd8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001860:	0007b503          	ld	a0,0(a5)
    80001864:	00001097          	auipc	ra,0x1
    80001868:	ab4080e7          	jalr	-1356(ra) # 80002318 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	930080e7          	jalr	-1744(ra) # 8000219c <_ZN7_thread8dispatchEv>
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
    80001954:	9c8080e7          	jalr	-1592(ra) # 80002318 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001958:	0004b503          	ld	a0,0(s1)
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	b58080e7          	jalr	-1192(ra) # 800024b4 <_ZN9Scheduler3putEP7_thread>
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
    80001a48:	8d4080e7          	jalr	-1836(ra) # 80002318 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a4c:	0004b503          	ld	a0,0(s1)
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	a64080e7          	jalr	-1436(ra) # 800024b4 <_ZN9Scheduler3putEP7_thread>
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
    80001af8:	2af90e63          	beq	s2,a5,80001db4 <handleSupervisorTrap+0x2f8>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001afc:	fff00793          	li	a5,-1
    80001b00:	03f79793          	slli	a5,a5,0x3f
    80001b04:	00978793          	addi	a5,a5,9
    80001b08:	2af90c63          	beq	s2,a5,80001dc0 <handleSupervisorTrap+0x304>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001b0c:	00200793          	li	a5,2
    80001b10:	2af90e63          	beq	s2,a5,80001dcc <handleSupervisorTrap+0x310>
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
    80001b2c:	04200713          	li	a4,66
    80001b30:	26f76c63          	bltu	a4,a5,80001da8 <handleSupervisorTrap+0x2ec>
    80001b34:	00279793          	slli	a5,a5,0x2
    80001b38:	00007717          	auipc	a4,0x7
    80001b3c:	50070713          	addi	a4,a4,1280 # 80009038 <CONSOLE_STATUS+0x28>
    80001b40:	00e787b3          	add	a5,a5,a4
    80001b44:	0007a783          	lw	a5,0(a5)
    80001b48:	00e787b3          	add	a5,a5,a4
    80001b4c:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	048080e7          	jalr	72(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80001b58:	00090593          	mv	a1,s2
    80001b5c:	00001097          	auipc	ra,0x1
    80001b60:	0bc080e7          	jalr	188(ra) # 80002c18 <_ZN15MemoryAllocator6mallocEm>
    80001b64:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001b68:	0f04b783          	ld	a5,240(s1)
    80001b6c:	00478793          	addi	a5,a5,4
    80001b70:	0ef4b823          	sd	a5,240(s1)
    80001b74:	02813083          	ld	ra,40(sp)
    80001b78:	02013403          	ld	s0,32(sp)
    80001b7c:	01813483          	ld	s1,24(sp)
    80001b80:	01013903          	ld	s2,16(sp)
    80001b84:	00813983          	ld	s3,8(sp)
    80001b88:	03010113          	addi	sp,sp,48
    80001b8c:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	008080e7          	jalr	8(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80001b98:	00090593          	mv	a1,s2
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	1d8080e7          	jalr	472(ra) # 80002d74 <_ZN15MemoryAllocator4freeEPv>
    80001ba4:	04a4b023          	sd	a0,64(s1)
                break;
    80001ba8:	fc1ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001bac:	00090663          	beqz	s2,80001bb8 <handleSupervisorTrap+0xfc>
    80001bb0:	00050463          	beqz	a0,80001bb8 <handleSupervisorTrap+0xfc>
    80001bb4:	00061863          	bnez	a2,80001bc4 <handleSupervisorTrap+0x108>
                    frame->a0 = (uint64)-1;
    80001bb8:	fff00793          	li	a5,-1
    80001bbc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bc0:	fa9ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001bc4:	00000097          	auipc	ra,0x0
    80001bc8:	4e4080e7          	jalr	1252(ra) # 800020a8 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001bcc:	00050c63          	beqz	a0,80001be4 <handleSupervisorTrap+0x128>
                *handle = thread;//korisnik dobija rucku nove niti
    80001bd0:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	8e0080e7          	jalr	-1824(ra) # 800024b4 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001bdc:	0404b023          	sd	zero,64(s1)
                break;
    80001be0:	f89ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001be4:	fff00793          	li	a5,-1
    80001be8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bec:	f7dff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001bf0:	0f04b783          	ld	a5,240(s1)
    80001bf4:	00478793          	addi	a5,a5,4
    80001bf8:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001bfc:	00000097          	auipc	ra,0x0
    80001c00:	648080e7          	jalr	1608(ra) # 80002244 <_ZN7_thread4exitEv>
    80001c04:	04a4b023          	sd	a0,64(s1)
                return;
    80001c08:	f6dff06f          	j	80001b74 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001c0c:	0f04b783          	ld	a5,240(s1)
    80001c10:	00478793          	addi	a5,a5,4
    80001c14:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	584080e7          	jalr	1412(ra) # 8000219c <_ZN7_thread8dispatchEv>
                return;
    80001c20:	f55ff06f          	j	80001b74 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001c24:	0f04b783          	ld	a5,240(s1)
    80001c28:	00478793          	addi	a5,a5,4
    80001c2c:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::running->getId();
    80001c30:	0000a797          	auipc	a5,0xa
    80001c34:	1a87b783          	ld	a5,424(a5) # 8000bdd8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001c38:	0007b503          	ld	a0,0(a5)
    80001c3c:	00000097          	auipc	ra,0x0
    80001c40:	4e0080e7          	jalr	1248(ra) # 8000211c <_ZNK7_thread5getIdEv>
    80001c44:	04a4b023          	sd	a0,64(s1)
                _thread::dispatch();
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	554080e7          	jalr	1364(ra) # 8000219c <_ZN7_thread8dispatchEv>
                return;
    80001c50:	f25ff06f          	j	80001b74 <handleSupervisorTrap+0xb8>
                unsigned init = (unsigned)arg2;
    80001c54:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001c58:	00091863          	bnez	s2,80001c68 <handleSupervisorTrap+0x1ac>
                    frame->a0 = (uint64)-1;
    80001c5c:	fff00793          	li	a5,-1
    80001c60:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c64:	f05ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                _sem* sem = _sem::createSemaphore(init);
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	ad0080e7          	jalr	-1328(ra) # 80001738 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001c70:	00050863          	beqz	a0,80001c80 <handleSupervisorTrap+0x1c4>
                *handle = sem;
    80001c74:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001c78:	0404b023          	sd	zero,64(s1)
                break;
    80001c7c:	eedff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001c80:	fff00793          	li	a5,-1
    80001c84:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c88:	ee1ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                if (sem == nullptr) {
    80001c8c:	00091863          	bnez	s2,80001c9c <handleSupervisorTrap+0x1e0>
                    frame->a0 = (uint64)-1;
    80001c90:	fff00793          	li	a5,-1
    80001c94:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c98:	ed1ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                int ret = sem->close();
    80001c9c:	00090513          	mv	a0,s2
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	dd8080e7          	jalr	-552(ra) # 80001a78 <_ZN4_sem5closeEv>
    80001ca8:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001cac:	00050663          	beqz	a0,80001cb8 <handleSupervisorTrap+0x1fc>
                frame->a0 = (uint64)ret;
    80001cb0:	0534b023          	sd	s3,64(s1)
                break;
    80001cb4:	eb5ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                    _sem::destroySemaphore(sem);
    80001cb8:	00090513          	mv	a0,s2
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	ad0080e7          	jalr	-1328(ra) # 8000178c <_ZN4_sem16destroySemaphoreEPS_>
    80001cc4:	fedff06f          	j	80001cb0 <handleSupervisorTrap+0x1f4>
                if (sem == nullptr) {
    80001cc8:	00091863          	bnez	s2,80001cd8 <handleSupervisorTrap+0x21c>
                    frame->a0 = (uint64)-1;
    80001ccc:	fff00793          	li	a5,-1
    80001cd0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd4:	e95ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001cd8:	0f04b783          	ld	a5,240(s1)
    80001cdc:	00478793          	addi	a5,a5,4
    80001ce0:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001ce4:	00090513          	mv	a0,s2
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	bd4080e7          	jalr	-1068(ra) # 800018bc <_ZN4_sem4waitEv>
    80001cf0:	04a4b023          	sd	a0,64(s1)
                return;
    80001cf4:	e81ff06f          	j	80001b74 <handleSupervisorTrap+0xb8>
                if (sem == nullptr) {
    80001cf8:	00091863          	bnez	s2,80001d08 <handleSupervisorTrap+0x24c>
                    frame->a0 = (uint64)-1;
    80001cfc:	fff00793          	li	a5,-1
    80001d00:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d04:	e65ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signal();
    80001d08:	00090513          	mv	a0,s2
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	cc8080e7          	jalr	-824(ra) # 800019d4 <_ZN4_sem6signalEv>
    80001d14:	04a4b023          	sd	a0,64(s1)
                break;
    80001d18:	e51ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                unsigned n = (unsigned)arg2;
    80001d1c:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d20:	00091863          	bnez	s2,80001d30 <handleSupervisorTrap+0x274>
                    frame->a0 = (uint64)-1;
    80001d24:	fff00793          	li	a5,-1
    80001d28:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d2c:	e3dff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d30:	0f04b783          	ld	a5,240(s1)
    80001d34:	00478793          	addi	a5,a5,4
    80001d38:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d3c:	00090513          	mv	a0,s2
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	ac4080e7          	jalr	-1340(ra) # 80001804 <_ZN4_sem5waitNEj>
    80001d48:	04a4b023          	sd	a0,64(s1)
                return;
    80001d4c:	e29ff06f          	j	80001b74 <handleSupervisorTrap+0xb8>
                unsigned n = (unsigned)arg2;
    80001d50:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d54:	00091863          	bnez	s2,80001d64 <handleSupervisorTrap+0x2a8>
                    frame->a0 = (uint64)-1;
    80001d58:	fff00793          	li	a5,-1
    80001d5c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d60:	e09ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signalN(n);
    80001d64:	00090513          	mv	a0,s2
    80001d68:	00000097          	auipc	ra,0x0
    80001d6c:	c18080e7          	jalr	-1000(ra) # 80001980 <_ZN4_sem7signalNEj>
    80001d70:	04a4b023          	sd	a0,64(s1)
                break;
    80001d74:	df5ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001d78:	fff00793          	li	a5,-1
    80001d7c:	04f4b023          	sd	a5,64(s1)
                break;
    80001d80:	de9ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)__getc();
    80001d84:	00007097          	auipc	ra,0x7
    80001d88:	044080e7          	jalr	68(ra) # 80008dc8 <__getc>
    80001d8c:	04a4b023          	sd	a0,64(s1)
                break;
    80001d90:	dd9ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001d94:	0ff97513          	andi	a0,s2,255
    80001d98:	00007097          	auipc	ra,0x7
    80001d9c:	ff4080e7          	jalr	-12(ra) # 80008d8c <__putc>
                frame->a0 = 0;
    80001da0:	0404b023          	sd	zero,64(s1)
                break;
    80001da4:	dc5ff06f          	j	80001b68 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001da8:	fff00793          	li	a5,-1
    80001dac:	04f4b023          	sd	a5,64(s1)
                break;
    80001db0:	db9ff06f          	j	80001b68 <handleSupervisorTrap+0xac>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001db4:	00200793          	li	a5,2
    80001db8:	1447b073          	csrc	sip,a5
        return;
    80001dbc:	db9ff06f          	j	80001b74 <handleSupervisorTrap+0xb8>
        console_handler();
    80001dc0:	00007097          	auipc	ra,0x7
    80001dc4:	040080e7          	jalr	64(ra) # 80008e00 <console_handler>
        return;
    80001dc8:	dadff06f          	j	80001b74 <handleSupervisorTrap+0xb8>
        printString("ERROR, scause: ");
    80001dcc:	00007517          	auipc	a0,0x7
    80001dd0:	25450513          	addi	a0,a0,596 # 80009020 <CONSOLE_STATUS+0x10>
    80001dd4:	00003097          	auipc	ra,0x3
    80001dd8:	7a0080e7          	jalr	1952(ra) # 80005574 <_Z11printStringPKc>
        printInt(scause);
    80001ddc:	00000613          	li	a2,0
    80001de0:	00a00593          	li	a1,10
    80001de4:	0009051b          	sext.w	a0,s2
    80001de8:	00004097          	auipc	ra,0x4
    80001dec:	93c080e7          	jalr	-1732(ra) # 80005724 <_Z8printIntiii>
        printString(",sepc ");
    80001df0:	00007517          	auipc	a0,0x7
    80001df4:	24050513          	addi	a0,a0,576 # 80009030 <CONSOLE_STATUS+0x20>
    80001df8:	00003097          	auipc	ra,0x3
    80001dfc:	77c080e7          	jalr	1916(ra) # 80005574 <_Z11printStringPKc>
        printInt(frame->sepc);
    80001e00:	00000613          	li	a2,0
    80001e04:	00a00593          	li	a1,10
    80001e08:	0f04a503          	lw	a0,240(s1)
    80001e0c:	00004097          	auipc	ra,0x4
    80001e10:	918080e7          	jalr	-1768(ra) # 80005724 <_Z8printIntiii>
        printString("\n");
    80001e14:	00007517          	auipc	a0,0x7
    80001e18:	4a450513          	addi	a0,a0,1188 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80001e1c:	00003097          	auipc	ra,0x3
    80001e20:	758080e7          	jalr	1880(ra) # 80005574 <_Z11printStringPKc>
        frame->sepc += 4;
    80001e24:	0f04b783          	ld	a5,240(s1)
    80001e28:	00478793          	addi	a5,a5,4
    80001e2c:	0ef4b823          	sd	a5,240(s1)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001e30:	14179073          	csrw	sepc,a5
        return;
    80001e34:	d41ff06f          	j	80001b74 <handleSupervisorTrap+0xb8>

0000000080001e38 <_ZL14blocksForBytesm>:
#include "../h/syscall_c.hpp"

_thread* _thread::running = nullptr;
int _thread::nextId = 0;

static size_t blocksForBytes(size_t bytes) {
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00813423          	sd	s0,8(sp)
    80001e40:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e44:	03f50513          	addi	a0,a0,63
}
    80001e48:	00655513          	srli	a0,a0,0x6
    80001e4c:	00813403          	ld	s0,8(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret

0000000080001e58 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80001e58:	ff010113          	addi	sp,sp,-16
    80001e5c:	00113423          	sd	ra,8(sp)
    80001e60:	00813023          	sd	s0,0(sp)
    80001e64:	01010413          	addi	s0,sp,16
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001e68:	0000a797          	auipc	a5,0xa
    80001e6c:	f607b783          	ld	a5,-160(a5) # 8000bdc8 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001e70:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001e74:	10000793          	li	a5,256
    80001e78:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001e7c:	02000793          	li	a5,32
    80001e80:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001e84:	10200073          	sret
    Riscv::popSppSpie();

    if (running != nullptr && running->body != nullptr) {
    80001e88:	0000a797          	auipc	a5,0xa
    80001e8c:	fb87b783          	ld	a5,-72(a5) # 8000be40 <_ZN7_thread7runningE>
    80001e90:	00078a63          	beqz	a5,80001ea4 <_ZN7_thread13threadWrapperEv+0x4c>
    80001e94:	0007b703          	ld	a4,0(a5)
    80001e98:	00070663          	beqz	a4,80001ea4 <_ZN7_thread13threadWrapperEv+0x4c>
        running->body(running->arg);
    80001e9c:	0087b503          	ld	a0,8(a5)
    80001ea0:	000700e7          	jalr	a4
    }

    thread_exit();
    80001ea4:	fffff097          	auipc	ra,0xfffff
    80001ea8:	4a4080e7          	jalr	1188(ra) # 80001348 <_Z11thread_exitv>
    80001eac:	00813083          	ld	ra,8(sp)
    80001eb0:	00013403          	ld	s0,0(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001ebc:	fe010113          	addi	sp,sp,-32
    80001ec0:	00113c23          	sd	ra,24(sp)
    80001ec4:	00813823          	sd	s0,16(sp)
    80001ec8:	00913423          	sd	s1,8(sp)
    80001ecc:	01213023          	sd	s2,0(sp)
    80001ed0:	02010413          	addi	s0,sp,32
    80001ed4:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	cc0080e7          	jalr	-832(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80001ee0:	00050493          	mv	s1,a0
    80001ee4:	00090513          	mv	a0,s2
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	f50080e7          	jalr	-176(ra) # 80001e38 <_ZL14blocksForBytesm>
    80001ef0:	00050593          	mv	a1,a0
    80001ef4:	00048513          	mv	a0,s1
    80001ef8:	00001097          	auipc	ra,0x1
    80001efc:	d20080e7          	jalr	-736(ra) # 80002c18 <_ZN15MemoryAllocator6mallocEm>
}
    80001f00:	01813083          	ld	ra,24(sp)
    80001f04:	01013403          	ld	s0,16(sp)
    80001f08:	00813483          	ld	s1,8(sp)
    80001f0c:	00013903          	ld	s2,0(sp)
    80001f10:	02010113          	addi	sp,sp,32
    80001f14:	00008067          	ret

0000000080001f18 <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001f18:	fe010113          	addi	sp,sp,-32
    80001f1c:	00113c23          	sd	ra,24(sp)
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	01213023          	sd	s2,0(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    80001f30:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	c64080e7          	jalr	-924(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80001f3c:	00050493          	mv	s1,a0
    80001f40:	00090513          	mv	a0,s2
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	ef4080e7          	jalr	-268(ra) # 80001e38 <_ZL14blocksForBytesm>
    80001f4c:	00050593          	mv	a1,a0
    80001f50:	00048513          	mv	a0,s1
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	cc4080e7          	jalr	-828(ra) # 80002c18 <_ZN15MemoryAllocator6mallocEm>
}
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	00013903          	ld	s2,0(sp)
    80001f6c:	02010113          	addi	sp,sp,32
    80001f70:	00008067          	ret

0000000080001f74 <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    80001f74:	04050263          	beqz	a0,80001fb8 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	c08080e7          	jalr	-1016(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80001f98:	00048593          	mv	a1,s1
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	dd8080e7          	jalr	-552(ra) # 80002d74 <_ZN15MemoryAllocator4freeEPv>
}
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	00813483          	ld	s1,8(sp)
    80001fb0:	02010113          	addi	sp,sp,32
    80001fb4:	00008067          	ret
    80001fb8:	00008067          	ret

0000000080001fbc <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    80001fbc:	04050263          	beqz	a0,80002000 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001fc0:	fe010113          	addi	sp,sp,-32
    80001fc4:	00113c23          	sd	ra,24(sp)
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00913423          	sd	s1,8(sp)
    80001fd0:	02010413          	addi	s0,sp,32
    80001fd4:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001fd8:	00001097          	auipc	ra,0x1
    80001fdc:	bc0080e7          	jalr	-1088(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80001fe0:	00048593          	mv	a1,s1
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	d90080e7          	jalr	-624(ra) # 80002d74 <_ZN15MemoryAllocator4freeEPv>
}
    80001fec:	01813083          	ld	ra,24(sp)
    80001ff0:	01013403          	ld	s0,16(sp)
    80001ff4:	00813483          	ld	s1,8(sp)
    80001ff8:	02010113          	addi	sp,sp,32
    80001ffc:	00008067          	ret
    80002000:	00008067          	ret

0000000080002004 <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
    this->body = body;
    80002010:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80002014:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    80002018:	08068263          	beqz	a3,8000209c <_ZN7_threadC1EPFvPvES0_S0_+0x98>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    8000201c:	fffff7b7          	lui	a5,0xfffff
    80002020:	00f687b3          	add	a5,a3,a5
    80002024:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80002028:	02d53423          	sd	a3,40(a0)
    this->context.s0 = 0;
    8000202c:	02053823          	sd	zero,48(a0)
    this->context.s1 = 0;
    80002030:	02053c23          	sd	zero,56(a0)
    this->context.s2 = 0;
    80002034:	04053023          	sd	zero,64(a0)
    this->context.s3 = 0;
    80002038:	04053423          	sd	zero,72(a0)
    this->context.s4 = 0;
    8000203c:	04053823          	sd	zero,80(a0)
    this->context.s5 = 0;
    80002040:	04053c23          	sd	zero,88(a0)
    this->context.s6 = 0;
    80002044:	06053023          	sd	zero,96(a0)
    this->context.s7 = 0;
    80002048:	06053423          	sd	zero,104(a0)
    this->context.s8 = 0;
    8000204c:	06053823          	sd	zero,112(a0)
    this->context.s9 = 0;
    80002050:	06053c23          	sd	zero,120(a0)
    this->context.s10 = 0;
    80002054:	08053023          	sd	zero,128(a0)
    this->context.s11 = 0;
    80002058:	08053423          	sd	zero,136(a0)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    8000205c:	00000797          	auipc	a5,0x0
    80002060:	dfc78793          	addi	a5,a5,-516 # 80001e58 <_ZN7_thread13threadWrapperEv>
    80002064:	02f53023          	sd	a5,32(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80002068:	00200793          	li	a5,2
    8000206c:	08f53823          	sd	a5,144(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80002070:	08052c23          	sw	zero,152(a0)
    this->next = nullptr;
    80002074:	0a053023          	sd	zero,160(a0)
    this->id = nextId++;
    80002078:	0000a717          	auipc	a4,0xa
    8000207c:	dc870713          	addi	a4,a4,-568 # 8000be40 <_ZN7_thread7runningE>
    80002080:	00872783          	lw	a5,8(a4)
    80002084:	0017869b          	addiw	a3,a5,1
    80002088:	00d72423          	sw	a3,8(a4)
    8000208c:	00f52c23          	sw	a5,24(a0)
}
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret
        this->stack = nullptr;
    8000209c:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    800020a0:	02053423          	sd	zero,40(a0)
    800020a4:	f89ff06f          	j	8000202c <_ZN7_threadC1EPFvPvES0_S0_+0x28>

00000000800020a8 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    800020a8:	fd010113          	addi	sp,sp,-48
    800020ac:	02113423          	sd	ra,40(sp)
    800020b0:	02813023          	sd	s0,32(sp)
    800020b4:	00913c23          	sd	s1,24(sp)
    800020b8:	01213823          	sd	s2,16(sp)
    800020bc:	01313423          	sd	s3,8(sp)
    800020c0:	01413023          	sd	s4,0(sp)
    800020c4:	03010413          	addi	s0,sp,48
    800020c8:	00050913          	mv	s2,a0
    800020cc:	00058993          	mv	s3,a1
    800020d0:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    800020d4:	0a800513          	li	a0,168
    800020d8:	00000097          	auipc	ra,0x0
    800020dc:	de4080e7          	jalr	-540(ra) # 80001ebc <_ZN7_threadnwEm>
    800020e0:	00050493          	mv	s1,a0
    800020e4:	000a0693          	mv	a3,s4
    800020e8:	00098613          	mv	a2,s3
    800020ec:	00090593          	mv	a1,s2
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	f14080e7          	jalr	-236(ra) # 80002004 <_ZN7_threadC1EPFvPvES0_S0_>
}
    800020f8:	00048513          	mv	a0,s1
    800020fc:	02813083          	ld	ra,40(sp)
    80002100:	02013403          	ld	s0,32(sp)
    80002104:	01813483          	ld	s1,24(sp)
    80002108:	01013903          	ld	s2,16(sp)
    8000210c:	00813983          	ld	s3,8(sp)
    80002110:	00013a03          	ld	s4,0(sp)
    80002114:	03010113          	addi	sp,sp,48
    80002118:	00008067          	ret

000000008000211c <_ZNK7_thread5getIdEv>:
int _thread::getId() const {
    8000211c:	ff010113          	addi	sp,sp,-16
    80002120:	00813423          	sd	s0,8(sp)
    80002124:	01010413          	addi	s0,sp,16
}
    80002128:	01852503          	lw	a0,24(a0)
    8000212c:	00813403          	ld	s0,8(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    80002138:	04050e63          	beqz	a0,80002194 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    8000213c:	fe010113          	addi	sp,sp,-32
    80002140:	00113c23          	sd	ra,24(sp)
    80002144:	00813823          	sd	s0,16(sp)
    80002148:	00913423          	sd	s1,8(sp)
    8000214c:	02010413          	addi	s0,sp,32
    80002150:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    80002154:	01053783          	ld	a5,16(a0)
    80002158:	00078c63          	beqz	a5,80002170 <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	a3c080e7          	jalr	-1476(ra) # 80002b98 <_ZN15MemoryAllocator11getInstanceEv>
    80002164:	0104b583          	ld	a1,16(s1)
    80002168:	00001097          	auipc	ra,0x1
    8000216c:	c0c080e7          	jalr	-1012(ra) # 80002d74 <_ZN15MemoryAllocator4freeEPv>
    delete thread;
    80002170:	00048513          	mv	a0,s1
    80002174:	00000097          	auipc	ra,0x0
    80002178:	e00080e7          	jalr	-512(ra) # 80001f74 <_ZN7_threaddlEPv>
    return 0;
    8000217c:	00000513          	li	a0,0
}
    80002180:	01813083          	ld	ra,24(sp)
    80002184:	01013403          	ld	s0,16(sp)
    80002188:	00813483          	ld	s1,8(sp)
    8000218c:	02010113          	addi	sp,sp,32
    80002190:	00008067          	ret
        return -1;
    80002194:	fff00513          	li	a0,-1
}
    80002198:	00008067          	ret

000000008000219c <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    8000219c:	fe010113          	addi	sp,sp,-32
    800021a0:	00113c23          	sd	ra,24(sp)
    800021a4:	00813823          	sd	s0,16(sp)
    800021a8:	00913423          	sd	s1,8(sp)
    800021ac:	02010413          	addi	s0,sp,32
    _thread* old = running;
    800021b0:	0000a497          	auipc	s1,0xa
    800021b4:	c904b483          	ld	s1,-880(s1) # 8000be40 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    800021b8:	00048c63          	beqz	s1,800021d0 <_ZN7_thread8dispatchEv+0x34>
    800021bc:	0984a783          	lw	a5,152(s1)
    800021c0:	00400713          	li	a4,4
    800021c4:	00e78663          	beq	a5,a4,800021d0 <_ZN7_thread8dispatchEv+0x34>
    800021c8:	00300713          	li	a4,3
    800021cc:	04e79663          	bne	a5,a4,80002218 <_ZN7_thread8dispatchEv+0x7c>
    _thread* next = Scheduler::get();
    800021d0:	00000097          	auipc	ra,0x0
    800021d4:	350080e7          	jalr	848(ra) # 80002520 <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    800021d8:	04050863          	beqz	a0,80002228 <_ZN7_thread8dispatchEv+0x8c>
    running = next;
    800021dc:	0000a797          	auipc	a5,0xa
    800021e0:	c6a7b223          	sd	a0,-924(a5) # 8000be40 <_ZN7_thread7runningE>
    running->state = RUNNING;
    800021e4:	00200793          	li	a5,2
    800021e8:	08f52c23          	sw	a5,152(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    800021ec:	00048c63          	beqz	s1,80002204 <_ZN7_thread8dispatchEv+0x68>
    800021f0:	00a48a63          	beq	s1,a0,80002204 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    800021f4:	02050593          	addi	a1,a0,32
    800021f8:	02048513          	addi	a0,s1,32
    800021fc:	fffff097          	auipc	ra,0xfffff
    80002200:	f34080e7          	jalr	-204(ra) # 80001130 <contextSwitch>
}
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret
        Scheduler::put(old);
    80002218:	00048513          	mv	a0,s1
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	298080e7          	jalr	664(ra) # 800024b4 <_ZN9Scheduler3putEP7_thread>
    80002224:	fadff06f          	j	800021d0 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    80002228:	fc048ee3          	beqz	s1,80002204 <_ZN7_thread8dispatchEv+0x68>
    8000222c:	0984a703          	lw	a4,152(s1)
    80002230:	00200793          	li	a5,2
    80002234:	fcf718e3          	bne	a4,a5,80002204 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    80002238:	0000a797          	auipc	a5,0xa
    8000223c:	c097b423          	sd	s1,-1016(a5) # 8000be40 <_ZN7_thread7runningE>
        return;
    80002240:	fc5ff06f          	j	80002204 <_ZN7_thread8dispatchEv+0x68>

0000000080002244 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    80002244:	0000a797          	auipc	a5,0xa
    80002248:	bfc7b783          	ld	a5,-1028(a5) # 8000be40 <_ZN7_thread7runningE>
    8000224c:	02078c63          	beqz	a5,80002284 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00113423          	sd	ra,8(sp)
    80002258:	00813023          	sd	s0,0(sp)
    8000225c:	01010413          	addi	s0,sp,16
    running->state = FINISHED;
    80002260:	00400713          	li	a4,4
    80002264:	08e7ac23          	sw	a4,152(a5)
    dispatch();
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	f34080e7          	jalr	-204(ra) # 8000219c <_ZN7_thread8dispatchEv>
    return 0;
    80002270:	00000513          	li	a0,0
}
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret
        return -1;
    80002284:	fff00513          	li	a0,-1
}
    80002288:	00008067          	ret

000000008000228c <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16
}
    80002298:	00053503          	ld	a0,0(a0)
    8000229c:	00813403          	ld	s0,8(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret

00000000800022a8 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00813423          	sd	s0,8(sp)
    800022b0:	01010413          	addi	s0,sp,16
}
    800022b4:	00853503          	ld	a0,8(a0)
    800022b8:	00813403          	ld	s0,8(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800022c4:	ff010113          	addi	sp,sp,-16
    800022c8:	00813423          	sd	s0,8(sp)
    800022cc:	01010413          	addi	s0,sp,16
}
    800022d0:	01053503          	ld	a0,16(a0)
    800022d4:	00813403          	ld	s0,8(sp)
    800022d8:	01010113          	addi	sp,sp,16
    800022dc:	00008067          	ret

00000000800022e0 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    800022e0:	ff010113          	addi	sp,sp,-16
    800022e4:	00813423          	sd	s0,8(sp)
    800022e8:	01010413          	addi	s0,sp,16
}
    800022ec:	02050513          	addi	a0,a0,32
    800022f0:	00813403          	ld	s0,8(sp)
    800022f4:	01010113          	addi	sp,sp,16
    800022f8:	00008067          	ret

00000000800022fc <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
}
    80002308:	09852503          	lw	a0,152(a0)
    8000230c:	00813403          	ld	s0,8(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002318:	ff010113          	addi	sp,sp,-16
    8000231c:	00813423          	sd	s0,8(sp)
    80002320:	01010413          	addi	s0,sp,16
    this->state = state;
    80002324:	08b52c23          	sw	a1,152(a0)
}
    80002328:	00813403          	ld	s0,8(sp)
    8000232c:	01010113          	addi	sp,sp,16
    80002330:	00008067          	ret

0000000080002334 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002334:	ff010113          	addi	sp,sp,-16
    80002338:	00813423          	sd	s0,8(sp)
    8000233c:	01010413          	addi	s0,sp,16
}
    80002340:	09053503          	ld	a0,144(a0)
    80002344:	00813403          	ld	s0,8(sp)
    80002348:	01010113          	addi	sp,sp,16
    8000234c:	00008067          	ret

0000000080002350 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80002350:	fe010113          	addi	sp,sp,-32
    80002354:	00113c23          	sd	ra,24(sp)
    80002358:	00813823          	sd	s0,16(sp)
    8000235c:	00913423          	sd	s1,8(sp)
    80002360:	01213023          	sd	s2,0(sp)
    80002364:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80002368:	00007517          	auipc	a0,0x7
    8000236c:	de050513          	addi	a0,a0,-544 # 80009148 <CONSOLE_STATUS+0x138>
    80002370:	00003097          	auipc	ra,0x3
    80002374:	204080e7          	jalr	516(ra) # 80005574 <_Z11printStringPKc>
    int test = getc() - '0';
    80002378:	fffff097          	auipc	ra,0xfffff
    8000237c:	258080e7          	jalr	600(ra) # 800015d0 <_Z4getcv>
    80002380:	00050913          	mv	s2,a0
    80002384:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80002388:	fffff097          	auipc	ra,0xfffff
    8000238c:	248080e7          	jalr	584(ra) # 800015d0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80002390:	fcb9091b          	addiw	s2,s2,-53
    80002394:	00100793          	li	a5,1
    80002398:	0327f463          	bgeu	a5,s2,800023c0 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    8000239c:	00800793          	li	a5,8
    800023a0:	1097e063          	bltu	a5,s1,800024a0 <_Z8userMainv+0x150>
    800023a4:	00249493          	slli	s1,s1,0x2
    800023a8:	00007717          	auipc	a4,0x7
    800023ac:	fc870713          	addi	a4,a4,-56 # 80009370 <CONSOLE_STATUS+0x360>
    800023b0:	00e484b3          	add	s1,s1,a4
    800023b4:	0004a783          	lw	a5,0(s1)
    800023b8:	00e787b3          	add	a5,a5,a4
    800023bc:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800023c0:	00007517          	auipc	a0,0x7
    800023c4:	da850513          	addi	a0,a0,-600 # 80009168 <CONSOLE_STATUS+0x158>
    800023c8:	00003097          	auipc	ra,0x3
    800023cc:	1ac080e7          	jalr	428(ra) # 80005574 <_Z11printStringPKc>
            printString("Test 8 finished");
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800023d0:	01813083          	ld	ra,24(sp)
    800023d4:	01013403          	ld	s0,16(sp)
    800023d8:	00813483          	ld	s1,8(sp)
    800023dc:	00013903          	ld	s2,0(sp)
    800023e0:	02010113          	addi	sp,sp,32
    800023e4:	00008067          	ret
            Threads_C_API_test();
    800023e8:	00003097          	auipc	ra,0x3
    800023ec:	804080e7          	jalr	-2044(ra) # 80004bec <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800023f0:	00007517          	auipc	a0,0x7
    800023f4:	da850513          	addi	a0,a0,-600 # 80009198 <CONSOLE_STATUS+0x188>
    800023f8:	00003097          	auipc	ra,0x3
    800023fc:	17c080e7          	jalr	380(ra) # 80005574 <_Z11printStringPKc>
            break;
    80002400:	fd1ff06f          	j	800023d0 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002404:	00001097          	auipc	ra,0x1
    80002408:	6c8080e7          	jalr	1736(ra) # 80003acc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000240c:	00007517          	auipc	a0,0x7
    80002410:	dcc50513          	addi	a0,a0,-564 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80002414:	00003097          	auipc	ra,0x3
    80002418:	160080e7          	jalr	352(ra) # 80005574 <_Z11printStringPKc>
            break;
    8000241c:	fb5ff06f          	j	800023d0 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80002420:	00001097          	auipc	ra,0x1
    80002424:	f00080e7          	jalr	-256(ra) # 80003320 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002428:	00007517          	auipc	a0,0x7
    8000242c:	df050513          	addi	a0,a0,-528 # 80009218 <CONSOLE_STATUS+0x208>
    80002430:	00003097          	auipc	ra,0x3
    80002434:	144080e7          	jalr	324(ra) # 80005574 <_Z11printStringPKc>
            break;
    80002438:	f99ff06f          	j	800023d0 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000243c:	00003097          	auipc	ra,0x3
    80002440:	af4080e7          	jalr	-1292(ra) # 80004f30 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002444:	00007517          	auipc	a0,0x7
    80002448:	e2450513          	addi	a0,a0,-476 # 80009268 <CONSOLE_STATUS+0x258>
    8000244c:	00003097          	auipc	ra,0x3
    80002450:	128080e7          	jalr	296(ra) # 80005574 <_Z11printStringPKc>
            break;
    80002454:	f7dff06f          	j	800023d0 <_Z8userMainv+0x80>
            System_Mode_test();
    80002458:	00004097          	auipc	ra,0x4
    8000245c:	45c080e7          	jalr	1116(ra) # 800068b4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002460:	00007517          	auipc	a0,0x7
    80002464:	e6050513          	addi	a0,a0,-416 # 800092c0 <CONSOLE_STATUS+0x2b0>
    80002468:	00003097          	auipc	ra,0x3
    8000246c:	10c080e7          	jalr	268(ra) # 80005574 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002470:	00007517          	auipc	a0,0x7
    80002474:	e7050513          	addi	a0,a0,-400 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80002478:	00003097          	auipc	ra,0x3
    8000247c:	0fc080e7          	jalr	252(ra) # 80005574 <_Z11printStringPKc>
            break;
    80002480:	f51ff06f          	j	800023d0 <_Z8userMainv+0x80>
            modC();
    80002484:	00004097          	auipc	ra,0x4
    80002488:	818080e7          	jalr	-2024(ra) # 80005c9c <_Z4modCv>
            printString("Test 8 finished");
    8000248c:	00007517          	auipc	a0,0x7
    80002490:	eac50513          	addi	a0,a0,-340 # 80009338 <CONSOLE_STATUS+0x328>
    80002494:	00003097          	auipc	ra,0x3
    80002498:	0e0080e7          	jalr	224(ra) # 80005574 <_Z11printStringPKc>
            break;
    8000249c:	f35ff06f          	j	800023d0 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800024a0:	00007517          	auipc	a0,0x7
    800024a4:	ea850513          	addi	a0,a0,-344 # 80009348 <CONSOLE_STATUS+0x338>
    800024a8:	00003097          	auipc	ra,0x3
    800024ac:	0cc080e7          	jalr	204(ra) # 80005574 <_Z11printStringPKc>
    800024b0:	f21ff06f          	j	800023d0 <_Z8userMainv+0x80>

00000000800024b4 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00813423          	sd	s0,8(sp)
    800024bc:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    800024c0:	04050063          	beqz	a0,80002500 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    800024c4:	09852783          	lw	a5,152(a0)
    800024c8:	ffd7879b          	addiw	a5,a5,-3
    800024cc:	00100713          	li	a4,1
    800024d0:	02f77863          	bgeu	a4,a5,80002500 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    800024d4:	00100793          	li	a5,1
    800024d8:	08f52c23          	sw	a5,152(a0)
    thread->next = nullptr;
    800024dc:	0a053023          	sd	zero,160(a0)

    if (head == nullptr) {
    800024e0:	0000a797          	auipc	a5,0xa
    800024e4:	9707b783          	ld	a5,-1680(a5) # 8000be50 <_ZN9Scheduler4headE>
    800024e8:	02078263          	beqz	a5,8000250c <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    800024ec:	0000a797          	auipc	a5,0xa
    800024f0:	96478793          	addi	a5,a5,-1692 # 8000be50 <_ZN9Scheduler4headE>
    800024f4:	0087b703          	ld	a4,8(a5)
    800024f8:	0aa73023          	sd	a0,160(a4)
        tail = thread;
    800024fc:	00a7b423          	sd	a0,8(a5)
    }
}
    80002500:	00813403          	ld	s0,8(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret
        head = thread;
    8000250c:	0000a797          	auipc	a5,0xa
    80002510:	94478793          	addi	a5,a5,-1724 # 8000be50 <_ZN9Scheduler4headE>
    80002514:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    80002518:	00a7b423          	sd	a0,8(a5)
    8000251c:	fe5ff06f          	j	80002500 <_ZN9Scheduler3putEP7_thread+0x4c>

0000000080002520 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00813423          	sd	s0,8(sp)
    80002528:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    8000252c:	0000a517          	auipc	a0,0xa
    80002530:	92453503          	ld	a0,-1756(a0) # 8000be50 <_ZN9Scheduler4headE>
    80002534:	00050c63          	beqz	a0,8000254c <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    80002538:	0a053783          	ld	a5,160(a0)
    8000253c:	0000a717          	auipc	a4,0xa
    80002540:	90f73a23          	sd	a5,-1772(a4) # 8000be50 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    80002544:	00078a63          	beqz	a5,80002558 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    80002548:	0a053023          	sd	zero,160(a0)

    return thread;
}
    8000254c:	00813403          	ld	s0,8(sp)
    80002550:	01010113          	addi	sp,sp,16
    80002554:	00008067          	ret
        tail = nullptr;
    80002558:	0000a797          	auipc	a5,0xa
    8000255c:	9007b023          	sd	zero,-1792(a5) # 8000be58 <_ZN9Scheduler4tailE>
    80002560:	fe9ff06f          	j	80002548 <_ZN9Scheduler3getEv+0x28>

0000000080002564 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    80002564:	ff010113          	addi	sp,sp,-16
    80002568:	00813423          	sd	s0,8(sp)
    8000256c:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80002570:	0000a517          	auipc	a0,0xa
    80002574:	8e053503          	ld	a0,-1824(a0) # 8000be50 <_ZN9Scheduler4headE>
    80002578:	00153513          	seqz	a0,a0
    8000257c:	00813403          	ld	s0,8(sp)
    80002580:	01010113          	addi	sp,sp,16
    80002584:	00008067          	ret

0000000080002588 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    80002588:	ff010113          	addi	sp,sp,-16
    8000258c:	00113423          	sd	ra,8(sp)
    80002590:	00813023          	sd	s0,0(sp)
    80002594:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	c60080e7          	jalr	-928(ra) # 800011f8 <_Z9mem_allocm>
}
    800025a0:	00813083          	ld	ra,8(sp)
    800025a4:	00013403          	ld	s0,0(sp)
    800025a8:	01010113          	addi	sp,sp,16
    800025ac:	00008067          	ret

00000000800025b0 <_Znam>:

void* operator new[](size_t size) {
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00113423          	sd	ra,8(sp)
    800025b8:	00813023          	sd	s0,0(sp)
    800025bc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	c38080e7          	jalr	-968(ra) # 800011f8 <_Z9mem_allocm>
}
    800025c8:	00813083          	ld	ra,8(sp)
    800025cc:	00013403          	ld	s0,0(sp)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret

00000000800025d8 <_ZdlPv>:

void operator delete(void* ptr) {
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00113423          	sd	ra,8(sp)
    800025e0:	00813023          	sd	s0,0(sp)
    800025e4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800025e8:	fffff097          	auipc	ra,0xfffff
    800025ec:	c5c080e7          	jalr	-932(ra) # 80001244 <_Z8mem_freePv>
}
    800025f0:	00813083          	ld	ra,8(sp)
    800025f4:	00013403          	ld	s0,0(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret

0000000080002600 <_ZdaPv>:

void operator delete[](void* ptr) {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00113423          	sd	ra,8(sp)
    80002608:	00813023          	sd	s0,0(sp)
    8000260c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	c34080e7          	jalr	-972(ra) # 80001244 <_Z8mem_freePv>
    80002618:	00813083          	ld	ra,8(sp)
    8000261c:	00013403          	ld	s0,0(sp)
    80002620:	01010113          	addi	sp,sp,16
    80002624:	00008067          	ret

0000000080002628 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00113423          	sd	ra,8(sp)
    80002630:	00813023          	sd	s0,0(sp)
    80002634:	01010413          	addi	s0,sp,16
    userMain();
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	d18080e7          	jalr	-744(ra) # 80002350 <_Z8userMainv>
    userMainFinished = true;
    80002640:	00100793          	li	a5,1
    80002644:	0000a717          	auipc	a4,0xa
    80002648:	80f70e23          	sb	a5,-2020(a4) # 8000be60 <_ZL16userMainFinished>
    thread_exit();
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	cfc080e7          	jalr	-772(ra) # 80001348 <_Z11thread_exitv>
}
    80002654:	00813083          	ld	ra,8(sp)
    80002658:	00013403          	ld	s0,0(sp)
    8000265c:	01010113          	addi	sp,sp,16
    80002660:	00008067          	ret

0000000080002664 <main>:

int main() {
    80002664:	f3010113          	addi	sp,sp,-208
    80002668:	0c113423          	sd	ra,200(sp)
    8000266c:	0c813023          	sd	s0,192(sp)
    80002670:	0a913c23          	sd	s1,184(sp)
    80002674:	0d010413          	addi	s0,sp,208
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002678:	00009797          	auipc	a5,0x9
    8000267c:	7687b783          	ld	a5,1896(a5) # 8000bde0 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    80002680:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    80002684:	00200793          	li	a5,2
    80002688:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    8000268c:	00000693          	li	a3,0
    80002690:	00000613          	li	a2,0
    80002694:	00000593          	li	a1,0
    80002698:	f3840493          	addi	s1,s0,-200
    8000269c:	00048513          	mv	a0,s1
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	964080e7          	jalr	-1692(ra) # 80002004 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    800026a8:	00200593          	li	a1,2
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	c68080e7          	jalr	-920(ra) # 80002318 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    800026b8:	00009797          	auipc	a5,0x9
    800026bc:	7207b783          	ld	a5,1824(a5) # 8000bdd8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800026c0:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    800026c4:	f2043823          	sd	zero,-208(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800026c8:	00000613          	li	a2,0
    800026cc:	00000597          	auipc	a1,0x0
    800026d0:	f5c58593          	addi	a1,a1,-164 # 80002628 <_ZL15userMainWrapperPv>
    800026d4:	f3040513          	addi	a0,s0,-208
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	bac080e7          	jalr	-1108(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    800026e0:	00054663          	bltz	a0,800026ec <main+0x88>
    800026e4:	f3043783          	ld	a5,-208(s0)
    800026e8:	02079063          	bnez	a5,80002708 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    800026ec:	00100737          	lui	a4,0x100
    800026f0:	000057b7          	lui	a5,0x5
    800026f4:	5557879b          	addiw	a5,a5,1365
    800026f8:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    800026fc:	02c0006f          	j	80002728 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    80002700:	fffff097          	auipc	ra,0xfffff
    80002704:	c88080e7          	jalr	-888(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002708:	00009797          	auipc	a5,0x9
    8000270c:	7587c783          	lbu	a5,1880(a5) # 8000be60 <_ZL16userMainFinished>
    80002710:	fe0788e3          	beqz	a5,80002700 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002714:	00100737          	lui	a4,0x100
    80002718:	000057b7          	lui	a5,0x5
    8000271c:	5557879b          	addiw	a5,a5,1365
    80002720:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002724:	00000513          	li	a0,0
}
    80002728:	0c813083          	ld	ra,200(sp)
    8000272c:	0c013403          	ld	s0,192(sp)
    80002730:	0b813483          	ld	s1,184(sp)
    80002734:	0d010113          	addi	sp,sp,208
    80002738:	00008067          	ret

000000008000273c <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    8000273c:	ff010113          	addi	sp,sp,-16
    80002740:	00813423          	sd	s0,8(sp)
    80002744:	01010413          	addi	s0,sp,16
}
    80002748:	00813403          	ld	s0,8(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002754:	02050863          	beqz	a0,80002784 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
        t->run();
    80002768:	00053783          	ld	a5,0(a0)
    8000276c:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002770:	000780e7          	jalr	a5
    }
}
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret
    80002784:	00008067          	ret

0000000080002788 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00113423          	sd	ra,8(sp)
    80002790:	00813023          	sd	s0,0(sp)
    80002794:	01010413          	addi	s0,sp,16
}
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	e40080e7          	jalr	-448(ra) # 800025d8 <_ZdlPv>
    800027a0:	00813083          	ld	ra,8(sp)
    800027a4:	00013403          	ld	s0,0(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret

00000000800027b0 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800027b0:	00009797          	auipc	a5,0x9
    800027b4:	3d878793          	addi	a5,a5,984 # 8000bb88 <_ZTV9Semaphore+0x10>
    800027b8:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    800027bc:	00853503          	ld	a0,8(a0)
    800027c0:	02050663          	beqz	a0,800027ec <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800027c4:	ff010113          	addi	sp,sp,-16
    800027c8:	00113423          	sd	ra,8(sp)
    800027cc:	00813023          	sd	s0,0(sp)
    800027d0:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800027d4:	fffff097          	auipc	ra,0xfffff
    800027d8:	c74080e7          	jalr	-908(ra) # 80001448 <_Z9sem_closeP4_sem>
    }
}
    800027dc:	00813083          	ld	ra,8(sp)
    800027e0:	00013403          	ld	s0,0(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret
    800027ec:	00008067          	ret

00000000800027f0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800027f0:	fe010113          	addi	sp,sp,-32
    800027f4:	00113c23          	sd	ra,24(sp)
    800027f8:	00813823          	sd	s0,16(sp)
    800027fc:	00913423          	sd	s1,8(sp)
    80002800:	02010413          	addi	s0,sp,32
    80002804:	00050493          	mv	s1,a0
}
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	fa8080e7          	jalr	-88(ra) # 800027b0 <_ZN9SemaphoreD1Ev>
    80002810:	00048513          	mv	a0,s1
    80002814:	00000097          	auipc	ra,0x0
    80002818:	dc4080e7          	jalr	-572(ra) # 800025d8 <_ZdlPv>
    8000281c:	01813083          	ld	ra,24(sp)
    80002820:	01013403          	ld	s0,16(sp)
    80002824:	00813483          	ld	s1,8(sp)
    80002828:	02010113          	addi	sp,sp,32
    8000282c:	00008067          	ret

0000000080002830 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00813423          	sd	s0,8(sp)
    80002838:	01010413          	addi	s0,sp,16
    8000283c:	00009797          	auipc	a5,0x9
    80002840:	32478793          	addi	a5,a5,804 # 8000bb60 <_ZTV6Thread+0x10>
    80002844:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002848:	00053423          	sd	zero,8(a0)
    this->body = body;
    8000284c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002850:	00c53c23          	sd	a2,24(a0)
}
    80002854:	00813403          	ld	s0,8(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret

0000000080002860 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002860:	ff010113          	addi	sp,sp,-16
    80002864:	00813423          	sd	s0,8(sp)
    80002868:	01010413          	addi	s0,sp,16
    8000286c:	00009797          	auipc	a5,0x9
    80002870:	2f478793          	addi	a5,a5,756 # 8000bb60 <_ZTV6Thread+0x10>
    80002874:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002878:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    8000287c:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002880:	00053c23          	sd	zero,24(a0)
}
    80002884:	00813403          	ld	s0,8(sp)
    80002888:	01010113          	addi	sp,sp,16
    8000288c:	00008067          	ret

0000000080002890 <_ZN6Thread5startEv>:
int Thread::start() {
    80002890:	ff010113          	addi	sp,sp,-16
    80002894:	00113423          	sd	ra,8(sp)
    80002898:	00813023          	sd	s0,0(sp)
    8000289c:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    800028a0:	01053583          	ld	a1,16(a0)
    800028a4:	02058263          	beqz	a1,800028c8 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    800028a8:	01853603          	ld	a2,24(a0)
    800028ac:	00850513          	addi	a0,a0,8
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	9d4080e7          	jalr	-1580(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    800028b8:	00813083          	ld	ra,8(sp)
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    800028c8:	00050613          	mv	a2,a0
    800028cc:	00000597          	auipc	a1,0x0
    800028d0:	e8858593          	addi	a1,a1,-376 # 80002754 <_ZN6Thread13threadWrapperEPv>
    800028d4:	00850513          	addi	a0,a0,8
    800028d8:	fffff097          	auipc	ra,0xfffff
    800028dc:	9ac080e7          	jalr	-1620(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    800028e0:	fd9ff06f          	j	800028b8 <_ZN6Thread5startEv+0x28>

00000000800028e4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800028e4:	ff010113          	addi	sp,sp,-16
    800028e8:	00113423          	sd	ra,8(sp)
    800028ec:	00813023          	sd	s0,0(sp)
    800028f0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	a94080e7          	jalr	-1388(ra) # 80001388 <_Z15thread_dispatchv>
}
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN6Thread11getThreadIdEv>:
int Thread::getThreadId() {
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00113423          	sd	ra,8(sp)
    80002914:	00813023          	sd	s0,0(sp)
    80002918:	01010413          	addi	s0,sp,16
    return ::getThreadId();
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	aa8080e7          	jalr	-1368(ra) # 800013c4 <_Z11getThreadIdv>
}
    80002924:	00813083          	ld	ra,8(sp)
    80002928:	00013403          	ld	s0,0(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00113423          	sd	ra,8(sp)
    8000293c:	00813023          	sd	s0,0(sp)
    80002940:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002944:	fffff097          	auipc	ra,0xfffff
    80002948:	c4c080e7          	jalr	-948(ra) # 80001590 <_Z10time_sleepm>
}
    8000294c:	00813083          	ld	ra,8(sp)
    80002950:	00013403          	ld	s0,0(sp)
    80002954:	01010113          	addi	sp,sp,16
    80002958:	00008067          	ret

000000008000295c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    8000295c:	ff010113          	addi	sp,sp,-16
    80002960:	00113423          	sd	ra,8(sp)
    80002964:	00813023          	sd	s0,0(sp)
    80002968:	01010413          	addi	s0,sp,16
    8000296c:	00009797          	auipc	a5,0x9
    80002970:	21c78793          	addi	a5,a5,540 # 8000bb88 <_ZTV9Semaphore+0x10>
    80002974:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002978:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    8000297c:	00850513          	addi	a0,a0,8
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	a84080e7          	jalr	-1404(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    80002988:	00813083          	ld	ra,8(sp)
    8000298c:	00013403          	ld	s0,0(sp)
    80002990:	01010113          	addi	sp,sp,16
    80002994:	00008067          	ret

0000000080002998 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002998:	ff010113          	addi	sp,sp,-16
    8000299c:	00113423          	sd	ra,8(sp)
    800029a0:	00813023          	sd	s0,0(sp)
    800029a4:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800029a8:	00853503          	ld	a0,8(a0)
    800029ac:	fffff097          	auipc	ra,0xfffff
    800029b0:	adc080e7          	jalr	-1316(ra) # 80001488 <_Z8sem_waitP4_sem>
}
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00113423          	sd	ra,8(sp)
    800029cc:	00813023          	sd	s0,0(sp)
    800029d0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800029d4:	00853503          	ld	a0,8(a0)
    800029d8:	fffff097          	auipc	ra,0xfffff
    800029dc:	af0080e7          	jalr	-1296(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    800029e0:	00813083          	ld	ra,8(sp)
    800029e4:	00013403          	ld	s0,0(sp)
    800029e8:	01010113          	addi	sp,sp,16
    800029ec:	00008067          	ret

00000000800029f0 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    800029f0:	fe010113          	addi	sp,sp,-32
    800029f4:	00113c23          	sd	ra,24(sp)
    800029f8:	00813823          	sd	s0,16(sp)
    800029fc:	00913423          	sd	s1,8(sp)
    80002a00:	01213023          	sd	s2,0(sp)
    80002a04:	02010413          	addi	s0,sp,32
    80002a08:	00050493          	mv	s1,a0
    80002a0c:	00058913          	mv	s2,a1
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	e50080e7          	jalr	-432(ra) # 80002860 <_ZN6ThreadC1Ev>
    80002a18:	00009797          	auipc	a5,0x9
    80002a1c:	11878793          	addi	a5,a5,280 # 8000bb30 <_ZTV14PeriodicThread+0x10>
    80002a20:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002a24:	0324b023          	sd	s2,32(s1)
}
    80002a28:	01813083          	ld	ra,24(sp)
    80002a2c:	01013403          	ld	s0,16(sp)
    80002a30:	00813483          	ld	s1,8(sp)
    80002a34:	00013903          	ld	s2,0(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret

0000000080002a40 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002a40:	ff010113          	addi	sp,sp,-16
    80002a44:	00813423          	sd	s0,8(sp)
    80002a48:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002a4c:	00813403          	ld	s0,8(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <_ZN7Console4getcEv>:

char Console::getc() {
    80002a58:	ff010113          	addi	sp,sp,-16
    80002a5c:	00113423          	sd	ra,8(sp)
    80002a60:	00813023          	sd	s0,0(sp)
    80002a64:	01010413          	addi	s0,sp,16
    return ::getc();
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	b68080e7          	jalr	-1176(ra) # 800015d0 <_Z4getcv>
}
    80002a70:	00813083          	ld	ra,8(sp)
    80002a74:	00013403          	ld	s0,0(sp)
    80002a78:	01010113          	addi	sp,sp,16
    80002a7c:	00008067          	ret

0000000080002a80 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002a80:	ff010113          	addi	sp,sp,-16
    80002a84:	00113423          	sd	ra,8(sp)
    80002a88:	00813023          	sd	s0,0(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002a90:	fffff097          	auipc	ra,0xfffff
    80002a94:	b80080e7          	jalr	-1152(ra) # 80001610 <_Z4putcc>
    80002a98:	00813083          	ld	ra,8(sp)
    80002a9c:	00013403          	ld	s0,0(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <_ZN6Thread3runEv>:
    static int sleep(time_t);
    static int getThreadId();
protected:
    Thread();

    virtual void run() {}
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00813423          	sd	s0,8(sp)
    80002ab0:	01010413          	addi	s0,sp,16
    80002ab4:	00813403          	ld	s0,8(sp)
    80002ab8:	01010113          	addi	sp,sp,16
    80002abc:	00008067          	ret

0000000080002ac0 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813423          	sd	s0,8(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    80002acc:	00813403          	ld	s0,8(sp)
    80002ad0:	01010113          	addi	sp,sp,16
    80002ad4:	00008067          	ret

0000000080002ad8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002ad8:	ff010113          	addi	sp,sp,-16
    80002adc:	00813423          	sd	s0,8(sp)
    80002ae0:	01010413          	addi	s0,sp,16
    80002ae4:	00009797          	auipc	a5,0x9
    80002ae8:	04c78793          	addi	a5,a5,76 # 8000bb30 <_ZTV14PeriodicThread+0x10>
    80002aec:	00f53023          	sd	a5,0(a0)
    80002af0:	00813403          	ld	s0,8(sp)
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00008067          	ret

0000000080002afc <_ZN14PeriodicThreadD0Ev>:
    80002afc:	ff010113          	addi	sp,sp,-16
    80002b00:	00113423          	sd	ra,8(sp)
    80002b04:	00813023          	sd	s0,0(sp)
    80002b08:	01010413          	addi	s0,sp,16
    80002b0c:	00009797          	auipc	a5,0x9
    80002b10:	02478793          	addi	a5,a5,36 # 8000bb30 <_ZTV14PeriodicThread+0x10>
    80002b14:	00f53023          	sd	a5,0(a0)
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	ac0080e7          	jalr	-1344(ra) # 800025d8 <_ZdlPv>
    80002b20:	00813083          	ld	ra,8(sp)
    80002b24:	00013403          	ld	s0,0(sp)
    80002b28:	01010113          	addi	sp,sp,16
    80002b2c:	00008067          	ret

0000000080002b30 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002b30:	ff010113          	addi	sp,sp,-16
    80002b34:	00813423          	sd	s0,8(sp)
    80002b38:	01010413          	addi	s0,sp,16
    80002b3c:	00053023          	sd	zero,0(a0)
    80002b40:	00050423          	sb	zero,8(a0)
    80002b44:	00813403          	ld	s0,8(sp)
    80002b48:	01010113          	addi	sp,sp,16
    80002b4c:	00008067          	ret

0000000080002b50 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002b50:	00100793          	li	a5,1
    80002b54:	00f50463          	beq	a0,a5,80002b5c <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002b58:	00008067          	ret
    80002b5c:	000107b7          	lui	a5,0x10
    80002b60:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b64:	fef59ae3          	bne	a1,a5,80002b58 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002b68:	ff010113          	addi	sp,sp,-16
    80002b6c:	00113423          	sd	ra,8(sp)
    80002b70:	00813023          	sd	s0,0(sp)
    80002b74:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002b78:	00009517          	auipc	a0,0x9
    80002b7c:	2f050513          	addi	a0,a0,752 # 8000be68 <_ZN15MemoryAllocator8instanceE>
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	fb0080e7          	jalr	-80(ra) # 80002b30 <_ZN15MemoryAllocatorC1Ev>
    80002b88:	00813083          	ld	ra,8(sp)
    80002b8c:	00013403          	ld	s0,0(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret

0000000080002b98 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002b98:	ff010113          	addi	sp,sp,-16
    80002b9c:	00813423          	sd	s0,8(sp)
    80002ba0:	01010413          	addi	s0,sp,16
}
    80002ba4:	00009517          	auipc	a0,0x9
    80002ba8:	2c450513          	addi	a0,a0,708 # 8000be68 <_ZN15MemoryAllocator8instanceE>
    80002bac:	00813403          	ld	s0,8(sp)
    80002bb0:	01010113          	addi	sp,sp,16
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00813423          	sd	s0,8(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002bc4:	00854783          	lbu	a5,8(a0)
    80002bc8:	04079263          	bnez	a5,80002c0c <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002bcc:	00009797          	auipc	a5,0x9
    80002bd0:	2047b783          	ld	a5,516(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002bd4:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002bd8:	00009797          	auipc	a5,0x9
    80002bdc:	2187b783          	ld	a5,536(a5) # 8000bdf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002be0:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002be4:	40e787b3          	sub	a5,a5,a4
    80002be8:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002bec:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002bf0:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002bf4:	00053783          	ld	a5,0(a0)
    80002bf8:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002bfc:	00053783          	ld	a5,0(a0)
    80002c00:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002c04:	00100793          	li	a5,1
    80002c08:	00f50423          	sb	a5,8(a0)
}
    80002c0c:	00813403          	ld	s0,8(sp)
    80002c10:	01010113          	addi	sp,sp,16
    80002c14:	00008067          	ret

0000000080002c18 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002c18:	fe010113          	addi	sp,sp,-32
    80002c1c:	00113c23          	sd	ra,24(sp)
    80002c20:	00813823          	sd	s0,16(sp)
    80002c24:	00913423          	sd	s1,8(sp)
    80002c28:	01213023          	sd	s2,0(sp)
    80002c2c:	02010413          	addi	s0,sp,32
    80002c30:	00050913          	mv	s2,a0
    80002c34:	00058493          	mv	s1,a1
    init();
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	f80080e7          	jalr	-128(ra) # 80002bb8 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002c40:	0c048863          	beqz	s1,80002d10 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002c44:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002c48:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002c4c:	00050a63          	beqz	a0,80002c60 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002c50:	00053783          	ld	a5,0(a0)
    80002c54:	00b7f663          	bgeu	a5,a1,80002c60 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002c58:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002c5c:	ff1ff06f          	j	80002c4c <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002c60:	04050063          	beqz	a0,80002ca0 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002c64:	00053783          	ld	a5,0(a0)
    80002c68:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002c6c:	00100713          	li	a4,1
    80002c70:	04f76463          	bltu	a4,a5,80002cb8 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002c74:	01053783          	ld	a5,16(a0)
    80002c78:	08078663          	beqz	a5,80002d04 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002c7c:	00853703          	ld	a4,8(a0)
    80002c80:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002c84:	00853783          	ld	a5,8(a0)
    80002c88:	00078663          	beqz	a5,80002c94 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002c8c:	01053703          	ld	a4,16(a0)
    80002c90:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002c94:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002c98:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002c9c:	04050513          	addi	a0,a0,64
}
    80002ca0:	01813083          	ld	ra,24(sp)
    80002ca4:	01013403          	ld	s0,16(sp)
    80002ca8:	00813483          	ld	s1,8(sp)
    80002cac:	00013903          	ld	s2,0(sp)
    80002cb0:	02010113          	addi	sp,sp,32
    80002cb4:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002cb8:	00659713          	slli	a4,a1,0x6
    80002cbc:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002cc0:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002cc4:	00853783          	ld	a5,8(a0)
    80002cc8:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002ccc:	01053783          	ld	a5,16(a0)
    80002cd0:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002cd4:	02078463          	beqz	a5,80002cfc <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002cd8:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002cdc:	00853783          	ld	a5,8(a0)
    80002ce0:	00078463          	beqz	a5,80002ce8 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002ce4:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002ce8:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002cec:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002cf0:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002cf4:	04050513          	addi	a0,a0,64
    80002cf8:	fa9ff06f          	j	80002ca0 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002cfc:	00e93023          	sd	a4,0(s2)
    80002d00:	fddff06f          	j	80002cdc <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002d04:	00853783          	ld	a5,8(a0)
    80002d08:	00f93023          	sd	a5,0(s2)
    80002d0c:	f79ff06f          	j	80002c84 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002d10:	00000513          	li	a0,0
    80002d14:	f8dff06f          	j	80002ca0 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002d18 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002d18:	ff010113          	addi	sp,sp,-16
    80002d1c:	00813423          	sd	s0,8(sp)
    80002d20:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002d24:	00058e63          	beqz	a1,80002d40 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002d28:	0085b783          	ld	a5,8(a1)
    80002d2c:	00078a63          	beqz	a5,80002d40 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002d30:	0005b683          	ld	a3,0(a1)
    80002d34:	00669713          	slli	a4,a3,0x6
    80002d38:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002d3c:	00e78863          	beq	a5,a4,80002d4c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002d40:	00813403          	ld	s0,8(sp)
    80002d44:	01010113          	addi	sp,sp,16
    80002d48:	00008067          	ret
        block->size += nextBlock->size;
    80002d4c:	0007b703          	ld	a4,0(a5)
    80002d50:	00e686b3          	add	a3,a3,a4
    80002d54:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002d58:	0087b703          	ld	a4,8(a5)
    80002d5c:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002d60:	00070463          	beqz	a4,80002d68 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002d64:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002d68:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002d6c:	0007b823          	sd	zero,16(a5)
    80002d70:	fd1ff06f          	j	80002d40 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002d74 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002d74:	fd010113          	addi	sp,sp,-48
    80002d78:	02113423          	sd	ra,40(sp)
    80002d7c:	02813023          	sd	s0,32(sp)
    80002d80:	00913c23          	sd	s1,24(sp)
    80002d84:	01213823          	sd	s2,16(sp)
    80002d88:	01313423          	sd	s3,8(sp)
    80002d8c:	03010413          	addi	s0,sp,48
    80002d90:	00050993          	mv	s3,a0
    80002d94:	00058913          	mv	s2,a1
    init();
    80002d98:	00000097          	auipc	ra,0x0
    80002d9c:	e20080e7          	jalr	-480(ra) # 80002bb8 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002da0:	0e090863          	beqz	s2,80002e90 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002da4:	00009797          	auipc	a5,0x9
    80002da8:	02c7b783          	ld	a5,44(a5) # 8000bdd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002dac:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002db0:	00009797          	auipc	a5,0x9
    80002db4:	0407b783          	ld	a5,64(a5) # 8000bdf0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002db8:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002dbc:	04068793          	addi	a5,a3,64
    80002dc0:	0cf96c63          	bltu	s2,a5,80002e98 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002dc4:	0cc97e63          	bgeu	s2,a2,80002ea0 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002dc8:	40d907b3          	sub	a5,s2,a3
    80002dcc:	03f7f793          	andi	a5,a5,63
    80002dd0:	0c079c63          	bnez	a5,80002ea8 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002dd4:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002dd8:	fc093783          	ld	a5,-64(s2)
    80002ddc:	00100713          	li	a4,1
    80002de0:	0cf77863          	bgeu	a4,a5,80002eb0 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002de4:	00058713          	mv	a4,a1
    80002de8:	0cd5e863          	bltu	a1,a3,80002eb8 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002dec:	00679793          	slli	a5,a5,0x6
    80002df0:	00f586b3          	add	a3,a1,a5
    80002df4:	0cd66663          	bltu	a2,a3,80002ec0 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002df8:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002dfc:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002e00:	00078a63          	beqz	a5,80002e14 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002e04:	00e7f863          	bgeu	a5,a4,80002e14 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002e08:	00078493          	mv	s1,a5
        current = current->next;
    80002e0c:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002e10:	ff1ff06f          	j	80002e00 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002e14:	00048a63          	beqz	s1,80002e28 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002e18:	0004b603          	ld	a2,0(s1)
    80002e1c:	00661613          	slli	a2,a2,0x6
    80002e20:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002e24:	0ac76263          	bltu	a4,a2,80002ec8 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002e28:	00078463          	beqz	a5,80002e30 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002e2c:	0ad7e263          	bltu	a5,a3,80002ed0 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002e30:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002e34:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002e38:	04048863          	beqz	s1,80002e88 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002e3c:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002e40:	00078463          	beqz	a5,80002e48 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002e44:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002e48:	00098513          	mv	a0,s3
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	ecc080e7          	jalr	-308(ra) # 80002d18 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002e54:	08048263          	beqz	s1,80002ed8 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002e58:	00048593          	mv	a1,s1
    80002e5c:	00098513          	mv	a0,s3
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	eb8080e7          	jalr	-328(ra) # 80002d18 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002e68:	00000513          	li	a0,0
}
    80002e6c:	02813083          	ld	ra,40(sp)
    80002e70:	02013403          	ld	s0,32(sp)
    80002e74:	01813483          	ld	s1,24(sp)
    80002e78:	01013903          	ld	s2,16(sp)
    80002e7c:	00813983          	ld	s3,8(sp)
    80002e80:	03010113          	addi	sp,sp,48
    80002e84:	00008067          	ret
        freeHead = block;
    80002e88:	00b9b023          	sd	a1,0(s3)
    80002e8c:	fb5ff06f          	j	80002e40 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002e90:	fff00513          	li	a0,-1
    80002e94:	fd9ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002e98:	fff00513          	li	a0,-1
    80002e9c:	fd1ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002ea0:	fff00513          	li	a0,-1
    80002ea4:	fc9ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ea8:	fff00513          	li	a0,-1
    80002eac:	fc1ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002eb0:	fff00513          	li	a0,-1
    80002eb4:	fb9ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002eb8:	fff00513          	li	a0,-1
    80002ebc:	fb1ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ec0:	fff00513          	li	a0,-1
    80002ec4:	fa9ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ec8:	fff00513          	li	a0,-1
    80002ecc:	fa1ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002ed0:	fff00513          	li	a0,-1
    80002ed4:	f99ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80002ed8:	00000513          	li	a0,0
    80002edc:	f91ff06f          	j	80002e6c <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080002ee0 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80002ee0:	ff010113          	addi	sp,sp,-16
    80002ee4:	00113423          	sd	ra,8(sp)
    80002ee8:	00813023          	sd	s0,0(sp)
    80002eec:	01010413          	addi	s0,sp,16
    80002ef0:	000105b7          	lui	a1,0x10
    80002ef4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002ef8:	00100513          	li	a0,1
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	c54080e7          	jalr	-940(ra) # 80002b50 <_Z41__static_initialization_and_destruction_0ii>
    80002f04:	00813083          	ld	ra,8(sp)
    80002f08:	00013403          	ld	s0,0(sp)
    80002f0c:	01010113          	addi	sp,sp,16
    80002f10:	00008067          	ret

0000000080002f14 <_ZL8busyWaitv>:

struct Arg {
    char name;
};
static void busyWait() {
    for (int i = 0; i < 20; i++) {
    80002f14:	00000693          	li	a3,0
    80002f18:	01300793          	li	a5,19
    80002f1c:	04d7ca63          	blt	a5,a3,80002f70 <_ZL8busyWaitv+0x5c>
static void busyWait() {
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00813c23          	sd	s0,24(sp)
    80002f28:	02010413          	addi	s0,sp,32
    80002f2c:	0100006f          	j	80002f3c <_ZL8busyWaitv+0x28>
    for (int i = 0; i < 20; i++) {
    80002f30:	0016869b          	addiw	a3,a3,1
    80002f34:	01300793          	li	a5,19
    80002f38:	02d7c663          	blt	a5,a3,80002f64 <_ZL8busyWaitv+0x50>
        for (volatile int j = 0; j < 100000; j++) {
    80002f3c:	fe042623          	sw	zero,-20(s0)
    80002f40:	fec42703          	lw	a4,-20(s0)
    80002f44:	0007071b          	sext.w	a4,a4
    80002f48:	000187b7          	lui	a5,0x18
    80002f4c:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80002f50:	fee7c0e3          	blt	a5,a4,80002f30 <_ZL8busyWaitv+0x1c>
    80002f54:	fec42783          	lw	a5,-20(s0)
    80002f58:	0017879b          	addiw	a5,a5,1
    80002f5c:	fef42623          	sw	a5,-20(s0)
    80002f60:	fe1ff06f          	j	80002f40 <_ZL8busyWaitv+0x2c>
            // busy wait
        }
    }
}
    80002f64:	01813403          	ld	s0,24(sp)
    80002f68:	02010113          	addi	sp,sp,32
    80002f6c:	00008067          	ret
    80002f70:	00008067          	ret

0000000080002f74 <_ZL4workPv>:
static void work(void* arg) {
    80002f74:	fd010113          	addi	sp,sp,-48
    80002f78:	02113423          	sd	ra,40(sp)
    80002f7c:	02813023          	sd	s0,32(sp)
    80002f80:	00913c23          	sd	s1,24(sp)
    80002f84:	01213823          	sd	s2,16(sp)
    80002f88:	01313423          	sd	s3,8(sp)
    80002f8c:	01413023          	sd	s4,0(sp)
    80002f90:	03010413          	addi	s0,sp,48
    80002f94:	00050a13          	mv	s4,a0
    Arg* data = (Arg*) arg;
    for (int i = 0; i < 10; i++) {
    80002f98:	00000913          	li	s2,0
    80002f9c:	00900793          	li	a5,9
    80002fa0:	0927c063          	blt	a5,s2,80003020 <_ZL4workPv+0xac>
        busyWait();
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	f70080e7          	jalr	-144(ra) # 80002f14 <_ZL8busyWaitv>
        sem_wait(printMutex);
    80002fac:	00009997          	auipc	s3,0x9
    80002fb0:	ecc98993          	addi	s3,s3,-308 # 8000be78 <_ZL10printMutex>
    80002fb4:	0009b503          	ld	a0,0(s3)
    80002fb8:	ffffe097          	auipc	ra,0xffffe
    80002fbc:	4d0080e7          	jalr	1232(ra) # 80001488 <_Z8sem_waitP4_sem>
        int id = getThreadId();
    80002fc0:	ffffe097          	auipc	ra,0xffffe
    80002fc4:	404080e7          	jalr	1028(ra) # 800013c4 <_Z11getThreadIdv>
    80002fc8:	00050493          	mv	s1,a0
        putc(data->name);
    80002fcc:	000a4503          	lbu	a0,0(s4)
    80002fd0:	ffffe097          	auipc	ra,0xffffe
    80002fd4:	640080e7          	jalr	1600(ra) # 80001610 <_Z4putcc>
        printString("\n");
    80002fd8:	00006517          	auipc	a0,0x6
    80002fdc:	2e050513          	addi	a0,a0,736 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80002fe0:	00002097          	auipc	ra,0x2
    80002fe4:	594080e7          	jalr	1428(ra) # 80005574 <_Z11printStringPKc>
        printInt(id);
    80002fe8:	00000613          	li	a2,0
    80002fec:	00a00593          	li	a1,10
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	00002097          	auipc	ra,0x2
    80002ff8:	730080e7          	jalr	1840(ra) # 80005724 <_Z8printIntiii>
        printString("\n");
    80002ffc:	00006517          	auipc	a0,0x6
    80003000:	2bc50513          	addi	a0,a0,700 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003004:	00002097          	auipc	ra,0x2
    80003008:	570080e7          	jalr	1392(ra) # 80005574 <_Z11printStringPKc>
        sem_signal(printMutex);
    8000300c:	0009b503          	ld	a0,0(s3)
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	4b8080e7          	jalr	1208(ra) # 800014c8 <_Z10sem_signalP4_sem>
    for (int i = 0; i < 10; i++) {
    80003018:	0019091b          	addiw	s2,s2,1
    8000301c:	f81ff06f          	j	80002f9c <_ZL4workPv+0x28>
    }
}
    80003020:	02813083          	ld	ra,40(sp)
    80003024:	02013403          	ld	s0,32(sp)
    80003028:	01813483          	ld	s1,24(sp)
    8000302c:	01013903          	ld	s2,16(sp)
    80003030:	00813983          	ld	s3,8(sp)
    80003034:	00013a03          	ld	s4,0(sp)
    80003038:	03010113          	addi	sp,sp,48
    8000303c:	00008067          	ret

0000000080003040 <_Z3modv>:

void mod() {
    80003040:	fb010113          	addi	sp,sp,-80
    80003044:	04113423          	sd	ra,72(sp)
    80003048:	04813023          	sd	s0,64(sp)
    8000304c:	02913c23          	sd	s1,56(sp)
    80003050:	05010413          	addi	s0,sp,80
    sem_open(&printMutex,1);
    80003054:	00100593          	li	a1,1
    80003058:	00009517          	auipc	a0,0x9
    8000305c:	e2050513          	addi	a0,a0,-480 # 8000be78 <_ZL10printMutex>
    80003060:	ffffe097          	auipc	ra,0xffffe
    80003064:	3a4080e7          	jalr	932(ra) # 80001404 <_Z8sem_openPP4_semj>
    thread_t threadB;
    thread_t threadC;
    Arg argA;
    Arg argB;
    Arg argC;
    argA.name = 'A';
    80003068:	04100793          	li	a5,65
    8000306c:	fcf40023          	sb	a5,-64(s0)
    argB.name = 'B';
    80003070:	04200793          	li	a5,66
    80003074:	faf40c23          	sb	a5,-72(s0)
    argC.name = 'C';
    80003078:	04300793          	li	a5,67
    8000307c:	faf40823          	sb	a5,-80(s0)
    thread_create(&threadA, work, &argA);
    80003080:	fc040613          	addi	a2,s0,-64
    80003084:	00000597          	auipc	a1,0x0
    80003088:	ef058593          	addi	a1,a1,-272 # 80002f74 <_ZL4workPv>
    8000308c:	fd840513          	addi	a0,s0,-40
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	1f4080e7          	jalr	500(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threadB, work, &argB);
    80003098:	fb840613          	addi	a2,s0,-72
    8000309c:	00000597          	auipc	a1,0x0
    800030a0:	ed858593          	addi	a1,a1,-296 # 80002f74 <_ZL4workPv>
    800030a4:	fd040513          	addi	a0,s0,-48
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	1dc080e7          	jalr	476(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    thread_create(&threadC, work, &argC);
    800030b0:	fb040613          	addi	a2,s0,-80
    800030b4:	00000597          	auipc	a1,0x0
    800030b8:	ec058593          	addi	a1,a1,-320 # 80002f74 <_ZL4workPv>
    800030bc:	fc840513          	addi	a0,s0,-56
    800030c0:	ffffe097          	auipc	ra,0xffffe
    800030c4:	1c4080e7          	jalr	452(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < 3000; i++) {
    800030c8:	00000493          	li	s1,0
    800030cc:	000017b7          	lui	a5,0x1
    800030d0:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    800030d4:	0097ca63          	blt	a5,s1,800030e8 <_Z3modv+0xa8>
        thread_dispatch();
    800030d8:	ffffe097          	auipc	ra,0xffffe
    800030dc:	2b0080e7          	jalr	688(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i < 3000; i++) {
    800030e0:	0014849b          	addiw	s1,s1,1
    800030e4:	fe9ff06f          	j	800030cc <_Z3modv+0x8c>
    }
    800030e8:	04813083          	ld	ra,72(sp)
    800030ec:	04013403          	ld	s0,64(sp)
    800030f0:	03813483          	ld	s1,56(sp)
    800030f4:	05010113          	addi	sp,sp,80
    800030f8:	00008067          	ret

00000000800030fc <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00113c23          	sd	ra,24(sp)
    80003104:	00813823          	sd	s0,16(sp)
    80003108:	00913423          	sd	s1,8(sp)
    8000310c:	01213023          	sd	s2,0(sp)
    80003110:	02010413          	addi	s0,sp,32
    80003114:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003118:	00000913          	li	s2,0
    8000311c:	00c0006f          	j	80003128 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	268080e7          	jalr	616(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003128:	ffffe097          	auipc	ra,0xffffe
    8000312c:	4a8080e7          	jalr	1192(ra) # 800015d0 <_Z4getcv>
    80003130:	0005059b          	sext.w	a1,a0
    80003134:	01b00793          	li	a5,27
    80003138:	02f58a63          	beq	a1,a5,8000316c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000313c:	0084b503          	ld	a0,8(s1)
    80003140:	00004097          	auipc	ra,0x4
    80003144:	90c080e7          	jalr	-1780(ra) # 80006a4c <_ZN6Buffer3putEi>
        i++;
    80003148:	0019071b          	addiw	a4,s2,1
    8000314c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003150:	0004a683          	lw	a3,0(s1)
    80003154:	0026979b          	slliw	a5,a3,0x2
    80003158:	00d787bb          	addw	a5,a5,a3
    8000315c:	0017979b          	slliw	a5,a5,0x1
    80003160:	02f767bb          	remw	a5,a4,a5
    80003164:	fc0792e3          	bnez	a5,80003128 <_ZL16producerKeyboardPv+0x2c>
    80003168:	fb9ff06f          	j	80003120 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000316c:	00100793          	li	a5,1
    80003170:	00009717          	auipc	a4,0x9
    80003174:	d0f72823          	sw	a5,-752(a4) # 8000be80 <_ZL9threadEnd>
    data->buffer->put('!');
    80003178:	02100593          	li	a1,33
    8000317c:	0084b503          	ld	a0,8(s1)
    80003180:	00004097          	auipc	ra,0x4
    80003184:	8cc080e7          	jalr	-1844(ra) # 80006a4c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003188:	0104b503          	ld	a0,16(s1)
    8000318c:	ffffe097          	auipc	ra,0xffffe
    80003190:	33c080e7          	jalr	828(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    80003194:	01813083          	ld	ra,24(sp)
    80003198:	01013403          	ld	s0,16(sp)
    8000319c:	00813483          	ld	s1,8(sp)
    800031a0:	00013903          	ld	s2,0(sp)
    800031a4:	02010113          	addi	sp,sp,32
    800031a8:	00008067          	ret

00000000800031ac <_ZL8producerPv>:

static void producer(void *arg) {
    800031ac:	fe010113          	addi	sp,sp,-32
    800031b0:	00113c23          	sd	ra,24(sp)
    800031b4:	00813823          	sd	s0,16(sp)
    800031b8:	00913423          	sd	s1,8(sp)
    800031bc:	01213023          	sd	s2,0(sp)
    800031c0:	02010413          	addi	s0,sp,32
    800031c4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800031c8:	00000913          	li	s2,0
    800031cc:	00c0006f          	j	800031d8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800031d0:	ffffe097          	auipc	ra,0xffffe
    800031d4:	1b8080e7          	jalr	440(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800031d8:	00009797          	auipc	a5,0x9
    800031dc:	ca87a783          	lw	a5,-856(a5) # 8000be80 <_ZL9threadEnd>
    800031e0:	02079e63          	bnez	a5,8000321c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800031e4:	0004a583          	lw	a1,0(s1)
    800031e8:	0305859b          	addiw	a1,a1,48
    800031ec:	0084b503          	ld	a0,8(s1)
    800031f0:	00004097          	auipc	ra,0x4
    800031f4:	85c080e7          	jalr	-1956(ra) # 80006a4c <_ZN6Buffer3putEi>
        i++;
    800031f8:	0019071b          	addiw	a4,s2,1
    800031fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003200:	0004a683          	lw	a3,0(s1)
    80003204:	0026979b          	slliw	a5,a3,0x2
    80003208:	00d787bb          	addw	a5,a5,a3
    8000320c:	0017979b          	slliw	a5,a5,0x1
    80003210:	02f767bb          	remw	a5,a4,a5
    80003214:	fc0792e3          	bnez	a5,800031d8 <_ZL8producerPv+0x2c>
    80003218:	fb9ff06f          	j	800031d0 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000321c:	0104b503          	ld	a0,16(s1)
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	2a8080e7          	jalr	680(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    80003228:	01813083          	ld	ra,24(sp)
    8000322c:	01013403          	ld	s0,16(sp)
    80003230:	00813483          	ld	s1,8(sp)
    80003234:	00013903          	ld	s2,0(sp)
    80003238:	02010113          	addi	sp,sp,32
    8000323c:	00008067          	ret

0000000080003240 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003240:	fd010113          	addi	sp,sp,-48
    80003244:	02113423          	sd	ra,40(sp)
    80003248:	02813023          	sd	s0,32(sp)
    8000324c:	00913c23          	sd	s1,24(sp)
    80003250:	01213823          	sd	s2,16(sp)
    80003254:	01313423          	sd	s3,8(sp)
    80003258:	03010413          	addi	s0,sp,48
    8000325c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003260:	00000993          	li	s3,0
    80003264:	01c0006f          	j	80003280 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003268:	ffffe097          	auipc	ra,0xffffe
    8000326c:	120080e7          	jalr	288(ra) # 80001388 <_Z15thread_dispatchv>
    80003270:	0500006f          	j	800032c0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003274:	00a00513          	li	a0,10
    80003278:	ffffe097          	auipc	ra,0xffffe
    8000327c:	398080e7          	jalr	920(ra) # 80001610 <_Z4putcc>
    while (!threadEnd) {
    80003280:	00009797          	auipc	a5,0x9
    80003284:	c007a783          	lw	a5,-1024(a5) # 8000be80 <_ZL9threadEnd>
    80003288:	06079063          	bnez	a5,800032e8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000328c:	00893503          	ld	a0,8(s2)
    80003290:	00004097          	auipc	ra,0x4
    80003294:	84c080e7          	jalr	-1972(ra) # 80006adc <_ZN6Buffer3getEv>
        i++;
    80003298:	0019849b          	addiw	s1,s3,1
    8000329c:	0004899b          	sext.w	s3,s1
        putc(key);
    800032a0:	0ff57513          	andi	a0,a0,255
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	36c080e7          	jalr	876(ra) # 80001610 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800032ac:	00092703          	lw	a4,0(s2)
    800032b0:	0027179b          	slliw	a5,a4,0x2
    800032b4:	00e787bb          	addw	a5,a5,a4
    800032b8:	02f4e7bb          	remw	a5,s1,a5
    800032bc:	fa0786e3          	beqz	a5,80003268 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800032c0:	05000793          	li	a5,80
    800032c4:	02f4e4bb          	remw	s1,s1,a5
    800032c8:	fa049ce3          	bnez	s1,80003280 <_ZL8consumerPv+0x40>
    800032cc:	fa9ff06f          	j	80003274 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800032d0:	00893503          	ld	a0,8(s2)
    800032d4:	00004097          	auipc	ra,0x4
    800032d8:	808080e7          	jalr	-2040(ra) # 80006adc <_ZN6Buffer3getEv>
        putc(key);
    800032dc:	0ff57513          	andi	a0,a0,255
    800032e0:	ffffe097          	auipc	ra,0xffffe
    800032e4:	330080e7          	jalr	816(ra) # 80001610 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800032e8:	00893503          	ld	a0,8(s2)
    800032ec:	00004097          	auipc	ra,0x4
    800032f0:	87c080e7          	jalr	-1924(ra) # 80006b68 <_ZN6Buffer6getCntEv>
    800032f4:	fca04ee3          	bgtz	a0,800032d0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800032f8:	01093503          	ld	a0,16(s2)
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	1cc080e7          	jalr	460(ra) # 800014c8 <_Z10sem_signalP4_sem>
}
    80003304:	02813083          	ld	ra,40(sp)
    80003308:	02013403          	ld	s0,32(sp)
    8000330c:	01813483          	ld	s1,24(sp)
    80003310:	01013903          	ld	s2,16(sp)
    80003314:	00813983          	ld	s3,8(sp)
    80003318:	03010113          	addi	sp,sp,48
    8000331c:	00008067          	ret

0000000080003320 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003320:	f9010113          	addi	sp,sp,-112
    80003324:	06113423          	sd	ra,104(sp)
    80003328:	06813023          	sd	s0,96(sp)
    8000332c:	04913c23          	sd	s1,88(sp)
    80003330:	05213823          	sd	s2,80(sp)
    80003334:	05313423          	sd	s3,72(sp)
    80003338:	05413023          	sd	s4,64(sp)
    8000333c:	03513c23          	sd	s5,56(sp)
    80003340:	03613823          	sd	s6,48(sp)
    80003344:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003348:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000334c:	00006517          	auipc	a0,0x6
    80003350:	04c50513          	addi	a0,a0,76 # 80009398 <CONSOLE_STATUS+0x388>
    80003354:	00002097          	auipc	ra,0x2
    80003358:	220080e7          	jalr	544(ra) # 80005574 <_Z11printStringPKc>
    getString(input, 30);
    8000335c:	01e00593          	li	a1,30
    80003360:	fa040493          	addi	s1,s0,-96
    80003364:	00048513          	mv	a0,s1
    80003368:	00002097          	auipc	ra,0x2
    8000336c:	294080e7          	jalr	660(ra) # 800055fc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003370:	00048513          	mv	a0,s1
    80003374:	00002097          	auipc	ra,0x2
    80003378:	360080e7          	jalr	864(ra) # 800056d4 <_Z11stringToIntPKc>
    8000337c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003380:	00006517          	auipc	a0,0x6
    80003384:	03850513          	addi	a0,a0,56 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003388:	00002097          	auipc	ra,0x2
    8000338c:	1ec080e7          	jalr	492(ra) # 80005574 <_Z11printStringPKc>
    getString(input, 30);
    80003390:	01e00593          	li	a1,30
    80003394:	00048513          	mv	a0,s1
    80003398:	00002097          	auipc	ra,0x2
    8000339c:	264080e7          	jalr	612(ra) # 800055fc <_Z9getStringPci>
    n = stringToInt(input);
    800033a0:	00048513          	mv	a0,s1
    800033a4:	00002097          	auipc	ra,0x2
    800033a8:	330080e7          	jalr	816(ra) # 800056d4 <_Z11stringToIntPKc>
    800033ac:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800033b0:	00006517          	auipc	a0,0x6
    800033b4:	02850513          	addi	a0,a0,40 # 800093d8 <CONSOLE_STATUS+0x3c8>
    800033b8:	00002097          	auipc	ra,0x2
    800033bc:	1bc080e7          	jalr	444(ra) # 80005574 <_Z11printStringPKc>
    800033c0:	00000613          	li	a2,0
    800033c4:	00a00593          	li	a1,10
    800033c8:	00090513          	mv	a0,s2
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	358080e7          	jalr	856(ra) # 80005724 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800033d4:	00006517          	auipc	a0,0x6
    800033d8:	01c50513          	addi	a0,a0,28 # 800093f0 <CONSOLE_STATUS+0x3e0>
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	198080e7          	jalr	408(ra) # 80005574 <_Z11printStringPKc>
    800033e4:	00000613          	li	a2,0
    800033e8:	00a00593          	li	a1,10
    800033ec:	00048513          	mv	a0,s1
    800033f0:	00002097          	auipc	ra,0x2
    800033f4:	334080e7          	jalr	820(ra) # 80005724 <_Z8printIntiii>
    printString(".\n");
    800033f8:	00006517          	auipc	a0,0x6
    800033fc:	01050513          	addi	a0,a0,16 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003400:	00002097          	auipc	ra,0x2
    80003404:	174080e7          	jalr	372(ra) # 80005574 <_Z11printStringPKc>
    if(threadNum > n) {
    80003408:	0324c463          	blt	s1,s2,80003430 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000340c:	03205c63          	blez	s2,80003444 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003410:	03800513          	li	a0,56
    80003414:	fffff097          	auipc	ra,0xfffff
    80003418:	174080e7          	jalr	372(ra) # 80002588 <_Znwm>
    8000341c:	00050a13          	mv	s4,a0
    80003420:	00048593          	mv	a1,s1
    80003424:	00003097          	auipc	ra,0x3
    80003428:	58c080e7          	jalr	1420(ra) # 800069b0 <_ZN6BufferC1Ei>
    8000342c:	0300006f          	j	8000345c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003430:	00006517          	auipc	a0,0x6
    80003434:	fe050513          	addi	a0,a0,-32 # 80009410 <CONSOLE_STATUS+0x400>
    80003438:	00002097          	auipc	ra,0x2
    8000343c:	13c080e7          	jalr	316(ra) # 80005574 <_Z11printStringPKc>
        return;
    80003440:	0140006f          	j	80003454 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003444:	00006517          	auipc	a0,0x6
    80003448:	00c50513          	addi	a0,a0,12 # 80009450 <CONSOLE_STATUS+0x440>
    8000344c:	00002097          	auipc	ra,0x2
    80003450:	128080e7          	jalr	296(ra) # 80005574 <_Z11printStringPKc>
        return;
    80003454:	000b0113          	mv	sp,s6
    80003458:	1500006f          	j	800035a8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000345c:	00000593          	li	a1,0
    80003460:	00009517          	auipc	a0,0x9
    80003464:	a2850513          	addi	a0,a0,-1496 # 8000be88 <_ZL10waitForAll>
    80003468:	ffffe097          	auipc	ra,0xffffe
    8000346c:	f9c080e7          	jalr	-100(ra) # 80001404 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003470:	00391793          	slli	a5,s2,0x3
    80003474:	00f78793          	addi	a5,a5,15
    80003478:	ff07f793          	andi	a5,a5,-16
    8000347c:	40f10133          	sub	sp,sp,a5
    80003480:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003484:	0019071b          	addiw	a4,s2,1
    80003488:	00171793          	slli	a5,a4,0x1
    8000348c:	00e787b3          	add	a5,a5,a4
    80003490:	00379793          	slli	a5,a5,0x3
    80003494:	00f78793          	addi	a5,a5,15
    80003498:	ff07f793          	andi	a5,a5,-16
    8000349c:	40f10133          	sub	sp,sp,a5
    800034a0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800034a4:	00191613          	slli	a2,s2,0x1
    800034a8:	012607b3          	add	a5,a2,s2
    800034ac:	00379793          	slli	a5,a5,0x3
    800034b0:	00f987b3          	add	a5,s3,a5
    800034b4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800034b8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800034bc:	00009717          	auipc	a4,0x9
    800034c0:	9cc73703          	ld	a4,-1588(a4) # 8000be88 <_ZL10waitForAll>
    800034c4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800034c8:	00078613          	mv	a2,a5
    800034cc:	00000597          	auipc	a1,0x0
    800034d0:	d7458593          	addi	a1,a1,-652 # 80003240 <_ZL8consumerPv>
    800034d4:	f9840513          	addi	a0,s0,-104
    800034d8:	ffffe097          	auipc	ra,0xffffe
    800034dc:	dac080e7          	jalr	-596(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800034e0:	00000493          	li	s1,0
    800034e4:	0280006f          	j	8000350c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800034e8:	00000597          	auipc	a1,0x0
    800034ec:	c1458593          	addi	a1,a1,-1004 # 800030fc <_ZL16producerKeyboardPv>
                      data + i);
    800034f0:	00179613          	slli	a2,a5,0x1
    800034f4:	00f60633          	add	a2,a2,a5
    800034f8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800034fc:	00c98633          	add	a2,s3,a2
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	d84080e7          	jalr	-636(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003508:	0014849b          	addiw	s1,s1,1
    8000350c:	0524d263          	bge	s1,s2,80003550 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003510:	00149793          	slli	a5,s1,0x1
    80003514:	009787b3          	add	a5,a5,s1
    80003518:	00379793          	slli	a5,a5,0x3
    8000351c:	00f987b3          	add	a5,s3,a5
    80003520:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003524:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003528:	00009717          	auipc	a4,0x9
    8000352c:	96073703          	ld	a4,-1696(a4) # 8000be88 <_ZL10waitForAll>
    80003530:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003534:	00048793          	mv	a5,s1
    80003538:	00349513          	slli	a0,s1,0x3
    8000353c:	00aa8533          	add	a0,s5,a0
    80003540:	fa9054e3          	blez	s1,800034e8 <_Z22producerConsumer_C_APIv+0x1c8>
    80003544:	00000597          	auipc	a1,0x0
    80003548:	c6858593          	addi	a1,a1,-920 # 800031ac <_ZL8producerPv>
    8000354c:	fa5ff06f          	j	800034f0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	e38080e7          	jalr	-456(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003558:	00000493          	li	s1,0
    8000355c:	00994e63          	blt	s2,s1,80003578 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003560:	00009517          	auipc	a0,0x9
    80003564:	92853503          	ld	a0,-1752(a0) # 8000be88 <_ZL10waitForAll>
    80003568:	ffffe097          	auipc	ra,0xffffe
    8000356c:	f20080e7          	jalr	-224(ra) # 80001488 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003570:	0014849b          	addiw	s1,s1,1
    80003574:	fe9ff06f          	j	8000355c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003578:	00009517          	auipc	a0,0x9
    8000357c:	91053503          	ld	a0,-1776(a0) # 8000be88 <_ZL10waitForAll>
    80003580:	ffffe097          	auipc	ra,0xffffe
    80003584:	ec8080e7          	jalr	-312(ra) # 80001448 <_Z9sem_closeP4_sem>
    delete buffer;
    80003588:	000a0e63          	beqz	s4,800035a4 <_Z22producerConsumer_C_APIv+0x284>
    8000358c:	000a0513          	mv	a0,s4
    80003590:	00003097          	auipc	ra,0x3
    80003594:	660080e7          	jalr	1632(ra) # 80006bf0 <_ZN6BufferD1Ev>
    80003598:	000a0513          	mv	a0,s4
    8000359c:	fffff097          	auipc	ra,0xfffff
    800035a0:	03c080e7          	jalr	60(ra) # 800025d8 <_ZdlPv>
    800035a4:	000b0113          	mv	sp,s6

}
    800035a8:	f9040113          	addi	sp,s0,-112
    800035ac:	06813083          	ld	ra,104(sp)
    800035b0:	06013403          	ld	s0,96(sp)
    800035b4:	05813483          	ld	s1,88(sp)
    800035b8:	05013903          	ld	s2,80(sp)
    800035bc:	04813983          	ld	s3,72(sp)
    800035c0:	04013a03          	ld	s4,64(sp)
    800035c4:	03813a83          	ld	s5,56(sp)
    800035c8:	03013b03          	ld	s6,48(sp)
    800035cc:	07010113          	addi	sp,sp,112
    800035d0:	00008067          	ret
    800035d4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800035d8:	000a0513          	mv	a0,s4
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	ffc080e7          	jalr	-4(ra) # 800025d8 <_ZdlPv>
    800035e4:	00048513          	mv	a0,s1
    800035e8:	0000a097          	auipc	ra,0xa
    800035ec:	9c0080e7          	jalr	-1600(ra) # 8000cfa8 <_Unwind_Resume>

00000000800035f0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800035f0:	fe010113          	addi	sp,sp,-32
    800035f4:	00113c23          	sd	ra,24(sp)
    800035f8:	00813823          	sd	s0,16(sp)
    800035fc:	00913423          	sd	s1,8(sp)
    80003600:	01213023          	sd	s2,0(sp)
    80003604:	02010413          	addi	s0,sp,32
    80003608:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000360c:	00100793          	li	a5,1
    80003610:	02a7f863          	bgeu	a5,a0,80003640 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003614:	00a00793          	li	a5,10
    80003618:	02f577b3          	remu	a5,a0,a5
    8000361c:	02078e63          	beqz	a5,80003658 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003620:	fff48513          	addi	a0,s1,-1
    80003624:	00000097          	auipc	ra,0x0
    80003628:	fcc080e7          	jalr	-52(ra) # 800035f0 <_ZL9fibonaccim>
    8000362c:	00050913          	mv	s2,a0
    80003630:	ffe48513          	addi	a0,s1,-2
    80003634:	00000097          	auipc	ra,0x0
    80003638:	fbc080e7          	jalr	-68(ra) # 800035f0 <_ZL9fibonaccim>
    8000363c:	00a90533          	add	a0,s2,a0
}
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	00013903          	ld	s2,0(sp)
    80003650:	02010113          	addi	sp,sp,32
    80003654:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	d30080e7          	jalr	-720(ra) # 80001388 <_Z15thread_dispatchv>
    80003660:	fc1ff06f          	j	80003620 <_ZL9fibonaccim+0x30>

0000000080003664 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003664:	fe010113          	addi	sp,sp,-32
    80003668:	00113c23          	sd	ra,24(sp)
    8000366c:	00813823          	sd	s0,16(sp)
    80003670:	00913423          	sd	s1,8(sp)
    80003674:	01213023          	sd	s2,0(sp)
    80003678:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000367c:	00000913          	li	s2,0
    80003680:	0380006f          	j	800036b8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003684:	ffffe097          	auipc	ra,0xffffe
    80003688:	d04080e7          	jalr	-764(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000368c:	00148493          	addi	s1,s1,1
    80003690:	000027b7          	lui	a5,0x2
    80003694:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003698:	0097ee63          	bltu	a5,s1,800036b4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000369c:	00000713          	li	a4,0
    800036a0:	000077b7          	lui	a5,0x7
    800036a4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036a8:	fce7eee3          	bltu	a5,a4,80003684 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800036ac:	00170713          	addi	a4,a4,1
    800036b0:	ff1ff06f          	j	800036a0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800036b4:	00190913          	addi	s2,s2,1
    800036b8:	00900793          	li	a5,9
    800036bc:	0527e063          	bltu	a5,s2,800036fc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800036c0:	00006517          	auipc	a0,0x6
    800036c4:	dc050513          	addi	a0,a0,-576 # 80009480 <CONSOLE_STATUS+0x470>
    800036c8:	00002097          	auipc	ra,0x2
    800036cc:	eac080e7          	jalr	-340(ra) # 80005574 <_Z11printStringPKc>
    800036d0:	00000613          	li	a2,0
    800036d4:	00a00593          	li	a1,10
    800036d8:	0009051b          	sext.w	a0,s2
    800036dc:	00002097          	auipc	ra,0x2
    800036e0:	048080e7          	jalr	72(ra) # 80005724 <_Z8printIntiii>
    800036e4:	00006517          	auipc	a0,0x6
    800036e8:	bd450513          	addi	a0,a0,-1068 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800036ec:	00002097          	auipc	ra,0x2
    800036f0:	e88080e7          	jalr	-376(ra) # 80005574 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036f4:	00000493          	li	s1,0
    800036f8:	f99ff06f          	j	80003690 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800036fc:	00006517          	auipc	a0,0x6
    80003700:	d8c50513          	addi	a0,a0,-628 # 80009488 <CONSOLE_STATUS+0x478>
    80003704:	00002097          	auipc	ra,0x2
    80003708:	e70080e7          	jalr	-400(ra) # 80005574 <_Z11printStringPKc>
    finishedA = true;
    8000370c:	00100793          	li	a5,1
    80003710:	00008717          	auipc	a4,0x8
    80003714:	78f70023          	sb	a5,1920(a4) # 8000be90 <_ZL9finishedA>
}
    80003718:	01813083          	ld	ra,24(sp)
    8000371c:	01013403          	ld	s0,16(sp)
    80003720:	00813483          	ld	s1,8(sp)
    80003724:	00013903          	ld	s2,0(sp)
    80003728:	02010113          	addi	sp,sp,32
    8000372c:	00008067          	ret

0000000080003730 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003730:	fe010113          	addi	sp,sp,-32
    80003734:	00113c23          	sd	ra,24(sp)
    80003738:	00813823          	sd	s0,16(sp)
    8000373c:	00913423          	sd	s1,8(sp)
    80003740:	01213023          	sd	s2,0(sp)
    80003744:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003748:	00000913          	li	s2,0
    8000374c:	0380006f          	j	80003784 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003750:	ffffe097          	auipc	ra,0xffffe
    80003754:	c38080e7          	jalr	-968(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003758:	00148493          	addi	s1,s1,1
    8000375c:	000027b7          	lui	a5,0x2
    80003760:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003764:	0097ee63          	bltu	a5,s1,80003780 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003768:	00000713          	li	a4,0
    8000376c:	000077b7          	lui	a5,0x7
    80003770:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003774:	fce7eee3          	bltu	a5,a4,80003750 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003778:	00170713          	addi	a4,a4,1
    8000377c:	ff1ff06f          	j	8000376c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003780:	00190913          	addi	s2,s2,1
    80003784:	00f00793          	li	a5,15
    80003788:	0527e063          	bltu	a5,s2,800037c8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000378c:	00006517          	auipc	a0,0x6
    80003790:	d0c50513          	addi	a0,a0,-756 # 80009498 <CONSOLE_STATUS+0x488>
    80003794:	00002097          	auipc	ra,0x2
    80003798:	de0080e7          	jalr	-544(ra) # 80005574 <_Z11printStringPKc>
    8000379c:	00000613          	li	a2,0
    800037a0:	00a00593          	li	a1,10
    800037a4:	0009051b          	sext.w	a0,s2
    800037a8:	00002097          	auipc	ra,0x2
    800037ac:	f7c080e7          	jalr	-132(ra) # 80005724 <_Z8printIntiii>
    800037b0:	00006517          	auipc	a0,0x6
    800037b4:	b0850513          	addi	a0,a0,-1272 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800037b8:	00002097          	auipc	ra,0x2
    800037bc:	dbc080e7          	jalr	-580(ra) # 80005574 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800037c0:	00000493          	li	s1,0
    800037c4:	f99ff06f          	j	8000375c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800037c8:	00006517          	auipc	a0,0x6
    800037cc:	cd850513          	addi	a0,a0,-808 # 800094a0 <CONSOLE_STATUS+0x490>
    800037d0:	00002097          	auipc	ra,0x2
    800037d4:	da4080e7          	jalr	-604(ra) # 80005574 <_Z11printStringPKc>
    finishedB = true;
    800037d8:	00100793          	li	a5,1
    800037dc:	00008717          	auipc	a4,0x8
    800037e0:	6af70aa3          	sb	a5,1717(a4) # 8000be91 <_ZL9finishedB>
    thread_dispatch();
    800037e4:	ffffe097          	auipc	ra,0xffffe
    800037e8:	ba4080e7          	jalr	-1116(ra) # 80001388 <_Z15thread_dispatchv>
}
    800037ec:	01813083          	ld	ra,24(sp)
    800037f0:	01013403          	ld	s0,16(sp)
    800037f4:	00813483          	ld	s1,8(sp)
    800037f8:	00013903          	ld	s2,0(sp)
    800037fc:	02010113          	addi	sp,sp,32
    80003800:	00008067          	ret

0000000080003804 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003804:	fe010113          	addi	sp,sp,-32
    80003808:	00113c23          	sd	ra,24(sp)
    8000380c:	00813823          	sd	s0,16(sp)
    80003810:	00913423          	sd	s1,8(sp)
    80003814:	01213023          	sd	s2,0(sp)
    80003818:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000381c:	00000493          	li	s1,0
    80003820:	0400006f          	j	80003860 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003824:	00006517          	auipc	a0,0x6
    80003828:	c8c50513          	addi	a0,a0,-884 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000382c:	00002097          	auipc	ra,0x2
    80003830:	d48080e7          	jalr	-696(ra) # 80005574 <_Z11printStringPKc>
    80003834:	00000613          	li	a2,0
    80003838:	00a00593          	li	a1,10
    8000383c:	00048513          	mv	a0,s1
    80003840:	00002097          	auipc	ra,0x2
    80003844:	ee4080e7          	jalr	-284(ra) # 80005724 <_Z8printIntiii>
    80003848:	00006517          	auipc	a0,0x6
    8000384c:	a7050513          	addi	a0,a0,-1424 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003850:	00002097          	auipc	ra,0x2
    80003854:	d24080e7          	jalr	-732(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003858:	0014849b          	addiw	s1,s1,1
    8000385c:	0ff4f493          	andi	s1,s1,255
    80003860:	00200793          	li	a5,2
    80003864:	fc97f0e3          	bgeu	a5,s1,80003824 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003868:	00006517          	auipc	a0,0x6
    8000386c:	c5050513          	addi	a0,a0,-944 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80003870:	00002097          	auipc	ra,0x2
    80003874:	d04080e7          	jalr	-764(ra) # 80005574 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003878:	00700313          	li	t1,7
    thread_dispatch();
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	b0c080e7          	jalr	-1268(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003884:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003888:	00006517          	auipc	a0,0x6
    8000388c:	c4050513          	addi	a0,a0,-960 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80003890:	00002097          	auipc	ra,0x2
    80003894:	ce4080e7          	jalr	-796(ra) # 80005574 <_Z11printStringPKc>
    80003898:	00000613          	li	a2,0
    8000389c:	00a00593          	li	a1,10
    800038a0:	0009051b          	sext.w	a0,s2
    800038a4:	00002097          	auipc	ra,0x2
    800038a8:	e80080e7          	jalr	-384(ra) # 80005724 <_Z8printIntiii>
    800038ac:	00006517          	auipc	a0,0x6
    800038b0:	a0c50513          	addi	a0,a0,-1524 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800038b4:	00002097          	auipc	ra,0x2
    800038b8:	cc0080e7          	jalr	-832(ra) # 80005574 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800038bc:	00c00513          	li	a0,12
    800038c0:	00000097          	auipc	ra,0x0
    800038c4:	d30080e7          	jalr	-720(ra) # 800035f0 <_ZL9fibonaccim>
    800038c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800038cc:	00006517          	auipc	a0,0x6
    800038d0:	c0450513          	addi	a0,a0,-1020 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800038d4:	00002097          	auipc	ra,0x2
    800038d8:	ca0080e7          	jalr	-864(ra) # 80005574 <_Z11printStringPKc>
    800038dc:	00000613          	li	a2,0
    800038e0:	00a00593          	li	a1,10
    800038e4:	0009051b          	sext.w	a0,s2
    800038e8:	00002097          	auipc	ra,0x2
    800038ec:	e3c080e7          	jalr	-452(ra) # 80005724 <_Z8printIntiii>
    800038f0:	00006517          	auipc	a0,0x6
    800038f4:	9c850513          	addi	a0,a0,-1592 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800038f8:	00002097          	auipc	ra,0x2
    800038fc:	c7c080e7          	jalr	-900(ra) # 80005574 <_Z11printStringPKc>
    80003900:	0400006f          	j	80003940 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003904:	00006517          	auipc	a0,0x6
    80003908:	bac50513          	addi	a0,a0,-1108 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000390c:	00002097          	auipc	ra,0x2
    80003910:	c68080e7          	jalr	-920(ra) # 80005574 <_Z11printStringPKc>
    80003914:	00000613          	li	a2,0
    80003918:	00a00593          	li	a1,10
    8000391c:	00048513          	mv	a0,s1
    80003920:	00002097          	auipc	ra,0x2
    80003924:	e04080e7          	jalr	-508(ra) # 80005724 <_Z8printIntiii>
    80003928:	00006517          	auipc	a0,0x6
    8000392c:	99050513          	addi	a0,a0,-1648 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003930:	00002097          	auipc	ra,0x2
    80003934:	c44080e7          	jalr	-956(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003938:	0014849b          	addiw	s1,s1,1
    8000393c:	0ff4f493          	andi	s1,s1,255
    80003940:	00500793          	li	a5,5
    80003944:	fc97f0e3          	bgeu	a5,s1,80003904 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003948:	00006517          	auipc	a0,0x6
    8000394c:	b4050513          	addi	a0,a0,-1216 # 80009488 <CONSOLE_STATUS+0x478>
    80003950:	00002097          	auipc	ra,0x2
    80003954:	c24080e7          	jalr	-988(ra) # 80005574 <_Z11printStringPKc>
    finishedC = true;
    80003958:	00100793          	li	a5,1
    8000395c:	00008717          	auipc	a4,0x8
    80003960:	52f70b23          	sb	a5,1334(a4) # 8000be92 <_ZL9finishedC>
    thread_dispatch();
    80003964:	ffffe097          	auipc	ra,0xffffe
    80003968:	a24080e7          	jalr	-1500(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000396c:	01813083          	ld	ra,24(sp)
    80003970:	01013403          	ld	s0,16(sp)
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	00013903          	ld	s2,0(sp)
    8000397c:	02010113          	addi	sp,sp,32
    80003980:	00008067          	ret

0000000080003984 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003984:	fe010113          	addi	sp,sp,-32
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	00813823          	sd	s0,16(sp)
    80003990:	00913423          	sd	s1,8(sp)
    80003994:	01213023          	sd	s2,0(sp)
    80003998:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000399c:	00a00493          	li	s1,10
    800039a0:	0400006f          	j	800039e0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800039a4:	00006517          	auipc	a0,0x6
    800039a8:	b3c50513          	addi	a0,a0,-1220 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800039ac:	00002097          	auipc	ra,0x2
    800039b0:	bc8080e7          	jalr	-1080(ra) # 80005574 <_Z11printStringPKc>
    800039b4:	00000613          	li	a2,0
    800039b8:	00a00593          	li	a1,10
    800039bc:	00048513          	mv	a0,s1
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	d64080e7          	jalr	-668(ra) # 80005724 <_Z8printIntiii>
    800039c8:	00006517          	auipc	a0,0x6
    800039cc:	8f050513          	addi	a0,a0,-1808 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800039d0:	00002097          	auipc	ra,0x2
    800039d4:	ba4080e7          	jalr	-1116(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800039d8:	0014849b          	addiw	s1,s1,1
    800039dc:	0ff4f493          	andi	s1,s1,255
    800039e0:	00c00793          	li	a5,12
    800039e4:	fc97f0e3          	bgeu	a5,s1,800039a4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800039e8:	00006517          	auipc	a0,0x6
    800039ec:	b0050513          	addi	a0,a0,-1280 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800039f0:	00002097          	auipc	ra,0x2
    800039f4:	b84080e7          	jalr	-1148(ra) # 80005574 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800039f8:	00500313          	li	t1,5
    thread_dispatch();
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	98c080e7          	jalr	-1652(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003a04:	01000513          	li	a0,16
    80003a08:	00000097          	auipc	ra,0x0
    80003a0c:	be8080e7          	jalr	-1048(ra) # 800035f0 <_ZL9fibonaccim>
    80003a10:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003a14:	00006517          	auipc	a0,0x6
    80003a18:	ae450513          	addi	a0,a0,-1308 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80003a1c:	00002097          	auipc	ra,0x2
    80003a20:	b58080e7          	jalr	-1192(ra) # 80005574 <_Z11printStringPKc>
    80003a24:	00000613          	li	a2,0
    80003a28:	00a00593          	li	a1,10
    80003a2c:	0009051b          	sext.w	a0,s2
    80003a30:	00002097          	auipc	ra,0x2
    80003a34:	cf4080e7          	jalr	-780(ra) # 80005724 <_Z8printIntiii>
    80003a38:	00006517          	auipc	a0,0x6
    80003a3c:	88050513          	addi	a0,a0,-1920 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003a40:	00002097          	auipc	ra,0x2
    80003a44:	b34080e7          	jalr	-1228(ra) # 80005574 <_Z11printStringPKc>
    80003a48:	0400006f          	j	80003a88 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003a4c:	00006517          	auipc	a0,0x6
    80003a50:	a9450513          	addi	a0,a0,-1388 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003a54:	00002097          	auipc	ra,0x2
    80003a58:	b20080e7          	jalr	-1248(ra) # 80005574 <_Z11printStringPKc>
    80003a5c:	00000613          	li	a2,0
    80003a60:	00a00593          	li	a1,10
    80003a64:	00048513          	mv	a0,s1
    80003a68:	00002097          	auipc	ra,0x2
    80003a6c:	cbc080e7          	jalr	-836(ra) # 80005724 <_Z8printIntiii>
    80003a70:	00006517          	auipc	a0,0x6
    80003a74:	84850513          	addi	a0,a0,-1976 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80003a78:	00002097          	auipc	ra,0x2
    80003a7c:	afc080e7          	jalr	-1284(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003a80:	0014849b          	addiw	s1,s1,1
    80003a84:	0ff4f493          	andi	s1,s1,255
    80003a88:	00f00793          	li	a5,15
    80003a8c:	fc97f0e3          	bgeu	a5,s1,80003a4c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003a90:	00006517          	auipc	a0,0x6
    80003a94:	a7850513          	addi	a0,a0,-1416 # 80009508 <CONSOLE_STATUS+0x4f8>
    80003a98:	00002097          	auipc	ra,0x2
    80003a9c:	adc080e7          	jalr	-1316(ra) # 80005574 <_Z11printStringPKc>
    finishedD = true;
    80003aa0:	00100793          	li	a5,1
    80003aa4:	00008717          	auipc	a4,0x8
    80003aa8:	3ef707a3          	sb	a5,1007(a4) # 8000be93 <_ZL9finishedD>
    thread_dispatch();
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	8dc080e7          	jalr	-1828(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00813483          	ld	s1,8(sp)
    80003ac0:	00013903          	ld	s2,0(sp)
    80003ac4:	02010113          	addi	sp,sp,32
    80003ac8:	00008067          	ret

0000000080003acc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003acc:	fc010113          	addi	sp,sp,-64
    80003ad0:	02113c23          	sd	ra,56(sp)
    80003ad4:	02813823          	sd	s0,48(sp)
    80003ad8:	02913423          	sd	s1,40(sp)
    80003adc:	03213023          	sd	s2,32(sp)
    80003ae0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003ae4:	02000513          	li	a0,32
    80003ae8:	fffff097          	auipc	ra,0xfffff
    80003aec:	aa0080e7          	jalr	-1376(ra) # 80002588 <_Znwm>
    80003af0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003af4:	fffff097          	auipc	ra,0xfffff
    80003af8:	d6c080e7          	jalr	-660(ra) # 80002860 <_ZN6ThreadC1Ev>
    80003afc:	00008797          	auipc	a5,0x8
    80003b00:	0b478793          	addi	a5,a5,180 # 8000bbb0 <_ZTV7WorkerA+0x10>
    80003b04:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003b08:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003b0c:	00006517          	auipc	a0,0x6
    80003b10:	a0c50513          	addi	a0,a0,-1524 # 80009518 <CONSOLE_STATUS+0x508>
    80003b14:	00002097          	auipc	ra,0x2
    80003b18:	a60080e7          	jalr	-1440(ra) # 80005574 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003b1c:	02000513          	li	a0,32
    80003b20:	fffff097          	auipc	ra,0xfffff
    80003b24:	a68080e7          	jalr	-1432(ra) # 80002588 <_Znwm>
    80003b28:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003b2c:	fffff097          	auipc	ra,0xfffff
    80003b30:	d34080e7          	jalr	-716(ra) # 80002860 <_ZN6ThreadC1Ev>
    80003b34:	00008797          	auipc	a5,0x8
    80003b38:	0a478793          	addi	a5,a5,164 # 8000bbd8 <_ZTV7WorkerB+0x10>
    80003b3c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003b40:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003b44:	00006517          	auipc	a0,0x6
    80003b48:	9ec50513          	addi	a0,a0,-1556 # 80009530 <CONSOLE_STATUS+0x520>
    80003b4c:	00002097          	auipc	ra,0x2
    80003b50:	a28080e7          	jalr	-1496(ra) # 80005574 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003b54:	02000513          	li	a0,32
    80003b58:	fffff097          	auipc	ra,0xfffff
    80003b5c:	a30080e7          	jalr	-1488(ra) # 80002588 <_Znwm>
    80003b60:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003b64:	fffff097          	auipc	ra,0xfffff
    80003b68:	cfc080e7          	jalr	-772(ra) # 80002860 <_ZN6ThreadC1Ev>
    80003b6c:	00008797          	auipc	a5,0x8
    80003b70:	09478793          	addi	a5,a5,148 # 8000bc00 <_ZTV7WorkerC+0x10>
    80003b74:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003b78:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003b7c:	00006517          	auipc	a0,0x6
    80003b80:	9cc50513          	addi	a0,a0,-1588 # 80009548 <CONSOLE_STATUS+0x538>
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	9f0080e7          	jalr	-1552(ra) # 80005574 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003b8c:	02000513          	li	a0,32
    80003b90:	fffff097          	auipc	ra,0xfffff
    80003b94:	9f8080e7          	jalr	-1544(ra) # 80002588 <_Znwm>
    80003b98:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003b9c:	fffff097          	auipc	ra,0xfffff
    80003ba0:	cc4080e7          	jalr	-828(ra) # 80002860 <_ZN6ThreadC1Ev>
    80003ba4:	00008797          	auipc	a5,0x8
    80003ba8:	08478793          	addi	a5,a5,132 # 8000bc28 <_ZTV7WorkerD+0x10>
    80003bac:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003bb0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003bb4:	00006517          	auipc	a0,0x6
    80003bb8:	9ac50513          	addi	a0,a0,-1620 # 80009560 <CONSOLE_STATUS+0x550>
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	9b8080e7          	jalr	-1608(ra) # 80005574 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003bc4:	00000493          	li	s1,0
    80003bc8:	00300793          	li	a5,3
    80003bcc:	0297c663          	blt	a5,s1,80003bf8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003bd0:	00349793          	slli	a5,s1,0x3
    80003bd4:	fe040713          	addi	a4,s0,-32
    80003bd8:	00f707b3          	add	a5,a4,a5
    80003bdc:	fe07b503          	ld	a0,-32(a5)
    80003be0:	fffff097          	auipc	ra,0xfffff
    80003be4:	cb0080e7          	jalr	-848(ra) # 80002890 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003be8:	0014849b          	addiw	s1,s1,1
    80003bec:	fddff06f          	j	80003bc8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003bf0:	fffff097          	auipc	ra,0xfffff
    80003bf4:	cf4080e7          	jalr	-780(ra) # 800028e4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003bf8:	00008797          	auipc	a5,0x8
    80003bfc:	2987c783          	lbu	a5,664(a5) # 8000be90 <_ZL9finishedA>
    80003c00:	fe0788e3          	beqz	a5,80003bf0 <_Z20Threads_CPP_API_testv+0x124>
    80003c04:	00008797          	auipc	a5,0x8
    80003c08:	28d7c783          	lbu	a5,653(a5) # 8000be91 <_ZL9finishedB>
    80003c0c:	fe0782e3          	beqz	a5,80003bf0 <_Z20Threads_CPP_API_testv+0x124>
    80003c10:	00008797          	auipc	a5,0x8
    80003c14:	2827c783          	lbu	a5,642(a5) # 8000be92 <_ZL9finishedC>
    80003c18:	fc078ce3          	beqz	a5,80003bf0 <_Z20Threads_CPP_API_testv+0x124>
    80003c1c:	00008797          	auipc	a5,0x8
    80003c20:	2777c783          	lbu	a5,631(a5) # 8000be93 <_ZL9finishedD>
    80003c24:	fc0786e3          	beqz	a5,80003bf0 <_Z20Threads_CPP_API_testv+0x124>
    80003c28:	fc040493          	addi	s1,s0,-64
    80003c2c:	0080006f          	j	80003c34 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003c30:	00848493          	addi	s1,s1,8
    80003c34:	fe040793          	addi	a5,s0,-32
    80003c38:	08f48663          	beq	s1,a5,80003cc4 <_Z20Threads_CPP_API_testv+0x1f8>
    80003c3c:	0004b503          	ld	a0,0(s1)
    80003c40:	fe0508e3          	beqz	a0,80003c30 <_Z20Threads_CPP_API_testv+0x164>
    80003c44:	00053783          	ld	a5,0(a0)
    80003c48:	0087b783          	ld	a5,8(a5)
    80003c4c:	000780e7          	jalr	a5
    80003c50:	fe1ff06f          	j	80003c30 <_Z20Threads_CPP_API_testv+0x164>
    80003c54:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003c58:	00048513          	mv	a0,s1
    80003c5c:	fffff097          	auipc	ra,0xfffff
    80003c60:	97c080e7          	jalr	-1668(ra) # 800025d8 <_ZdlPv>
    80003c64:	00090513          	mv	a0,s2
    80003c68:	00009097          	auipc	ra,0x9
    80003c6c:	340080e7          	jalr	832(ra) # 8000cfa8 <_Unwind_Resume>
    80003c70:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003c74:	00048513          	mv	a0,s1
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	960080e7          	jalr	-1696(ra) # 800025d8 <_ZdlPv>
    80003c80:	00090513          	mv	a0,s2
    80003c84:	00009097          	auipc	ra,0x9
    80003c88:	324080e7          	jalr	804(ra) # 8000cfa8 <_Unwind_Resume>
    80003c8c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003c90:	00048513          	mv	a0,s1
    80003c94:	fffff097          	auipc	ra,0xfffff
    80003c98:	944080e7          	jalr	-1724(ra) # 800025d8 <_ZdlPv>
    80003c9c:	00090513          	mv	a0,s2
    80003ca0:	00009097          	auipc	ra,0x9
    80003ca4:	308080e7          	jalr	776(ra) # 8000cfa8 <_Unwind_Resume>
    80003ca8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003cac:	00048513          	mv	a0,s1
    80003cb0:	fffff097          	auipc	ra,0xfffff
    80003cb4:	928080e7          	jalr	-1752(ra) # 800025d8 <_ZdlPv>
    80003cb8:	00090513          	mv	a0,s2
    80003cbc:	00009097          	auipc	ra,0x9
    80003cc0:	2ec080e7          	jalr	748(ra) # 8000cfa8 <_Unwind_Resume>
}
    80003cc4:	03813083          	ld	ra,56(sp)
    80003cc8:	03013403          	ld	s0,48(sp)
    80003ccc:	02813483          	ld	s1,40(sp)
    80003cd0:	02013903          	ld	s2,32(sp)
    80003cd4:	04010113          	addi	sp,sp,64
    80003cd8:	00008067          	ret

0000000080003cdc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003cdc:	ff010113          	addi	sp,sp,-16
    80003ce0:	00113423          	sd	ra,8(sp)
    80003ce4:	00813023          	sd	s0,0(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    80003cec:	00008797          	auipc	a5,0x8
    80003cf0:	ec478793          	addi	a5,a5,-316 # 8000bbb0 <_ZTV7WorkerA+0x10>
    80003cf4:	00f53023          	sd	a5,0(a0)
    80003cf8:	fffff097          	auipc	ra,0xfffff
    80003cfc:	a44080e7          	jalr	-1468(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003d00:	00813083          	ld	ra,8(sp)
    80003d04:	00013403          	ld	s0,0(sp)
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	00008067          	ret

0000000080003d10 <_ZN7WorkerAD0Ev>:
    80003d10:	fe010113          	addi	sp,sp,-32
    80003d14:	00113c23          	sd	ra,24(sp)
    80003d18:	00813823          	sd	s0,16(sp)
    80003d1c:	00913423          	sd	s1,8(sp)
    80003d20:	02010413          	addi	s0,sp,32
    80003d24:	00050493          	mv	s1,a0
    80003d28:	00008797          	auipc	a5,0x8
    80003d2c:	e8878793          	addi	a5,a5,-376 # 8000bbb0 <_ZTV7WorkerA+0x10>
    80003d30:	00f53023          	sd	a5,0(a0)
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	a08080e7          	jalr	-1528(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	898080e7          	jalr	-1896(ra) # 800025d8 <_ZdlPv>
    80003d48:	01813083          	ld	ra,24(sp)
    80003d4c:	01013403          	ld	s0,16(sp)
    80003d50:	00813483          	ld	s1,8(sp)
    80003d54:	02010113          	addi	sp,sp,32
    80003d58:	00008067          	ret

0000000080003d5c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003d5c:	ff010113          	addi	sp,sp,-16
    80003d60:	00113423          	sd	ra,8(sp)
    80003d64:	00813023          	sd	s0,0(sp)
    80003d68:	01010413          	addi	s0,sp,16
    80003d6c:	00008797          	auipc	a5,0x8
    80003d70:	e6c78793          	addi	a5,a5,-404 # 8000bbd8 <_ZTV7WorkerB+0x10>
    80003d74:	00f53023          	sd	a5,0(a0)
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	9c4080e7          	jalr	-1596(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003d80:	00813083          	ld	ra,8(sp)
    80003d84:	00013403          	ld	s0,0(sp)
    80003d88:	01010113          	addi	sp,sp,16
    80003d8c:	00008067          	ret

0000000080003d90 <_ZN7WorkerBD0Ev>:
    80003d90:	fe010113          	addi	sp,sp,-32
    80003d94:	00113c23          	sd	ra,24(sp)
    80003d98:	00813823          	sd	s0,16(sp)
    80003d9c:	00913423          	sd	s1,8(sp)
    80003da0:	02010413          	addi	s0,sp,32
    80003da4:	00050493          	mv	s1,a0
    80003da8:	00008797          	auipc	a5,0x8
    80003dac:	e3078793          	addi	a5,a5,-464 # 8000bbd8 <_ZTV7WorkerB+0x10>
    80003db0:	00f53023          	sd	a5,0(a0)
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	988080e7          	jalr	-1656(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003dbc:	00048513          	mv	a0,s1
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	818080e7          	jalr	-2024(ra) # 800025d8 <_ZdlPv>
    80003dc8:	01813083          	ld	ra,24(sp)
    80003dcc:	01013403          	ld	s0,16(sp)
    80003dd0:	00813483          	ld	s1,8(sp)
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00008067          	ret

0000000080003ddc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ddc:	ff010113          	addi	sp,sp,-16
    80003de0:	00113423          	sd	ra,8(sp)
    80003de4:	00813023          	sd	s0,0(sp)
    80003de8:	01010413          	addi	s0,sp,16
    80003dec:	00008797          	auipc	a5,0x8
    80003df0:	e1478793          	addi	a5,a5,-492 # 8000bc00 <_ZTV7WorkerC+0x10>
    80003df4:	00f53023          	sd	a5,0(a0)
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	944080e7          	jalr	-1724(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003e00:	00813083          	ld	ra,8(sp)
    80003e04:	00013403          	ld	s0,0(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret

0000000080003e10 <_ZN7WorkerCD0Ev>:
    80003e10:	fe010113          	addi	sp,sp,-32
    80003e14:	00113c23          	sd	ra,24(sp)
    80003e18:	00813823          	sd	s0,16(sp)
    80003e1c:	00913423          	sd	s1,8(sp)
    80003e20:	02010413          	addi	s0,sp,32
    80003e24:	00050493          	mv	s1,a0
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	dd878793          	addi	a5,a5,-552 # 8000bc00 <_ZTV7WorkerC+0x10>
    80003e30:	00f53023          	sd	a5,0(a0)
    80003e34:	fffff097          	auipc	ra,0xfffff
    80003e38:	908080e7          	jalr	-1784(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	ffffe097          	auipc	ra,0xffffe
    80003e44:	798080e7          	jalr	1944(ra) # 800025d8 <_ZdlPv>
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00008067          	ret

0000000080003e5c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003e5c:	ff010113          	addi	sp,sp,-16
    80003e60:	00113423          	sd	ra,8(sp)
    80003e64:	00813023          	sd	s0,0(sp)
    80003e68:	01010413          	addi	s0,sp,16
    80003e6c:	00008797          	auipc	a5,0x8
    80003e70:	dbc78793          	addi	a5,a5,-580 # 8000bc28 <_ZTV7WorkerD+0x10>
    80003e74:	00f53023          	sd	a5,0(a0)
    80003e78:	fffff097          	auipc	ra,0xfffff
    80003e7c:	8c4080e7          	jalr	-1852(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003e80:	00813083          	ld	ra,8(sp)
    80003e84:	00013403          	ld	s0,0(sp)
    80003e88:	01010113          	addi	sp,sp,16
    80003e8c:	00008067          	ret

0000000080003e90 <_ZN7WorkerDD0Ev>:
    80003e90:	fe010113          	addi	sp,sp,-32
    80003e94:	00113c23          	sd	ra,24(sp)
    80003e98:	00813823          	sd	s0,16(sp)
    80003e9c:	00913423          	sd	s1,8(sp)
    80003ea0:	02010413          	addi	s0,sp,32
    80003ea4:	00050493          	mv	s1,a0
    80003ea8:	00008797          	auipc	a5,0x8
    80003eac:	d8078793          	addi	a5,a5,-640 # 8000bc28 <_ZTV7WorkerD+0x10>
    80003eb0:	00f53023          	sd	a5,0(a0)
    80003eb4:	fffff097          	auipc	ra,0xfffff
    80003eb8:	888080e7          	jalr	-1912(ra) # 8000273c <_ZN6ThreadD1Ev>
    80003ebc:	00048513          	mv	a0,s1
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	718080e7          	jalr	1816(ra) # 800025d8 <_ZdlPv>
    80003ec8:	01813083          	ld	ra,24(sp)
    80003ecc:	01013403          	ld	s0,16(sp)
    80003ed0:	00813483          	ld	s1,8(sp)
    80003ed4:	02010113          	addi	sp,sp,32
    80003ed8:	00008067          	ret

0000000080003edc <_ZN7WorkerA3runEv>:
    void run() override {
    80003edc:	ff010113          	addi	sp,sp,-16
    80003ee0:	00113423          	sd	ra,8(sp)
    80003ee4:	00813023          	sd	s0,0(sp)
    80003ee8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003eec:	00000593          	li	a1,0
    80003ef0:	fffff097          	auipc	ra,0xfffff
    80003ef4:	774080e7          	jalr	1908(ra) # 80003664 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003ef8:	00813083          	ld	ra,8(sp)
    80003efc:	00013403          	ld	s0,0(sp)
    80003f00:	01010113          	addi	sp,sp,16
    80003f04:	00008067          	ret

0000000080003f08 <_ZN7WorkerB3runEv>:
    void run() override {
    80003f08:	ff010113          	addi	sp,sp,-16
    80003f0c:	00113423          	sd	ra,8(sp)
    80003f10:	00813023          	sd	s0,0(sp)
    80003f14:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003f18:	00000593          	li	a1,0
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	814080e7          	jalr	-2028(ra) # 80003730 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003f24:	00813083          	ld	ra,8(sp)
    80003f28:	00013403          	ld	s0,0(sp)
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret

0000000080003f34 <_ZN7WorkerC3runEv>:
    void run() override {
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00113423          	sd	ra,8(sp)
    80003f3c:	00813023          	sd	s0,0(sp)
    80003f40:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003f44:	00000593          	li	a1,0
    80003f48:	00000097          	auipc	ra,0x0
    80003f4c:	8bc080e7          	jalr	-1860(ra) # 80003804 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003f50:	00813083          	ld	ra,8(sp)
    80003f54:	00013403          	ld	s0,0(sp)
    80003f58:	01010113          	addi	sp,sp,16
    80003f5c:	00008067          	ret

0000000080003f60 <_ZN7WorkerD3runEv>:
    void run() override {
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00113423          	sd	ra,8(sp)
    80003f68:	00813023          	sd	s0,0(sp)
    80003f6c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003f70:	00000593          	li	a1,0
    80003f74:	00000097          	auipc	ra,0x0
    80003f78:	a10080e7          	jalr	-1520(ra) # 80003984 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003f7c:	00813083          	ld	ra,8(sp)
    80003f80:	00013403          	ld	s0,0(sp)
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret

0000000080003f8c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003f8c:	f8010113          	addi	sp,sp,-128
    80003f90:	06113c23          	sd	ra,120(sp)
    80003f94:	06813823          	sd	s0,112(sp)
    80003f98:	06913423          	sd	s1,104(sp)
    80003f9c:	07213023          	sd	s2,96(sp)
    80003fa0:	05313c23          	sd	s3,88(sp)
    80003fa4:	05413823          	sd	s4,80(sp)
    80003fa8:	05513423          	sd	s5,72(sp)
    80003fac:	05613023          	sd	s6,64(sp)
    80003fb0:	03713c23          	sd	s7,56(sp)
    80003fb4:	03813823          	sd	s8,48(sp)
    80003fb8:	03913423          	sd	s9,40(sp)
    80003fbc:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003fc0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003fc4:	00005517          	auipc	a0,0x5
    80003fc8:	3d450513          	addi	a0,a0,980 # 80009398 <CONSOLE_STATUS+0x388>
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	5a8080e7          	jalr	1448(ra) # 80005574 <_Z11printStringPKc>
    getString(input, 30);
    80003fd4:	01e00593          	li	a1,30
    80003fd8:	f8040493          	addi	s1,s0,-128
    80003fdc:	00048513          	mv	a0,s1
    80003fe0:	00001097          	auipc	ra,0x1
    80003fe4:	61c080e7          	jalr	1564(ra) # 800055fc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003fe8:	00048513          	mv	a0,s1
    80003fec:	00001097          	auipc	ra,0x1
    80003ff0:	6e8080e7          	jalr	1768(ra) # 800056d4 <_Z11stringToIntPKc>
    80003ff4:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003ff8:	00005517          	auipc	a0,0x5
    80003ffc:	3c050513          	addi	a0,a0,960 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004000:	00001097          	auipc	ra,0x1
    80004004:	574080e7          	jalr	1396(ra) # 80005574 <_Z11printStringPKc>
    getString(input, 30);
    80004008:	01e00593          	li	a1,30
    8000400c:	00048513          	mv	a0,s1
    80004010:	00001097          	auipc	ra,0x1
    80004014:	5ec080e7          	jalr	1516(ra) # 800055fc <_Z9getStringPci>
    n = stringToInt(input);
    80004018:	00048513          	mv	a0,s1
    8000401c:	00001097          	auipc	ra,0x1
    80004020:	6b8080e7          	jalr	1720(ra) # 800056d4 <_Z11stringToIntPKc>
    80004024:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004028:	00005517          	auipc	a0,0x5
    8000402c:	3b050513          	addi	a0,a0,944 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004030:	00001097          	auipc	ra,0x1
    80004034:	544080e7          	jalr	1348(ra) # 80005574 <_Z11printStringPKc>
    printInt(threadNum);
    80004038:	00000613          	li	a2,0
    8000403c:	00a00593          	li	a1,10
    80004040:	00098513          	mv	a0,s3
    80004044:	00001097          	auipc	ra,0x1
    80004048:	6e0080e7          	jalr	1760(ra) # 80005724 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000404c:	00005517          	auipc	a0,0x5
    80004050:	3a450513          	addi	a0,a0,932 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80004054:	00001097          	auipc	ra,0x1
    80004058:	520080e7          	jalr	1312(ra) # 80005574 <_Z11printStringPKc>
    printInt(n);
    8000405c:	00000613          	li	a2,0
    80004060:	00a00593          	li	a1,10
    80004064:	00048513          	mv	a0,s1
    80004068:	00001097          	auipc	ra,0x1
    8000406c:	6bc080e7          	jalr	1724(ra) # 80005724 <_Z8printIntiii>
    printString(".\n");
    80004070:	00005517          	auipc	a0,0x5
    80004074:	39850513          	addi	a0,a0,920 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	4fc080e7          	jalr	1276(ra) # 80005574 <_Z11printStringPKc>
    if (threadNum > n) {
    80004080:	0334c463          	blt	s1,s3,800040a8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004084:	03305c63          	blez	s3,800040bc <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004088:	03800513          	li	a0,56
    8000408c:	ffffe097          	auipc	ra,0xffffe
    80004090:	4fc080e7          	jalr	1276(ra) # 80002588 <_Znwm>
    80004094:	00050a93          	mv	s5,a0
    80004098:	00048593          	mv	a1,s1
    8000409c:	00001097          	auipc	ra,0x1
    800040a0:	7a8080e7          	jalr	1960(ra) # 80005844 <_ZN9BufferCPPC1Ei>
    800040a4:	0300006f          	j	800040d4 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800040a8:	00005517          	auipc	a0,0x5
    800040ac:	36850513          	addi	a0,a0,872 # 80009410 <CONSOLE_STATUS+0x400>
    800040b0:	00001097          	auipc	ra,0x1
    800040b4:	4c4080e7          	jalr	1220(ra) # 80005574 <_Z11printStringPKc>
        return;
    800040b8:	0140006f          	j	800040cc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800040bc:	00005517          	auipc	a0,0x5
    800040c0:	39450513          	addi	a0,a0,916 # 80009450 <CONSOLE_STATUS+0x440>
    800040c4:	00001097          	auipc	ra,0x1
    800040c8:	4b0080e7          	jalr	1200(ra) # 80005574 <_Z11printStringPKc>
        return;
    800040cc:	000c0113          	mv	sp,s8
    800040d0:	2140006f          	j	800042e4 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800040d4:	01000513          	li	a0,16
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	4b0080e7          	jalr	1200(ra) # 80002588 <_Znwm>
    800040e0:	00050913          	mv	s2,a0
    800040e4:	00000593          	li	a1,0
    800040e8:	fffff097          	auipc	ra,0xfffff
    800040ec:	874080e7          	jalr	-1932(ra) # 8000295c <_ZN9SemaphoreC1Ej>
    800040f0:	00008797          	auipc	a5,0x8
    800040f4:	db27b823          	sd	s2,-592(a5) # 8000bea0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800040f8:	00399793          	slli	a5,s3,0x3
    800040fc:	00f78793          	addi	a5,a5,15
    80004100:	ff07f793          	andi	a5,a5,-16
    80004104:	40f10133          	sub	sp,sp,a5
    80004108:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000410c:	0019871b          	addiw	a4,s3,1
    80004110:	00171793          	slli	a5,a4,0x1
    80004114:	00e787b3          	add	a5,a5,a4
    80004118:	00379793          	slli	a5,a5,0x3
    8000411c:	00f78793          	addi	a5,a5,15
    80004120:	ff07f793          	andi	a5,a5,-16
    80004124:	40f10133          	sub	sp,sp,a5
    80004128:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000412c:	00199493          	slli	s1,s3,0x1
    80004130:	013484b3          	add	s1,s1,s3
    80004134:	00349493          	slli	s1,s1,0x3
    80004138:	009b04b3          	add	s1,s6,s1
    8000413c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004140:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004144:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004148:	02800513          	li	a0,40
    8000414c:	ffffe097          	auipc	ra,0xffffe
    80004150:	43c080e7          	jalr	1084(ra) # 80002588 <_Znwm>
    80004154:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004158:	ffffe097          	auipc	ra,0xffffe
    8000415c:	708080e7          	jalr	1800(ra) # 80002860 <_ZN6ThreadC1Ev>
    80004160:	00008797          	auipc	a5,0x8
    80004164:	b4078793          	addi	a5,a5,-1216 # 8000bca0 <_ZTV8Consumer+0x10>
    80004168:	00fbb023          	sd	a5,0(s7)
    8000416c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004170:	000b8513          	mv	a0,s7
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	71c080e7          	jalr	1820(ra) # 80002890 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000417c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004180:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004184:	00008797          	auipc	a5,0x8
    80004188:	d1c7b783          	ld	a5,-740(a5) # 8000bea0 <_ZL10waitForAll>
    8000418c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004190:	02800513          	li	a0,40
    80004194:	ffffe097          	auipc	ra,0xffffe
    80004198:	3f4080e7          	jalr	1012(ra) # 80002588 <_Znwm>
    8000419c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	6c0080e7          	jalr	1728(ra) # 80002860 <_ZN6ThreadC1Ev>
    800041a8:	00008797          	auipc	a5,0x8
    800041ac:	aa878793          	addi	a5,a5,-1368 # 8000bc50 <_ZTV16ProducerKeyborad+0x10>
    800041b0:	00f4b023          	sd	a5,0(s1)
    800041b4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800041b8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800041bc:	00048513          	mv	a0,s1
    800041c0:	ffffe097          	auipc	ra,0xffffe
    800041c4:	6d0080e7          	jalr	1744(ra) # 80002890 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800041c8:	00100913          	li	s2,1
    800041cc:	0300006f          	j	800041fc <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800041d0:	00008797          	auipc	a5,0x8
    800041d4:	aa878793          	addi	a5,a5,-1368 # 8000bc78 <_ZTV8Producer+0x10>
    800041d8:	00fcb023          	sd	a5,0(s9)
    800041dc:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800041e0:	00391793          	slli	a5,s2,0x3
    800041e4:	00fa07b3          	add	a5,s4,a5
    800041e8:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800041ec:	000c8513          	mv	a0,s9
    800041f0:	ffffe097          	auipc	ra,0xffffe
    800041f4:	6a0080e7          	jalr	1696(ra) # 80002890 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800041f8:	0019091b          	addiw	s2,s2,1
    800041fc:	05395263          	bge	s2,s3,80004240 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004200:	00191493          	slli	s1,s2,0x1
    80004204:	012484b3          	add	s1,s1,s2
    80004208:	00349493          	slli	s1,s1,0x3
    8000420c:	009b04b3          	add	s1,s6,s1
    80004210:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004214:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004218:	00008797          	auipc	a5,0x8
    8000421c:	c887b783          	ld	a5,-888(a5) # 8000bea0 <_ZL10waitForAll>
    80004220:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004224:	02800513          	li	a0,40
    80004228:	ffffe097          	auipc	ra,0xffffe
    8000422c:	360080e7          	jalr	864(ra) # 80002588 <_Znwm>
    80004230:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	62c080e7          	jalr	1580(ra) # 80002860 <_ZN6ThreadC1Ev>
    8000423c:	f95ff06f          	j	800041d0 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004240:	ffffe097          	auipc	ra,0xffffe
    80004244:	6a4080e7          	jalr	1700(ra) # 800028e4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004248:	00000493          	li	s1,0
    8000424c:	0099ce63          	blt	s3,s1,80004268 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004250:	00008517          	auipc	a0,0x8
    80004254:	c5053503          	ld	a0,-944(a0) # 8000bea0 <_ZL10waitForAll>
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	740080e7          	jalr	1856(ra) # 80002998 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004260:	0014849b          	addiw	s1,s1,1
    80004264:	fe9ff06f          	j	8000424c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004268:	00008517          	auipc	a0,0x8
    8000426c:	c3853503          	ld	a0,-968(a0) # 8000bea0 <_ZL10waitForAll>
    80004270:	00050863          	beqz	a0,80004280 <_Z20testConsumerProducerv+0x2f4>
    80004274:	00053783          	ld	a5,0(a0)
    80004278:	0087b783          	ld	a5,8(a5)
    8000427c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004280:	00000493          	li	s1,0
    80004284:	0080006f          	j	8000428c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004288:	0014849b          	addiw	s1,s1,1
    8000428c:	0334d263          	bge	s1,s3,800042b0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004290:	00349793          	slli	a5,s1,0x3
    80004294:	00fa07b3          	add	a5,s4,a5
    80004298:	0007b503          	ld	a0,0(a5)
    8000429c:	fe0506e3          	beqz	a0,80004288 <_Z20testConsumerProducerv+0x2fc>
    800042a0:	00053783          	ld	a5,0(a0)
    800042a4:	0087b783          	ld	a5,8(a5)
    800042a8:	000780e7          	jalr	a5
    800042ac:	fddff06f          	j	80004288 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800042b0:	000b8a63          	beqz	s7,800042c4 <_Z20testConsumerProducerv+0x338>
    800042b4:	000bb783          	ld	a5,0(s7)
    800042b8:	0087b783          	ld	a5,8(a5)
    800042bc:	000b8513          	mv	a0,s7
    800042c0:	000780e7          	jalr	a5
    delete buffer;
    800042c4:	000a8e63          	beqz	s5,800042e0 <_Z20testConsumerProducerv+0x354>
    800042c8:	000a8513          	mv	a0,s5
    800042cc:	00002097          	auipc	ra,0x2
    800042d0:	870080e7          	jalr	-1936(ra) # 80005b3c <_ZN9BufferCPPD1Ev>
    800042d4:	000a8513          	mv	a0,s5
    800042d8:	ffffe097          	auipc	ra,0xffffe
    800042dc:	300080e7          	jalr	768(ra) # 800025d8 <_ZdlPv>
    800042e0:	000c0113          	mv	sp,s8
}
    800042e4:	f8040113          	addi	sp,s0,-128
    800042e8:	07813083          	ld	ra,120(sp)
    800042ec:	07013403          	ld	s0,112(sp)
    800042f0:	06813483          	ld	s1,104(sp)
    800042f4:	06013903          	ld	s2,96(sp)
    800042f8:	05813983          	ld	s3,88(sp)
    800042fc:	05013a03          	ld	s4,80(sp)
    80004300:	04813a83          	ld	s5,72(sp)
    80004304:	04013b03          	ld	s6,64(sp)
    80004308:	03813b83          	ld	s7,56(sp)
    8000430c:	03013c03          	ld	s8,48(sp)
    80004310:	02813c83          	ld	s9,40(sp)
    80004314:	08010113          	addi	sp,sp,128
    80004318:	00008067          	ret
    8000431c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004320:	000a8513          	mv	a0,s5
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	2b4080e7          	jalr	692(ra) # 800025d8 <_ZdlPv>
    8000432c:	00048513          	mv	a0,s1
    80004330:	00009097          	auipc	ra,0x9
    80004334:	c78080e7          	jalr	-904(ra) # 8000cfa8 <_Unwind_Resume>
    80004338:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    8000433c:	00090513          	mv	a0,s2
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	298080e7          	jalr	664(ra) # 800025d8 <_ZdlPv>
    80004348:	00048513          	mv	a0,s1
    8000434c:	00009097          	auipc	ra,0x9
    80004350:	c5c080e7          	jalr	-932(ra) # 8000cfa8 <_Unwind_Resume>
    80004354:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004358:	000b8513          	mv	a0,s7
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	27c080e7          	jalr	636(ra) # 800025d8 <_ZdlPv>
    80004364:	00048513          	mv	a0,s1
    80004368:	00009097          	auipc	ra,0x9
    8000436c:	c40080e7          	jalr	-960(ra) # 8000cfa8 <_Unwind_Resume>
    80004370:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004374:	00048513          	mv	a0,s1
    80004378:	ffffe097          	auipc	ra,0xffffe
    8000437c:	260080e7          	jalr	608(ra) # 800025d8 <_ZdlPv>
    80004380:	00090513          	mv	a0,s2
    80004384:	00009097          	auipc	ra,0x9
    80004388:	c24080e7          	jalr	-988(ra) # 8000cfa8 <_Unwind_Resume>
    8000438c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004390:	000c8513          	mv	a0,s9
    80004394:	ffffe097          	auipc	ra,0xffffe
    80004398:	244080e7          	jalr	580(ra) # 800025d8 <_ZdlPv>
    8000439c:	00048513          	mv	a0,s1
    800043a0:	00009097          	auipc	ra,0x9
    800043a4:	c08080e7          	jalr	-1016(ra) # 8000cfa8 <_Unwind_Resume>

00000000800043a8 <_ZN8Consumer3runEv>:
    void run() override {
    800043a8:	fd010113          	addi	sp,sp,-48
    800043ac:	02113423          	sd	ra,40(sp)
    800043b0:	02813023          	sd	s0,32(sp)
    800043b4:	00913c23          	sd	s1,24(sp)
    800043b8:	01213823          	sd	s2,16(sp)
    800043bc:	01313423          	sd	s3,8(sp)
    800043c0:	03010413          	addi	s0,sp,48
    800043c4:	00050913          	mv	s2,a0
        int i = 0;
    800043c8:	00000993          	li	s3,0
    800043cc:	0100006f          	j	800043dc <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800043d0:	00a00513          	li	a0,10
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	6ac080e7          	jalr	1708(ra) # 80002a80 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800043dc:	00008797          	auipc	a5,0x8
    800043e0:	abc7a783          	lw	a5,-1348(a5) # 8000be98 <_ZL9threadEnd>
    800043e4:	04079a63          	bnez	a5,80004438 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800043e8:	02093783          	ld	a5,32(s2)
    800043ec:	0087b503          	ld	a0,8(a5)
    800043f0:	00001097          	auipc	ra,0x1
    800043f4:	638080e7          	jalr	1592(ra) # 80005a28 <_ZN9BufferCPP3getEv>
            i++;
    800043f8:	0019849b          	addiw	s1,s3,1
    800043fc:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004400:	0ff57513          	andi	a0,a0,255
    80004404:	ffffe097          	auipc	ra,0xffffe
    80004408:	67c080e7          	jalr	1660(ra) # 80002a80 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000440c:	05000793          	li	a5,80
    80004410:	02f4e4bb          	remw	s1,s1,a5
    80004414:	fc0494e3          	bnez	s1,800043dc <_ZN8Consumer3runEv+0x34>
    80004418:	fb9ff06f          	j	800043d0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000441c:	02093783          	ld	a5,32(s2)
    80004420:	0087b503          	ld	a0,8(a5)
    80004424:	00001097          	auipc	ra,0x1
    80004428:	604080e7          	jalr	1540(ra) # 80005a28 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    8000442c:	0ff57513          	andi	a0,a0,255
    80004430:	ffffe097          	auipc	ra,0xffffe
    80004434:	650080e7          	jalr	1616(ra) # 80002a80 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004438:	02093783          	ld	a5,32(s2)
    8000443c:	0087b503          	ld	a0,8(a5)
    80004440:	00001097          	auipc	ra,0x1
    80004444:	674080e7          	jalr	1652(ra) # 80005ab4 <_ZN9BufferCPP6getCntEv>
    80004448:	fca04ae3          	bgtz	a0,8000441c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    8000444c:	02093783          	ld	a5,32(s2)
    80004450:	0107b503          	ld	a0,16(a5)
    80004454:	ffffe097          	auipc	ra,0xffffe
    80004458:	570080e7          	jalr	1392(ra) # 800029c4 <_ZN9Semaphore6signalEv>
    }
    8000445c:	02813083          	ld	ra,40(sp)
    80004460:	02013403          	ld	s0,32(sp)
    80004464:	01813483          	ld	s1,24(sp)
    80004468:	01013903          	ld	s2,16(sp)
    8000446c:	00813983          	ld	s3,8(sp)
    80004470:	03010113          	addi	sp,sp,48
    80004474:	00008067          	ret

0000000080004478 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004478:	ff010113          	addi	sp,sp,-16
    8000447c:	00113423          	sd	ra,8(sp)
    80004480:	00813023          	sd	s0,0(sp)
    80004484:	01010413          	addi	s0,sp,16
    80004488:	00008797          	auipc	a5,0x8
    8000448c:	81878793          	addi	a5,a5,-2024 # 8000bca0 <_ZTV8Consumer+0x10>
    80004490:	00f53023          	sd	a5,0(a0)
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	2a8080e7          	jalr	680(ra) # 8000273c <_ZN6ThreadD1Ev>
    8000449c:	00813083          	ld	ra,8(sp)
    800044a0:	00013403          	ld	s0,0(sp)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <_ZN8ConsumerD0Ev>:
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00113c23          	sd	ra,24(sp)
    800044b4:	00813823          	sd	s0,16(sp)
    800044b8:	00913423          	sd	s1,8(sp)
    800044bc:	02010413          	addi	s0,sp,32
    800044c0:	00050493          	mv	s1,a0
    800044c4:	00007797          	auipc	a5,0x7
    800044c8:	7dc78793          	addi	a5,a5,2012 # 8000bca0 <_ZTV8Consumer+0x10>
    800044cc:	00f53023          	sd	a5,0(a0)
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	26c080e7          	jalr	620(ra) # 8000273c <_ZN6ThreadD1Ev>
    800044d8:	00048513          	mv	a0,s1
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	0fc080e7          	jalr	252(ra) # 800025d8 <_ZdlPv>
    800044e4:	01813083          	ld	ra,24(sp)
    800044e8:	01013403          	ld	s0,16(sp)
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	02010113          	addi	sp,sp,32
    800044f4:	00008067          	ret

00000000800044f8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00113423          	sd	ra,8(sp)
    80004500:	00813023          	sd	s0,0(sp)
    80004504:	01010413          	addi	s0,sp,16
    80004508:	00007797          	auipc	a5,0x7
    8000450c:	74878793          	addi	a5,a5,1864 # 8000bc50 <_ZTV16ProducerKeyborad+0x10>
    80004510:	00f53023          	sd	a5,0(a0)
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	228080e7          	jalr	552(ra) # 8000273c <_ZN6ThreadD1Ev>
    8000451c:	00813083          	ld	ra,8(sp)
    80004520:	00013403          	ld	s0,0(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret

000000008000452c <_ZN16ProducerKeyboradD0Ev>:
    8000452c:	fe010113          	addi	sp,sp,-32
    80004530:	00113c23          	sd	ra,24(sp)
    80004534:	00813823          	sd	s0,16(sp)
    80004538:	00913423          	sd	s1,8(sp)
    8000453c:	02010413          	addi	s0,sp,32
    80004540:	00050493          	mv	s1,a0
    80004544:	00007797          	auipc	a5,0x7
    80004548:	70c78793          	addi	a5,a5,1804 # 8000bc50 <_ZTV16ProducerKeyborad+0x10>
    8000454c:	00f53023          	sd	a5,0(a0)
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	1ec080e7          	jalr	492(ra) # 8000273c <_ZN6ThreadD1Ev>
    80004558:	00048513          	mv	a0,s1
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	07c080e7          	jalr	124(ra) # 800025d8 <_ZdlPv>
    80004564:	01813083          	ld	ra,24(sp)
    80004568:	01013403          	ld	s0,16(sp)
    8000456c:	00813483          	ld	s1,8(sp)
    80004570:	02010113          	addi	sp,sp,32
    80004574:	00008067          	ret

0000000080004578 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004578:	ff010113          	addi	sp,sp,-16
    8000457c:	00113423          	sd	ra,8(sp)
    80004580:	00813023          	sd	s0,0(sp)
    80004584:	01010413          	addi	s0,sp,16
    80004588:	00007797          	auipc	a5,0x7
    8000458c:	6f078793          	addi	a5,a5,1776 # 8000bc78 <_ZTV8Producer+0x10>
    80004590:	00f53023          	sd	a5,0(a0)
    80004594:	ffffe097          	auipc	ra,0xffffe
    80004598:	1a8080e7          	jalr	424(ra) # 8000273c <_ZN6ThreadD1Ev>
    8000459c:	00813083          	ld	ra,8(sp)
    800045a0:	00013403          	ld	s0,0(sp)
    800045a4:	01010113          	addi	sp,sp,16
    800045a8:	00008067          	ret

00000000800045ac <_ZN8ProducerD0Ev>:
    800045ac:	fe010113          	addi	sp,sp,-32
    800045b0:	00113c23          	sd	ra,24(sp)
    800045b4:	00813823          	sd	s0,16(sp)
    800045b8:	00913423          	sd	s1,8(sp)
    800045bc:	02010413          	addi	s0,sp,32
    800045c0:	00050493          	mv	s1,a0
    800045c4:	00007797          	auipc	a5,0x7
    800045c8:	6b478793          	addi	a5,a5,1716 # 8000bc78 <_ZTV8Producer+0x10>
    800045cc:	00f53023          	sd	a5,0(a0)
    800045d0:	ffffe097          	auipc	ra,0xffffe
    800045d4:	16c080e7          	jalr	364(ra) # 8000273c <_ZN6ThreadD1Ev>
    800045d8:	00048513          	mv	a0,s1
    800045dc:	ffffe097          	auipc	ra,0xffffe
    800045e0:	ffc080e7          	jalr	-4(ra) # 800025d8 <_ZdlPv>
    800045e4:	01813083          	ld	ra,24(sp)
    800045e8:	01013403          	ld	s0,16(sp)
    800045ec:	00813483          	ld	s1,8(sp)
    800045f0:	02010113          	addi	sp,sp,32
    800045f4:	00008067          	ret

00000000800045f8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800045f8:	fe010113          	addi	sp,sp,-32
    800045fc:	00113c23          	sd	ra,24(sp)
    80004600:	00813823          	sd	s0,16(sp)
    80004604:	00913423          	sd	s1,8(sp)
    80004608:	02010413          	addi	s0,sp,32
    8000460c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004610:	ffffd097          	auipc	ra,0xffffd
    80004614:	fc0080e7          	jalr	-64(ra) # 800015d0 <_Z4getcv>
    80004618:	0005059b          	sext.w	a1,a0
    8000461c:	01b00793          	li	a5,27
    80004620:	00f58c63          	beq	a1,a5,80004638 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004624:	0204b783          	ld	a5,32(s1)
    80004628:	0087b503          	ld	a0,8(a5)
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	36c080e7          	jalr	876(ra) # 80005998 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004634:	fddff06f          	j	80004610 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004638:	00100793          	li	a5,1
    8000463c:	00008717          	auipc	a4,0x8
    80004640:	84f72e23          	sw	a5,-1956(a4) # 8000be98 <_ZL9threadEnd>
        td->buffer->put('!');
    80004644:	0204b783          	ld	a5,32(s1)
    80004648:	02100593          	li	a1,33
    8000464c:	0087b503          	ld	a0,8(a5)
    80004650:	00001097          	auipc	ra,0x1
    80004654:	348080e7          	jalr	840(ra) # 80005998 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004658:	0204b783          	ld	a5,32(s1)
    8000465c:	0107b503          	ld	a0,16(a5)
    80004660:	ffffe097          	auipc	ra,0xffffe
    80004664:	364080e7          	jalr	868(ra) # 800029c4 <_ZN9Semaphore6signalEv>
    }
    80004668:	01813083          	ld	ra,24(sp)
    8000466c:	01013403          	ld	s0,16(sp)
    80004670:	00813483          	ld	s1,8(sp)
    80004674:	02010113          	addi	sp,sp,32
    80004678:	00008067          	ret

000000008000467c <_ZN8Producer3runEv>:
    void run() override {
    8000467c:	fe010113          	addi	sp,sp,-32
    80004680:	00113c23          	sd	ra,24(sp)
    80004684:	00813823          	sd	s0,16(sp)
    80004688:	00913423          	sd	s1,8(sp)
    8000468c:	01213023          	sd	s2,0(sp)
    80004690:	02010413          	addi	s0,sp,32
    80004694:	00050493          	mv	s1,a0
        int i = 0;
    80004698:	00000913          	li	s2,0
        while (!threadEnd) {
    8000469c:	00007797          	auipc	a5,0x7
    800046a0:	7fc7a783          	lw	a5,2044(a5) # 8000be98 <_ZL9threadEnd>
    800046a4:	04079263          	bnez	a5,800046e8 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800046a8:	0204b783          	ld	a5,32(s1)
    800046ac:	0007a583          	lw	a1,0(a5)
    800046b0:	0305859b          	addiw	a1,a1,48
    800046b4:	0087b503          	ld	a0,8(a5)
    800046b8:	00001097          	auipc	ra,0x1
    800046bc:	2e0080e7          	jalr	736(ra) # 80005998 <_ZN9BufferCPP3putEi>
            i++;
    800046c0:	0019071b          	addiw	a4,s2,1
    800046c4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800046c8:	0204b783          	ld	a5,32(s1)
    800046cc:	0007a783          	lw	a5,0(a5)
    800046d0:	00e787bb          	addw	a5,a5,a4
    800046d4:	00500513          	li	a0,5
    800046d8:	02a7e53b          	remw	a0,a5,a0
    800046dc:	ffffe097          	auipc	ra,0xffffe
    800046e0:	258080e7          	jalr	600(ra) # 80002934 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800046e4:	fb9ff06f          	j	8000469c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800046e8:	0204b783          	ld	a5,32(s1)
    800046ec:	0107b503          	ld	a0,16(a5)
    800046f0:	ffffe097          	auipc	ra,0xffffe
    800046f4:	2d4080e7          	jalr	724(ra) # 800029c4 <_ZN9Semaphore6signalEv>
    }
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	00013903          	ld	s2,0(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004710:	fe010113          	addi	sp,sp,-32
    80004714:	00113c23          	sd	ra,24(sp)
    80004718:	00813823          	sd	s0,16(sp)
    8000471c:	00913423          	sd	s1,8(sp)
    80004720:	01213023          	sd	s2,0(sp)
    80004724:	02010413          	addi	s0,sp,32
    80004728:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000472c:	00100793          	li	a5,1
    80004730:	02a7f863          	bgeu	a5,a0,80004760 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004734:	00a00793          	li	a5,10
    80004738:	02f577b3          	remu	a5,a0,a5
    8000473c:	02078e63          	beqz	a5,80004778 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004740:	fff48513          	addi	a0,s1,-1
    80004744:	00000097          	auipc	ra,0x0
    80004748:	fcc080e7          	jalr	-52(ra) # 80004710 <_ZL9fibonaccim>
    8000474c:	00050913          	mv	s2,a0
    80004750:	ffe48513          	addi	a0,s1,-2
    80004754:	00000097          	auipc	ra,0x0
    80004758:	fbc080e7          	jalr	-68(ra) # 80004710 <_ZL9fibonaccim>
    8000475c:	00a90533          	add	a0,s2,a0
}
    80004760:	01813083          	ld	ra,24(sp)
    80004764:	01013403          	ld	s0,16(sp)
    80004768:	00813483          	ld	s1,8(sp)
    8000476c:	00013903          	ld	s2,0(sp)
    80004770:	02010113          	addi	sp,sp,32
    80004774:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004778:	ffffd097          	auipc	ra,0xffffd
    8000477c:	c10080e7          	jalr	-1008(ra) # 80001388 <_Z15thread_dispatchv>
    80004780:	fc1ff06f          	j	80004740 <_ZL9fibonaccim+0x30>

0000000080004784 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004784:	fe010113          	addi	sp,sp,-32
    80004788:	00113c23          	sd	ra,24(sp)
    8000478c:	00813823          	sd	s0,16(sp)
    80004790:	00913423          	sd	s1,8(sp)
    80004794:	01213023          	sd	s2,0(sp)
    80004798:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000479c:	00a00493          	li	s1,10
    800047a0:	0400006f          	j	800047e0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	d3c50513          	addi	a0,a0,-708 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	dc8080e7          	jalr	-568(ra) # 80005574 <_Z11printStringPKc>
    800047b4:	00000613          	li	a2,0
    800047b8:	00a00593          	li	a1,10
    800047bc:	00048513          	mv	a0,s1
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	f64080e7          	jalr	-156(ra) # 80005724 <_Z8printIntiii>
    800047c8:	00005517          	auipc	a0,0x5
    800047cc:	af050513          	addi	a0,a0,-1296 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	da4080e7          	jalr	-604(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800047d8:	0014849b          	addiw	s1,s1,1
    800047dc:	0ff4f493          	andi	s1,s1,255
    800047e0:	00c00793          	li	a5,12
    800047e4:	fc97f0e3          	bgeu	a5,s1,800047a4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800047e8:	00005517          	auipc	a0,0x5
    800047ec:	d0050513          	addi	a0,a0,-768 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800047f0:	00001097          	auipc	ra,0x1
    800047f4:	d84080e7          	jalr	-636(ra) # 80005574 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800047f8:	00500313          	li	t1,5
    thread_dispatch();
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	b8c080e7          	jalr	-1140(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004804:	01000513          	li	a0,16
    80004808:	00000097          	auipc	ra,0x0
    8000480c:	f08080e7          	jalr	-248(ra) # 80004710 <_ZL9fibonaccim>
    80004810:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004814:	00005517          	auipc	a0,0x5
    80004818:	ce450513          	addi	a0,a0,-796 # 800094f8 <CONSOLE_STATUS+0x4e8>
    8000481c:	00001097          	auipc	ra,0x1
    80004820:	d58080e7          	jalr	-680(ra) # 80005574 <_Z11printStringPKc>
    80004824:	00000613          	li	a2,0
    80004828:	00a00593          	li	a1,10
    8000482c:	0009051b          	sext.w	a0,s2
    80004830:	00001097          	auipc	ra,0x1
    80004834:	ef4080e7          	jalr	-268(ra) # 80005724 <_Z8printIntiii>
    80004838:	00005517          	auipc	a0,0x5
    8000483c:	a8050513          	addi	a0,a0,-1408 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004840:	00001097          	auipc	ra,0x1
    80004844:	d34080e7          	jalr	-716(ra) # 80005574 <_Z11printStringPKc>
    80004848:	0400006f          	j	80004888 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000484c:	00005517          	auipc	a0,0x5
    80004850:	c9450513          	addi	a0,a0,-876 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004854:	00001097          	auipc	ra,0x1
    80004858:	d20080e7          	jalr	-736(ra) # 80005574 <_Z11printStringPKc>
    8000485c:	00000613          	li	a2,0
    80004860:	00a00593          	li	a1,10
    80004864:	00048513          	mv	a0,s1
    80004868:	00001097          	auipc	ra,0x1
    8000486c:	ebc080e7          	jalr	-324(ra) # 80005724 <_Z8printIntiii>
    80004870:	00005517          	auipc	a0,0x5
    80004874:	a4850513          	addi	a0,a0,-1464 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004878:	00001097          	auipc	ra,0x1
    8000487c:	cfc080e7          	jalr	-772(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004880:	0014849b          	addiw	s1,s1,1
    80004884:	0ff4f493          	andi	s1,s1,255
    80004888:	00f00793          	li	a5,15
    8000488c:	fc97f0e3          	bgeu	a5,s1,8000484c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004890:	00005517          	auipc	a0,0x5
    80004894:	c7850513          	addi	a0,a0,-904 # 80009508 <CONSOLE_STATUS+0x4f8>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	cdc080e7          	jalr	-804(ra) # 80005574 <_Z11printStringPKc>
    finishedD = true;
    800048a0:	00100793          	li	a5,1
    800048a4:	00007717          	auipc	a4,0x7
    800048a8:	60f70223          	sb	a5,1540(a4) # 8000bea8 <_ZL9finishedD>
    thread_dispatch();
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	adc080e7          	jalr	-1316(ra) # 80001388 <_Z15thread_dispatchv>
}
    800048b4:	01813083          	ld	ra,24(sp)
    800048b8:	01013403          	ld	s0,16(sp)
    800048bc:	00813483          	ld	s1,8(sp)
    800048c0:	00013903          	ld	s2,0(sp)
    800048c4:	02010113          	addi	sp,sp,32
    800048c8:	00008067          	ret

00000000800048cc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800048cc:	fe010113          	addi	sp,sp,-32
    800048d0:	00113c23          	sd	ra,24(sp)
    800048d4:	00813823          	sd	s0,16(sp)
    800048d8:	00913423          	sd	s1,8(sp)
    800048dc:	01213023          	sd	s2,0(sp)
    800048e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800048e4:	00000493          	li	s1,0
    800048e8:	0400006f          	j	80004928 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800048ec:	00005517          	auipc	a0,0x5
    800048f0:	bc450513          	addi	a0,a0,-1084 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800048f4:	00001097          	auipc	ra,0x1
    800048f8:	c80080e7          	jalr	-896(ra) # 80005574 <_Z11printStringPKc>
    800048fc:	00000613          	li	a2,0
    80004900:	00a00593          	li	a1,10
    80004904:	00048513          	mv	a0,s1
    80004908:	00001097          	auipc	ra,0x1
    8000490c:	e1c080e7          	jalr	-484(ra) # 80005724 <_Z8printIntiii>
    80004910:	00005517          	auipc	a0,0x5
    80004914:	9a850513          	addi	a0,a0,-1624 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	c5c080e7          	jalr	-932(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004920:	0014849b          	addiw	s1,s1,1
    80004924:	0ff4f493          	andi	s1,s1,255
    80004928:	00200793          	li	a5,2
    8000492c:	fc97f0e3          	bgeu	a5,s1,800048ec <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004930:	00005517          	auipc	a0,0x5
    80004934:	b8850513          	addi	a0,a0,-1144 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80004938:	00001097          	auipc	ra,0x1
    8000493c:	c3c080e7          	jalr	-964(ra) # 80005574 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004940:	00700313          	li	t1,7
    thread_dispatch();
    80004944:	ffffd097          	auipc	ra,0xffffd
    80004948:	a44080e7          	jalr	-1468(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000494c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004950:	00005517          	auipc	a0,0x5
    80004954:	b7850513          	addi	a0,a0,-1160 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80004958:	00001097          	auipc	ra,0x1
    8000495c:	c1c080e7          	jalr	-996(ra) # 80005574 <_Z11printStringPKc>
    80004960:	00000613          	li	a2,0
    80004964:	00a00593          	li	a1,10
    80004968:	0009051b          	sext.w	a0,s2
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	db8080e7          	jalr	-584(ra) # 80005724 <_Z8printIntiii>
    80004974:	00005517          	auipc	a0,0x5
    80004978:	94450513          	addi	a0,a0,-1724 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	bf8080e7          	jalr	-1032(ra) # 80005574 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004984:	00c00513          	li	a0,12
    80004988:	00000097          	auipc	ra,0x0
    8000498c:	d88080e7          	jalr	-632(ra) # 80004710 <_ZL9fibonaccim>
    80004990:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004994:	00005517          	auipc	a0,0x5
    80004998:	b3c50513          	addi	a0,a0,-1220 # 800094d0 <CONSOLE_STATUS+0x4c0>
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	bd8080e7          	jalr	-1064(ra) # 80005574 <_Z11printStringPKc>
    800049a4:	00000613          	li	a2,0
    800049a8:	00a00593          	li	a1,10
    800049ac:	0009051b          	sext.w	a0,s2
    800049b0:	00001097          	auipc	ra,0x1
    800049b4:	d74080e7          	jalr	-652(ra) # 80005724 <_Z8printIntiii>
    800049b8:	00005517          	auipc	a0,0x5
    800049bc:	90050513          	addi	a0,a0,-1792 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800049c0:	00001097          	auipc	ra,0x1
    800049c4:	bb4080e7          	jalr	-1100(ra) # 80005574 <_Z11printStringPKc>
    800049c8:	0400006f          	j	80004a08 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800049cc:	00005517          	auipc	a0,0x5
    800049d0:	ae450513          	addi	a0,a0,-1308 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800049d4:	00001097          	auipc	ra,0x1
    800049d8:	ba0080e7          	jalr	-1120(ra) # 80005574 <_Z11printStringPKc>
    800049dc:	00000613          	li	a2,0
    800049e0:	00a00593          	li	a1,10
    800049e4:	00048513          	mv	a0,s1
    800049e8:	00001097          	auipc	ra,0x1
    800049ec:	d3c080e7          	jalr	-708(ra) # 80005724 <_Z8printIntiii>
    800049f0:	00005517          	auipc	a0,0x5
    800049f4:	8c850513          	addi	a0,a0,-1848 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800049f8:	00001097          	auipc	ra,0x1
    800049fc:	b7c080e7          	jalr	-1156(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004a00:	0014849b          	addiw	s1,s1,1
    80004a04:	0ff4f493          	andi	s1,s1,255
    80004a08:	00500793          	li	a5,5
    80004a0c:	fc97f0e3          	bgeu	a5,s1,800049cc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004a10:	00005517          	auipc	a0,0x5
    80004a14:	a7850513          	addi	a0,a0,-1416 # 80009488 <CONSOLE_STATUS+0x478>
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	b5c080e7          	jalr	-1188(ra) # 80005574 <_Z11printStringPKc>
    finishedC = true;
    80004a20:	00100793          	li	a5,1
    80004a24:	00007717          	auipc	a4,0x7
    80004a28:	48f702a3          	sb	a5,1157(a4) # 8000bea9 <_ZL9finishedC>
    thread_dispatch();
    80004a2c:	ffffd097          	auipc	ra,0xffffd
    80004a30:	95c080e7          	jalr	-1700(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004a34:	01813083          	ld	ra,24(sp)
    80004a38:	01013403          	ld	s0,16(sp)
    80004a3c:	00813483          	ld	s1,8(sp)
    80004a40:	00013903          	ld	s2,0(sp)
    80004a44:	02010113          	addi	sp,sp,32
    80004a48:	00008067          	ret

0000000080004a4c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004a4c:	fe010113          	addi	sp,sp,-32
    80004a50:	00113c23          	sd	ra,24(sp)
    80004a54:	00813823          	sd	s0,16(sp)
    80004a58:	00913423          	sd	s1,8(sp)
    80004a5c:	01213023          	sd	s2,0(sp)
    80004a60:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004a64:	00000913          	li	s2,0
    80004a68:	0380006f          	j	80004aa0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	91c080e7          	jalr	-1764(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004a74:	00148493          	addi	s1,s1,1
    80004a78:	000027b7          	lui	a5,0x2
    80004a7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a80:	0097ee63          	bltu	a5,s1,80004a9c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a84:	00000713          	li	a4,0
    80004a88:	000077b7          	lui	a5,0x7
    80004a8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a90:	fce7eee3          	bltu	a5,a4,80004a6c <_ZL11workerBodyBPv+0x20>
    80004a94:	00170713          	addi	a4,a4,1
    80004a98:	ff1ff06f          	j	80004a88 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a9c:	00190913          	addi	s2,s2,1
    80004aa0:	00f00793          	li	a5,15
    80004aa4:	0527e063          	bltu	a5,s2,80004ae4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004aa8:	00005517          	auipc	a0,0x5
    80004aac:	9f050513          	addi	a0,a0,-1552 # 80009498 <CONSOLE_STATUS+0x488>
    80004ab0:	00001097          	auipc	ra,0x1
    80004ab4:	ac4080e7          	jalr	-1340(ra) # 80005574 <_Z11printStringPKc>
    80004ab8:	00000613          	li	a2,0
    80004abc:	00a00593          	li	a1,10
    80004ac0:	0009051b          	sext.w	a0,s2
    80004ac4:	00001097          	auipc	ra,0x1
    80004ac8:	c60080e7          	jalr	-928(ra) # 80005724 <_Z8printIntiii>
    80004acc:	00004517          	auipc	a0,0x4
    80004ad0:	7ec50513          	addi	a0,a0,2028 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004ad4:	00001097          	auipc	ra,0x1
    80004ad8:	aa0080e7          	jalr	-1376(ra) # 80005574 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004adc:	00000493          	li	s1,0
    80004ae0:	f99ff06f          	j	80004a78 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004ae4:	00005517          	auipc	a0,0x5
    80004ae8:	9bc50513          	addi	a0,a0,-1604 # 800094a0 <CONSOLE_STATUS+0x490>
    80004aec:	00001097          	auipc	ra,0x1
    80004af0:	a88080e7          	jalr	-1400(ra) # 80005574 <_Z11printStringPKc>
    finishedB = true;
    80004af4:	00100793          	li	a5,1
    80004af8:	00007717          	auipc	a4,0x7
    80004afc:	3af70923          	sb	a5,946(a4) # 8000beaa <_ZL9finishedB>
    thread_dispatch();
    80004b00:	ffffd097          	auipc	ra,0xffffd
    80004b04:	888080e7          	jalr	-1912(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004b08:	01813083          	ld	ra,24(sp)
    80004b0c:	01013403          	ld	s0,16(sp)
    80004b10:	00813483          	ld	s1,8(sp)
    80004b14:	00013903          	ld	s2,0(sp)
    80004b18:	02010113          	addi	sp,sp,32
    80004b1c:	00008067          	ret

0000000080004b20 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004b20:	fe010113          	addi	sp,sp,-32
    80004b24:	00113c23          	sd	ra,24(sp)
    80004b28:	00813823          	sd	s0,16(sp)
    80004b2c:	00913423          	sd	s1,8(sp)
    80004b30:	01213023          	sd	s2,0(sp)
    80004b34:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004b38:	00000913          	li	s2,0
    80004b3c:	0380006f          	j	80004b74 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004b40:	ffffd097          	auipc	ra,0xffffd
    80004b44:	848080e7          	jalr	-1976(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004b48:	00148493          	addi	s1,s1,1
    80004b4c:	000027b7          	lui	a5,0x2
    80004b50:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004b54:	0097ee63          	bltu	a5,s1,80004b70 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004b58:	00000713          	li	a4,0
    80004b5c:	000077b7          	lui	a5,0x7
    80004b60:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004b64:	fce7eee3          	bltu	a5,a4,80004b40 <_ZL11workerBodyAPv+0x20>
    80004b68:	00170713          	addi	a4,a4,1
    80004b6c:	ff1ff06f          	j	80004b5c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004b70:	00190913          	addi	s2,s2,1
    80004b74:	00900793          	li	a5,9
    80004b78:	0527e063          	bltu	a5,s2,80004bb8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004b7c:	00005517          	auipc	a0,0x5
    80004b80:	90450513          	addi	a0,a0,-1788 # 80009480 <CONSOLE_STATUS+0x470>
    80004b84:	00001097          	auipc	ra,0x1
    80004b88:	9f0080e7          	jalr	-1552(ra) # 80005574 <_Z11printStringPKc>
    80004b8c:	00000613          	li	a2,0
    80004b90:	00a00593          	li	a1,10
    80004b94:	0009051b          	sext.w	a0,s2
    80004b98:	00001097          	auipc	ra,0x1
    80004b9c:	b8c080e7          	jalr	-1140(ra) # 80005724 <_Z8printIntiii>
    80004ba0:	00004517          	auipc	a0,0x4
    80004ba4:	71850513          	addi	a0,a0,1816 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004ba8:	00001097          	auipc	ra,0x1
    80004bac:	9cc080e7          	jalr	-1588(ra) # 80005574 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004bb0:	00000493          	li	s1,0
    80004bb4:	f99ff06f          	j	80004b4c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004bb8:	00005517          	auipc	a0,0x5
    80004bbc:	8d050513          	addi	a0,a0,-1840 # 80009488 <CONSOLE_STATUS+0x478>
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	9b4080e7          	jalr	-1612(ra) # 80005574 <_Z11printStringPKc>
    finishedA = true;
    80004bc8:	00100793          	li	a5,1
    80004bcc:	00007717          	auipc	a4,0x7
    80004bd0:	2cf70fa3          	sb	a5,735(a4) # 8000beab <_ZL9finishedA>
}
    80004bd4:	01813083          	ld	ra,24(sp)
    80004bd8:	01013403          	ld	s0,16(sp)
    80004bdc:	00813483          	ld	s1,8(sp)
    80004be0:	00013903          	ld	s2,0(sp)
    80004be4:	02010113          	addi	sp,sp,32
    80004be8:	00008067          	ret

0000000080004bec <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004bec:	fd010113          	addi	sp,sp,-48
    80004bf0:	02113423          	sd	ra,40(sp)
    80004bf4:	02813023          	sd	s0,32(sp)
    80004bf8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004bfc:	00000613          	li	a2,0
    80004c00:	00000597          	auipc	a1,0x0
    80004c04:	f2058593          	addi	a1,a1,-224 # 80004b20 <_ZL11workerBodyAPv>
    80004c08:	fd040513          	addi	a0,s0,-48
    80004c0c:	ffffc097          	auipc	ra,0xffffc
    80004c10:	678080e7          	jalr	1656(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004c14:	00005517          	auipc	a0,0x5
    80004c18:	90450513          	addi	a0,a0,-1788 # 80009518 <CONSOLE_STATUS+0x508>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	958080e7          	jalr	-1704(ra) # 80005574 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004c24:	00000613          	li	a2,0
    80004c28:	00000597          	auipc	a1,0x0
    80004c2c:	e2458593          	addi	a1,a1,-476 # 80004a4c <_ZL11workerBodyBPv>
    80004c30:	fd840513          	addi	a0,s0,-40
    80004c34:	ffffc097          	auipc	ra,0xffffc
    80004c38:	650080e7          	jalr	1616(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004c3c:	00005517          	auipc	a0,0x5
    80004c40:	8f450513          	addi	a0,a0,-1804 # 80009530 <CONSOLE_STATUS+0x520>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	930080e7          	jalr	-1744(ra) # 80005574 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004c4c:	00000613          	li	a2,0
    80004c50:	00000597          	auipc	a1,0x0
    80004c54:	c7c58593          	addi	a1,a1,-900 # 800048cc <_ZL11workerBodyCPv>
    80004c58:	fe040513          	addi	a0,s0,-32
    80004c5c:	ffffc097          	auipc	ra,0xffffc
    80004c60:	628080e7          	jalr	1576(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004c64:	00005517          	auipc	a0,0x5
    80004c68:	8e450513          	addi	a0,a0,-1820 # 80009548 <CONSOLE_STATUS+0x538>
    80004c6c:	00001097          	auipc	ra,0x1
    80004c70:	908080e7          	jalr	-1784(ra) # 80005574 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004c74:	00000613          	li	a2,0
    80004c78:	00000597          	auipc	a1,0x0
    80004c7c:	b0c58593          	addi	a1,a1,-1268 # 80004784 <_ZL11workerBodyDPv>
    80004c80:	fe840513          	addi	a0,s0,-24
    80004c84:	ffffc097          	auipc	ra,0xffffc
    80004c88:	600080e7          	jalr	1536(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004c8c:	00005517          	auipc	a0,0x5
    80004c90:	8d450513          	addi	a0,a0,-1836 # 80009560 <CONSOLE_STATUS+0x550>
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	8e0080e7          	jalr	-1824(ra) # 80005574 <_Z11printStringPKc>
    80004c9c:	00c0006f          	j	80004ca8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004ca0:	ffffc097          	auipc	ra,0xffffc
    80004ca4:	6e8080e7          	jalr	1768(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ca8:	00007797          	auipc	a5,0x7
    80004cac:	2037c783          	lbu	a5,515(a5) # 8000beab <_ZL9finishedA>
    80004cb0:	fe0788e3          	beqz	a5,80004ca0 <_Z18Threads_C_API_testv+0xb4>
    80004cb4:	00007797          	auipc	a5,0x7
    80004cb8:	1f67c783          	lbu	a5,502(a5) # 8000beaa <_ZL9finishedB>
    80004cbc:	fe0782e3          	beqz	a5,80004ca0 <_Z18Threads_C_API_testv+0xb4>
    80004cc0:	00007797          	auipc	a5,0x7
    80004cc4:	1e97c783          	lbu	a5,489(a5) # 8000bea9 <_ZL9finishedC>
    80004cc8:	fc078ce3          	beqz	a5,80004ca0 <_Z18Threads_C_API_testv+0xb4>
    80004ccc:	00007797          	auipc	a5,0x7
    80004cd0:	1dc7c783          	lbu	a5,476(a5) # 8000bea8 <_ZL9finishedD>
    80004cd4:	fc0786e3          	beqz	a5,80004ca0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004cd8:	02813083          	ld	ra,40(sp)
    80004cdc:	02013403          	ld	s0,32(sp)
    80004ce0:	03010113          	addi	sp,sp,48
    80004ce4:	00008067          	ret

0000000080004ce8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004ce8:	fd010113          	addi	sp,sp,-48
    80004cec:	02113423          	sd	ra,40(sp)
    80004cf0:	02813023          	sd	s0,32(sp)
    80004cf4:	00913c23          	sd	s1,24(sp)
    80004cf8:	01213823          	sd	s2,16(sp)
    80004cfc:	01313423          	sd	s3,8(sp)
    80004d00:	03010413          	addi	s0,sp,48
    80004d04:	00050993          	mv	s3,a0
    80004d08:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004d0c:	00000913          	li	s2,0
    80004d10:	00c0006f          	j	80004d1c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004d14:	ffffe097          	auipc	ra,0xffffe
    80004d18:	bd0080e7          	jalr	-1072(ra) # 800028e4 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004d1c:	ffffd097          	auipc	ra,0xffffd
    80004d20:	8b4080e7          	jalr	-1868(ra) # 800015d0 <_Z4getcv>
    80004d24:	0005059b          	sext.w	a1,a0
    80004d28:	01b00793          	li	a5,27
    80004d2c:	02f58a63          	beq	a1,a5,80004d60 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004d30:	0084b503          	ld	a0,8(s1)
    80004d34:	00001097          	auipc	ra,0x1
    80004d38:	c64080e7          	jalr	-924(ra) # 80005998 <_ZN9BufferCPP3putEi>
        i++;
    80004d3c:	0019071b          	addiw	a4,s2,1
    80004d40:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004d44:	0004a683          	lw	a3,0(s1)
    80004d48:	0026979b          	slliw	a5,a3,0x2
    80004d4c:	00d787bb          	addw	a5,a5,a3
    80004d50:	0017979b          	slliw	a5,a5,0x1
    80004d54:	02f767bb          	remw	a5,a4,a5
    80004d58:	fc0792e3          	bnez	a5,80004d1c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004d5c:	fb9ff06f          	j	80004d14 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004d60:	00100793          	li	a5,1
    80004d64:	00007717          	auipc	a4,0x7
    80004d68:	14f72623          	sw	a5,332(a4) # 8000beb0 <_ZL9threadEnd>
    td->buffer->put('!');
    80004d6c:	0209b783          	ld	a5,32(s3)
    80004d70:	02100593          	li	a1,33
    80004d74:	0087b503          	ld	a0,8(a5)
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	c20080e7          	jalr	-992(ra) # 80005998 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004d80:	0104b503          	ld	a0,16(s1)
    80004d84:	ffffe097          	auipc	ra,0xffffe
    80004d88:	c40080e7          	jalr	-960(ra) # 800029c4 <_ZN9Semaphore6signalEv>
}
    80004d8c:	02813083          	ld	ra,40(sp)
    80004d90:	02013403          	ld	s0,32(sp)
    80004d94:	01813483          	ld	s1,24(sp)
    80004d98:	01013903          	ld	s2,16(sp)
    80004d9c:	00813983          	ld	s3,8(sp)
    80004da0:	03010113          	addi	sp,sp,48
    80004da4:	00008067          	ret

0000000080004da8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004da8:	fe010113          	addi	sp,sp,-32
    80004dac:	00113c23          	sd	ra,24(sp)
    80004db0:	00813823          	sd	s0,16(sp)
    80004db4:	00913423          	sd	s1,8(sp)
    80004db8:	01213023          	sd	s2,0(sp)
    80004dbc:	02010413          	addi	s0,sp,32
    80004dc0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004dc4:	00000913          	li	s2,0
    80004dc8:	00c0006f          	j	80004dd4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004dcc:	ffffe097          	auipc	ra,0xffffe
    80004dd0:	b18080e7          	jalr	-1256(ra) # 800028e4 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004dd4:	00007797          	auipc	a5,0x7
    80004dd8:	0dc7a783          	lw	a5,220(a5) # 8000beb0 <_ZL9threadEnd>
    80004ddc:	02079e63          	bnez	a5,80004e18 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004de0:	0004a583          	lw	a1,0(s1)
    80004de4:	0305859b          	addiw	a1,a1,48
    80004de8:	0084b503          	ld	a0,8(s1)
    80004dec:	00001097          	auipc	ra,0x1
    80004df0:	bac080e7          	jalr	-1108(ra) # 80005998 <_ZN9BufferCPP3putEi>
        i++;
    80004df4:	0019071b          	addiw	a4,s2,1
    80004df8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004dfc:	0004a683          	lw	a3,0(s1)
    80004e00:	0026979b          	slliw	a5,a3,0x2
    80004e04:	00d787bb          	addw	a5,a5,a3
    80004e08:	0017979b          	slliw	a5,a5,0x1
    80004e0c:	02f767bb          	remw	a5,a4,a5
    80004e10:	fc0792e3          	bnez	a5,80004dd4 <_ZN12ProducerSync8producerEPv+0x2c>
    80004e14:	fb9ff06f          	j	80004dcc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004e18:	0104b503          	ld	a0,16(s1)
    80004e1c:	ffffe097          	auipc	ra,0xffffe
    80004e20:	ba8080e7          	jalr	-1112(ra) # 800029c4 <_ZN9Semaphore6signalEv>
}
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	01013403          	ld	s0,16(sp)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	00013903          	ld	s2,0(sp)
    80004e34:	02010113          	addi	sp,sp,32
    80004e38:	00008067          	ret

0000000080004e3c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004e3c:	fd010113          	addi	sp,sp,-48
    80004e40:	02113423          	sd	ra,40(sp)
    80004e44:	02813023          	sd	s0,32(sp)
    80004e48:	00913c23          	sd	s1,24(sp)
    80004e4c:	01213823          	sd	s2,16(sp)
    80004e50:	01313423          	sd	s3,8(sp)
    80004e54:	01413023          	sd	s4,0(sp)
    80004e58:	03010413          	addi	s0,sp,48
    80004e5c:	00050993          	mv	s3,a0
    80004e60:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004e64:	00000a13          	li	s4,0
    80004e68:	01c0006f          	j	80004e84 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004e6c:	ffffe097          	auipc	ra,0xffffe
    80004e70:	a78080e7          	jalr	-1416(ra) # 800028e4 <_ZN6Thread8dispatchEv>
    80004e74:	0500006f          	j	80004ec4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004e78:	00a00513          	li	a0,10
    80004e7c:	ffffc097          	auipc	ra,0xffffc
    80004e80:	794080e7          	jalr	1940(ra) # 80001610 <_Z4putcc>
    while (!threadEnd) {
    80004e84:	00007797          	auipc	a5,0x7
    80004e88:	02c7a783          	lw	a5,44(a5) # 8000beb0 <_ZL9threadEnd>
    80004e8c:	06079263          	bnez	a5,80004ef0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004e90:	00893503          	ld	a0,8(s2)
    80004e94:	00001097          	auipc	ra,0x1
    80004e98:	b94080e7          	jalr	-1132(ra) # 80005a28 <_ZN9BufferCPP3getEv>
        i++;
    80004e9c:	001a049b          	addiw	s1,s4,1
    80004ea0:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004ea4:	0ff57513          	andi	a0,a0,255
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	768080e7          	jalr	1896(ra) # 80001610 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004eb0:	00092703          	lw	a4,0(s2)
    80004eb4:	0027179b          	slliw	a5,a4,0x2
    80004eb8:	00e787bb          	addw	a5,a5,a4
    80004ebc:	02f4e7bb          	remw	a5,s1,a5
    80004ec0:	fa0786e3          	beqz	a5,80004e6c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004ec4:	05000793          	li	a5,80
    80004ec8:	02f4e4bb          	remw	s1,s1,a5
    80004ecc:	fa049ce3          	bnez	s1,80004e84 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004ed0:	fa9ff06f          	j	80004e78 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004ed4:	0209b783          	ld	a5,32(s3)
    80004ed8:	0087b503          	ld	a0,8(a5)
    80004edc:	00001097          	auipc	ra,0x1
    80004ee0:	b4c080e7          	jalr	-1204(ra) # 80005a28 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004ee4:	0ff57513          	andi	a0,a0,255
    80004ee8:	ffffe097          	auipc	ra,0xffffe
    80004eec:	b98080e7          	jalr	-1128(ra) # 80002a80 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004ef0:	0209b783          	ld	a5,32(s3)
    80004ef4:	0087b503          	ld	a0,8(a5)
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	bbc080e7          	jalr	-1092(ra) # 80005ab4 <_ZN9BufferCPP6getCntEv>
    80004f00:	fca04ae3          	bgtz	a0,80004ed4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004f04:	01093503          	ld	a0,16(s2)
    80004f08:	ffffe097          	auipc	ra,0xffffe
    80004f0c:	abc080e7          	jalr	-1348(ra) # 800029c4 <_ZN9Semaphore6signalEv>
}
    80004f10:	02813083          	ld	ra,40(sp)
    80004f14:	02013403          	ld	s0,32(sp)
    80004f18:	01813483          	ld	s1,24(sp)
    80004f1c:	01013903          	ld	s2,16(sp)
    80004f20:	00813983          	ld	s3,8(sp)
    80004f24:	00013a03          	ld	s4,0(sp)
    80004f28:	03010113          	addi	sp,sp,48
    80004f2c:	00008067          	ret

0000000080004f30 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004f30:	f8010113          	addi	sp,sp,-128
    80004f34:	06113c23          	sd	ra,120(sp)
    80004f38:	06813823          	sd	s0,112(sp)
    80004f3c:	06913423          	sd	s1,104(sp)
    80004f40:	07213023          	sd	s2,96(sp)
    80004f44:	05313c23          	sd	s3,88(sp)
    80004f48:	05413823          	sd	s4,80(sp)
    80004f4c:	05513423          	sd	s5,72(sp)
    80004f50:	05613023          	sd	s6,64(sp)
    80004f54:	03713c23          	sd	s7,56(sp)
    80004f58:	03813823          	sd	s8,48(sp)
    80004f5c:	03913423          	sd	s9,40(sp)
    80004f60:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004f64:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004f68:	00004517          	auipc	a0,0x4
    80004f6c:	43050513          	addi	a0,a0,1072 # 80009398 <CONSOLE_STATUS+0x388>
    80004f70:	00000097          	auipc	ra,0x0
    80004f74:	604080e7          	jalr	1540(ra) # 80005574 <_Z11printStringPKc>
    getString(input, 30);
    80004f78:	01e00593          	li	a1,30
    80004f7c:	f8040493          	addi	s1,s0,-128
    80004f80:	00048513          	mv	a0,s1
    80004f84:	00000097          	auipc	ra,0x0
    80004f88:	678080e7          	jalr	1656(ra) # 800055fc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004f8c:	00048513          	mv	a0,s1
    80004f90:	00000097          	auipc	ra,0x0
    80004f94:	744080e7          	jalr	1860(ra) # 800056d4 <_Z11stringToIntPKc>
    80004f98:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004f9c:	00004517          	auipc	a0,0x4
    80004fa0:	41c50513          	addi	a0,a0,1052 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	5d0080e7          	jalr	1488(ra) # 80005574 <_Z11printStringPKc>
    getString(input, 30);
    80004fac:	01e00593          	li	a1,30
    80004fb0:	00048513          	mv	a0,s1
    80004fb4:	00000097          	auipc	ra,0x0
    80004fb8:	648080e7          	jalr	1608(ra) # 800055fc <_Z9getStringPci>
    n = stringToInt(input);
    80004fbc:	00048513          	mv	a0,s1
    80004fc0:	00000097          	auipc	ra,0x0
    80004fc4:	714080e7          	jalr	1812(ra) # 800056d4 <_Z11stringToIntPKc>
    80004fc8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004fcc:	00004517          	auipc	a0,0x4
    80004fd0:	40c50513          	addi	a0,a0,1036 # 800093d8 <CONSOLE_STATUS+0x3c8>
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	5a0080e7          	jalr	1440(ra) # 80005574 <_Z11printStringPKc>
    80004fdc:	00000613          	li	a2,0
    80004fe0:	00a00593          	li	a1,10
    80004fe4:	00090513          	mv	a0,s2
    80004fe8:	00000097          	auipc	ra,0x0
    80004fec:	73c080e7          	jalr	1852(ra) # 80005724 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004ff0:	00004517          	auipc	a0,0x4
    80004ff4:	40050513          	addi	a0,a0,1024 # 800093f0 <CONSOLE_STATUS+0x3e0>
    80004ff8:	00000097          	auipc	ra,0x0
    80004ffc:	57c080e7          	jalr	1404(ra) # 80005574 <_Z11printStringPKc>
    80005000:	00000613          	li	a2,0
    80005004:	00a00593          	li	a1,10
    80005008:	00048513          	mv	a0,s1
    8000500c:	00000097          	auipc	ra,0x0
    80005010:	718080e7          	jalr	1816(ra) # 80005724 <_Z8printIntiii>
    printString(".\n");
    80005014:	00004517          	auipc	a0,0x4
    80005018:	3f450513          	addi	a0,a0,1012 # 80009408 <CONSOLE_STATUS+0x3f8>
    8000501c:	00000097          	auipc	ra,0x0
    80005020:	558080e7          	jalr	1368(ra) # 80005574 <_Z11printStringPKc>
    if(threadNum > n) {
    80005024:	0324c463          	blt	s1,s2,8000504c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005028:	03205c63          	blez	s2,80005060 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000502c:	03800513          	li	a0,56
    80005030:	ffffd097          	auipc	ra,0xffffd
    80005034:	558080e7          	jalr	1368(ra) # 80002588 <_Znwm>
    80005038:	00050a93          	mv	s5,a0
    8000503c:	00048593          	mv	a1,s1
    80005040:	00001097          	auipc	ra,0x1
    80005044:	804080e7          	jalr	-2044(ra) # 80005844 <_ZN9BufferCPPC1Ei>
    80005048:	0300006f          	j	80005078 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000504c:	00004517          	auipc	a0,0x4
    80005050:	3c450513          	addi	a0,a0,964 # 80009410 <CONSOLE_STATUS+0x400>
    80005054:	00000097          	auipc	ra,0x0
    80005058:	520080e7          	jalr	1312(ra) # 80005574 <_Z11printStringPKc>
        return;
    8000505c:	0140006f          	j	80005070 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005060:	00004517          	auipc	a0,0x4
    80005064:	3f050513          	addi	a0,a0,1008 # 80009450 <CONSOLE_STATUS+0x440>
    80005068:	00000097          	auipc	ra,0x0
    8000506c:	50c080e7          	jalr	1292(ra) # 80005574 <_Z11printStringPKc>
        return;
    80005070:	000b8113          	mv	sp,s7
    80005074:	2380006f          	j	800052ac <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005078:	01000513          	li	a0,16
    8000507c:	ffffd097          	auipc	ra,0xffffd
    80005080:	50c080e7          	jalr	1292(ra) # 80002588 <_Znwm>
    80005084:	00050493          	mv	s1,a0
    80005088:	00000593          	li	a1,0
    8000508c:	ffffe097          	auipc	ra,0xffffe
    80005090:	8d0080e7          	jalr	-1840(ra) # 8000295c <_ZN9SemaphoreC1Ej>
    80005094:	00007797          	auipc	a5,0x7
    80005098:	e297b223          	sd	s1,-476(a5) # 8000beb8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000509c:	00391793          	slli	a5,s2,0x3
    800050a0:	00f78793          	addi	a5,a5,15
    800050a4:	ff07f793          	andi	a5,a5,-16
    800050a8:	40f10133          	sub	sp,sp,a5
    800050ac:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800050b0:	0019071b          	addiw	a4,s2,1
    800050b4:	00171793          	slli	a5,a4,0x1
    800050b8:	00e787b3          	add	a5,a5,a4
    800050bc:	00379793          	slli	a5,a5,0x3
    800050c0:	00f78793          	addi	a5,a5,15
    800050c4:	ff07f793          	andi	a5,a5,-16
    800050c8:	40f10133          	sub	sp,sp,a5
    800050cc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800050d0:	00191c13          	slli	s8,s2,0x1
    800050d4:	012c07b3          	add	a5,s8,s2
    800050d8:	00379793          	slli	a5,a5,0x3
    800050dc:	00fa07b3          	add	a5,s4,a5
    800050e0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800050e4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800050e8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800050ec:	02800513          	li	a0,40
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	498080e7          	jalr	1176(ra) # 80002588 <_Znwm>
    800050f8:	00050b13          	mv	s6,a0
    800050fc:	012c0c33          	add	s8,s8,s2
    80005100:	003c1c13          	slli	s8,s8,0x3
    80005104:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	758080e7          	jalr	1880(ra) # 80002860 <_ZN6ThreadC1Ev>
    80005110:	00007797          	auipc	a5,0x7
    80005114:	c0878793          	addi	a5,a5,-1016 # 8000bd18 <_ZTV12ConsumerSync+0x10>
    80005118:	00fb3023          	sd	a5,0(s6)
    8000511c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005120:	000b0513          	mv	a0,s6
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	76c080e7          	jalr	1900(ra) # 80002890 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000512c:	00000493          	li	s1,0
    80005130:	0380006f          	j	80005168 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005134:	00007797          	auipc	a5,0x7
    80005138:	bbc78793          	addi	a5,a5,-1092 # 8000bcf0 <_ZTV12ProducerSync+0x10>
    8000513c:	00fcb023          	sd	a5,0(s9)
    80005140:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005144:	00349793          	slli	a5,s1,0x3
    80005148:	00f987b3          	add	a5,s3,a5
    8000514c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005150:	00349793          	slli	a5,s1,0x3
    80005154:	00f987b3          	add	a5,s3,a5
    80005158:	0007b503          	ld	a0,0(a5)
    8000515c:	ffffd097          	auipc	ra,0xffffd
    80005160:	734080e7          	jalr	1844(ra) # 80002890 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005164:	0014849b          	addiw	s1,s1,1
    80005168:	0b24d063          	bge	s1,s2,80005208 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000516c:	00149793          	slli	a5,s1,0x1
    80005170:	009787b3          	add	a5,a5,s1
    80005174:	00379793          	slli	a5,a5,0x3
    80005178:	00fa07b3          	add	a5,s4,a5
    8000517c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005180:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005184:	00007717          	auipc	a4,0x7
    80005188:	d3473703          	ld	a4,-716(a4) # 8000beb8 <_ZL10waitForAll>
    8000518c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005190:	02905863          	blez	s1,800051c0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005194:	02800513          	li	a0,40
    80005198:	ffffd097          	auipc	ra,0xffffd
    8000519c:	3f0080e7          	jalr	1008(ra) # 80002588 <_Znwm>
    800051a0:	00050c93          	mv	s9,a0
    800051a4:	00149c13          	slli	s8,s1,0x1
    800051a8:	009c0c33          	add	s8,s8,s1
    800051ac:	003c1c13          	slli	s8,s8,0x3
    800051b0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	6ac080e7          	jalr	1708(ra) # 80002860 <_ZN6ThreadC1Ev>
    800051bc:	f79ff06f          	j	80005134 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800051c0:	02800513          	li	a0,40
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	3c4080e7          	jalr	964(ra) # 80002588 <_Znwm>
    800051cc:	00050c93          	mv	s9,a0
    800051d0:	00149c13          	slli	s8,s1,0x1
    800051d4:	009c0c33          	add	s8,s8,s1
    800051d8:	003c1c13          	slli	s8,s8,0x3
    800051dc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	680080e7          	jalr	1664(ra) # 80002860 <_ZN6ThreadC1Ev>
    800051e8:	00007797          	auipc	a5,0x7
    800051ec:	ae078793          	addi	a5,a5,-1312 # 8000bcc8 <_ZTV16ProducerKeyboard+0x10>
    800051f0:	00fcb023          	sd	a5,0(s9)
    800051f4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800051f8:	00349793          	slli	a5,s1,0x3
    800051fc:	00f987b3          	add	a5,s3,a5
    80005200:	0197b023          	sd	s9,0(a5)
    80005204:	f4dff06f          	j	80005150 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	6dc080e7          	jalr	1756(ra) # 800028e4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005210:	00000493          	li	s1,0
    80005214:	00994e63          	blt	s2,s1,80005230 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005218:	00007517          	auipc	a0,0x7
    8000521c:	ca053503          	ld	a0,-864(a0) # 8000beb8 <_ZL10waitForAll>
    80005220:	ffffd097          	auipc	ra,0xffffd
    80005224:	778080e7          	jalr	1912(ra) # 80002998 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005228:	0014849b          	addiw	s1,s1,1
    8000522c:	fe9ff06f          	j	80005214 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005230:	00000493          	li	s1,0
    80005234:	0080006f          	j	8000523c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005238:	0014849b          	addiw	s1,s1,1
    8000523c:	0324d263          	bge	s1,s2,80005260 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005240:	00349793          	slli	a5,s1,0x3
    80005244:	00f987b3          	add	a5,s3,a5
    80005248:	0007b503          	ld	a0,0(a5)
    8000524c:	fe0506e3          	beqz	a0,80005238 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005250:	00053783          	ld	a5,0(a0)
    80005254:	0087b783          	ld	a5,8(a5)
    80005258:	000780e7          	jalr	a5
    8000525c:	fddff06f          	j	80005238 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005260:	000b0a63          	beqz	s6,80005274 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005264:	000b3783          	ld	a5,0(s6)
    80005268:	0087b783          	ld	a5,8(a5)
    8000526c:	000b0513          	mv	a0,s6
    80005270:	000780e7          	jalr	a5
    delete waitForAll;
    80005274:	00007517          	auipc	a0,0x7
    80005278:	c4453503          	ld	a0,-956(a0) # 8000beb8 <_ZL10waitForAll>
    8000527c:	00050863          	beqz	a0,8000528c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005280:	00053783          	ld	a5,0(a0)
    80005284:	0087b783          	ld	a5,8(a5)
    80005288:	000780e7          	jalr	a5
    delete buffer;
    8000528c:	000a8e63          	beqz	s5,800052a8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005290:	000a8513          	mv	a0,s5
    80005294:	00001097          	auipc	ra,0x1
    80005298:	8a8080e7          	jalr	-1880(ra) # 80005b3c <_ZN9BufferCPPD1Ev>
    8000529c:	000a8513          	mv	a0,s5
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	338080e7          	jalr	824(ra) # 800025d8 <_ZdlPv>
    800052a8:	000b8113          	mv	sp,s7

}
    800052ac:	f8040113          	addi	sp,s0,-128
    800052b0:	07813083          	ld	ra,120(sp)
    800052b4:	07013403          	ld	s0,112(sp)
    800052b8:	06813483          	ld	s1,104(sp)
    800052bc:	06013903          	ld	s2,96(sp)
    800052c0:	05813983          	ld	s3,88(sp)
    800052c4:	05013a03          	ld	s4,80(sp)
    800052c8:	04813a83          	ld	s5,72(sp)
    800052cc:	04013b03          	ld	s6,64(sp)
    800052d0:	03813b83          	ld	s7,56(sp)
    800052d4:	03013c03          	ld	s8,48(sp)
    800052d8:	02813c83          	ld	s9,40(sp)
    800052dc:	08010113          	addi	sp,sp,128
    800052e0:	00008067          	ret
    800052e4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800052e8:	000a8513          	mv	a0,s5
    800052ec:	ffffd097          	auipc	ra,0xffffd
    800052f0:	2ec080e7          	jalr	748(ra) # 800025d8 <_ZdlPv>
    800052f4:	00048513          	mv	a0,s1
    800052f8:	00008097          	auipc	ra,0x8
    800052fc:	cb0080e7          	jalr	-848(ra) # 8000cfa8 <_Unwind_Resume>
    80005300:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005304:	00048513          	mv	a0,s1
    80005308:	ffffd097          	auipc	ra,0xffffd
    8000530c:	2d0080e7          	jalr	720(ra) # 800025d8 <_ZdlPv>
    80005310:	00090513          	mv	a0,s2
    80005314:	00008097          	auipc	ra,0x8
    80005318:	c94080e7          	jalr	-876(ra) # 8000cfa8 <_Unwind_Resume>
    8000531c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005320:	000b0513          	mv	a0,s6
    80005324:	ffffd097          	auipc	ra,0xffffd
    80005328:	2b4080e7          	jalr	692(ra) # 800025d8 <_ZdlPv>
    8000532c:	00048513          	mv	a0,s1
    80005330:	00008097          	auipc	ra,0x8
    80005334:	c78080e7          	jalr	-904(ra) # 8000cfa8 <_Unwind_Resume>
    80005338:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000533c:	000c8513          	mv	a0,s9
    80005340:	ffffd097          	auipc	ra,0xffffd
    80005344:	298080e7          	jalr	664(ra) # 800025d8 <_ZdlPv>
    80005348:	00048513          	mv	a0,s1
    8000534c:	00008097          	auipc	ra,0x8
    80005350:	c5c080e7          	jalr	-932(ra) # 8000cfa8 <_Unwind_Resume>
    80005354:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005358:	000c8513          	mv	a0,s9
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	27c080e7          	jalr	636(ra) # 800025d8 <_ZdlPv>
    80005364:	00048513          	mv	a0,s1
    80005368:	00008097          	auipc	ra,0x8
    8000536c:	c40080e7          	jalr	-960(ra) # 8000cfa8 <_Unwind_Resume>

0000000080005370 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005370:	ff010113          	addi	sp,sp,-16
    80005374:	00113423          	sd	ra,8(sp)
    80005378:	00813023          	sd	s0,0(sp)
    8000537c:	01010413          	addi	s0,sp,16
    80005380:	00007797          	auipc	a5,0x7
    80005384:	99878793          	addi	a5,a5,-1640 # 8000bd18 <_ZTV12ConsumerSync+0x10>
    80005388:	00f53023          	sd	a5,0(a0)
    8000538c:	ffffd097          	auipc	ra,0xffffd
    80005390:	3b0080e7          	jalr	944(ra) # 8000273c <_ZN6ThreadD1Ev>
    80005394:	00813083          	ld	ra,8(sp)
    80005398:	00013403          	ld	s0,0(sp)
    8000539c:	01010113          	addi	sp,sp,16
    800053a0:	00008067          	ret

00000000800053a4 <_ZN12ConsumerSyncD0Ev>:
    800053a4:	fe010113          	addi	sp,sp,-32
    800053a8:	00113c23          	sd	ra,24(sp)
    800053ac:	00813823          	sd	s0,16(sp)
    800053b0:	00913423          	sd	s1,8(sp)
    800053b4:	02010413          	addi	s0,sp,32
    800053b8:	00050493          	mv	s1,a0
    800053bc:	00007797          	auipc	a5,0x7
    800053c0:	95c78793          	addi	a5,a5,-1700 # 8000bd18 <_ZTV12ConsumerSync+0x10>
    800053c4:	00f53023          	sd	a5,0(a0)
    800053c8:	ffffd097          	auipc	ra,0xffffd
    800053cc:	374080e7          	jalr	884(ra) # 8000273c <_ZN6ThreadD1Ev>
    800053d0:	00048513          	mv	a0,s1
    800053d4:	ffffd097          	auipc	ra,0xffffd
    800053d8:	204080e7          	jalr	516(ra) # 800025d8 <_ZdlPv>
    800053dc:	01813083          	ld	ra,24(sp)
    800053e0:	01013403          	ld	s0,16(sp)
    800053e4:	00813483          	ld	s1,8(sp)
    800053e8:	02010113          	addi	sp,sp,32
    800053ec:	00008067          	ret

00000000800053f0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800053f0:	ff010113          	addi	sp,sp,-16
    800053f4:	00113423          	sd	ra,8(sp)
    800053f8:	00813023          	sd	s0,0(sp)
    800053fc:	01010413          	addi	s0,sp,16
    80005400:	00007797          	auipc	a5,0x7
    80005404:	8f078793          	addi	a5,a5,-1808 # 8000bcf0 <_ZTV12ProducerSync+0x10>
    80005408:	00f53023          	sd	a5,0(a0)
    8000540c:	ffffd097          	auipc	ra,0xffffd
    80005410:	330080e7          	jalr	816(ra) # 8000273c <_ZN6ThreadD1Ev>
    80005414:	00813083          	ld	ra,8(sp)
    80005418:	00013403          	ld	s0,0(sp)
    8000541c:	01010113          	addi	sp,sp,16
    80005420:	00008067          	ret

0000000080005424 <_ZN12ProducerSyncD0Ev>:
    80005424:	fe010113          	addi	sp,sp,-32
    80005428:	00113c23          	sd	ra,24(sp)
    8000542c:	00813823          	sd	s0,16(sp)
    80005430:	00913423          	sd	s1,8(sp)
    80005434:	02010413          	addi	s0,sp,32
    80005438:	00050493          	mv	s1,a0
    8000543c:	00007797          	auipc	a5,0x7
    80005440:	8b478793          	addi	a5,a5,-1868 # 8000bcf0 <_ZTV12ProducerSync+0x10>
    80005444:	00f53023          	sd	a5,0(a0)
    80005448:	ffffd097          	auipc	ra,0xffffd
    8000544c:	2f4080e7          	jalr	756(ra) # 8000273c <_ZN6ThreadD1Ev>
    80005450:	00048513          	mv	a0,s1
    80005454:	ffffd097          	auipc	ra,0xffffd
    80005458:	184080e7          	jalr	388(ra) # 800025d8 <_ZdlPv>
    8000545c:	01813083          	ld	ra,24(sp)
    80005460:	01013403          	ld	s0,16(sp)
    80005464:	00813483          	ld	s1,8(sp)
    80005468:	02010113          	addi	sp,sp,32
    8000546c:	00008067          	ret

0000000080005470 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005470:	ff010113          	addi	sp,sp,-16
    80005474:	00113423          	sd	ra,8(sp)
    80005478:	00813023          	sd	s0,0(sp)
    8000547c:	01010413          	addi	s0,sp,16
    80005480:	00007797          	auipc	a5,0x7
    80005484:	84878793          	addi	a5,a5,-1976 # 8000bcc8 <_ZTV16ProducerKeyboard+0x10>
    80005488:	00f53023          	sd	a5,0(a0)
    8000548c:	ffffd097          	auipc	ra,0xffffd
    80005490:	2b0080e7          	jalr	688(ra) # 8000273c <_ZN6ThreadD1Ev>
    80005494:	00813083          	ld	ra,8(sp)
    80005498:	00013403          	ld	s0,0(sp)
    8000549c:	01010113          	addi	sp,sp,16
    800054a0:	00008067          	ret

00000000800054a4 <_ZN16ProducerKeyboardD0Ev>:
    800054a4:	fe010113          	addi	sp,sp,-32
    800054a8:	00113c23          	sd	ra,24(sp)
    800054ac:	00813823          	sd	s0,16(sp)
    800054b0:	00913423          	sd	s1,8(sp)
    800054b4:	02010413          	addi	s0,sp,32
    800054b8:	00050493          	mv	s1,a0
    800054bc:	00007797          	auipc	a5,0x7
    800054c0:	80c78793          	addi	a5,a5,-2036 # 8000bcc8 <_ZTV16ProducerKeyboard+0x10>
    800054c4:	00f53023          	sd	a5,0(a0)
    800054c8:	ffffd097          	auipc	ra,0xffffd
    800054cc:	274080e7          	jalr	628(ra) # 8000273c <_ZN6ThreadD1Ev>
    800054d0:	00048513          	mv	a0,s1
    800054d4:	ffffd097          	auipc	ra,0xffffd
    800054d8:	104080e7          	jalr	260(ra) # 800025d8 <_ZdlPv>
    800054dc:	01813083          	ld	ra,24(sp)
    800054e0:	01013403          	ld	s0,16(sp)
    800054e4:	00813483          	ld	s1,8(sp)
    800054e8:	02010113          	addi	sp,sp,32
    800054ec:	00008067          	ret

00000000800054f0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800054f0:	ff010113          	addi	sp,sp,-16
    800054f4:	00113423          	sd	ra,8(sp)
    800054f8:	00813023          	sd	s0,0(sp)
    800054fc:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005500:	02053583          	ld	a1,32(a0)
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	7e4080e7          	jalr	2020(ra) # 80004ce8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000550c:	00813083          	ld	ra,8(sp)
    80005510:	00013403          	ld	s0,0(sp)
    80005514:	01010113          	addi	sp,sp,16
    80005518:	00008067          	ret

000000008000551c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000551c:	ff010113          	addi	sp,sp,-16
    80005520:	00113423          	sd	ra,8(sp)
    80005524:	00813023          	sd	s0,0(sp)
    80005528:	01010413          	addi	s0,sp,16
        producer(td);
    8000552c:	02053583          	ld	a1,32(a0)
    80005530:	00000097          	auipc	ra,0x0
    80005534:	878080e7          	jalr	-1928(ra) # 80004da8 <_ZN12ProducerSync8producerEPv>
    }
    80005538:	00813083          	ld	ra,8(sp)
    8000553c:	00013403          	ld	s0,0(sp)
    80005540:	01010113          	addi	sp,sp,16
    80005544:	00008067          	ret

0000000080005548 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005548:	ff010113          	addi	sp,sp,-16
    8000554c:	00113423          	sd	ra,8(sp)
    80005550:	00813023          	sd	s0,0(sp)
    80005554:	01010413          	addi	s0,sp,16
        consumer(td);
    80005558:	02053583          	ld	a1,32(a0)
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	8e0080e7          	jalr	-1824(ra) # 80004e3c <_ZN12ConsumerSync8consumerEPv>
    }
    80005564:	00813083          	ld	ra,8(sp)
    80005568:	00013403          	ld	s0,0(sp)
    8000556c:	01010113          	addi	sp,sp,16
    80005570:	00008067          	ret

0000000080005574 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005574:	fe010113          	addi	sp,sp,-32
    80005578:	00113c23          	sd	ra,24(sp)
    8000557c:	00813823          	sd	s0,16(sp)
    80005580:	00913423          	sd	s1,8(sp)
    80005584:	02010413          	addi	s0,sp,32
    80005588:	00050493          	mv	s1,a0
    LOCK();
    8000558c:	00100613          	li	a2,1
    80005590:	00000593          	li	a1,0
    80005594:	00007517          	auipc	a0,0x7
    80005598:	92c50513          	addi	a0,a0,-1748 # 8000bec0 <lockPrint>
    8000559c:	ffffc097          	auipc	ra,0xffffc
    800055a0:	c08080e7          	jalr	-1016(ra) # 800011a4 <copy_and_swap>
    800055a4:	00050863          	beqz	a0,800055b4 <_Z11printStringPKc+0x40>
    800055a8:	ffffc097          	auipc	ra,0xffffc
    800055ac:	de0080e7          	jalr	-544(ra) # 80001388 <_Z15thread_dispatchv>
    800055b0:	fddff06f          	j	8000558c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800055b4:	0004c503          	lbu	a0,0(s1)
    800055b8:	00050a63          	beqz	a0,800055cc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800055bc:	ffffc097          	auipc	ra,0xffffc
    800055c0:	054080e7          	jalr	84(ra) # 80001610 <_Z4putcc>
        string++;
    800055c4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800055c8:	fedff06f          	j	800055b4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800055cc:	00000613          	li	a2,0
    800055d0:	00100593          	li	a1,1
    800055d4:	00007517          	auipc	a0,0x7
    800055d8:	8ec50513          	addi	a0,a0,-1812 # 8000bec0 <lockPrint>
    800055dc:	ffffc097          	auipc	ra,0xffffc
    800055e0:	bc8080e7          	jalr	-1080(ra) # 800011a4 <copy_and_swap>
    800055e4:	fe0514e3          	bnez	a0,800055cc <_Z11printStringPKc+0x58>
}
    800055e8:	01813083          	ld	ra,24(sp)
    800055ec:	01013403          	ld	s0,16(sp)
    800055f0:	00813483          	ld	s1,8(sp)
    800055f4:	02010113          	addi	sp,sp,32
    800055f8:	00008067          	ret

00000000800055fc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800055fc:	fd010113          	addi	sp,sp,-48
    80005600:	02113423          	sd	ra,40(sp)
    80005604:	02813023          	sd	s0,32(sp)
    80005608:	00913c23          	sd	s1,24(sp)
    8000560c:	01213823          	sd	s2,16(sp)
    80005610:	01313423          	sd	s3,8(sp)
    80005614:	01413023          	sd	s4,0(sp)
    80005618:	03010413          	addi	s0,sp,48
    8000561c:	00050993          	mv	s3,a0
    80005620:	00058a13          	mv	s4,a1
    LOCK();
    80005624:	00100613          	li	a2,1
    80005628:	00000593          	li	a1,0
    8000562c:	00007517          	auipc	a0,0x7
    80005630:	89450513          	addi	a0,a0,-1900 # 8000bec0 <lockPrint>
    80005634:	ffffc097          	auipc	ra,0xffffc
    80005638:	b70080e7          	jalr	-1168(ra) # 800011a4 <copy_and_swap>
    8000563c:	00050863          	beqz	a0,8000564c <_Z9getStringPci+0x50>
    80005640:	ffffc097          	auipc	ra,0xffffc
    80005644:	d48080e7          	jalr	-696(ra) # 80001388 <_Z15thread_dispatchv>
    80005648:	fddff06f          	j	80005624 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000564c:	00000913          	li	s2,0
    80005650:	00090493          	mv	s1,s2
    80005654:	0019091b          	addiw	s2,s2,1
    80005658:	03495a63          	bge	s2,s4,8000568c <_Z9getStringPci+0x90>
        cc = getc();
    8000565c:	ffffc097          	auipc	ra,0xffffc
    80005660:	f74080e7          	jalr	-140(ra) # 800015d0 <_Z4getcv>
        if(cc < 1)
    80005664:	02050463          	beqz	a0,8000568c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005668:	009984b3          	add	s1,s3,s1
    8000566c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005670:	00a00793          	li	a5,10
    80005674:	00f50a63          	beq	a0,a5,80005688 <_Z9getStringPci+0x8c>
    80005678:	00d00793          	li	a5,13
    8000567c:	fcf51ae3          	bne	a0,a5,80005650 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005680:	00090493          	mv	s1,s2
    80005684:	0080006f          	j	8000568c <_Z9getStringPci+0x90>
    80005688:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000568c:	009984b3          	add	s1,s3,s1
    80005690:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005694:	00000613          	li	a2,0
    80005698:	00100593          	li	a1,1
    8000569c:	00007517          	auipc	a0,0x7
    800056a0:	82450513          	addi	a0,a0,-2012 # 8000bec0 <lockPrint>
    800056a4:	ffffc097          	auipc	ra,0xffffc
    800056a8:	b00080e7          	jalr	-1280(ra) # 800011a4 <copy_and_swap>
    800056ac:	fe0514e3          	bnez	a0,80005694 <_Z9getStringPci+0x98>
    return buf;
}
    800056b0:	00098513          	mv	a0,s3
    800056b4:	02813083          	ld	ra,40(sp)
    800056b8:	02013403          	ld	s0,32(sp)
    800056bc:	01813483          	ld	s1,24(sp)
    800056c0:	01013903          	ld	s2,16(sp)
    800056c4:	00813983          	ld	s3,8(sp)
    800056c8:	00013a03          	ld	s4,0(sp)
    800056cc:	03010113          	addi	sp,sp,48
    800056d0:	00008067          	ret

00000000800056d4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800056d4:	ff010113          	addi	sp,sp,-16
    800056d8:	00813423          	sd	s0,8(sp)
    800056dc:	01010413          	addi	s0,sp,16
    800056e0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800056e4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800056e8:	0006c603          	lbu	a2,0(a3)
    800056ec:	fd06071b          	addiw	a4,a2,-48
    800056f0:	0ff77713          	andi	a4,a4,255
    800056f4:	00900793          	li	a5,9
    800056f8:	02e7e063          	bltu	a5,a4,80005718 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800056fc:	0025179b          	slliw	a5,a0,0x2
    80005700:	00a787bb          	addw	a5,a5,a0
    80005704:	0017979b          	slliw	a5,a5,0x1
    80005708:	00168693          	addi	a3,a3,1
    8000570c:	00c787bb          	addw	a5,a5,a2
    80005710:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005714:	fd5ff06f          	j	800056e8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005718:	00813403          	ld	s0,8(sp)
    8000571c:	01010113          	addi	sp,sp,16
    80005720:	00008067          	ret

0000000080005724 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005724:	fc010113          	addi	sp,sp,-64
    80005728:	02113c23          	sd	ra,56(sp)
    8000572c:	02813823          	sd	s0,48(sp)
    80005730:	02913423          	sd	s1,40(sp)
    80005734:	03213023          	sd	s2,32(sp)
    80005738:	01313c23          	sd	s3,24(sp)
    8000573c:	04010413          	addi	s0,sp,64
    80005740:	00050493          	mv	s1,a0
    80005744:	00058913          	mv	s2,a1
    80005748:	00060993          	mv	s3,a2
    LOCK();
    8000574c:	00100613          	li	a2,1
    80005750:	00000593          	li	a1,0
    80005754:	00006517          	auipc	a0,0x6
    80005758:	76c50513          	addi	a0,a0,1900 # 8000bec0 <lockPrint>
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	a48080e7          	jalr	-1464(ra) # 800011a4 <copy_and_swap>
    80005764:	00050863          	beqz	a0,80005774 <_Z8printIntiii+0x50>
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	c20080e7          	jalr	-992(ra) # 80001388 <_Z15thread_dispatchv>
    80005770:	fddff06f          	j	8000574c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005774:	00098463          	beqz	s3,8000577c <_Z8printIntiii+0x58>
    80005778:	0804c463          	bltz	s1,80005800 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000577c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005780:	00000593          	li	a1,0
    }

    i = 0;
    80005784:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005788:	0009079b          	sext.w	a5,s2
    8000578c:	0325773b          	remuw	a4,a0,s2
    80005790:	00048613          	mv	a2,s1
    80005794:	0014849b          	addiw	s1,s1,1
    80005798:	02071693          	slli	a3,a4,0x20
    8000579c:	0206d693          	srli	a3,a3,0x20
    800057a0:	00006717          	auipc	a4,0x6
    800057a4:	59070713          	addi	a4,a4,1424 # 8000bd30 <digits>
    800057a8:	00d70733          	add	a4,a4,a3
    800057ac:	00074683          	lbu	a3,0(a4)
    800057b0:	fd040713          	addi	a4,s0,-48
    800057b4:	00c70733          	add	a4,a4,a2
    800057b8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800057bc:	0005071b          	sext.w	a4,a0
    800057c0:	0325553b          	divuw	a0,a0,s2
    800057c4:	fcf772e3          	bgeu	a4,a5,80005788 <_Z8printIntiii+0x64>
    if(neg)
    800057c8:	00058c63          	beqz	a1,800057e0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800057cc:	fd040793          	addi	a5,s0,-48
    800057d0:	009784b3          	add	s1,a5,s1
    800057d4:	02d00793          	li	a5,45
    800057d8:	fef48823          	sb	a5,-16(s1)
    800057dc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800057e0:	fff4849b          	addiw	s1,s1,-1
    800057e4:	0204c463          	bltz	s1,8000580c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800057e8:	fd040793          	addi	a5,s0,-48
    800057ec:	009787b3          	add	a5,a5,s1
    800057f0:	ff07c503          	lbu	a0,-16(a5)
    800057f4:	ffffc097          	auipc	ra,0xffffc
    800057f8:	e1c080e7          	jalr	-484(ra) # 80001610 <_Z4putcc>
    800057fc:	fe5ff06f          	j	800057e0 <_Z8printIntiii+0xbc>
        x = -xx;
    80005800:	4090053b          	negw	a0,s1
        neg = 1;
    80005804:	00100593          	li	a1,1
        x = -xx;
    80005808:	f7dff06f          	j	80005784 <_Z8printIntiii+0x60>

    UNLOCK();
    8000580c:	00000613          	li	a2,0
    80005810:	00100593          	li	a1,1
    80005814:	00006517          	auipc	a0,0x6
    80005818:	6ac50513          	addi	a0,a0,1708 # 8000bec0 <lockPrint>
    8000581c:	ffffc097          	auipc	ra,0xffffc
    80005820:	988080e7          	jalr	-1656(ra) # 800011a4 <copy_and_swap>
    80005824:	fe0514e3          	bnez	a0,8000580c <_Z8printIntiii+0xe8>
    80005828:	03813083          	ld	ra,56(sp)
    8000582c:	03013403          	ld	s0,48(sp)
    80005830:	02813483          	ld	s1,40(sp)
    80005834:	02013903          	ld	s2,32(sp)
    80005838:	01813983          	ld	s3,24(sp)
    8000583c:	04010113          	addi	sp,sp,64
    80005840:	00008067          	ret

0000000080005844 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005844:	fd010113          	addi	sp,sp,-48
    80005848:	02113423          	sd	ra,40(sp)
    8000584c:	02813023          	sd	s0,32(sp)
    80005850:	00913c23          	sd	s1,24(sp)
    80005854:	01213823          	sd	s2,16(sp)
    80005858:	01313423          	sd	s3,8(sp)
    8000585c:	03010413          	addi	s0,sp,48
    80005860:	00050493          	mv	s1,a0
    80005864:	00058913          	mv	s2,a1
    80005868:	0015879b          	addiw	a5,a1,1
    8000586c:	0007851b          	sext.w	a0,a5
    80005870:	00f4a023          	sw	a5,0(s1)
    80005874:	0004a823          	sw	zero,16(s1)
    80005878:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000587c:	00251513          	slli	a0,a0,0x2
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	978080e7          	jalr	-1672(ra) # 800011f8 <_Z9mem_allocm>
    80005888:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000588c:	01000513          	li	a0,16
    80005890:	ffffd097          	auipc	ra,0xffffd
    80005894:	cf8080e7          	jalr	-776(ra) # 80002588 <_Znwm>
    80005898:	00050993          	mv	s3,a0
    8000589c:	00000593          	li	a1,0
    800058a0:	ffffd097          	auipc	ra,0xffffd
    800058a4:	0bc080e7          	jalr	188(ra) # 8000295c <_ZN9SemaphoreC1Ej>
    800058a8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800058ac:	01000513          	li	a0,16
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	cd8080e7          	jalr	-808(ra) # 80002588 <_Znwm>
    800058b8:	00050993          	mv	s3,a0
    800058bc:	00090593          	mv	a1,s2
    800058c0:	ffffd097          	auipc	ra,0xffffd
    800058c4:	09c080e7          	jalr	156(ra) # 8000295c <_ZN9SemaphoreC1Ej>
    800058c8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800058cc:	01000513          	li	a0,16
    800058d0:	ffffd097          	auipc	ra,0xffffd
    800058d4:	cb8080e7          	jalr	-840(ra) # 80002588 <_Znwm>
    800058d8:	00050913          	mv	s2,a0
    800058dc:	00100593          	li	a1,1
    800058e0:	ffffd097          	auipc	ra,0xffffd
    800058e4:	07c080e7          	jalr	124(ra) # 8000295c <_ZN9SemaphoreC1Ej>
    800058e8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800058ec:	01000513          	li	a0,16
    800058f0:	ffffd097          	auipc	ra,0xffffd
    800058f4:	c98080e7          	jalr	-872(ra) # 80002588 <_Znwm>
    800058f8:	00050913          	mv	s2,a0
    800058fc:	00100593          	li	a1,1
    80005900:	ffffd097          	auipc	ra,0xffffd
    80005904:	05c080e7          	jalr	92(ra) # 8000295c <_ZN9SemaphoreC1Ej>
    80005908:	0324b823          	sd	s2,48(s1)
}
    8000590c:	02813083          	ld	ra,40(sp)
    80005910:	02013403          	ld	s0,32(sp)
    80005914:	01813483          	ld	s1,24(sp)
    80005918:	01013903          	ld	s2,16(sp)
    8000591c:	00813983          	ld	s3,8(sp)
    80005920:	03010113          	addi	sp,sp,48
    80005924:	00008067          	ret
    80005928:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000592c:	00098513          	mv	a0,s3
    80005930:	ffffd097          	auipc	ra,0xffffd
    80005934:	ca8080e7          	jalr	-856(ra) # 800025d8 <_ZdlPv>
    80005938:	00048513          	mv	a0,s1
    8000593c:	00007097          	auipc	ra,0x7
    80005940:	66c080e7          	jalr	1644(ra) # 8000cfa8 <_Unwind_Resume>
    80005944:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005948:	00098513          	mv	a0,s3
    8000594c:	ffffd097          	auipc	ra,0xffffd
    80005950:	c8c080e7          	jalr	-884(ra) # 800025d8 <_ZdlPv>
    80005954:	00048513          	mv	a0,s1
    80005958:	00007097          	auipc	ra,0x7
    8000595c:	650080e7          	jalr	1616(ra) # 8000cfa8 <_Unwind_Resume>
    80005960:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005964:	00090513          	mv	a0,s2
    80005968:	ffffd097          	auipc	ra,0xffffd
    8000596c:	c70080e7          	jalr	-912(ra) # 800025d8 <_ZdlPv>
    80005970:	00048513          	mv	a0,s1
    80005974:	00007097          	auipc	ra,0x7
    80005978:	634080e7          	jalr	1588(ra) # 8000cfa8 <_Unwind_Resume>
    8000597c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005980:	00090513          	mv	a0,s2
    80005984:	ffffd097          	auipc	ra,0xffffd
    80005988:	c54080e7          	jalr	-940(ra) # 800025d8 <_ZdlPv>
    8000598c:	00048513          	mv	a0,s1
    80005990:	00007097          	auipc	ra,0x7
    80005994:	618080e7          	jalr	1560(ra) # 8000cfa8 <_Unwind_Resume>

0000000080005998 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005998:	fe010113          	addi	sp,sp,-32
    8000599c:	00113c23          	sd	ra,24(sp)
    800059a0:	00813823          	sd	s0,16(sp)
    800059a4:	00913423          	sd	s1,8(sp)
    800059a8:	01213023          	sd	s2,0(sp)
    800059ac:	02010413          	addi	s0,sp,32
    800059b0:	00050493          	mv	s1,a0
    800059b4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800059b8:	01853503          	ld	a0,24(a0)
    800059bc:	ffffd097          	auipc	ra,0xffffd
    800059c0:	fdc080e7          	jalr	-36(ra) # 80002998 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800059c4:	0304b503          	ld	a0,48(s1)
    800059c8:	ffffd097          	auipc	ra,0xffffd
    800059cc:	fd0080e7          	jalr	-48(ra) # 80002998 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800059d0:	0084b783          	ld	a5,8(s1)
    800059d4:	0144a703          	lw	a4,20(s1)
    800059d8:	00271713          	slli	a4,a4,0x2
    800059dc:	00e787b3          	add	a5,a5,a4
    800059e0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800059e4:	0144a783          	lw	a5,20(s1)
    800059e8:	0017879b          	addiw	a5,a5,1
    800059ec:	0004a703          	lw	a4,0(s1)
    800059f0:	02e7e7bb          	remw	a5,a5,a4
    800059f4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800059f8:	0304b503          	ld	a0,48(s1)
    800059fc:	ffffd097          	auipc	ra,0xffffd
    80005a00:	fc8080e7          	jalr	-56(ra) # 800029c4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005a04:	0204b503          	ld	a0,32(s1)
    80005a08:	ffffd097          	auipc	ra,0xffffd
    80005a0c:	fbc080e7          	jalr	-68(ra) # 800029c4 <_ZN9Semaphore6signalEv>

}
    80005a10:	01813083          	ld	ra,24(sp)
    80005a14:	01013403          	ld	s0,16(sp)
    80005a18:	00813483          	ld	s1,8(sp)
    80005a1c:	00013903          	ld	s2,0(sp)
    80005a20:	02010113          	addi	sp,sp,32
    80005a24:	00008067          	ret

0000000080005a28 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005a28:	fe010113          	addi	sp,sp,-32
    80005a2c:	00113c23          	sd	ra,24(sp)
    80005a30:	00813823          	sd	s0,16(sp)
    80005a34:	00913423          	sd	s1,8(sp)
    80005a38:	01213023          	sd	s2,0(sp)
    80005a3c:	02010413          	addi	s0,sp,32
    80005a40:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005a44:	02053503          	ld	a0,32(a0)
    80005a48:	ffffd097          	auipc	ra,0xffffd
    80005a4c:	f50080e7          	jalr	-176(ra) # 80002998 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005a50:	0284b503          	ld	a0,40(s1)
    80005a54:	ffffd097          	auipc	ra,0xffffd
    80005a58:	f44080e7          	jalr	-188(ra) # 80002998 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005a5c:	0084b703          	ld	a4,8(s1)
    80005a60:	0104a783          	lw	a5,16(s1)
    80005a64:	00279693          	slli	a3,a5,0x2
    80005a68:	00d70733          	add	a4,a4,a3
    80005a6c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005a70:	0017879b          	addiw	a5,a5,1
    80005a74:	0004a703          	lw	a4,0(s1)
    80005a78:	02e7e7bb          	remw	a5,a5,a4
    80005a7c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005a80:	0284b503          	ld	a0,40(s1)
    80005a84:	ffffd097          	auipc	ra,0xffffd
    80005a88:	f40080e7          	jalr	-192(ra) # 800029c4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005a8c:	0184b503          	ld	a0,24(s1)
    80005a90:	ffffd097          	auipc	ra,0xffffd
    80005a94:	f34080e7          	jalr	-204(ra) # 800029c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005a98:	00090513          	mv	a0,s2
    80005a9c:	01813083          	ld	ra,24(sp)
    80005aa0:	01013403          	ld	s0,16(sp)
    80005aa4:	00813483          	ld	s1,8(sp)
    80005aa8:	00013903          	ld	s2,0(sp)
    80005aac:	02010113          	addi	sp,sp,32
    80005ab0:	00008067          	ret

0000000080005ab4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005ab4:	fe010113          	addi	sp,sp,-32
    80005ab8:	00113c23          	sd	ra,24(sp)
    80005abc:	00813823          	sd	s0,16(sp)
    80005ac0:	00913423          	sd	s1,8(sp)
    80005ac4:	01213023          	sd	s2,0(sp)
    80005ac8:	02010413          	addi	s0,sp,32
    80005acc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005ad0:	02853503          	ld	a0,40(a0)
    80005ad4:	ffffd097          	auipc	ra,0xffffd
    80005ad8:	ec4080e7          	jalr	-316(ra) # 80002998 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005adc:	0304b503          	ld	a0,48(s1)
    80005ae0:	ffffd097          	auipc	ra,0xffffd
    80005ae4:	eb8080e7          	jalr	-328(ra) # 80002998 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005ae8:	0144a783          	lw	a5,20(s1)
    80005aec:	0104a903          	lw	s2,16(s1)
    80005af0:	0327ce63          	blt	a5,s2,80005b2c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005af4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005af8:	0304b503          	ld	a0,48(s1)
    80005afc:	ffffd097          	auipc	ra,0xffffd
    80005b00:	ec8080e7          	jalr	-312(ra) # 800029c4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005b04:	0284b503          	ld	a0,40(s1)
    80005b08:	ffffd097          	auipc	ra,0xffffd
    80005b0c:	ebc080e7          	jalr	-324(ra) # 800029c4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005b10:	00090513          	mv	a0,s2
    80005b14:	01813083          	ld	ra,24(sp)
    80005b18:	01013403          	ld	s0,16(sp)
    80005b1c:	00813483          	ld	s1,8(sp)
    80005b20:	00013903          	ld	s2,0(sp)
    80005b24:	02010113          	addi	sp,sp,32
    80005b28:	00008067          	ret
        ret = cap - head + tail;
    80005b2c:	0004a703          	lw	a4,0(s1)
    80005b30:	4127093b          	subw	s2,a4,s2
    80005b34:	00f9093b          	addw	s2,s2,a5
    80005b38:	fc1ff06f          	j	80005af8 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005b3c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005b3c:	fe010113          	addi	sp,sp,-32
    80005b40:	00113c23          	sd	ra,24(sp)
    80005b44:	00813823          	sd	s0,16(sp)
    80005b48:	00913423          	sd	s1,8(sp)
    80005b4c:	02010413          	addi	s0,sp,32
    80005b50:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005b54:	00a00513          	li	a0,10
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	f28080e7          	jalr	-216(ra) # 80002a80 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005b60:	00004517          	auipc	a0,0x4
    80005b64:	a1850513          	addi	a0,a0,-1512 # 80009578 <CONSOLE_STATUS+0x568>
    80005b68:	00000097          	auipc	ra,0x0
    80005b6c:	a0c080e7          	jalr	-1524(ra) # 80005574 <_Z11printStringPKc>
    while (getCnt()) {
    80005b70:	00048513          	mv	a0,s1
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	f40080e7          	jalr	-192(ra) # 80005ab4 <_ZN9BufferCPP6getCntEv>
    80005b7c:	02050c63          	beqz	a0,80005bb4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005b80:	0084b783          	ld	a5,8(s1)
    80005b84:	0104a703          	lw	a4,16(s1)
    80005b88:	00271713          	slli	a4,a4,0x2
    80005b8c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005b90:	0007c503          	lbu	a0,0(a5)
    80005b94:	ffffd097          	auipc	ra,0xffffd
    80005b98:	eec080e7          	jalr	-276(ra) # 80002a80 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005b9c:	0104a783          	lw	a5,16(s1)
    80005ba0:	0017879b          	addiw	a5,a5,1
    80005ba4:	0004a703          	lw	a4,0(s1)
    80005ba8:	02e7e7bb          	remw	a5,a5,a4
    80005bac:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005bb0:	fc1ff06f          	j	80005b70 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005bb4:	02100513          	li	a0,33
    80005bb8:	ffffd097          	auipc	ra,0xffffd
    80005bbc:	ec8080e7          	jalr	-312(ra) # 80002a80 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005bc0:	00a00513          	li	a0,10
    80005bc4:	ffffd097          	auipc	ra,0xffffd
    80005bc8:	ebc080e7          	jalr	-324(ra) # 80002a80 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005bcc:	0084b503          	ld	a0,8(s1)
    80005bd0:	ffffb097          	auipc	ra,0xffffb
    80005bd4:	674080e7          	jalr	1652(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80005bd8:	0204b503          	ld	a0,32(s1)
    80005bdc:	00050863          	beqz	a0,80005bec <_ZN9BufferCPPD1Ev+0xb0>
    80005be0:	00053783          	ld	a5,0(a0)
    80005be4:	0087b783          	ld	a5,8(a5)
    80005be8:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005bec:	0184b503          	ld	a0,24(s1)
    80005bf0:	00050863          	beqz	a0,80005c00 <_ZN9BufferCPPD1Ev+0xc4>
    80005bf4:	00053783          	ld	a5,0(a0)
    80005bf8:	0087b783          	ld	a5,8(a5)
    80005bfc:	000780e7          	jalr	a5
    delete mutexTail;
    80005c00:	0304b503          	ld	a0,48(s1)
    80005c04:	00050863          	beqz	a0,80005c14 <_ZN9BufferCPPD1Ev+0xd8>
    80005c08:	00053783          	ld	a5,0(a0)
    80005c0c:	0087b783          	ld	a5,8(a5)
    80005c10:	000780e7          	jalr	a5
    delete mutexHead;
    80005c14:	0284b503          	ld	a0,40(s1)
    80005c18:	00050863          	beqz	a0,80005c28 <_ZN9BufferCPPD1Ev+0xec>
    80005c1c:	00053783          	ld	a5,0(a0)
    80005c20:	0087b783          	ld	a5,8(a5)
    80005c24:	000780e7          	jalr	a5
}
    80005c28:	01813083          	ld	ra,24(sp)
    80005c2c:	01013403          	ld	s0,16(sp)
    80005c30:	00813483          	ld	s1,8(sp)
    80005c34:	02010113          	addi	sp,sp,32
    80005c38:	00008067          	ret

0000000080005c3c <_ZL8busyWaitv>:
#include "../h/syscall_cpp.hpp"

static Semaphore* printMutex;

static void busyWait() {
    for (int i = 0; i < 20; i++) {
    80005c3c:	00000693          	li	a3,0
    80005c40:	01300793          	li	a5,19
    80005c44:	04d7ca63          	blt	a5,a3,80005c98 <_ZL8busyWaitv+0x5c>
static void busyWait() {
    80005c48:	fe010113          	addi	sp,sp,-32
    80005c4c:	00813c23          	sd	s0,24(sp)
    80005c50:	02010413          	addi	s0,sp,32
    80005c54:	0100006f          	j	80005c64 <_ZL8busyWaitv+0x28>
    for (int i = 0; i < 20; i++) {
    80005c58:	0016869b          	addiw	a3,a3,1
    80005c5c:	01300793          	li	a5,19
    80005c60:	02d7c663          	blt	a5,a3,80005c8c <_ZL8busyWaitv+0x50>
        for (volatile int j = 0; j < 100000; j++) {
    80005c64:	fe042623          	sw	zero,-20(s0)
    80005c68:	fec42703          	lw	a4,-20(s0)
    80005c6c:	0007071b          	sext.w	a4,a4
    80005c70:	000187b7          	lui	a5,0x18
    80005c74:	69f78793          	addi	a5,a5,1695 # 1869f <_entry-0x7ffe7961>
    80005c78:	fee7c0e3          	blt	a5,a4,80005c58 <_ZL8busyWaitv+0x1c>
    80005c7c:	fec42783          	lw	a5,-20(s0)
    80005c80:	0017879b          	addiw	a5,a5,1
    80005c84:	fef42623          	sw	a5,-20(s0)
    80005c88:	fe1ff06f          	j	80005c68 <_ZL8busyWaitv+0x2c>
            // busy wait
        }
    }
}
    80005c8c:	01813403          	ld	s0,24(sp)
    80005c90:	02010113          	addi	sp,sp,32
    80005c94:	00008067          	ret
    80005c98:	00008067          	ret

0000000080005c9c <_Z4modCv>:
            printMutex->signal();
        }
    }
};

void modC() {
    80005c9c:	fd010113          	addi	sp,sp,-48
    80005ca0:	02113423          	sd	ra,40(sp)
    80005ca4:	02813023          	sd	s0,32(sp)
    80005ca8:	00913c23          	sd	s1,24(sp)
    80005cac:	01213823          	sd	s2,16(sp)
    80005cb0:	01313423          	sd	s3,8(sp)
    80005cb4:	01413023          	sd	s4,0(sp)
    80005cb8:	03010413          	addi	s0,sp,48
    printString("C++ API getThreadId test started\n");
    80005cbc:	00004517          	auipc	a0,0x4
    80005cc0:	91450513          	addi	a0,a0,-1772 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80005cc4:	00000097          	auipc	ra,0x0
    80005cc8:	8b0080e7          	jalr	-1872(ra) # 80005574 <_Z11printStringPKc>

    printMutex = new Semaphore(1);
    80005ccc:	01000513          	li	a0,16
    80005cd0:	ffffd097          	auipc	ra,0xffffd
    80005cd4:	8b8080e7          	jalr	-1864(ra) # 80002588 <_Znwm>
    80005cd8:	00050493          	mv	s1,a0
    80005cdc:	00100593          	li	a1,1
    80005ce0:	ffffd097          	auipc	ra,0xffffd
    80005ce4:	c7c080e7          	jalr	-900(ra) # 8000295c <_ZN9SemaphoreC1Ej>
    80005ce8:	00006797          	auipc	a5,0x6
    80005cec:	1e97b023          	sd	s1,480(a5) # 8000bec8 <_ZL10printMutex>

    Thread* threadA = new Worker_A();
    80005cf0:	02000513          	li	a0,32
    80005cf4:	ffffd097          	auipc	ra,0xffffd
    80005cf8:	894080e7          	jalr	-1900(ra) # 80002588 <_Znwm>
    80005cfc:	00050a13          	mv	s4,a0
    Worker_A() : Thread() {}
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	b60080e7          	jalr	-1184(ra) # 80002860 <_ZN6ThreadC1Ev>
    80005d08:	00006797          	auipc	a5,0x6
    80005d0c:	05078793          	addi	a5,a5,80 # 8000bd58 <_ZTV8Worker_A+0x10>
    80005d10:	00fa3023          	sd	a5,0(s4)
    Thread* threadB = new Worker_B();
    80005d14:	02000513          	li	a0,32
    80005d18:	ffffd097          	auipc	ra,0xffffd
    80005d1c:	870080e7          	jalr	-1936(ra) # 80002588 <_Znwm>
    80005d20:	00050993          	mv	s3,a0
    Worker_B() : Thread() {}
    80005d24:	ffffd097          	auipc	ra,0xffffd
    80005d28:	b3c080e7          	jalr	-1220(ra) # 80002860 <_ZN6ThreadC1Ev>
    80005d2c:	00006797          	auipc	a5,0x6
    80005d30:	05478793          	addi	a5,a5,84 # 8000bd80 <_ZTV8Worker_B+0x10>
    80005d34:	00f9b023          	sd	a5,0(s3)
    Thread* threadC = new Worker_C();
    80005d38:	02000513          	li	a0,32
    80005d3c:	ffffd097          	auipc	ra,0xffffd
    80005d40:	84c080e7          	jalr	-1972(ra) # 80002588 <_Znwm>
    80005d44:	00050913          	mv	s2,a0
    Worker_C() : Thread() {}
    80005d48:	ffffd097          	auipc	ra,0xffffd
    80005d4c:	b18080e7          	jalr	-1256(ra) # 80002860 <_ZN6ThreadC1Ev>
    80005d50:	00006797          	auipc	a5,0x6
    80005d54:	05878793          	addi	a5,a5,88 # 8000bda8 <_ZTV8Worker_C+0x10>
    80005d58:	00f93023          	sd	a5,0(s2)

    threadA->start();
    80005d5c:	000a0513          	mv	a0,s4
    80005d60:	ffffd097          	auipc	ra,0xffffd
    80005d64:	b30080e7          	jalr	-1232(ra) # 80002890 <_ZN6Thread5startEv>
    threadB->start();
    80005d68:	00098513          	mv	a0,s3
    80005d6c:	ffffd097          	auipc	ra,0xffffd
    80005d70:	b24080e7          	jalr	-1244(ra) # 80002890 <_ZN6Thread5startEv>
    threadC->start();
    80005d74:	00090513          	mv	a0,s2
    80005d78:	ffffd097          	auipc	ra,0xffffd
    80005d7c:	b18080e7          	jalr	-1256(ra) # 80002890 <_ZN6Thread5startEv>

    for (int i = 0; i < 3000; i++) {
    80005d80:	00000493          	li	s1,0
    80005d84:	000017b7          	lui	a5,0x1
    80005d88:	bb778793          	addi	a5,a5,-1097 # bb7 <_entry-0x7ffff449>
    80005d8c:	0097ca63          	blt	a5,s1,80005da0 <_Z4modCv+0x104>
        Thread::dispatch();
    80005d90:	ffffd097          	auipc	ra,0xffffd
    80005d94:	b54080e7          	jalr	-1196(ra) # 800028e4 <_ZN6Thread8dispatchEv>
    for (int i = 0; i < 3000; i++) {
    80005d98:	0014849b          	addiw	s1,s1,1
    80005d9c:	fe9ff06f          	j	80005d84 <_Z4modCv+0xe8>
    }

    delete threadA;
    80005da0:	000a0a63          	beqz	s4,80005db4 <_Z4modCv+0x118>
    80005da4:	000a3783          	ld	a5,0(s4)
    80005da8:	0087b783          	ld	a5,8(a5)
    80005dac:	000a0513          	mv	a0,s4
    80005db0:	000780e7          	jalr	a5
    delete threadB;
    80005db4:	00098a63          	beqz	s3,80005dc8 <_Z4modCv+0x12c>
    80005db8:	0009b783          	ld	a5,0(s3)
    80005dbc:	0087b783          	ld	a5,8(a5)
    80005dc0:	00098513          	mv	a0,s3
    80005dc4:	000780e7          	jalr	a5
    delete threadC;
    80005dc8:	00090a63          	beqz	s2,80005ddc <_Z4modCv+0x140>
    80005dcc:	00093783          	ld	a5,0(s2)
    80005dd0:	0087b783          	ld	a5,8(a5)
    80005dd4:	00090513          	mv	a0,s2
    80005dd8:	000780e7          	jalr	a5

    delete printMutex;
    80005ddc:	00006517          	auipc	a0,0x6
    80005de0:	0ec53503          	ld	a0,236(a0) # 8000bec8 <_ZL10printMutex>
    80005de4:	00050863          	beqz	a0,80005df4 <_Z4modCv+0x158>
    80005de8:	00053783          	ld	a5,0(a0)
    80005dec:	0087b783          	ld	a5,8(a5)
    80005df0:	000780e7          	jalr	a5

    printString("C++ API getThreadId test finished\n");
    80005df4:	00004517          	auipc	a0,0x4
    80005df8:	80450513          	addi	a0,a0,-2044 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80005dfc:	fffff097          	auipc	ra,0xfffff
    80005e00:	778080e7          	jalr	1912(ra) # 80005574 <_Z11printStringPKc>
    80005e04:	02813083          	ld	ra,40(sp)
    80005e08:	02013403          	ld	s0,32(sp)
    80005e0c:	01813483          	ld	s1,24(sp)
    80005e10:	01013903          	ld	s2,16(sp)
    80005e14:	00813983          	ld	s3,8(sp)
    80005e18:	00013a03          	ld	s4,0(sp)
    80005e1c:	03010113          	addi	sp,sp,48
    80005e20:	00008067          	ret
    80005e24:	00050913          	mv	s2,a0
    printMutex = new Semaphore(1);
    80005e28:	00048513          	mv	a0,s1
    80005e2c:	ffffc097          	auipc	ra,0xffffc
    80005e30:	7ac080e7          	jalr	1964(ra) # 800025d8 <_ZdlPv>
    80005e34:	00090513          	mv	a0,s2
    80005e38:	00007097          	auipc	ra,0x7
    80005e3c:	170080e7          	jalr	368(ra) # 8000cfa8 <_Unwind_Resume>
    80005e40:	00050493          	mv	s1,a0
    Thread* threadA = new Worker_A();
    80005e44:	000a0513          	mv	a0,s4
    80005e48:	ffffc097          	auipc	ra,0xffffc
    80005e4c:	790080e7          	jalr	1936(ra) # 800025d8 <_ZdlPv>
    80005e50:	00048513          	mv	a0,s1
    80005e54:	00007097          	auipc	ra,0x7
    80005e58:	154080e7          	jalr	340(ra) # 8000cfa8 <_Unwind_Resume>
    80005e5c:	00050493          	mv	s1,a0
    Thread* threadB = new Worker_B();
    80005e60:	00098513          	mv	a0,s3
    80005e64:	ffffc097          	auipc	ra,0xffffc
    80005e68:	774080e7          	jalr	1908(ra) # 800025d8 <_ZdlPv>
    80005e6c:	00048513          	mv	a0,s1
    80005e70:	00007097          	auipc	ra,0x7
    80005e74:	138080e7          	jalr	312(ra) # 8000cfa8 <_Unwind_Resume>
    80005e78:	00050493          	mv	s1,a0
    Thread* threadC = new Worker_C();
    80005e7c:	00090513          	mv	a0,s2
    80005e80:	ffffc097          	auipc	ra,0xffffc
    80005e84:	758080e7          	jalr	1880(ra) # 800025d8 <_ZdlPv>
    80005e88:	00048513          	mv	a0,s1
    80005e8c:	00007097          	auipc	ra,0x7
    80005e90:	11c080e7          	jalr	284(ra) # 8000cfa8 <_Unwind_Resume>

0000000080005e94 <_ZN8Worker_A3runEv>:
    void run() override {
    80005e94:	fd010113          	addi	sp,sp,-48
    80005e98:	02113423          	sd	ra,40(sp)
    80005e9c:	02813023          	sd	s0,32(sp)
    80005ea0:	00913c23          	sd	s1,24(sp)
    80005ea4:	01213823          	sd	s2,16(sp)
    80005ea8:	01313423          	sd	s3,8(sp)
    80005eac:	03010413          	addi	s0,sp,48
        for (int i = 0; i < 10; i++) {
    80005eb0:	00000493          	li	s1,0
    80005eb4:	00900793          	li	a5,9
    80005eb8:	0897cc63          	blt	a5,s1,80005f50 <_ZN8Worker_A3runEv+0xbc>
            busyWait();
    80005ebc:	00000097          	auipc	ra,0x0
    80005ec0:	d80080e7          	jalr	-640(ra) # 80005c3c <_ZL8busyWaitv>
            printMutex->wait();
    80005ec4:	00006997          	auipc	s3,0x6
    80005ec8:	00498993          	addi	s3,s3,4 # 8000bec8 <_ZL10printMutex>
    80005ecc:	0009b503          	ld	a0,0(s3)
    80005ed0:	ffffd097          	auipc	ra,0xffffd
    80005ed4:	ac8080e7          	jalr	-1336(ra) # 80002998 <_ZN9Semaphore4waitEv>
            uint64 id = Thread::getThreadId();
    80005ed8:	ffffd097          	auipc	ra,0xffffd
    80005edc:	a34080e7          	jalr	-1484(ra) # 8000290c <_ZN6Thread11getThreadIdEv>
    80005ee0:	00050913          	mv	s2,a0
            printString("Thread A, id = ");
    80005ee4:	00003517          	auipc	a0,0x3
    80005ee8:	6ac50513          	addi	a0,a0,1708 # 80009590 <CONSOLE_STATUS+0x580>
    80005eec:	fffff097          	auipc	ra,0xfffff
    80005ef0:	688080e7          	jalr	1672(ra) # 80005574 <_Z11printStringPKc>
            printInt(id);
    80005ef4:	00000613          	li	a2,0
    80005ef8:	00a00593          	li	a1,10
    80005efc:	00090513          	mv	a0,s2
    80005f00:	00000097          	auipc	ra,0x0
    80005f04:	824080e7          	jalr	-2012(ra) # 80005724 <_Z8printIntiii>
            printString(", iteration = ");
    80005f08:	00003517          	auipc	a0,0x3
    80005f0c:	69850513          	addi	a0,a0,1688 # 800095a0 <CONSOLE_STATUS+0x590>
    80005f10:	fffff097          	auipc	ra,0xfffff
    80005f14:	664080e7          	jalr	1636(ra) # 80005574 <_Z11printStringPKc>
            printInt(i);
    80005f18:	00000613          	li	a2,0
    80005f1c:	00a00593          	li	a1,10
    80005f20:	00048513          	mv	a0,s1
    80005f24:	00000097          	auipc	ra,0x0
    80005f28:	800080e7          	jalr	-2048(ra) # 80005724 <_Z8printIntiii>
            printString("\n");
    80005f2c:	00003517          	auipc	a0,0x3
    80005f30:	38c50513          	addi	a0,a0,908 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80005f34:	fffff097          	auipc	ra,0xfffff
    80005f38:	640080e7          	jalr	1600(ra) # 80005574 <_Z11printStringPKc>
            printMutex->signal();
    80005f3c:	0009b503          	ld	a0,0(s3)
    80005f40:	ffffd097          	auipc	ra,0xffffd
    80005f44:	a84080e7          	jalr	-1404(ra) # 800029c4 <_ZN9Semaphore6signalEv>
        for (int i = 0; i < 10; i++) {
    80005f48:	0014849b          	addiw	s1,s1,1
    80005f4c:	f69ff06f          	j	80005eb4 <_ZN8Worker_A3runEv+0x20>
    }
    80005f50:	02813083          	ld	ra,40(sp)
    80005f54:	02013403          	ld	s0,32(sp)
    80005f58:	01813483          	ld	s1,24(sp)
    80005f5c:	01013903          	ld	s2,16(sp)
    80005f60:	00813983          	ld	s3,8(sp)
    80005f64:	03010113          	addi	sp,sp,48
    80005f68:	00008067          	ret

0000000080005f6c <_ZN8Worker_B3runEv>:
    void run() override {
    80005f6c:	fd010113          	addi	sp,sp,-48
    80005f70:	02113423          	sd	ra,40(sp)
    80005f74:	02813023          	sd	s0,32(sp)
    80005f78:	00913c23          	sd	s1,24(sp)
    80005f7c:	01213823          	sd	s2,16(sp)
    80005f80:	01313423          	sd	s3,8(sp)
    80005f84:	03010413          	addi	s0,sp,48
        for (int i = 0; i < 10; i++) {
    80005f88:	00000493          	li	s1,0
    80005f8c:	00900793          	li	a5,9
    80005f90:	0897cc63          	blt	a5,s1,80006028 <_ZN8Worker_B3runEv+0xbc>
            busyWait();
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	ca8080e7          	jalr	-856(ra) # 80005c3c <_ZL8busyWaitv>
            printMutex->wait();
    80005f9c:	00006997          	auipc	s3,0x6
    80005fa0:	f2c98993          	addi	s3,s3,-212 # 8000bec8 <_ZL10printMutex>
    80005fa4:	0009b503          	ld	a0,0(s3)
    80005fa8:	ffffd097          	auipc	ra,0xffffd
    80005fac:	9f0080e7          	jalr	-1552(ra) # 80002998 <_ZN9Semaphore4waitEv>
            uint64 id = Thread::getThreadId();
    80005fb0:	ffffd097          	auipc	ra,0xffffd
    80005fb4:	95c080e7          	jalr	-1700(ra) # 8000290c <_ZN6Thread11getThreadIdEv>
    80005fb8:	00050913          	mv	s2,a0
            printString("Thread B, id = ");
    80005fbc:	00003517          	auipc	a0,0x3
    80005fc0:	5f450513          	addi	a0,a0,1524 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005fc4:	fffff097          	auipc	ra,0xfffff
    80005fc8:	5b0080e7          	jalr	1456(ra) # 80005574 <_Z11printStringPKc>
            printInt(id);
    80005fcc:	00000613          	li	a2,0
    80005fd0:	00a00593          	li	a1,10
    80005fd4:	00090513          	mv	a0,s2
    80005fd8:	fffff097          	auipc	ra,0xfffff
    80005fdc:	74c080e7          	jalr	1868(ra) # 80005724 <_Z8printIntiii>
            printString(", iteration = ");
    80005fe0:	00003517          	auipc	a0,0x3
    80005fe4:	5c050513          	addi	a0,a0,1472 # 800095a0 <CONSOLE_STATUS+0x590>
    80005fe8:	fffff097          	auipc	ra,0xfffff
    80005fec:	58c080e7          	jalr	1420(ra) # 80005574 <_Z11printStringPKc>
            printInt(i);
    80005ff0:	00000613          	li	a2,0
    80005ff4:	00a00593          	li	a1,10
    80005ff8:	00048513          	mv	a0,s1
    80005ffc:	fffff097          	auipc	ra,0xfffff
    80006000:	728080e7          	jalr	1832(ra) # 80005724 <_Z8printIntiii>
            printString("\n");
    80006004:	00003517          	auipc	a0,0x3
    80006008:	2b450513          	addi	a0,a0,692 # 800092b8 <CONSOLE_STATUS+0x2a8>
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	568080e7          	jalr	1384(ra) # 80005574 <_Z11printStringPKc>
            printMutex->signal();
    80006014:	0009b503          	ld	a0,0(s3)
    80006018:	ffffd097          	auipc	ra,0xffffd
    8000601c:	9ac080e7          	jalr	-1620(ra) # 800029c4 <_ZN9Semaphore6signalEv>
        for (int i = 0; i < 10; i++) {
    80006020:	0014849b          	addiw	s1,s1,1
    80006024:	f69ff06f          	j	80005f8c <_ZN8Worker_B3runEv+0x20>
    }
    80006028:	02813083          	ld	ra,40(sp)
    8000602c:	02013403          	ld	s0,32(sp)
    80006030:	01813483          	ld	s1,24(sp)
    80006034:	01013903          	ld	s2,16(sp)
    80006038:	00813983          	ld	s3,8(sp)
    8000603c:	03010113          	addi	sp,sp,48
    80006040:	00008067          	ret

0000000080006044 <_ZN8Worker_C3runEv>:
    void run() override {
    80006044:	fd010113          	addi	sp,sp,-48
    80006048:	02113423          	sd	ra,40(sp)
    8000604c:	02813023          	sd	s0,32(sp)
    80006050:	00913c23          	sd	s1,24(sp)
    80006054:	01213823          	sd	s2,16(sp)
    80006058:	01313423          	sd	s3,8(sp)
    8000605c:	03010413          	addi	s0,sp,48
        for (int i = 0; i < 10; i++) {
    80006060:	00000493          	li	s1,0
    80006064:	00900793          	li	a5,9
    80006068:	0897cc63          	blt	a5,s1,80006100 <_ZN8Worker_C3runEv+0xbc>
            busyWait();
    8000606c:	00000097          	auipc	ra,0x0
    80006070:	bd0080e7          	jalr	-1072(ra) # 80005c3c <_ZL8busyWaitv>
            printMutex->wait();
    80006074:	00006997          	auipc	s3,0x6
    80006078:	e5498993          	addi	s3,s3,-428 # 8000bec8 <_ZL10printMutex>
    8000607c:	0009b503          	ld	a0,0(s3)
    80006080:	ffffd097          	auipc	ra,0xffffd
    80006084:	918080e7          	jalr	-1768(ra) # 80002998 <_ZN9Semaphore4waitEv>
            uint64 id = Thread::getThreadId();
    80006088:	ffffd097          	auipc	ra,0xffffd
    8000608c:	884080e7          	jalr	-1916(ra) # 8000290c <_ZN6Thread11getThreadIdEv>
    80006090:	00050913          	mv	s2,a0
            printString("Thread C, id = ");
    80006094:	00003517          	auipc	a0,0x3
    80006098:	52c50513          	addi	a0,a0,1324 # 800095c0 <CONSOLE_STATUS+0x5b0>
    8000609c:	fffff097          	auipc	ra,0xfffff
    800060a0:	4d8080e7          	jalr	1240(ra) # 80005574 <_Z11printStringPKc>
            printInt(id);
    800060a4:	00000613          	li	a2,0
    800060a8:	00a00593          	li	a1,10
    800060ac:	00090513          	mv	a0,s2
    800060b0:	fffff097          	auipc	ra,0xfffff
    800060b4:	674080e7          	jalr	1652(ra) # 80005724 <_Z8printIntiii>
            printString(", iteration = ");
    800060b8:	00003517          	auipc	a0,0x3
    800060bc:	4e850513          	addi	a0,a0,1256 # 800095a0 <CONSOLE_STATUS+0x590>
    800060c0:	fffff097          	auipc	ra,0xfffff
    800060c4:	4b4080e7          	jalr	1204(ra) # 80005574 <_Z11printStringPKc>
            printInt(i);
    800060c8:	00000613          	li	a2,0
    800060cc:	00a00593          	li	a1,10
    800060d0:	00048513          	mv	a0,s1
    800060d4:	fffff097          	auipc	ra,0xfffff
    800060d8:	650080e7          	jalr	1616(ra) # 80005724 <_Z8printIntiii>
            printString("\n");
    800060dc:	00003517          	auipc	a0,0x3
    800060e0:	1dc50513          	addi	a0,a0,476 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800060e4:	fffff097          	auipc	ra,0xfffff
    800060e8:	490080e7          	jalr	1168(ra) # 80005574 <_Z11printStringPKc>
            printMutex->signal();
    800060ec:	0009b503          	ld	a0,0(s3)
    800060f0:	ffffd097          	auipc	ra,0xffffd
    800060f4:	8d4080e7          	jalr	-1836(ra) # 800029c4 <_ZN9Semaphore6signalEv>
        for (int i = 0; i < 10; i++) {
    800060f8:	0014849b          	addiw	s1,s1,1
    800060fc:	f69ff06f          	j	80006064 <_ZN8Worker_C3runEv+0x20>
    }
    80006100:	02813083          	ld	ra,40(sp)
    80006104:	02013403          	ld	s0,32(sp)
    80006108:	01813483          	ld	s1,24(sp)
    8000610c:	01013903          	ld	s2,16(sp)
    80006110:	00813983          	ld	s3,8(sp)
    80006114:	03010113          	addi	sp,sp,48
    80006118:	00008067          	ret

000000008000611c <_ZN8Worker_AD1Ev>:
class Worker_A : public Thread {
    8000611c:	ff010113          	addi	sp,sp,-16
    80006120:	00113423          	sd	ra,8(sp)
    80006124:	00813023          	sd	s0,0(sp)
    80006128:	01010413          	addi	s0,sp,16
    8000612c:	00006797          	auipc	a5,0x6
    80006130:	c2c78793          	addi	a5,a5,-980 # 8000bd58 <_ZTV8Worker_A+0x10>
    80006134:	00f53023          	sd	a5,0(a0)
    80006138:	ffffc097          	auipc	ra,0xffffc
    8000613c:	604080e7          	jalr	1540(ra) # 8000273c <_ZN6ThreadD1Ev>
    80006140:	00813083          	ld	ra,8(sp)
    80006144:	00013403          	ld	s0,0(sp)
    80006148:	01010113          	addi	sp,sp,16
    8000614c:	00008067          	ret

0000000080006150 <_ZN8Worker_AD0Ev>:
    80006150:	fe010113          	addi	sp,sp,-32
    80006154:	00113c23          	sd	ra,24(sp)
    80006158:	00813823          	sd	s0,16(sp)
    8000615c:	00913423          	sd	s1,8(sp)
    80006160:	02010413          	addi	s0,sp,32
    80006164:	00050493          	mv	s1,a0
    80006168:	00006797          	auipc	a5,0x6
    8000616c:	bf078793          	addi	a5,a5,-1040 # 8000bd58 <_ZTV8Worker_A+0x10>
    80006170:	00f53023          	sd	a5,0(a0)
    80006174:	ffffc097          	auipc	ra,0xffffc
    80006178:	5c8080e7          	jalr	1480(ra) # 8000273c <_ZN6ThreadD1Ev>
    8000617c:	00048513          	mv	a0,s1
    80006180:	ffffc097          	auipc	ra,0xffffc
    80006184:	458080e7          	jalr	1112(ra) # 800025d8 <_ZdlPv>
    80006188:	01813083          	ld	ra,24(sp)
    8000618c:	01013403          	ld	s0,16(sp)
    80006190:	00813483          	ld	s1,8(sp)
    80006194:	02010113          	addi	sp,sp,32
    80006198:	00008067          	ret

000000008000619c <_ZN8Worker_BD1Ev>:
class Worker_B : public Thread {
    8000619c:	ff010113          	addi	sp,sp,-16
    800061a0:	00113423          	sd	ra,8(sp)
    800061a4:	00813023          	sd	s0,0(sp)
    800061a8:	01010413          	addi	s0,sp,16
    800061ac:	00006797          	auipc	a5,0x6
    800061b0:	bd478793          	addi	a5,a5,-1068 # 8000bd80 <_ZTV8Worker_B+0x10>
    800061b4:	00f53023          	sd	a5,0(a0)
    800061b8:	ffffc097          	auipc	ra,0xffffc
    800061bc:	584080e7          	jalr	1412(ra) # 8000273c <_ZN6ThreadD1Ev>
    800061c0:	00813083          	ld	ra,8(sp)
    800061c4:	00013403          	ld	s0,0(sp)
    800061c8:	01010113          	addi	sp,sp,16
    800061cc:	00008067          	ret

00000000800061d0 <_ZN8Worker_BD0Ev>:
    800061d0:	fe010113          	addi	sp,sp,-32
    800061d4:	00113c23          	sd	ra,24(sp)
    800061d8:	00813823          	sd	s0,16(sp)
    800061dc:	00913423          	sd	s1,8(sp)
    800061e0:	02010413          	addi	s0,sp,32
    800061e4:	00050493          	mv	s1,a0
    800061e8:	00006797          	auipc	a5,0x6
    800061ec:	b9878793          	addi	a5,a5,-1128 # 8000bd80 <_ZTV8Worker_B+0x10>
    800061f0:	00f53023          	sd	a5,0(a0)
    800061f4:	ffffc097          	auipc	ra,0xffffc
    800061f8:	548080e7          	jalr	1352(ra) # 8000273c <_ZN6ThreadD1Ev>
    800061fc:	00048513          	mv	a0,s1
    80006200:	ffffc097          	auipc	ra,0xffffc
    80006204:	3d8080e7          	jalr	984(ra) # 800025d8 <_ZdlPv>
    80006208:	01813083          	ld	ra,24(sp)
    8000620c:	01013403          	ld	s0,16(sp)
    80006210:	00813483          	ld	s1,8(sp)
    80006214:	02010113          	addi	sp,sp,32
    80006218:	00008067          	ret

000000008000621c <_ZN8Worker_CD1Ev>:
class Worker_C : public Thread {
    8000621c:	ff010113          	addi	sp,sp,-16
    80006220:	00113423          	sd	ra,8(sp)
    80006224:	00813023          	sd	s0,0(sp)
    80006228:	01010413          	addi	s0,sp,16
    8000622c:	00006797          	auipc	a5,0x6
    80006230:	b7c78793          	addi	a5,a5,-1156 # 8000bda8 <_ZTV8Worker_C+0x10>
    80006234:	00f53023          	sd	a5,0(a0)
    80006238:	ffffc097          	auipc	ra,0xffffc
    8000623c:	504080e7          	jalr	1284(ra) # 8000273c <_ZN6ThreadD1Ev>
    80006240:	00813083          	ld	ra,8(sp)
    80006244:	00013403          	ld	s0,0(sp)
    80006248:	01010113          	addi	sp,sp,16
    8000624c:	00008067          	ret

0000000080006250 <_ZN8Worker_CD0Ev>:
    80006250:	fe010113          	addi	sp,sp,-32
    80006254:	00113c23          	sd	ra,24(sp)
    80006258:	00813823          	sd	s0,16(sp)
    8000625c:	00913423          	sd	s1,8(sp)
    80006260:	02010413          	addi	s0,sp,32
    80006264:	00050493          	mv	s1,a0
    80006268:	00006797          	auipc	a5,0x6
    8000626c:	b4078793          	addi	a5,a5,-1216 # 8000bda8 <_ZTV8Worker_C+0x10>
    80006270:	00f53023          	sd	a5,0(a0)
    80006274:	ffffc097          	auipc	ra,0xffffc
    80006278:	4c8080e7          	jalr	1224(ra) # 8000273c <_ZN6ThreadD1Ev>
    8000627c:	00048513          	mv	a0,s1
    80006280:	ffffc097          	auipc	ra,0xffffc
    80006284:	358080e7          	jalr	856(ra) # 800025d8 <_ZdlPv>
    80006288:	01813083          	ld	ra,24(sp)
    8000628c:	01013403          	ld	s0,16(sp)
    80006290:	00813483          	ld	s1,8(sp)
    80006294:	02010113          	addi	sp,sp,32
    80006298:	00008067          	ret

000000008000629c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000629c:	fe010113          	addi	sp,sp,-32
    800062a0:	00113c23          	sd	ra,24(sp)
    800062a4:	00813823          	sd	s0,16(sp)
    800062a8:	00913423          	sd	s1,8(sp)
    800062ac:	01213023          	sd	s2,0(sp)
    800062b0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800062b4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800062b8:	00600493          	li	s1,6
    while (--i > 0) {
    800062bc:	fff4849b          	addiw	s1,s1,-1
    800062c0:	04905463          	blez	s1,80006308 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800062c4:	00003517          	auipc	a0,0x3
    800062c8:	35c50513          	addi	a0,a0,860 # 80009620 <CONSOLE_STATUS+0x610>
    800062cc:	fffff097          	auipc	ra,0xfffff
    800062d0:	2a8080e7          	jalr	680(ra) # 80005574 <_Z11printStringPKc>
        printInt(sleep_time);
    800062d4:	00000613          	li	a2,0
    800062d8:	00a00593          	li	a1,10
    800062dc:	0009051b          	sext.w	a0,s2
    800062e0:	fffff097          	auipc	ra,0xfffff
    800062e4:	444080e7          	jalr	1092(ra) # 80005724 <_Z8printIntiii>
        printString(" !\n");
    800062e8:	00003517          	auipc	a0,0x3
    800062ec:	34050513          	addi	a0,a0,832 # 80009628 <CONSOLE_STATUS+0x618>
    800062f0:	fffff097          	auipc	ra,0xfffff
    800062f4:	284080e7          	jalr	644(ra) # 80005574 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800062f8:	00090513          	mv	a0,s2
    800062fc:	ffffb097          	auipc	ra,0xffffb
    80006300:	294080e7          	jalr	660(ra) # 80001590 <_Z10time_sleepm>
    while (--i > 0) {
    80006304:	fb9ff06f          	j	800062bc <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006308:	00a00793          	li	a5,10
    8000630c:	02f95933          	divu	s2,s2,a5
    80006310:	fff90913          	addi	s2,s2,-1
    80006314:	00006797          	auipc	a5,0x6
    80006318:	bbc78793          	addi	a5,a5,-1092 # 8000bed0 <_ZL8finished>
    8000631c:	01278933          	add	s2,a5,s2
    80006320:	00100793          	li	a5,1
    80006324:	00f90023          	sb	a5,0(s2)
}
    80006328:	01813083          	ld	ra,24(sp)
    8000632c:	01013403          	ld	s0,16(sp)
    80006330:	00813483          	ld	s1,8(sp)
    80006334:	00013903          	ld	s2,0(sp)
    80006338:	02010113          	addi	sp,sp,32
    8000633c:	00008067          	ret

0000000080006340 <_Z12testSleepingv>:

void testSleeping() {
    80006340:	fc010113          	addi	sp,sp,-64
    80006344:	02113c23          	sd	ra,56(sp)
    80006348:	02813823          	sd	s0,48(sp)
    8000634c:	02913423          	sd	s1,40(sp)
    80006350:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006354:	00a00793          	li	a5,10
    80006358:	fcf43823          	sd	a5,-48(s0)
    8000635c:	01400793          	li	a5,20
    80006360:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006364:	00000493          	li	s1,0
    80006368:	02c0006f          	j	80006394 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000636c:	00349793          	slli	a5,s1,0x3
    80006370:	fd040613          	addi	a2,s0,-48
    80006374:	00f60633          	add	a2,a2,a5
    80006378:	00000597          	auipc	a1,0x0
    8000637c:	f2458593          	addi	a1,a1,-220 # 8000629c <_ZL9sleepyRunPv>
    80006380:	fc040513          	addi	a0,s0,-64
    80006384:	00f50533          	add	a0,a0,a5
    80006388:	ffffb097          	auipc	ra,0xffffb
    8000638c:	efc080e7          	jalr	-260(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006390:	0014849b          	addiw	s1,s1,1
    80006394:	00100793          	li	a5,1
    80006398:	fc97dae3          	bge	a5,s1,8000636c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000639c:	00006797          	auipc	a5,0x6
    800063a0:	b347c783          	lbu	a5,-1228(a5) # 8000bed0 <_ZL8finished>
    800063a4:	fe078ce3          	beqz	a5,8000639c <_Z12testSleepingv+0x5c>
    800063a8:	00006797          	auipc	a5,0x6
    800063ac:	b297c783          	lbu	a5,-1239(a5) # 8000bed1 <_ZL8finished+0x1>
    800063b0:	fe0786e3          	beqz	a5,8000639c <_Z12testSleepingv+0x5c>
}
    800063b4:	03813083          	ld	ra,56(sp)
    800063b8:	03013403          	ld	s0,48(sp)
    800063bc:	02813483          	ld	s1,40(sp)
    800063c0:	04010113          	addi	sp,sp,64
    800063c4:	00008067          	ret

00000000800063c8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800063c8:	fe010113          	addi	sp,sp,-32
    800063cc:	00113c23          	sd	ra,24(sp)
    800063d0:	00813823          	sd	s0,16(sp)
    800063d4:	00913423          	sd	s1,8(sp)
    800063d8:	01213023          	sd	s2,0(sp)
    800063dc:	02010413          	addi	s0,sp,32
    800063e0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800063e4:	00100793          	li	a5,1
    800063e8:	02a7f863          	bgeu	a5,a0,80006418 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800063ec:	00a00793          	li	a5,10
    800063f0:	02f577b3          	remu	a5,a0,a5
    800063f4:	02078e63          	beqz	a5,80006430 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800063f8:	fff48513          	addi	a0,s1,-1
    800063fc:	00000097          	auipc	ra,0x0
    80006400:	fcc080e7          	jalr	-52(ra) # 800063c8 <_ZL9fibonaccim>
    80006404:	00050913          	mv	s2,a0
    80006408:	ffe48513          	addi	a0,s1,-2
    8000640c:	00000097          	auipc	ra,0x0
    80006410:	fbc080e7          	jalr	-68(ra) # 800063c8 <_ZL9fibonaccim>
    80006414:	00a90533          	add	a0,s2,a0
}
    80006418:	01813083          	ld	ra,24(sp)
    8000641c:	01013403          	ld	s0,16(sp)
    80006420:	00813483          	ld	s1,8(sp)
    80006424:	00013903          	ld	s2,0(sp)
    80006428:	02010113          	addi	sp,sp,32
    8000642c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	f58080e7          	jalr	-168(ra) # 80001388 <_Z15thread_dispatchv>
    80006438:	fc1ff06f          	j	800063f8 <_ZL9fibonaccim+0x30>

000000008000643c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000643c:	fe010113          	addi	sp,sp,-32
    80006440:	00113c23          	sd	ra,24(sp)
    80006444:	00813823          	sd	s0,16(sp)
    80006448:	00913423          	sd	s1,8(sp)
    8000644c:	01213023          	sd	s2,0(sp)
    80006450:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006454:	00a00493          	li	s1,10
    80006458:	0400006f          	j	80006498 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000645c:	00003517          	auipc	a0,0x3
    80006460:	08450513          	addi	a0,a0,132 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80006464:	fffff097          	auipc	ra,0xfffff
    80006468:	110080e7          	jalr	272(ra) # 80005574 <_Z11printStringPKc>
    8000646c:	00000613          	li	a2,0
    80006470:	00a00593          	li	a1,10
    80006474:	00048513          	mv	a0,s1
    80006478:	fffff097          	auipc	ra,0xfffff
    8000647c:	2ac080e7          	jalr	684(ra) # 80005724 <_Z8printIntiii>
    80006480:	00003517          	auipc	a0,0x3
    80006484:	e3850513          	addi	a0,a0,-456 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	0ec080e7          	jalr	236(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006490:	0014849b          	addiw	s1,s1,1
    80006494:	0ff4f493          	andi	s1,s1,255
    80006498:	00c00793          	li	a5,12
    8000649c:	fc97f0e3          	bgeu	a5,s1,8000645c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	04850513          	addi	a0,a0,72 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	0cc080e7          	jalr	204(ra) # 80005574 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800064b0:	00500313          	li	t1,5
    thread_dispatch();
    800064b4:	ffffb097          	auipc	ra,0xffffb
    800064b8:	ed4080e7          	jalr	-300(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800064bc:	01000513          	li	a0,16
    800064c0:	00000097          	auipc	ra,0x0
    800064c4:	f08080e7          	jalr	-248(ra) # 800063c8 <_ZL9fibonaccim>
    800064c8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800064cc:	00003517          	auipc	a0,0x3
    800064d0:	02c50513          	addi	a0,a0,44 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800064d4:	fffff097          	auipc	ra,0xfffff
    800064d8:	0a0080e7          	jalr	160(ra) # 80005574 <_Z11printStringPKc>
    800064dc:	00000613          	li	a2,0
    800064e0:	00a00593          	li	a1,10
    800064e4:	0009051b          	sext.w	a0,s2
    800064e8:	fffff097          	auipc	ra,0xfffff
    800064ec:	23c080e7          	jalr	572(ra) # 80005724 <_Z8printIntiii>
    800064f0:	00003517          	auipc	a0,0x3
    800064f4:	dc850513          	addi	a0,a0,-568 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800064f8:	fffff097          	auipc	ra,0xfffff
    800064fc:	07c080e7          	jalr	124(ra) # 80005574 <_Z11printStringPKc>
    80006500:	0400006f          	j	80006540 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006504:	00003517          	auipc	a0,0x3
    80006508:	fdc50513          	addi	a0,a0,-36 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000650c:	fffff097          	auipc	ra,0xfffff
    80006510:	068080e7          	jalr	104(ra) # 80005574 <_Z11printStringPKc>
    80006514:	00000613          	li	a2,0
    80006518:	00a00593          	li	a1,10
    8000651c:	00048513          	mv	a0,s1
    80006520:	fffff097          	auipc	ra,0xfffff
    80006524:	204080e7          	jalr	516(ra) # 80005724 <_Z8printIntiii>
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	d9050513          	addi	a0,a0,-624 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006530:	fffff097          	auipc	ra,0xfffff
    80006534:	044080e7          	jalr	68(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006538:	0014849b          	addiw	s1,s1,1
    8000653c:	0ff4f493          	andi	s1,s1,255
    80006540:	00f00793          	li	a5,15
    80006544:	fc97f0e3          	bgeu	a5,s1,80006504 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006548:	00003517          	auipc	a0,0x3
    8000654c:	fc050513          	addi	a0,a0,-64 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006550:	fffff097          	auipc	ra,0xfffff
    80006554:	024080e7          	jalr	36(ra) # 80005574 <_Z11printStringPKc>
    finishedD = true;
    80006558:	00100793          	li	a5,1
    8000655c:	00006717          	auipc	a4,0x6
    80006560:	96f70b23          	sb	a5,-1674(a4) # 8000bed2 <_ZL9finishedD>
    thread_dispatch();
    80006564:	ffffb097          	auipc	ra,0xffffb
    80006568:	e24080e7          	jalr	-476(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000656c:	01813083          	ld	ra,24(sp)
    80006570:	01013403          	ld	s0,16(sp)
    80006574:	00813483          	ld	s1,8(sp)
    80006578:	00013903          	ld	s2,0(sp)
    8000657c:	02010113          	addi	sp,sp,32
    80006580:	00008067          	ret

0000000080006584 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006584:	fe010113          	addi	sp,sp,-32
    80006588:	00113c23          	sd	ra,24(sp)
    8000658c:	00813823          	sd	s0,16(sp)
    80006590:	00913423          	sd	s1,8(sp)
    80006594:	01213023          	sd	s2,0(sp)
    80006598:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000659c:	00000493          	li	s1,0
    800065a0:	0400006f          	j	800065e0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800065a4:	00003517          	auipc	a0,0x3
    800065a8:	f0c50513          	addi	a0,a0,-244 # 800094b0 <CONSOLE_STATUS+0x4a0>
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	fc8080e7          	jalr	-56(ra) # 80005574 <_Z11printStringPKc>
    800065b4:	00000613          	li	a2,0
    800065b8:	00a00593          	li	a1,10
    800065bc:	00048513          	mv	a0,s1
    800065c0:	fffff097          	auipc	ra,0xfffff
    800065c4:	164080e7          	jalr	356(ra) # 80005724 <_Z8printIntiii>
    800065c8:	00003517          	auipc	a0,0x3
    800065cc:	cf050513          	addi	a0,a0,-784 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800065d0:	fffff097          	auipc	ra,0xfffff
    800065d4:	fa4080e7          	jalr	-92(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800065d8:	0014849b          	addiw	s1,s1,1
    800065dc:	0ff4f493          	andi	s1,s1,255
    800065e0:	00200793          	li	a5,2
    800065e4:	fc97f0e3          	bgeu	a5,s1,800065a4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	ed050513          	addi	a0,a0,-304 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	f84080e7          	jalr	-124(ra) # 80005574 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800065f8:	00700313          	li	t1,7
    thread_dispatch();
    800065fc:	ffffb097          	auipc	ra,0xffffb
    80006600:	d8c080e7          	jalr	-628(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006604:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006608:	00003517          	auipc	a0,0x3
    8000660c:	ec050513          	addi	a0,a0,-320 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80006610:	fffff097          	auipc	ra,0xfffff
    80006614:	f64080e7          	jalr	-156(ra) # 80005574 <_Z11printStringPKc>
    80006618:	00000613          	li	a2,0
    8000661c:	00a00593          	li	a1,10
    80006620:	0009051b          	sext.w	a0,s2
    80006624:	fffff097          	auipc	ra,0xfffff
    80006628:	100080e7          	jalr	256(ra) # 80005724 <_Z8printIntiii>
    8000662c:	00003517          	auipc	a0,0x3
    80006630:	c8c50513          	addi	a0,a0,-884 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006634:	fffff097          	auipc	ra,0xfffff
    80006638:	f40080e7          	jalr	-192(ra) # 80005574 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000663c:	00c00513          	li	a0,12
    80006640:	00000097          	auipc	ra,0x0
    80006644:	d88080e7          	jalr	-632(ra) # 800063c8 <_ZL9fibonaccim>
    80006648:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000664c:	00003517          	auipc	a0,0x3
    80006650:	e8450513          	addi	a0,a0,-380 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	f20080e7          	jalr	-224(ra) # 80005574 <_Z11printStringPKc>
    8000665c:	00000613          	li	a2,0
    80006660:	00a00593          	li	a1,10
    80006664:	0009051b          	sext.w	a0,s2
    80006668:	fffff097          	auipc	ra,0xfffff
    8000666c:	0bc080e7          	jalr	188(ra) # 80005724 <_Z8printIntiii>
    80006670:	00003517          	auipc	a0,0x3
    80006674:	c4850513          	addi	a0,a0,-952 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006678:	fffff097          	auipc	ra,0xfffff
    8000667c:	efc080e7          	jalr	-260(ra) # 80005574 <_Z11printStringPKc>
    80006680:	0400006f          	j	800066c0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006684:	00003517          	auipc	a0,0x3
    80006688:	e2c50513          	addi	a0,a0,-468 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000668c:	fffff097          	auipc	ra,0xfffff
    80006690:	ee8080e7          	jalr	-280(ra) # 80005574 <_Z11printStringPKc>
    80006694:	00000613          	li	a2,0
    80006698:	00a00593          	li	a1,10
    8000669c:	00048513          	mv	a0,s1
    800066a0:	fffff097          	auipc	ra,0xfffff
    800066a4:	084080e7          	jalr	132(ra) # 80005724 <_Z8printIntiii>
    800066a8:	00003517          	auipc	a0,0x3
    800066ac:	c1050513          	addi	a0,a0,-1008 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800066b0:	fffff097          	auipc	ra,0xfffff
    800066b4:	ec4080e7          	jalr	-316(ra) # 80005574 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800066b8:	0014849b          	addiw	s1,s1,1
    800066bc:	0ff4f493          	andi	s1,s1,255
    800066c0:	00500793          	li	a5,5
    800066c4:	fc97f0e3          	bgeu	a5,s1,80006684 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800066c8:	00003517          	auipc	a0,0x3
    800066cc:	dc050513          	addi	a0,a0,-576 # 80009488 <CONSOLE_STATUS+0x478>
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	ea4080e7          	jalr	-348(ra) # 80005574 <_Z11printStringPKc>
    finishedC = true;
    800066d8:	00100793          	li	a5,1
    800066dc:	00005717          	auipc	a4,0x5
    800066e0:	7ef70ba3          	sb	a5,2039(a4) # 8000bed3 <_ZL9finishedC>
    thread_dispatch();
    800066e4:	ffffb097          	auipc	ra,0xffffb
    800066e8:	ca4080e7          	jalr	-860(ra) # 80001388 <_Z15thread_dispatchv>
}
    800066ec:	01813083          	ld	ra,24(sp)
    800066f0:	01013403          	ld	s0,16(sp)
    800066f4:	00813483          	ld	s1,8(sp)
    800066f8:	00013903          	ld	s2,0(sp)
    800066fc:	02010113          	addi	sp,sp,32
    80006700:	00008067          	ret

0000000080006704 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006704:	fe010113          	addi	sp,sp,-32
    80006708:	00113c23          	sd	ra,24(sp)
    8000670c:	00813823          	sd	s0,16(sp)
    80006710:	00913423          	sd	s1,8(sp)
    80006714:	01213023          	sd	s2,0(sp)
    80006718:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000671c:	00000913          	li	s2,0
    80006720:	0400006f          	j	80006760 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006724:	ffffb097          	auipc	ra,0xffffb
    80006728:	c64080e7          	jalr	-924(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000672c:	00148493          	addi	s1,s1,1
    80006730:	000027b7          	lui	a5,0x2
    80006734:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006738:	0097ee63          	bltu	a5,s1,80006754 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000673c:	00000713          	li	a4,0
    80006740:	000077b7          	lui	a5,0x7
    80006744:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006748:	fce7eee3          	bltu	a5,a4,80006724 <_ZL11workerBodyBPv+0x20>
    8000674c:	00170713          	addi	a4,a4,1
    80006750:	ff1ff06f          	j	80006740 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006754:	00a00793          	li	a5,10
    80006758:	04f90663          	beq	s2,a5,800067a4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000675c:	00190913          	addi	s2,s2,1
    80006760:	00f00793          	li	a5,15
    80006764:	0527e463          	bltu	a5,s2,800067ac <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006768:	00003517          	auipc	a0,0x3
    8000676c:	d3050513          	addi	a0,a0,-720 # 80009498 <CONSOLE_STATUS+0x488>
    80006770:	fffff097          	auipc	ra,0xfffff
    80006774:	e04080e7          	jalr	-508(ra) # 80005574 <_Z11printStringPKc>
    80006778:	00000613          	li	a2,0
    8000677c:	00a00593          	li	a1,10
    80006780:	0009051b          	sext.w	a0,s2
    80006784:	fffff097          	auipc	ra,0xfffff
    80006788:	fa0080e7          	jalr	-96(ra) # 80005724 <_Z8printIntiii>
    8000678c:	00003517          	auipc	a0,0x3
    80006790:	b2c50513          	addi	a0,a0,-1236 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006794:	fffff097          	auipc	ra,0xfffff
    80006798:	de0080e7          	jalr	-544(ra) # 80005574 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000679c:	00000493          	li	s1,0
    800067a0:	f91ff06f          	j	80006730 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800067a4:	14102ff3          	csrr	t6,sepc
    800067a8:	fb5ff06f          	j	8000675c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800067ac:	00003517          	auipc	a0,0x3
    800067b0:	cf450513          	addi	a0,a0,-780 # 800094a0 <CONSOLE_STATUS+0x490>
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	dc0080e7          	jalr	-576(ra) # 80005574 <_Z11printStringPKc>
    finishedB = true;
    800067bc:	00100793          	li	a5,1
    800067c0:	00005717          	auipc	a4,0x5
    800067c4:	70f70a23          	sb	a5,1812(a4) # 8000bed4 <_ZL9finishedB>
    thread_dispatch();
    800067c8:	ffffb097          	auipc	ra,0xffffb
    800067cc:	bc0080e7          	jalr	-1088(ra) # 80001388 <_Z15thread_dispatchv>
}
    800067d0:	01813083          	ld	ra,24(sp)
    800067d4:	01013403          	ld	s0,16(sp)
    800067d8:	00813483          	ld	s1,8(sp)
    800067dc:	00013903          	ld	s2,0(sp)
    800067e0:	02010113          	addi	sp,sp,32
    800067e4:	00008067          	ret

00000000800067e8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800067e8:	fe010113          	addi	sp,sp,-32
    800067ec:	00113c23          	sd	ra,24(sp)
    800067f0:	00813823          	sd	s0,16(sp)
    800067f4:	00913423          	sd	s1,8(sp)
    800067f8:	01213023          	sd	s2,0(sp)
    800067fc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006800:	00000913          	li	s2,0
    80006804:	0380006f          	j	8000683c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006808:	ffffb097          	auipc	ra,0xffffb
    8000680c:	b80080e7          	jalr	-1152(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006810:	00148493          	addi	s1,s1,1
    80006814:	000027b7          	lui	a5,0x2
    80006818:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000681c:	0097ee63          	bltu	a5,s1,80006838 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006820:	00000713          	li	a4,0
    80006824:	000077b7          	lui	a5,0x7
    80006828:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000682c:	fce7eee3          	bltu	a5,a4,80006808 <_ZL11workerBodyAPv+0x20>
    80006830:	00170713          	addi	a4,a4,1
    80006834:	ff1ff06f          	j	80006824 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006838:	00190913          	addi	s2,s2,1
    8000683c:	00900793          	li	a5,9
    80006840:	0527e063          	bltu	a5,s2,80006880 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006844:	00003517          	auipc	a0,0x3
    80006848:	c3c50513          	addi	a0,a0,-964 # 80009480 <CONSOLE_STATUS+0x470>
    8000684c:	fffff097          	auipc	ra,0xfffff
    80006850:	d28080e7          	jalr	-728(ra) # 80005574 <_Z11printStringPKc>
    80006854:	00000613          	li	a2,0
    80006858:	00a00593          	li	a1,10
    8000685c:	0009051b          	sext.w	a0,s2
    80006860:	fffff097          	auipc	ra,0xfffff
    80006864:	ec4080e7          	jalr	-316(ra) # 80005724 <_Z8printIntiii>
    80006868:	00003517          	auipc	a0,0x3
    8000686c:	a5050513          	addi	a0,a0,-1456 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006870:	fffff097          	auipc	ra,0xfffff
    80006874:	d04080e7          	jalr	-764(ra) # 80005574 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006878:	00000493          	li	s1,0
    8000687c:	f99ff06f          	j	80006814 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006880:	00003517          	auipc	a0,0x3
    80006884:	c0850513          	addi	a0,a0,-1016 # 80009488 <CONSOLE_STATUS+0x478>
    80006888:	fffff097          	auipc	ra,0xfffff
    8000688c:	cec080e7          	jalr	-788(ra) # 80005574 <_Z11printStringPKc>
    finishedA = true;
    80006890:	00100793          	li	a5,1
    80006894:	00005717          	auipc	a4,0x5
    80006898:	64f700a3          	sb	a5,1601(a4) # 8000bed5 <_ZL9finishedA>
}
    8000689c:	01813083          	ld	ra,24(sp)
    800068a0:	01013403          	ld	s0,16(sp)
    800068a4:	00813483          	ld	s1,8(sp)
    800068a8:	00013903          	ld	s2,0(sp)
    800068ac:	02010113          	addi	sp,sp,32
    800068b0:	00008067          	ret

00000000800068b4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800068b4:	fd010113          	addi	sp,sp,-48
    800068b8:	02113423          	sd	ra,40(sp)
    800068bc:	02813023          	sd	s0,32(sp)
    800068c0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800068c4:	00000613          	li	a2,0
    800068c8:	00000597          	auipc	a1,0x0
    800068cc:	f2058593          	addi	a1,a1,-224 # 800067e8 <_ZL11workerBodyAPv>
    800068d0:	fd040513          	addi	a0,s0,-48
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	9b0080e7          	jalr	-1616(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800068dc:	00003517          	auipc	a0,0x3
    800068e0:	c3c50513          	addi	a0,a0,-964 # 80009518 <CONSOLE_STATUS+0x508>
    800068e4:	fffff097          	auipc	ra,0xfffff
    800068e8:	c90080e7          	jalr	-880(ra) # 80005574 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800068ec:	00000613          	li	a2,0
    800068f0:	00000597          	auipc	a1,0x0
    800068f4:	e1458593          	addi	a1,a1,-492 # 80006704 <_ZL11workerBodyBPv>
    800068f8:	fd840513          	addi	a0,s0,-40
    800068fc:	ffffb097          	auipc	ra,0xffffb
    80006900:	988080e7          	jalr	-1656(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006904:	00003517          	auipc	a0,0x3
    80006908:	c2c50513          	addi	a0,a0,-980 # 80009530 <CONSOLE_STATUS+0x520>
    8000690c:	fffff097          	auipc	ra,0xfffff
    80006910:	c68080e7          	jalr	-920(ra) # 80005574 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006914:	00000613          	li	a2,0
    80006918:	00000597          	auipc	a1,0x0
    8000691c:	c6c58593          	addi	a1,a1,-916 # 80006584 <_ZL11workerBodyCPv>
    80006920:	fe040513          	addi	a0,s0,-32
    80006924:	ffffb097          	auipc	ra,0xffffb
    80006928:	960080e7          	jalr	-1696(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	c1c50513          	addi	a0,a0,-996 # 80009548 <CONSOLE_STATUS+0x538>
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	c40080e7          	jalr	-960(ra) # 80005574 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000693c:	00000613          	li	a2,0
    80006940:	00000597          	auipc	a1,0x0
    80006944:	afc58593          	addi	a1,a1,-1284 # 8000643c <_ZL11workerBodyDPv>
    80006948:	fe840513          	addi	a0,s0,-24
    8000694c:	ffffb097          	auipc	ra,0xffffb
    80006950:	938080e7          	jalr	-1736(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006954:	00003517          	auipc	a0,0x3
    80006958:	c0c50513          	addi	a0,a0,-1012 # 80009560 <CONSOLE_STATUS+0x550>
    8000695c:	fffff097          	auipc	ra,0xfffff
    80006960:	c18080e7          	jalr	-1000(ra) # 80005574 <_Z11printStringPKc>
    80006964:	00c0006f          	j	80006970 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006968:	ffffb097          	auipc	ra,0xffffb
    8000696c:	a20080e7          	jalr	-1504(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006970:	00005797          	auipc	a5,0x5
    80006974:	5657c783          	lbu	a5,1381(a5) # 8000bed5 <_ZL9finishedA>
    80006978:	fe0788e3          	beqz	a5,80006968 <_Z16System_Mode_testv+0xb4>
    8000697c:	00005797          	auipc	a5,0x5
    80006980:	5587c783          	lbu	a5,1368(a5) # 8000bed4 <_ZL9finishedB>
    80006984:	fe0782e3          	beqz	a5,80006968 <_Z16System_Mode_testv+0xb4>
    80006988:	00005797          	auipc	a5,0x5
    8000698c:	54b7c783          	lbu	a5,1355(a5) # 8000bed3 <_ZL9finishedC>
    80006990:	fc078ce3          	beqz	a5,80006968 <_Z16System_Mode_testv+0xb4>
    80006994:	00005797          	auipc	a5,0x5
    80006998:	53e7c783          	lbu	a5,1342(a5) # 8000bed2 <_ZL9finishedD>
    8000699c:	fc0786e3          	beqz	a5,80006968 <_Z16System_Mode_testv+0xb4>
    }

}
    800069a0:	02813083          	ld	ra,40(sp)
    800069a4:	02013403          	ld	s0,32(sp)
    800069a8:	03010113          	addi	sp,sp,48
    800069ac:	00008067          	ret

00000000800069b0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800069b0:	fe010113          	addi	sp,sp,-32
    800069b4:	00113c23          	sd	ra,24(sp)
    800069b8:	00813823          	sd	s0,16(sp)
    800069bc:	00913423          	sd	s1,8(sp)
    800069c0:	01213023          	sd	s2,0(sp)
    800069c4:	02010413          	addi	s0,sp,32
    800069c8:	00050493          	mv	s1,a0
    800069cc:	00058913          	mv	s2,a1
    800069d0:	0015879b          	addiw	a5,a1,1
    800069d4:	0007851b          	sext.w	a0,a5
    800069d8:	00f4a023          	sw	a5,0(s1)
    800069dc:	0004a823          	sw	zero,16(s1)
    800069e0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800069e4:	00251513          	slli	a0,a0,0x2
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	810080e7          	jalr	-2032(ra) # 800011f8 <_Z9mem_allocm>
    800069f0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800069f4:	00000593          	li	a1,0
    800069f8:	02048513          	addi	a0,s1,32
    800069fc:	ffffb097          	auipc	ra,0xffffb
    80006a00:	a08080e7          	jalr	-1528(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006a04:	00090593          	mv	a1,s2
    80006a08:	01848513          	addi	a0,s1,24
    80006a0c:	ffffb097          	auipc	ra,0xffffb
    80006a10:	9f8080e7          	jalr	-1544(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006a14:	00100593          	li	a1,1
    80006a18:	02848513          	addi	a0,s1,40
    80006a1c:	ffffb097          	auipc	ra,0xffffb
    80006a20:	9e8080e7          	jalr	-1560(ra) # 80001404 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006a24:	00100593          	li	a1,1
    80006a28:	03048513          	addi	a0,s1,48
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	9d8080e7          	jalr	-1576(ra) # 80001404 <_Z8sem_openPP4_semj>
}
    80006a34:	01813083          	ld	ra,24(sp)
    80006a38:	01013403          	ld	s0,16(sp)
    80006a3c:	00813483          	ld	s1,8(sp)
    80006a40:	00013903          	ld	s2,0(sp)
    80006a44:	02010113          	addi	sp,sp,32
    80006a48:	00008067          	ret

0000000080006a4c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a4c:	fe010113          	addi	sp,sp,-32
    80006a50:	00113c23          	sd	ra,24(sp)
    80006a54:	00813823          	sd	s0,16(sp)
    80006a58:	00913423          	sd	s1,8(sp)
    80006a5c:	01213023          	sd	s2,0(sp)
    80006a60:	02010413          	addi	s0,sp,32
    80006a64:	00050493          	mv	s1,a0
    80006a68:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a6c:	01853503          	ld	a0,24(a0)
    80006a70:	ffffb097          	auipc	ra,0xffffb
    80006a74:	a18080e7          	jalr	-1512(ra) # 80001488 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006a78:	0304b503          	ld	a0,48(s1)
    80006a7c:	ffffb097          	auipc	ra,0xffffb
    80006a80:	a0c080e7          	jalr	-1524(ra) # 80001488 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006a84:	0084b783          	ld	a5,8(s1)
    80006a88:	0144a703          	lw	a4,20(s1)
    80006a8c:	00271713          	slli	a4,a4,0x2
    80006a90:	00e787b3          	add	a5,a5,a4
    80006a94:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a98:	0144a783          	lw	a5,20(s1)
    80006a9c:	0017879b          	addiw	a5,a5,1
    80006aa0:	0004a703          	lw	a4,0(s1)
    80006aa4:	02e7e7bb          	remw	a5,a5,a4
    80006aa8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006aac:	0304b503          	ld	a0,48(s1)
    80006ab0:	ffffb097          	auipc	ra,0xffffb
    80006ab4:	a18080e7          	jalr	-1512(ra) # 800014c8 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006ab8:	0204b503          	ld	a0,32(s1)
    80006abc:	ffffb097          	auipc	ra,0xffffb
    80006ac0:	a0c080e7          	jalr	-1524(ra) # 800014c8 <_Z10sem_signalP4_sem>

}
    80006ac4:	01813083          	ld	ra,24(sp)
    80006ac8:	01013403          	ld	s0,16(sp)
    80006acc:	00813483          	ld	s1,8(sp)
    80006ad0:	00013903          	ld	s2,0(sp)
    80006ad4:	02010113          	addi	sp,sp,32
    80006ad8:	00008067          	ret

0000000080006adc <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006adc:	fe010113          	addi	sp,sp,-32
    80006ae0:	00113c23          	sd	ra,24(sp)
    80006ae4:	00813823          	sd	s0,16(sp)
    80006ae8:	00913423          	sd	s1,8(sp)
    80006aec:	01213023          	sd	s2,0(sp)
    80006af0:	02010413          	addi	s0,sp,32
    80006af4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006af8:	02053503          	ld	a0,32(a0)
    80006afc:	ffffb097          	auipc	ra,0xffffb
    80006b00:	98c080e7          	jalr	-1652(ra) # 80001488 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006b04:	0284b503          	ld	a0,40(s1)
    80006b08:	ffffb097          	auipc	ra,0xffffb
    80006b0c:	980080e7          	jalr	-1664(ra) # 80001488 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006b10:	0084b703          	ld	a4,8(s1)
    80006b14:	0104a783          	lw	a5,16(s1)
    80006b18:	00279693          	slli	a3,a5,0x2
    80006b1c:	00d70733          	add	a4,a4,a3
    80006b20:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006b24:	0017879b          	addiw	a5,a5,1
    80006b28:	0004a703          	lw	a4,0(s1)
    80006b2c:	02e7e7bb          	remw	a5,a5,a4
    80006b30:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006b34:	0284b503          	ld	a0,40(s1)
    80006b38:	ffffb097          	auipc	ra,0xffffb
    80006b3c:	990080e7          	jalr	-1648(ra) # 800014c8 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006b40:	0184b503          	ld	a0,24(s1)
    80006b44:	ffffb097          	auipc	ra,0xffffb
    80006b48:	984080e7          	jalr	-1660(ra) # 800014c8 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b4c:	00090513          	mv	a0,s2
    80006b50:	01813083          	ld	ra,24(sp)
    80006b54:	01013403          	ld	s0,16(sp)
    80006b58:	00813483          	ld	s1,8(sp)
    80006b5c:	00013903          	ld	s2,0(sp)
    80006b60:	02010113          	addi	sp,sp,32
    80006b64:	00008067          	ret

0000000080006b68 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b68:	fe010113          	addi	sp,sp,-32
    80006b6c:	00113c23          	sd	ra,24(sp)
    80006b70:	00813823          	sd	s0,16(sp)
    80006b74:	00913423          	sd	s1,8(sp)
    80006b78:	01213023          	sd	s2,0(sp)
    80006b7c:	02010413          	addi	s0,sp,32
    80006b80:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006b84:	02853503          	ld	a0,40(a0)
    80006b88:	ffffb097          	auipc	ra,0xffffb
    80006b8c:	900080e7          	jalr	-1792(ra) # 80001488 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006b90:	0304b503          	ld	a0,48(s1)
    80006b94:	ffffb097          	auipc	ra,0xffffb
    80006b98:	8f4080e7          	jalr	-1804(ra) # 80001488 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006b9c:	0144a783          	lw	a5,20(s1)
    80006ba0:	0104a903          	lw	s2,16(s1)
    80006ba4:	0327ce63          	blt	a5,s2,80006be0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006ba8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006bac:	0304b503          	ld	a0,48(s1)
    80006bb0:	ffffb097          	auipc	ra,0xffffb
    80006bb4:	918080e7          	jalr	-1768(ra) # 800014c8 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006bb8:	0284b503          	ld	a0,40(s1)
    80006bbc:	ffffb097          	auipc	ra,0xffffb
    80006bc0:	90c080e7          	jalr	-1780(ra) # 800014c8 <_Z10sem_signalP4_sem>

    return ret;
}
    80006bc4:	00090513          	mv	a0,s2
    80006bc8:	01813083          	ld	ra,24(sp)
    80006bcc:	01013403          	ld	s0,16(sp)
    80006bd0:	00813483          	ld	s1,8(sp)
    80006bd4:	00013903          	ld	s2,0(sp)
    80006bd8:	02010113          	addi	sp,sp,32
    80006bdc:	00008067          	ret
        ret = cap - head + tail;
    80006be0:	0004a703          	lw	a4,0(s1)
    80006be4:	4127093b          	subw	s2,a4,s2
    80006be8:	00f9093b          	addw	s2,s2,a5
    80006bec:	fc1ff06f          	j	80006bac <_ZN6Buffer6getCntEv+0x44>

0000000080006bf0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006bf0:	fe010113          	addi	sp,sp,-32
    80006bf4:	00113c23          	sd	ra,24(sp)
    80006bf8:	00813823          	sd	s0,16(sp)
    80006bfc:	00913423          	sd	s1,8(sp)
    80006c00:	02010413          	addi	s0,sp,32
    80006c04:	00050493          	mv	s1,a0
    putc('\n');
    80006c08:	00a00513          	li	a0,10
    80006c0c:	ffffb097          	auipc	ra,0xffffb
    80006c10:	a04080e7          	jalr	-1532(ra) # 80001610 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006c14:	00003517          	auipc	a0,0x3
    80006c18:	96450513          	addi	a0,a0,-1692 # 80009578 <CONSOLE_STATUS+0x568>
    80006c1c:	fffff097          	auipc	ra,0xfffff
    80006c20:	958080e7          	jalr	-1704(ra) # 80005574 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006c24:	00048513          	mv	a0,s1
    80006c28:	00000097          	auipc	ra,0x0
    80006c2c:	f40080e7          	jalr	-192(ra) # 80006b68 <_ZN6Buffer6getCntEv>
    80006c30:	02a05c63          	blez	a0,80006c68 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006c34:	0084b783          	ld	a5,8(s1)
    80006c38:	0104a703          	lw	a4,16(s1)
    80006c3c:	00271713          	slli	a4,a4,0x2
    80006c40:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c44:	0007c503          	lbu	a0,0(a5)
    80006c48:	ffffb097          	auipc	ra,0xffffb
    80006c4c:	9c8080e7          	jalr	-1592(ra) # 80001610 <_Z4putcc>
        head = (head + 1) % cap;
    80006c50:	0104a783          	lw	a5,16(s1)
    80006c54:	0017879b          	addiw	a5,a5,1
    80006c58:	0004a703          	lw	a4,0(s1)
    80006c5c:	02e7e7bb          	remw	a5,a5,a4
    80006c60:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c64:	fc1ff06f          	j	80006c24 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c68:	02100513          	li	a0,33
    80006c6c:	ffffb097          	auipc	ra,0xffffb
    80006c70:	9a4080e7          	jalr	-1628(ra) # 80001610 <_Z4putcc>
    putc('\n');
    80006c74:	00a00513          	li	a0,10
    80006c78:	ffffb097          	auipc	ra,0xffffb
    80006c7c:	998080e7          	jalr	-1640(ra) # 80001610 <_Z4putcc>
    mem_free(buffer);
    80006c80:	0084b503          	ld	a0,8(s1)
    80006c84:	ffffa097          	auipc	ra,0xffffa
    80006c88:	5c0080e7          	jalr	1472(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c8c:	0204b503          	ld	a0,32(s1)
    80006c90:	ffffa097          	auipc	ra,0xffffa
    80006c94:	7b8080e7          	jalr	1976(ra) # 80001448 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006c98:	0184b503          	ld	a0,24(s1)
    80006c9c:	ffffa097          	auipc	ra,0xffffa
    80006ca0:	7ac080e7          	jalr	1964(ra) # 80001448 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006ca4:	0304b503          	ld	a0,48(s1)
    80006ca8:	ffffa097          	auipc	ra,0xffffa
    80006cac:	7a0080e7          	jalr	1952(ra) # 80001448 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006cb0:	0284b503          	ld	a0,40(s1)
    80006cb4:	ffffa097          	auipc	ra,0xffffa
    80006cb8:	794080e7          	jalr	1940(ra) # 80001448 <_Z9sem_closeP4_sem>
}
    80006cbc:	01813083          	ld	ra,24(sp)
    80006cc0:	01013403          	ld	s0,16(sp)
    80006cc4:	00813483          	ld	s1,8(sp)
    80006cc8:	02010113          	addi	sp,sp,32
    80006ccc:	00008067          	ret

0000000080006cd0 <start>:
    80006cd0:	ff010113          	addi	sp,sp,-16
    80006cd4:	00813423          	sd	s0,8(sp)
    80006cd8:	01010413          	addi	s0,sp,16
    80006cdc:	300027f3          	csrr	a5,mstatus
    80006ce0:	ffffe737          	lui	a4,0xffffe
    80006ce4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff16bf>
    80006ce8:	00e7f7b3          	and	a5,a5,a4
    80006cec:	00001737          	lui	a4,0x1
    80006cf0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006cf4:	00e7e7b3          	or	a5,a5,a4
    80006cf8:	30079073          	csrw	mstatus,a5
    80006cfc:	00000797          	auipc	a5,0x0
    80006d00:	16078793          	addi	a5,a5,352 # 80006e5c <system_main>
    80006d04:	34179073          	csrw	mepc,a5
    80006d08:	00000793          	li	a5,0
    80006d0c:	18079073          	csrw	satp,a5
    80006d10:	000107b7          	lui	a5,0x10
    80006d14:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006d18:	30279073          	csrw	medeleg,a5
    80006d1c:	30379073          	csrw	mideleg,a5
    80006d20:	104027f3          	csrr	a5,sie
    80006d24:	2227e793          	ori	a5,a5,546
    80006d28:	10479073          	csrw	sie,a5
    80006d2c:	fff00793          	li	a5,-1
    80006d30:	00a7d793          	srli	a5,a5,0xa
    80006d34:	3b079073          	csrw	pmpaddr0,a5
    80006d38:	00f00793          	li	a5,15
    80006d3c:	3a079073          	csrw	pmpcfg0,a5
    80006d40:	f14027f3          	csrr	a5,mhartid
    80006d44:	0200c737          	lui	a4,0x200c
    80006d48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d4c:	0007869b          	sext.w	a3,a5
    80006d50:	00269713          	slli	a4,a3,0x2
    80006d54:	000f4637          	lui	a2,0xf4
    80006d58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d5c:	00d70733          	add	a4,a4,a3
    80006d60:	0037979b          	slliw	a5,a5,0x3
    80006d64:	020046b7          	lui	a3,0x2004
    80006d68:	00d787b3          	add	a5,a5,a3
    80006d6c:	00c585b3          	add	a1,a1,a2
    80006d70:	00371693          	slli	a3,a4,0x3
    80006d74:	00005717          	auipc	a4,0x5
    80006d78:	16c70713          	addi	a4,a4,364 # 8000bee0 <timer_scratch>
    80006d7c:	00b7b023          	sd	a1,0(a5)
    80006d80:	00d70733          	add	a4,a4,a3
    80006d84:	00f73c23          	sd	a5,24(a4)
    80006d88:	02c73023          	sd	a2,32(a4)
    80006d8c:	34071073          	csrw	mscratch,a4
    80006d90:	00000797          	auipc	a5,0x0
    80006d94:	6e078793          	addi	a5,a5,1760 # 80007470 <timervec>
    80006d98:	30579073          	csrw	mtvec,a5
    80006d9c:	300027f3          	csrr	a5,mstatus
    80006da0:	0087e793          	ori	a5,a5,8
    80006da4:	30079073          	csrw	mstatus,a5
    80006da8:	304027f3          	csrr	a5,mie
    80006dac:	0807e793          	ori	a5,a5,128
    80006db0:	30479073          	csrw	mie,a5
    80006db4:	f14027f3          	csrr	a5,mhartid
    80006db8:	0007879b          	sext.w	a5,a5
    80006dbc:	00078213          	mv	tp,a5
    80006dc0:	30200073          	mret
    80006dc4:	00813403          	ld	s0,8(sp)
    80006dc8:	01010113          	addi	sp,sp,16
    80006dcc:	00008067          	ret

0000000080006dd0 <timerinit>:
    80006dd0:	ff010113          	addi	sp,sp,-16
    80006dd4:	00813423          	sd	s0,8(sp)
    80006dd8:	01010413          	addi	s0,sp,16
    80006ddc:	f14027f3          	csrr	a5,mhartid
    80006de0:	0200c737          	lui	a4,0x200c
    80006de4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006de8:	0007869b          	sext.w	a3,a5
    80006dec:	00269713          	slli	a4,a3,0x2
    80006df0:	000f4637          	lui	a2,0xf4
    80006df4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006df8:	00d70733          	add	a4,a4,a3
    80006dfc:	0037979b          	slliw	a5,a5,0x3
    80006e00:	020046b7          	lui	a3,0x2004
    80006e04:	00d787b3          	add	a5,a5,a3
    80006e08:	00c585b3          	add	a1,a1,a2
    80006e0c:	00371693          	slli	a3,a4,0x3
    80006e10:	00005717          	auipc	a4,0x5
    80006e14:	0d070713          	addi	a4,a4,208 # 8000bee0 <timer_scratch>
    80006e18:	00b7b023          	sd	a1,0(a5)
    80006e1c:	00d70733          	add	a4,a4,a3
    80006e20:	00f73c23          	sd	a5,24(a4)
    80006e24:	02c73023          	sd	a2,32(a4)
    80006e28:	34071073          	csrw	mscratch,a4
    80006e2c:	00000797          	auipc	a5,0x0
    80006e30:	64478793          	addi	a5,a5,1604 # 80007470 <timervec>
    80006e34:	30579073          	csrw	mtvec,a5
    80006e38:	300027f3          	csrr	a5,mstatus
    80006e3c:	0087e793          	ori	a5,a5,8
    80006e40:	30079073          	csrw	mstatus,a5
    80006e44:	304027f3          	csrr	a5,mie
    80006e48:	0807e793          	ori	a5,a5,128
    80006e4c:	30479073          	csrw	mie,a5
    80006e50:	00813403          	ld	s0,8(sp)
    80006e54:	01010113          	addi	sp,sp,16
    80006e58:	00008067          	ret

0000000080006e5c <system_main>:
    80006e5c:	fe010113          	addi	sp,sp,-32
    80006e60:	00813823          	sd	s0,16(sp)
    80006e64:	00913423          	sd	s1,8(sp)
    80006e68:	00113c23          	sd	ra,24(sp)
    80006e6c:	02010413          	addi	s0,sp,32
    80006e70:	00000097          	auipc	ra,0x0
    80006e74:	0c4080e7          	jalr	196(ra) # 80006f34 <cpuid>
    80006e78:	00005497          	auipc	s1,0x5
    80006e7c:	f9848493          	addi	s1,s1,-104 # 8000be10 <started>
    80006e80:	02050263          	beqz	a0,80006ea4 <system_main+0x48>
    80006e84:	0004a783          	lw	a5,0(s1)
    80006e88:	0007879b          	sext.w	a5,a5
    80006e8c:	fe078ce3          	beqz	a5,80006e84 <system_main+0x28>
    80006e90:	0ff0000f          	fence
    80006e94:	00002517          	auipc	a0,0x2
    80006e98:	7cc50513          	addi	a0,a0,1996 # 80009660 <CONSOLE_STATUS+0x650>
    80006e9c:	00001097          	auipc	ra,0x1
    80006ea0:	a70080e7          	jalr	-1424(ra) # 8000790c <panic>
    80006ea4:	00001097          	auipc	ra,0x1
    80006ea8:	9c4080e7          	jalr	-1596(ra) # 80007868 <consoleinit>
    80006eac:	00001097          	auipc	ra,0x1
    80006eb0:	150080e7          	jalr	336(ra) # 80007ffc <printfinit>
    80006eb4:	00002517          	auipc	a0,0x2
    80006eb8:	40450513          	addi	a0,a0,1028 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006ebc:	00001097          	auipc	ra,0x1
    80006ec0:	aac080e7          	jalr	-1364(ra) # 80007968 <__printf>
    80006ec4:	00002517          	auipc	a0,0x2
    80006ec8:	76c50513          	addi	a0,a0,1900 # 80009630 <CONSOLE_STATUS+0x620>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	a9c080e7          	jalr	-1380(ra) # 80007968 <__printf>
    80006ed4:	00002517          	auipc	a0,0x2
    80006ed8:	3e450513          	addi	a0,a0,996 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80006edc:	00001097          	auipc	ra,0x1
    80006ee0:	a8c080e7          	jalr	-1396(ra) # 80007968 <__printf>
    80006ee4:	00001097          	auipc	ra,0x1
    80006ee8:	4a4080e7          	jalr	1188(ra) # 80008388 <kinit>
    80006eec:	00000097          	auipc	ra,0x0
    80006ef0:	148080e7          	jalr	328(ra) # 80007034 <trapinit>
    80006ef4:	00000097          	auipc	ra,0x0
    80006ef8:	16c080e7          	jalr	364(ra) # 80007060 <trapinithart>
    80006efc:	00000097          	auipc	ra,0x0
    80006f00:	5b4080e7          	jalr	1460(ra) # 800074b0 <plicinit>
    80006f04:	00000097          	auipc	ra,0x0
    80006f08:	5d4080e7          	jalr	1492(ra) # 800074d8 <plicinithart>
    80006f0c:	00000097          	auipc	ra,0x0
    80006f10:	078080e7          	jalr	120(ra) # 80006f84 <userinit>
    80006f14:	0ff0000f          	fence
    80006f18:	00100793          	li	a5,1
    80006f1c:	00002517          	auipc	a0,0x2
    80006f20:	72c50513          	addi	a0,a0,1836 # 80009648 <CONSOLE_STATUS+0x638>
    80006f24:	00f4a023          	sw	a5,0(s1)
    80006f28:	00001097          	auipc	ra,0x1
    80006f2c:	a40080e7          	jalr	-1472(ra) # 80007968 <__printf>
    80006f30:	0000006f          	j	80006f30 <system_main+0xd4>

0000000080006f34 <cpuid>:
    80006f34:	ff010113          	addi	sp,sp,-16
    80006f38:	00813423          	sd	s0,8(sp)
    80006f3c:	01010413          	addi	s0,sp,16
    80006f40:	00020513          	mv	a0,tp
    80006f44:	00813403          	ld	s0,8(sp)
    80006f48:	0005051b          	sext.w	a0,a0
    80006f4c:	01010113          	addi	sp,sp,16
    80006f50:	00008067          	ret

0000000080006f54 <mycpu>:
    80006f54:	ff010113          	addi	sp,sp,-16
    80006f58:	00813423          	sd	s0,8(sp)
    80006f5c:	01010413          	addi	s0,sp,16
    80006f60:	00020793          	mv	a5,tp
    80006f64:	00813403          	ld	s0,8(sp)
    80006f68:	0007879b          	sext.w	a5,a5
    80006f6c:	00779793          	slli	a5,a5,0x7
    80006f70:	00006517          	auipc	a0,0x6
    80006f74:	fa050513          	addi	a0,a0,-96 # 8000cf10 <cpus>
    80006f78:	00f50533          	add	a0,a0,a5
    80006f7c:	01010113          	addi	sp,sp,16
    80006f80:	00008067          	ret

0000000080006f84 <userinit>:
    80006f84:	ff010113          	addi	sp,sp,-16
    80006f88:	00813423          	sd	s0,8(sp)
    80006f8c:	01010413          	addi	s0,sp,16
    80006f90:	00813403          	ld	s0,8(sp)
    80006f94:	01010113          	addi	sp,sp,16
    80006f98:	ffffb317          	auipc	t1,0xffffb
    80006f9c:	6cc30067          	jr	1740(t1) # 80002664 <main>

0000000080006fa0 <either_copyout>:
    80006fa0:	ff010113          	addi	sp,sp,-16
    80006fa4:	00813023          	sd	s0,0(sp)
    80006fa8:	00113423          	sd	ra,8(sp)
    80006fac:	01010413          	addi	s0,sp,16
    80006fb0:	02051663          	bnez	a0,80006fdc <either_copyout+0x3c>
    80006fb4:	00058513          	mv	a0,a1
    80006fb8:	00060593          	mv	a1,a2
    80006fbc:	0006861b          	sext.w	a2,a3
    80006fc0:	00002097          	auipc	ra,0x2
    80006fc4:	c54080e7          	jalr	-940(ra) # 80008c14 <__memmove>
    80006fc8:	00813083          	ld	ra,8(sp)
    80006fcc:	00013403          	ld	s0,0(sp)
    80006fd0:	00000513          	li	a0,0
    80006fd4:	01010113          	addi	sp,sp,16
    80006fd8:	00008067          	ret
    80006fdc:	00002517          	auipc	a0,0x2
    80006fe0:	6ac50513          	addi	a0,a0,1708 # 80009688 <CONSOLE_STATUS+0x678>
    80006fe4:	00001097          	auipc	ra,0x1
    80006fe8:	928080e7          	jalr	-1752(ra) # 8000790c <panic>

0000000080006fec <either_copyin>:
    80006fec:	ff010113          	addi	sp,sp,-16
    80006ff0:	00813023          	sd	s0,0(sp)
    80006ff4:	00113423          	sd	ra,8(sp)
    80006ff8:	01010413          	addi	s0,sp,16
    80006ffc:	02059463          	bnez	a1,80007024 <either_copyin+0x38>
    80007000:	00060593          	mv	a1,a2
    80007004:	0006861b          	sext.w	a2,a3
    80007008:	00002097          	auipc	ra,0x2
    8000700c:	c0c080e7          	jalr	-1012(ra) # 80008c14 <__memmove>
    80007010:	00813083          	ld	ra,8(sp)
    80007014:	00013403          	ld	s0,0(sp)
    80007018:	00000513          	li	a0,0
    8000701c:	01010113          	addi	sp,sp,16
    80007020:	00008067          	ret
    80007024:	00002517          	auipc	a0,0x2
    80007028:	68c50513          	addi	a0,a0,1676 # 800096b0 <CONSOLE_STATUS+0x6a0>
    8000702c:	00001097          	auipc	ra,0x1
    80007030:	8e0080e7          	jalr	-1824(ra) # 8000790c <panic>

0000000080007034 <trapinit>:
    80007034:	ff010113          	addi	sp,sp,-16
    80007038:	00813423          	sd	s0,8(sp)
    8000703c:	01010413          	addi	s0,sp,16
    80007040:	00813403          	ld	s0,8(sp)
    80007044:	00002597          	auipc	a1,0x2
    80007048:	69458593          	addi	a1,a1,1684 # 800096d8 <CONSOLE_STATUS+0x6c8>
    8000704c:	00006517          	auipc	a0,0x6
    80007050:	f4450513          	addi	a0,a0,-188 # 8000cf90 <tickslock>
    80007054:	01010113          	addi	sp,sp,16
    80007058:	00001317          	auipc	t1,0x1
    8000705c:	5c030067          	jr	1472(t1) # 80008618 <initlock>

0000000080007060 <trapinithart>:
    80007060:	ff010113          	addi	sp,sp,-16
    80007064:	00813423          	sd	s0,8(sp)
    80007068:	01010413          	addi	s0,sp,16
    8000706c:	00000797          	auipc	a5,0x0
    80007070:	2f478793          	addi	a5,a5,756 # 80007360 <kernelvec>
    80007074:	10579073          	csrw	stvec,a5
    80007078:	00813403          	ld	s0,8(sp)
    8000707c:	01010113          	addi	sp,sp,16
    80007080:	00008067          	ret

0000000080007084 <usertrap>:
    80007084:	ff010113          	addi	sp,sp,-16
    80007088:	00813423          	sd	s0,8(sp)
    8000708c:	01010413          	addi	s0,sp,16
    80007090:	00813403          	ld	s0,8(sp)
    80007094:	01010113          	addi	sp,sp,16
    80007098:	00008067          	ret

000000008000709c <usertrapret>:
    8000709c:	ff010113          	addi	sp,sp,-16
    800070a0:	00813423          	sd	s0,8(sp)
    800070a4:	01010413          	addi	s0,sp,16
    800070a8:	00813403          	ld	s0,8(sp)
    800070ac:	01010113          	addi	sp,sp,16
    800070b0:	00008067          	ret

00000000800070b4 <kerneltrap>:
    800070b4:	fe010113          	addi	sp,sp,-32
    800070b8:	00813823          	sd	s0,16(sp)
    800070bc:	00113c23          	sd	ra,24(sp)
    800070c0:	00913423          	sd	s1,8(sp)
    800070c4:	02010413          	addi	s0,sp,32
    800070c8:	142025f3          	csrr	a1,scause
    800070cc:	100027f3          	csrr	a5,sstatus
    800070d0:	0027f793          	andi	a5,a5,2
    800070d4:	10079c63          	bnez	a5,800071ec <kerneltrap+0x138>
    800070d8:	142027f3          	csrr	a5,scause
    800070dc:	0207ce63          	bltz	a5,80007118 <kerneltrap+0x64>
    800070e0:	00002517          	auipc	a0,0x2
    800070e4:	64050513          	addi	a0,a0,1600 # 80009720 <CONSOLE_STATUS+0x710>
    800070e8:	00001097          	auipc	ra,0x1
    800070ec:	880080e7          	jalr	-1920(ra) # 80007968 <__printf>
    800070f0:	141025f3          	csrr	a1,sepc
    800070f4:	14302673          	csrr	a2,stval
    800070f8:	00002517          	auipc	a0,0x2
    800070fc:	63850513          	addi	a0,a0,1592 # 80009730 <CONSOLE_STATUS+0x720>
    80007100:	00001097          	auipc	ra,0x1
    80007104:	868080e7          	jalr	-1944(ra) # 80007968 <__printf>
    80007108:	00002517          	auipc	a0,0x2
    8000710c:	64050513          	addi	a0,a0,1600 # 80009748 <CONSOLE_STATUS+0x738>
    80007110:	00000097          	auipc	ra,0x0
    80007114:	7fc080e7          	jalr	2044(ra) # 8000790c <panic>
    80007118:	0ff7f713          	andi	a4,a5,255
    8000711c:	00900693          	li	a3,9
    80007120:	04d70063          	beq	a4,a3,80007160 <kerneltrap+0xac>
    80007124:	fff00713          	li	a4,-1
    80007128:	03f71713          	slli	a4,a4,0x3f
    8000712c:	00170713          	addi	a4,a4,1
    80007130:	fae798e3          	bne	a5,a4,800070e0 <kerneltrap+0x2c>
    80007134:	00000097          	auipc	ra,0x0
    80007138:	e00080e7          	jalr	-512(ra) # 80006f34 <cpuid>
    8000713c:	06050663          	beqz	a0,800071a8 <kerneltrap+0xf4>
    80007140:	144027f3          	csrr	a5,sip
    80007144:	ffd7f793          	andi	a5,a5,-3
    80007148:	14479073          	csrw	sip,a5
    8000714c:	01813083          	ld	ra,24(sp)
    80007150:	01013403          	ld	s0,16(sp)
    80007154:	00813483          	ld	s1,8(sp)
    80007158:	02010113          	addi	sp,sp,32
    8000715c:	00008067          	ret
    80007160:	00000097          	auipc	ra,0x0
    80007164:	3c4080e7          	jalr	964(ra) # 80007524 <plic_claim>
    80007168:	00a00793          	li	a5,10
    8000716c:	00050493          	mv	s1,a0
    80007170:	06f50863          	beq	a0,a5,800071e0 <kerneltrap+0x12c>
    80007174:	fc050ce3          	beqz	a0,8000714c <kerneltrap+0x98>
    80007178:	00050593          	mv	a1,a0
    8000717c:	00002517          	auipc	a0,0x2
    80007180:	58450513          	addi	a0,a0,1412 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007184:	00000097          	auipc	ra,0x0
    80007188:	7e4080e7          	jalr	2020(ra) # 80007968 <__printf>
    8000718c:	01013403          	ld	s0,16(sp)
    80007190:	01813083          	ld	ra,24(sp)
    80007194:	00048513          	mv	a0,s1
    80007198:	00813483          	ld	s1,8(sp)
    8000719c:	02010113          	addi	sp,sp,32
    800071a0:	00000317          	auipc	t1,0x0
    800071a4:	3bc30067          	jr	956(t1) # 8000755c <plic_complete>
    800071a8:	00006517          	auipc	a0,0x6
    800071ac:	de850513          	addi	a0,a0,-536 # 8000cf90 <tickslock>
    800071b0:	00001097          	auipc	ra,0x1
    800071b4:	48c080e7          	jalr	1164(ra) # 8000863c <acquire>
    800071b8:	00005717          	auipc	a4,0x5
    800071bc:	c5c70713          	addi	a4,a4,-932 # 8000be14 <ticks>
    800071c0:	00072783          	lw	a5,0(a4)
    800071c4:	00006517          	auipc	a0,0x6
    800071c8:	dcc50513          	addi	a0,a0,-564 # 8000cf90 <tickslock>
    800071cc:	0017879b          	addiw	a5,a5,1
    800071d0:	00f72023          	sw	a5,0(a4)
    800071d4:	00001097          	auipc	ra,0x1
    800071d8:	534080e7          	jalr	1332(ra) # 80008708 <release>
    800071dc:	f65ff06f          	j	80007140 <kerneltrap+0x8c>
    800071e0:	00001097          	auipc	ra,0x1
    800071e4:	090080e7          	jalr	144(ra) # 80008270 <uartintr>
    800071e8:	fa5ff06f          	j	8000718c <kerneltrap+0xd8>
    800071ec:	00002517          	auipc	a0,0x2
    800071f0:	4f450513          	addi	a0,a0,1268 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800071f4:	00000097          	auipc	ra,0x0
    800071f8:	718080e7          	jalr	1816(ra) # 8000790c <panic>

00000000800071fc <clockintr>:
    800071fc:	fe010113          	addi	sp,sp,-32
    80007200:	00813823          	sd	s0,16(sp)
    80007204:	00913423          	sd	s1,8(sp)
    80007208:	00113c23          	sd	ra,24(sp)
    8000720c:	02010413          	addi	s0,sp,32
    80007210:	00006497          	auipc	s1,0x6
    80007214:	d8048493          	addi	s1,s1,-640 # 8000cf90 <tickslock>
    80007218:	00048513          	mv	a0,s1
    8000721c:	00001097          	auipc	ra,0x1
    80007220:	420080e7          	jalr	1056(ra) # 8000863c <acquire>
    80007224:	00005717          	auipc	a4,0x5
    80007228:	bf070713          	addi	a4,a4,-1040 # 8000be14 <ticks>
    8000722c:	00072783          	lw	a5,0(a4)
    80007230:	01013403          	ld	s0,16(sp)
    80007234:	01813083          	ld	ra,24(sp)
    80007238:	00048513          	mv	a0,s1
    8000723c:	0017879b          	addiw	a5,a5,1
    80007240:	00813483          	ld	s1,8(sp)
    80007244:	00f72023          	sw	a5,0(a4)
    80007248:	02010113          	addi	sp,sp,32
    8000724c:	00001317          	auipc	t1,0x1
    80007250:	4bc30067          	jr	1212(t1) # 80008708 <release>

0000000080007254 <devintr>:
    80007254:	142027f3          	csrr	a5,scause
    80007258:	00000513          	li	a0,0
    8000725c:	0007c463          	bltz	a5,80007264 <devintr+0x10>
    80007260:	00008067          	ret
    80007264:	fe010113          	addi	sp,sp,-32
    80007268:	00813823          	sd	s0,16(sp)
    8000726c:	00113c23          	sd	ra,24(sp)
    80007270:	00913423          	sd	s1,8(sp)
    80007274:	02010413          	addi	s0,sp,32
    80007278:	0ff7f713          	andi	a4,a5,255
    8000727c:	00900693          	li	a3,9
    80007280:	04d70c63          	beq	a4,a3,800072d8 <devintr+0x84>
    80007284:	fff00713          	li	a4,-1
    80007288:	03f71713          	slli	a4,a4,0x3f
    8000728c:	00170713          	addi	a4,a4,1
    80007290:	00e78c63          	beq	a5,a4,800072a8 <devintr+0x54>
    80007294:	01813083          	ld	ra,24(sp)
    80007298:	01013403          	ld	s0,16(sp)
    8000729c:	00813483          	ld	s1,8(sp)
    800072a0:	02010113          	addi	sp,sp,32
    800072a4:	00008067          	ret
    800072a8:	00000097          	auipc	ra,0x0
    800072ac:	c8c080e7          	jalr	-884(ra) # 80006f34 <cpuid>
    800072b0:	06050663          	beqz	a0,8000731c <devintr+0xc8>
    800072b4:	144027f3          	csrr	a5,sip
    800072b8:	ffd7f793          	andi	a5,a5,-3
    800072bc:	14479073          	csrw	sip,a5
    800072c0:	01813083          	ld	ra,24(sp)
    800072c4:	01013403          	ld	s0,16(sp)
    800072c8:	00813483          	ld	s1,8(sp)
    800072cc:	00200513          	li	a0,2
    800072d0:	02010113          	addi	sp,sp,32
    800072d4:	00008067          	ret
    800072d8:	00000097          	auipc	ra,0x0
    800072dc:	24c080e7          	jalr	588(ra) # 80007524 <plic_claim>
    800072e0:	00a00793          	li	a5,10
    800072e4:	00050493          	mv	s1,a0
    800072e8:	06f50663          	beq	a0,a5,80007354 <devintr+0x100>
    800072ec:	00100513          	li	a0,1
    800072f0:	fa0482e3          	beqz	s1,80007294 <devintr+0x40>
    800072f4:	00048593          	mv	a1,s1
    800072f8:	00002517          	auipc	a0,0x2
    800072fc:	40850513          	addi	a0,a0,1032 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007300:	00000097          	auipc	ra,0x0
    80007304:	668080e7          	jalr	1640(ra) # 80007968 <__printf>
    80007308:	00048513          	mv	a0,s1
    8000730c:	00000097          	auipc	ra,0x0
    80007310:	250080e7          	jalr	592(ra) # 8000755c <plic_complete>
    80007314:	00100513          	li	a0,1
    80007318:	f7dff06f          	j	80007294 <devintr+0x40>
    8000731c:	00006517          	auipc	a0,0x6
    80007320:	c7450513          	addi	a0,a0,-908 # 8000cf90 <tickslock>
    80007324:	00001097          	auipc	ra,0x1
    80007328:	318080e7          	jalr	792(ra) # 8000863c <acquire>
    8000732c:	00005717          	auipc	a4,0x5
    80007330:	ae870713          	addi	a4,a4,-1304 # 8000be14 <ticks>
    80007334:	00072783          	lw	a5,0(a4)
    80007338:	00006517          	auipc	a0,0x6
    8000733c:	c5850513          	addi	a0,a0,-936 # 8000cf90 <tickslock>
    80007340:	0017879b          	addiw	a5,a5,1
    80007344:	00f72023          	sw	a5,0(a4)
    80007348:	00001097          	auipc	ra,0x1
    8000734c:	3c0080e7          	jalr	960(ra) # 80008708 <release>
    80007350:	f65ff06f          	j	800072b4 <devintr+0x60>
    80007354:	00001097          	auipc	ra,0x1
    80007358:	f1c080e7          	jalr	-228(ra) # 80008270 <uartintr>
    8000735c:	fadff06f          	j	80007308 <devintr+0xb4>

0000000080007360 <kernelvec>:
    80007360:	f0010113          	addi	sp,sp,-256
    80007364:	00113023          	sd	ra,0(sp)
    80007368:	00213423          	sd	sp,8(sp)
    8000736c:	00313823          	sd	gp,16(sp)
    80007370:	00413c23          	sd	tp,24(sp)
    80007374:	02513023          	sd	t0,32(sp)
    80007378:	02613423          	sd	t1,40(sp)
    8000737c:	02713823          	sd	t2,48(sp)
    80007380:	02813c23          	sd	s0,56(sp)
    80007384:	04913023          	sd	s1,64(sp)
    80007388:	04a13423          	sd	a0,72(sp)
    8000738c:	04b13823          	sd	a1,80(sp)
    80007390:	04c13c23          	sd	a2,88(sp)
    80007394:	06d13023          	sd	a3,96(sp)
    80007398:	06e13423          	sd	a4,104(sp)
    8000739c:	06f13823          	sd	a5,112(sp)
    800073a0:	07013c23          	sd	a6,120(sp)
    800073a4:	09113023          	sd	a7,128(sp)
    800073a8:	09213423          	sd	s2,136(sp)
    800073ac:	09313823          	sd	s3,144(sp)
    800073b0:	09413c23          	sd	s4,152(sp)
    800073b4:	0b513023          	sd	s5,160(sp)
    800073b8:	0b613423          	sd	s6,168(sp)
    800073bc:	0b713823          	sd	s7,176(sp)
    800073c0:	0b813c23          	sd	s8,184(sp)
    800073c4:	0d913023          	sd	s9,192(sp)
    800073c8:	0da13423          	sd	s10,200(sp)
    800073cc:	0db13823          	sd	s11,208(sp)
    800073d0:	0dc13c23          	sd	t3,216(sp)
    800073d4:	0fd13023          	sd	t4,224(sp)
    800073d8:	0fe13423          	sd	t5,232(sp)
    800073dc:	0ff13823          	sd	t6,240(sp)
    800073e0:	cd5ff0ef          	jal	ra,800070b4 <kerneltrap>
    800073e4:	00013083          	ld	ra,0(sp)
    800073e8:	00813103          	ld	sp,8(sp)
    800073ec:	01013183          	ld	gp,16(sp)
    800073f0:	02013283          	ld	t0,32(sp)
    800073f4:	02813303          	ld	t1,40(sp)
    800073f8:	03013383          	ld	t2,48(sp)
    800073fc:	03813403          	ld	s0,56(sp)
    80007400:	04013483          	ld	s1,64(sp)
    80007404:	04813503          	ld	a0,72(sp)
    80007408:	05013583          	ld	a1,80(sp)
    8000740c:	05813603          	ld	a2,88(sp)
    80007410:	06013683          	ld	a3,96(sp)
    80007414:	06813703          	ld	a4,104(sp)
    80007418:	07013783          	ld	a5,112(sp)
    8000741c:	07813803          	ld	a6,120(sp)
    80007420:	08013883          	ld	a7,128(sp)
    80007424:	08813903          	ld	s2,136(sp)
    80007428:	09013983          	ld	s3,144(sp)
    8000742c:	09813a03          	ld	s4,152(sp)
    80007430:	0a013a83          	ld	s5,160(sp)
    80007434:	0a813b03          	ld	s6,168(sp)
    80007438:	0b013b83          	ld	s7,176(sp)
    8000743c:	0b813c03          	ld	s8,184(sp)
    80007440:	0c013c83          	ld	s9,192(sp)
    80007444:	0c813d03          	ld	s10,200(sp)
    80007448:	0d013d83          	ld	s11,208(sp)
    8000744c:	0d813e03          	ld	t3,216(sp)
    80007450:	0e013e83          	ld	t4,224(sp)
    80007454:	0e813f03          	ld	t5,232(sp)
    80007458:	0f013f83          	ld	t6,240(sp)
    8000745c:	10010113          	addi	sp,sp,256
    80007460:	10200073          	sret
    80007464:	00000013          	nop
    80007468:	00000013          	nop
    8000746c:	00000013          	nop

0000000080007470 <timervec>:
    80007470:	34051573          	csrrw	a0,mscratch,a0
    80007474:	00b53023          	sd	a1,0(a0)
    80007478:	00c53423          	sd	a2,8(a0)
    8000747c:	00d53823          	sd	a3,16(a0)
    80007480:	01853583          	ld	a1,24(a0)
    80007484:	02053603          	ld	a2,32(a0)
    80007488:	0005b683          	ld	a3,0(a1)
    8000748c:	00c686b3          	add	a3,a3,a2
    80007490:	00d5b023          	sd	a3,0(a1)
    80007494:	00200593          	li	a1,2
    80007498:	14459073          	csrw	sip,a1
    8000749c:	01053683          	ld	a3,16(a0)
    800074a0:	00853603          	ld	a2,8(a0)
    800074a4:	00053583          	ld	a1,0(a0)
    800074a8:	34051573          	csrrw	a0,mscratch,a0
    800074ac:	30200073          	mret

00000000800074b0 <plicinit>:
    800074b0:	ff010113          	addi	sp,sp,-16
    800074b4:	00813423          	sd	s0,8(sp)
    800074b8:	01010413          	addi	s0,sp,16
    800074bc:	00813403          	ld	s0,8(sp)
    800074c0:	0c0007b7          	lui	a5,0xc000
    800074c4:	00100713          	li	a4,1
    800074c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800074cc:	00e7a223          	sw	a4,4(a5)
    800074d0:	01010113          	addi	sp,sp,16
    800074d4:	00008067          	ret

00000000800074d8 <plicinithart>:
    800074d8:	ff010113          	addi	sp,sp,-16
    800074dc:	00813023          	sd	s0,0(sp)
    800074e0:	00113423          	sd	ra,8(sp)
    800074e4:	01010413          	addi	s0,sp,16
    800074e8:	00000097          	auipc	ra,0x0
    800074ec:	a4c080e7          	jalr	-1460(ra) # 80006f34 <cpuid>
    800074f0:	0085171b          	slliw	a4,a0,0x8
    800074f4:	0c0027b7          	lui	a5,0xc002
    800074f8:	00e787b3          	add	a5,a5,a4
    800074fc:	40200713          	li	a4,1026
    80007500:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007504:	00813083          	ld	ra,8(sp)
    80007508:	00013403          	ld	s0,0(sp)
    8000750c:	00d5151b          	slliw	a0,a0,0xd
    80007510:	0c2017b7          	lui	a5,0xc201
    80007514:	00a78533          	add	a0,a5,a0
    80007518:	00052023          	sw	zero,0(a0)
    8000751c:	01010113          	addi	sp,sp,16
    80007520:	00008067          	ret

0000000080007524 <plic_claim>:
    80007524:	ff010113          	addi	sp,sp,-16
    80007528:	00813023          	sd	s0,0(sp)
    8000752c:	00113423          	sd	ra,8(sp)
    80007530:	01010413          	addi	s0,sp,16
    80007534:	00000097          	auipc	ra,0x0
    80007538:	a00080e7          	jalr	-1536(ra) # 80006f34 <cpuid>
    8000753c:	00813083          	ld	ra,8(sp)
    80007540:	00013403          	ld	s0,0(sp)
    80007544:	00d5151b          	slliw	a0,a0,0xd
    80007548:	0c2017b7          	lui	a5,0xc201
    8000754c:	00a78533          	add	a0,a5,a0
    80007550:	00452503          	lw	a0,4(a0)
    80007554:	01010113          	addi	sp,sp,16
    80007558:	00008067          	ret

000000008000755c <plic_complete>:
    8000755c:	fe010113          	addi	sp,sp,-32
    80007560:	00813823          	sd	s0,16(sp)
    80007564:	00913423          	sd	s1,8(sp)
    80007568:	00113c23          	sd	ra,24(sp)
    8000756c:	02010413          	addi	s0,sp,32
    80007570:	00050493          	mv	s1,a0
    80007574:	00000097          	auipc	ra,0x0
    80007578:	9c0080e7          	jalr	-1600(ra) # 80006f34 <cpuid>
    8000757c:	01813083          	ld	ra,24(sp)
    80007580:	01013403          	ld	s0,16(sp)
    80007584:	00d5179b          	slliw	a5,a0,0xd
    80007588:	0c201737          	lui	a4,0xc201
    8000758c:	00f707b3          	add	a5,a4,a5
    80007590:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007594:	00813483          	ld	s1,8(sp)
    80007598:	02010113          	addi	sp,sp,32
    8000759c:	00008067          	ret

00000000800075a0 <consolewrite>:
    800075a0:	fb010113          	addi	sp,sp,-80
    800075a4:	04813023          	sd	s0,64(sp)
    800075a8:	04113423          	sd	ra,72(sp)
    800075ac:	02913c23          	sd	s1,56(sp)
    800075b0:	03213823          	sd	s2,48(sp)
    800075b4:	03313423          	sd	s3,40(sp)
    800075b8:	03413023          	sd	s4,32(sp)
    800075bc:	01513c23          	sd	s5,24(sp)
    800075c0:	05010413          	addi	s0,sp,80
    800075c4:	06c05c63          	blez	a2,8000763c <consolewrite+0x9c>
    800075c8:	00060993          	mv	s3,a2
    800075cc:	00050a13          	mv	s4,a0
    800075d0:	00058493          	mv	s1,a1
    800075d4:	00000913          	li	s2,0
    800075d8:	fff00a93          	li	s5,-1
    800075dc:	01c0006f          	j	800075f8 <consolewrite+0x58>
    800075e0:	fbf44503          	lbu	a0,-65(s0)
    800075e4:	0019091b          	addiw	s2,s2,1
    800075e8:	00148493          	addi	s1,s1,1
    800075ec:	00001097          	auipc	ra,0x1
    800075f0:	a9c080e7          	jalr	-1380(ra) # 80008088 <uartputc>
    800075f4:	03298063          	beq	s3,s2,80007614 <consolewrite+0x74>
    800075f8:	00048613          	mv	a2,s1
    800075fc:	00100693          	li	a3,1
    80007600:	000a0593          	mv	a1,s4
    80007604:	fbf40513          	addi	a0,s0,-65
    80007608:	00000097          	auipc	ra,0x0
    8000760c:	9e4080e7          	jalr	-1564(ra) # 80006fec <either_copyin>
    80007610:	fd5518e3          	bne	a0,s5,800075e0 <consolewrite+0x40>
    80007614:	04813083          	ld	ra,72(sp)
    80007618:	04013403          	ld	s0,64(sp)
    8000761c:	03813483          	ld	s1,56(sp)
    80007620:	02813983          	ld	s3,40(sp)
    80007624:	02013a03          	ld	s4,32(sp)
    80007628:	01813a83          	ld	s5,24(sp)
    8000762c:	00090513          	mv	a0,s2
    80007630:	03013903          	ld	s2,48(sp)
    80007634:	05010113          	addi	sp,sp,80
    80007638:	00008067          	ret
    8000763c:	00000913          	li	s2,0
    80007640:	fd5ff06f          	j	80007614 <consolewrite+0x74>

0000000080007644 <consoleread>:
    80007644:	f9010113          	addi	sp,sp,-112
    80007648:	06813023          	sd	s0,96(sp)
    8000764c:	04913c23          	sd	s1,88(sp)
    80007650:	05213823          	sd	s2,80(sp)
    80007654:	05313423          	sd	s3,72(sp)
    80007658:	05413023          	sd	s4,64(sp)
    8000765c:	03513c23          	sd	s5,56(sp)
    80007660:	03613823          	sd	s6,48(sp)
    80007664:	03713423          	sd	s7,40(sp)
    80007668:	03813023          	sd	s8,32(sp)
    8000766c:	06113423          	sd	ra,104(sp)
    80007670:	01913c23          	sd	s9,24(sp)
    80007674:	07010413          	addi	s0,sp,112
    80007678:	00060b93          	mv	s7,a2
    8000767c:	00050913          	mv	s2,a0
    80007680:	00058c13          	mv	s8,a1
    80007684:	00060b1b          	sext.w	s6,a2
    80007688:	00006497          	auipc	s1,0x6
    8000768c:	93048493          	addi	s1,s1,-1744 # 8000cfb8 <cons>
    80007690:	00400993          	li	s3,4
    80007694:	fff00a13          	li	s4,-1
    80007698:	00a00a93          	li	s5,10
    8000769c:	05705e63          	blez	s7,800076f8 <consoleread+0xb4>
    800076a0:	09c4a703          	lw	a4,156(s1)
    800076a4:	0984a783          	lw	a5,152(s1)
    800076a8:	0007071b          	sext.w	a4,a4
    800076ac:	08e78463          	beq	a5,a4,80007734 <consoleread+0xf0>
    800076b0:	07f7f713          	andi	a4,a5,127
    800076b4:	00e48733          	add	a4,s1,a4
    800076b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800076bc:	0017869b          	addiw	a3,a5,1
    800076c0:	08d4ac23          	sw	a3,152(s1)
    800076c4:	00070c9b          	sext.w	s9,a4
    800076c8:	0b370663          	beq	a4,s3,80007774 <consoleread+0x130>
    800076cc:	00100693          	li	a3,1
    800076d0:	f9f40613          	addi	a2,s0,-97
    800076d4:	000c0593          	mv	a1,s8
    800076d8:	00090513          	mv	a0,s2
    800076dc:	f8e40fa3          	sb	a4,-97(s0)
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	8c0080e7          	jalr	-1856(ra) # 80006fa0 <either_copyout>
    800076e8:	01450863          	beq	a0,s4,800076f8 <consoleread+0xb4>
    800076ec:	001c0c13          	addi	s8,s8,1
    800076f0:	fffb8b9b          	addiw	s7,s7,-1
    800076f4:	fb5c94e3          	bne	s9,s5,8000769c <consoleread+0x58>
    800076f8:	000b851b          	sext.w	a0,s7
    800076fc:	06813083          	ld	ra,104(sp)
    80007700:	06013403          	ld	s0,96(sp)
    80007704:	05813483          	ld	s1,88(sp)
    80007708:	05013903          	ld	s2,80(sp)
    8000770c:	04813983          	ld	s3,72(sp)
    80007710:	04013a03          	ld	s4,64(sp)
    80007714:	03813a83          	ld	s5,56(sp)
    80007718:	02813b83          	ld	s7,40(sp)
    8000771c:	02013c03          	ld	s8,32(sp)
    80007720:	01813c83          	ld	s9,24(sp)
    80007724:	40ab053b          	subw	a0,s6,a0
    80007728:	03013b03          	ld	s6,48(sp)
    8000772c:	07010113          	addi	sp,sp,112
    80007730:	00008067          	ret
    80007734:	00001097          	auipc	ra,0x1
    80007738:	1d8080e7          	jalr	472(ra) # 8000890c <push_on>
    8000773c:	0984a703          	lw	a4,152(s1)
    80007740:	09c4a783          	lw	a5,156(s1)
    80007744:	0007879b          	sext.w	a5,a5
    80007748:	fef70ce3          	beq	a4,a5,80007740 <consoleread+0xfc>
    8000774c:	00001097          	auipc	ra,0x1
    80007750:	234080e7          	jalr	564(ra) # 80008980 <pop_on>
    80007754:	0984a783          	lw	a5,152(s1)
    80007758:	07f7f713          	andi	a4,a5,127
    8000775c:	00e48733          	add	a4,s1,a4
    80007760:	01874703          	lbu	a4,24(a4)
    80007764:	0017869b          	addiw	a3,a5,1
    80007768:	08d4ac23          	sw	a3,152(s1)
    8000776c:	00070c9b          	sext.w	s9,a4
    80007770:	f5371ee3          	bne	a4,s3,800076cc <consoleread+0x88>
    80007774:	000b851b          	sext.w	a0,s7
    80007778:	f96bf2e3          	bgeu	s7,s6,800076fc <consoleread+0xb8>
    8000777c:	08f4ac23          	sw	a5,152(s1)
    80007780:	f7dff06f          	j	800076fc <consoleread+0xb8>

0000000080007784 <consputc>:
    80007784:	10000793          	li	a5,256
    80007788:	00f50663          	beq	a0,a5,80007794 <consputc+0x10>
    8000778c:	00001317          	auipc	t1,0x1
    80007790:	9f430067          	jr	-1548(t1) # 80008180 <uartputc_sync>
    80007794:	ff010113          	addi	sp,sp,-16
    80007798:	00113423          	sd	ra,8(sp)
    8000779c:	00813023          	sd	s0,0(sp)
    800077a0:	01010413          	addi	s0,sp,16
    800077a4:	00800513          	li	a0,8
    800077a8:	00001097          	auipc	ra,0x1
    800077ac:	9d8080e7          	jalr	-1576(ra) # 80008180 <uartputc_sync>
    800077b0:	02000513          	li	a0,32
    800077b4:	00001097          	auipc	ra,0x1
    800077b8:	9cc080e7          	jalr	-1588(ra) # 80008180 <uartputc_sync>
    800077bc:	00013403          	ld	s0,0(sp)
    800077c0:	00813083          	ld	ra,8(sp)
    800077c4:	00800513          	li	a0,8
    800077c8:	01010113          	addi	sp,sp,16
    800077cc:	00001317          	auipc	t1,0x1
    800077d0:	9b430067          	jr	-1612(t1) # 80008180 <uartputc_sync>

00000000800077d4 <consoleintr>:
    800077d4:	fe010113          	addi	sp,sp,-32
    800077d8:	00813823          	sd	s0,16(sp)
    800077dc:	00913423          	sd	s1,8(sp)
    800077e0:	01213023          	sd	s2,0(sp)
    800077e4:	00113c23          	sd	ra,24(sp)
    800077e8:	02010413          	addi	s0,sp,32
    800077ec:	00005917          	auipc	s2,0x5
    800077f0:	7cc90913          	addi	s2,s2,1996 # 8000cfb8 <cons>
    800077f4:	00050493          	mv	s1,a0
    800077f8:	00090513          	mv	a0,s2
    800077fc:	00001097          	auipc	ra,0x1
    80007800:	e40080e7          	jalr	-448(ra) # 8000863c <acquire>
    80007804:	02048c63          	beqz	s1,8000783c <consoleintr+0x68>
    80007808:	0a092783          	lw	a5,160(s2)
    8000780c:	09892703          	lw	a4,152(s2)
    80007810:	07f00693          	li	a3,127
    80007814:	40e7873b          	subw	a4,a5,a4
    80007818:	02e6e263          	bltu	a3,a4,8000783c <consoleintr+0x68>
    8000781c:	00d00713          	li	a4,13
    80007820:	04e48063          	beq	s1,a4,80007860 <consoleintr+0x8c>
    80007824:	07f7f713          	andi	a4,a5,127
    80007828:	00e90733          	add	a4,s2,a4
    8000782c:	0017879b          	addiw	a5,a5,1
    80007830:	0af92023          	sw	a5,160(s2)
    80007834:	00970c23          	sb	s1,24(a4)
    80007838:	08f92e23          	sw	a5,156(s2)
    8000783c:	01013403          	ld	s0,16(sp)
    80007840:	01813083          	ld	ra,24(sp)
    80007844:	00813483          	ld	s1,8(sp)
    80007848:	00013903          	ld	s2,0(sp)
    8000784c:	00005517          	auipc	a0,0x5
    80007850:	76c50513          	addi	a0,a0,1900 # 8000cfb8 <cons>
    80007854:	02010113          	addi	sp,sp,32
    80007858:	00001317          	auipc	t1,0x1
    8000785c:	eb030067          	jr	-336(t1) # 80008708 <release>
    80007860:	00a00493          	li	s1,10
    80007864:	fc1ff06f          	j	80007824 <consoleintr+0x50>

0000000080007868 <consoleinit>:
    80007868:	fe010113          	addi	sp,sp,-32
    8000786c:	00113c23          	sd	ra,24(sp)
    80007870:	00813823          	sd	s0,16(sp)
    80007874:	00913423          	sd	s1,8(sp)
    80007878:	02010413          	addi	s0,sp,32
    8000787c:	00005497          	auipc	s1,0x5
    80007880:	73c48493          	addi	s1,s1,1852 # 8000cfb8 <cons>
    80007884:	00048513          	mv	a0,s1
    80007888:	00002597          	auipc	a1,0x2
    8000788c:	ed058593          	addi	a1,a1,-304 # 80009758 <CONSOLE_STATUS+0x748>
    80007890:	00001097          	auipc	ra,0x1
    80007894:	d88080e7          	jalr	-632(ra) # 80008618 <initlock>
    80007898:	00000097          	auipc	ra,0x0
    8000789c:	7ac080e7          	jalr	1964(ra) # 80008044 <uartinit>
    800078a0:	01813083          	ld	ra,24(sp)
    800078a4:	01013403          	ld	s0,16(sp)
    800078a8:	00000797          	auipc	a5,0x0
    800078ac:	d9c78793          	addi	a5,a5,-612 # 80007644 <consoleread>
    800078b0:	0af4bc23          	sd	a5,184(s1)
    800078b4:	00000797          	auipc	a5,0x0
    800078b8:	cec78793          	addi	a5,a5,-788 # 800075a0 <consolewrite>
    800078bc:	0cf4b023          	sd	a5,192(s1)
    800078c0:	00813483          	ld	s1,8(sp)
    800078c4:	02010113          	addi	sp,sp,32
    800078c8:	00008067          	ret

00000000800078cc <console_read>:
    800078cc:	ff010113          	addi	sp,sp,-16
    800078d0:	00813423          	sd	s0,8(sp)
    800078d4:	01010413          	addi	s0,sp,16
    800078d8:	00813403          	ld	s0,8(sp)
    800078dc:	00005317          	auipc	t1,0x5
    800078e0:	79433303          	ld	t1,1940(t1) # 8000d070 <devsw+0x10>
    800078e4:	01010113          	addi	sp,sp,16
    800078e8:	00030067          	jr	t1

00000000800078ec <console_write>:
    800078ec:	ff010113          	addi	sp,sp,-16
    800078f0:	00813423          	sd	s0,8(sp)
    800078f4:	01010413          	addi	s0,sp,16
    800078f8:	00813403          	ld	s0,8(sp)
    800078fc:	00005317          	auipc	t1,0x5
    80007900:	77c33303          	ld	t1,1916(t1) # 8000d078 <devsw+0x18>
    80007904:	01010113          	addi	sp,sp,16
    80007908:	00030067          	jr	t1

000000008000790c <panic>:
    8000790c:	fe010113          	addi	sp,sp,-32
    80007910:	00113c23          	sd	ra,24(sp)
    80007914:	00813823          	sd	s0,16(sp)
    80007918:	00913423          	sd	s1,8(sp)
    8000791c:	02010413          	addi	s0,sp,32
    80007920:	00050493          	mv	s1,a0
    80007924:	00002517          	auipc	a0,0x2
    80007928:	e3c50513          	addi	a0,a0,-452 # 80009760 <CONSOLE_STATUS+0x750>
    8000792c:	00005797          	auipc	a5,0x5
    80007930:	7e07a623          	sw	zero,2028(a5) # 8000d118 <pr+0x18>
    80007934:	00000097          	auipc	ra,0x0
    80007938:	034080e7          	jalr	52(ra) # 80007968 <__printf>
    8000793c:	00048513          	mv	a0,s1
    80007940:	00000097          	auipc	ra,0x0
    80007944:	028080e7          	jalr	40(ra) # 80007968 <__printf>
    80007948:	00002517          	auipc	a0,0x2
    8000794c:	97050513          	addi	a0,a0,-1680 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80007950:	00000097          	auipc	ra,0x0
    80007954:	018080e7          	jalr	24(ra) # 80007968 <__printf>
    80007958:	00100793          	li	a5,1
    8000795c:	00004717          	auipc	a4,0x4
    80007960:	4af72e23          	sw	a5,1212(a4) # 8000be18 <panicked>
    80007964:	0000006f          	j	80007964 <panic+0x58>

0000000080007968 <__printf>:
    80007968:	f3010113          	addi	sp,sp,-208
    8000796c:	08813023          	sd	s0,128(sp)
    80007970:	07313423          	sd	s3,104(sp)
    80007974:	09010413          	addi	s0,sp,144
    80007978:	05813023          	sd	s8,64(sp)
    8000797c:	08113423          	sd	ra,136(sp)
    80007980:	06913c23          	sd	s1,120(sp)
    80007984:	07213823          	sd	s2,112(sp)
    80007988:	07413023          	sd	s4,96(sp)
    8000798c:	05513c23          	sd	s5,88(sp)
    80007990:	05613823          	sd	s6,80(sp)
    80007994:	05713423          	sd	s7,72(sp)
    80007998:	03913c23          	sd	s9,56(sp)
    8000799c:	03a13823          	sd	s10,48(sp)
    800079a0:	03b13423          	sd	s11,40(sp)
    800079a4:	00005317          	auipc	t1,0x5
    800079a8:	75c30313          	addi	t1,t1,1884 # 8000d100 <pr>
    800079ac:	01832c03          	lw	s8,24(t1)
    800079b0:	00b43423          	sd	a1,8(s0)
    800079b4:	00c43823          	sd	a2,16(s0)
    800079b8:	00d43c23          	sd	a3,24(s0)
    800079bc:	02e43023          	sd	a4,32(s0)
    800079c0:	02f43423          	sd	a5,40(s0)
    800079c4:	03043823          	sd	a6,48(s0)
    800079c8:	03143c23          	sd	a7,56(s0)
    800079cc:	00050993          	mv	s3,a0
    800079d0:	4a0c1663          	bnez	s8,80007e7c <__printf+0x514>
    800079d4:	60098c63          	beqz	s3,80007fec <__printf+0x684>
    800079d8:	0009c503          	lbu	a0,0(s3)
    800079dc:	00840793          	addi	a5,s0,8
    800079e0:	f6f43c23          	sd	a5,-136(s0)
    800079e4:	00000493          	li	s1,0
    800079e8:	22050063          	beqz	a0,80007c08 <__printf+0x2a0>
    800079ec:	00002a37          	lui	s4,0x2
    800079f0:	00018ab7          	lui	s5,0x18
    800079f4:	000f4b37          	lui	s6,0xf4
    800079f8:	00989bb7          	lui	s7,0x989
    800079fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007a00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007a04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007a08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007a0c:	00148c9b          	addiw	s9,s1,1
    80007a10:	02500793          	li	a5,37
    80007a14:	01998933          	add	s2,s3,s9
    80007a18:	38f51263          	bne	a0,a5,80007d9c <__printf+0x434>
    80007a1c:	00094783          	lbu	a5,0(s2)
    80007a20:	00078c9b          	sext.w	s9,a5
    80007a24:	1e078263          	beqz	a5,80007c08 <__printf+0x2a0>
    80007a28:	0024849b          	addiw	s1,s1,2
    80007a2c:	07000713          	li	a4,112
    80007a30:	00998933          	add	s2,s3,s1
    80007a34:	38e78a63          	beq	a5,a4,80007dc8 <__printf+0x460>
    80007a38:	20f76863          	bltu	a4,a5,80007c48 <__printf+0x2e0>
    80007a3c:	42a78863          	beq	a5,a0,80007e6c <__printf+0x504>
    80007a40:	06400713          	li	a4,100
    80007a44:	40e79663          	bne	a5,a4,80007e50 <__printf+0x4e8>
    80007a48:	f7843783          	ld	a5,-136(s0)
    80007a4c:	0007a603          	lw	a2,0(a5)
    80007a50:	00878793          	addi	a5,a5,8
    80007a54:	f6f43c23          	sd	a5,-136(s0)
    80007a58:	42064a63          	bltz	a2,80007e8c <__printf+0x524>
    80007a5c:	00a00713          	li	a4,10
    80007a60:	02e677bb          	remuw	a5,a2,a4
    80007a64:	00002d97          	auipc	s11,0x2
    80007a68:	d24d8d93          	addi	s11,s11,-732 # 80009788 <digits>
    80007a6c:	00900593          	li	a1,9
    80007a70:	0006051b          	sext.w	a0,a2
    80007a74:	00000c93          	li	s9,0
    80007a78:	02079793          	slli	a5,a5,0x20
    80007a7c:	0207d793          	srli	a5,a5,0x20
    80007a80:	00fd87b3          	add	a5,s11,a5
    80007a84:	0007c783          	lbu	a5,0(a5)
    80007a88:	02e656bb          	divuw	a3,a2,a4
    80007a8c:	f8f40023          	sb	a5,-128(s0)
    80007a90:	14c5d863          	bge	a1,a2,80007be0 <__printf+0x278>
    80007a94:	06300593          	li	a1,99
    80007a98:	00100c93          	li	s9,1
    80007a9c:	02e6f7bb          	remuw	a5,a3,a4
    80007aa0:	02079793          	slli	a5,a5,0x20
    80007aa4:	0207d793          	srli	a5,a5,0x20
    80007aa8:	00fd87b3          	add	a5,s11,a5
    80007aac:	0007c783          	lbu	a5,0(a5)
    80007ab0:	02e6d73b          	divuw	a4,a3,a4
    80007ab4:	f8f400a3          	sb	a5,-127(s0)
    80007ab8:	12a5f463          	bgeu	a1,a0,80007be0 <__printf+0x278>
    80007abc:	00a00693          	li	a3,10
    80007ac0:	00900593          	li	a1,9
    80007ac4:	02d777bb          	remuw	a5,a4,a3
    80007ac8:	02079793          	slli	a5,a5,0x20
    80007acc:	0207d793          	srli	a5,a5,0x20
    80007ad0:	00fd87b3          	add	a5,s11,a5
    80007ad4:	0007c503          	lbu	a0,0(a5)
    80007ad8:	02d757bb          	divuw	a5,a4,a3
    80007adc:	f8a40123          	sb	a0,-126(s0)
    80007ae0:	48e5f263          	bgeu	a1,a4,80007f64 <__printf+0x5fc>
    80007ae4:	06300513          	li	a0,99
    80007ae8:	02d7f5bb          	remuw	a1,a5,a3
    80007aec:	02059593          	slli	a1,a1,0x20
    80007af0:	0205d593          	srli	a1,a1,0x20
    80007af4:	00bd85b3          	add	a1,s11,a1
    80007af8:	0005c583          	lbu	a1,0(a1)
    80007afc:	02d7d7bb          	divuw	a5,a5,a3
    80007b00:	f8b401a3          	sb	a1,-125(s0)
    80007b04:	48e57263          	bgeu	a0,a4,80007f88 <__printf+0x620>
    80007b08:	3e700513          	li	a0,999
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b40223          	sb	a1,-124(s0)
    80007b28:	46e57663          	bgeu	a0,a4,80007f94 <__printf+0x62c>
    80007b2c:	02d7f5bb          	remuw	a1,a5,a3
    80007b30:	02059593          	slli	a1,a1,0x20
    80007b34:	0205d593          	srli	a1,a1,0x20
    80007b38:	00bd85b3          	add	a1,s11,a1
    80007b3c:	0005c583          	lbu	a1,0(a1)
    80007b40:	02d7d7bb          	divuw	a5,a5,a3
    80007b44:	f8b402a3          	sb	a1,-123(s0)
    80007b48:	46ea7863          	bgeu	s4,a4,80007fb8 <__printf+0x650>
    80007b4c:	02d7f5bb          	remuw	a1,a5,a3
    80007b50:	02059593          	slli	a1,a1,0x20
    80007b54:	0205d593          	srli	a1,a1,0x20
    80007b58:	00bd85b3          	add	a1,s11,a1
    80007b5c:	0005c583          	lbu	a1,0(a1)
    80007b60:	02d7d7bb          	divuw	a5,a5,a3
    80007b64:	f8b40323          	sb	a1,-122(s0)
    80007b68:	3eeaf863          	bgeu	s5,a4,80007f58 <__printf+0x5f0>
    80007b6c:	02d7f5bb          	remuw	a1,a5,a3
    80007b70:	02059593          	slli	a1,a1,0x20
    80007b74:	0205d593          	srli	a1,a1,0x20
    80007b78:	00bd85b3          	add	a1,s11,a1
    80007b7c:	0005c583          	lbu	a1,0(a1)
    80007b80:	02d7d7bb          	divuw	a5,a5,a3
    80007b84:	f8b403a3          	sb	a1,-121(s0)
    80007b88:	42eb7e63          	bgeu	s6,a4,80007fc4 <__printf+0x65c>
    80007b8c:	02d7f5bb          	remuw	a1,a5,a3
    80007b90:	02059593          	slli	a1,a1,0x20
    80007b94:	0205d593          	srli	a1,a1,0x20
    80007b98:	00bd85b3          	add	a1,s11,a1
    80007b9c:	0005c583          	lbu	a1,0(a1)
    80007ba0:	02d7d7bb          	divuw	a5,a5,a3
    80007ba4:	f8b40423          	sb	a1,-120(s0)
    80007ba8:	42ebfc63          	bgeu	s7,a4,80007fe0 <__printf+0x678>
    80007bac:	02079793          	slli	a5,a5,0x20
    80007bb0:	0207d793          	srli	a5,a5,0x20
    80007bb4:	00fd8db3          	add	s11,s11,a5
    80007bb8:	000dc703          	lbu	a4,0(s11)
    80007bbc:	00a00793          	li	a5,10
    80007bc0:	00900c93          	li	s9,9
    80007bc4:	f8e404a3          	sb	a4,-119(s0)
    80007bc8:	00065c63          	bgez	a2,80007be0 <__printf+0x278>
    80007bcc:	f9040713          	addi	a4,s0,-112
    80007bd0:	00f70733          	add	a4,a4,a5
    80007bd4:	02d00693          	li	a3,45
    80007bd8:	fed70823          	sb	a3,-16(a4)
    80007bdc:	00078c93          	mv	s9,a5
    80007be0:	f8040793          	addi	a5,s0,-128
    80007be4:	01978cb3          	add	s9,a5,s9
    80007be8:	f7f40d13          	addi	s10,s0,-129
    80007bec:	000cc503          	lbu	a0,0(s9)
    80007bf0:	fffc8c93          	addi	s9,s9,-1
    80007bf4:	00000097          	auipc	ra,0x0
    80007bf8:	b90080e7          	jalr	-1136(ra) # 80007784 <consputc>
    80007bfc:	ffac98e3          	bne	s9,s10,80007bec <__printf+0x284>
    80007c00:	00094503          	lbu	a0,0(s2)
    80007c04:	e00514e3          	bnez	a0,80007a0c <__printf+0xa4>
    80007c08:	1a0c1663          	bnez	s8,80007db4 <__printf+0x44c>
    80007c0c:	08813083          	ld	ra,136(sp)
    80007c10:	08013403          	ld	s0,128(sp)
    80007c14:	07813483          	ld	s1,120(sp)
    80007c18:	07013903          	ld	s2,112(sp)
    80007c1c:	06813983          	ld	s3,104(sp)
    80007c20:	06013a03          	ld	s4,96(sp)
    80007c24:	05813a83          	ld	s5,88(sp)
    80007c28:	05013b03          	ld	s6,80(sp)
    80007c2c:	04813b83          	ld	s7,72(sp)
    80007c30:	04013c03          	ld	s8,64(sp)
    80007c34:	03813c83          	ld	s9,56(sp)
    80007c38:	03013d03          	ld	s10,48(sp)
    80007c3c:	02813d83          	ld	s11,40(sp)
    80007c40:	0d010113          	addi	sp,sp,208
    80007c44:	00008067          	ret
    80007c48:	07300713          	li	a4,115
    80007c4c:	1ce78a63          	beq	a5,a4,80007e20 <__printf+0x4b8>
    80007c50:	07800713          	li	a4,120
    80007c54:	1ee79e63          	bne	a5,a4,80007e50 <__printf+0x4e8>
    80007c58:	f7843783          	ld	a5,-136(s0)
    80007c5c:	0007a703          	lw	a4,0(a5)
    80007c60:	00878793          	addi	a5,a5,8
    80007c64:	f6f43c23          	sd	a5,-136(s0)
    80007c68:	28074263          	bltz	a4,80007eec <__printf+0x584>
    80007c6c:	00002d97          	auipc	s11,0x2
    80007c70:	b1cd8d93          	addi	s11,s11,-1252 # 80009788 <digits>
    80007c74:	00f77793          	andi	a5,a4,15
    80007c78:	00fd87b3          	add	a5,s11,a5
    80007c7c:	0007c683          	lbu	a3,0(a5)
    80007c80:	00f00613          	li	a2,15
    80007c84:	0007079b          	sext.w	a5,a4
    80007c88:	f8d40023          	sb	a3,-128(s0)
    80007c8c:	0047559b          	srliw	a1,a4,0x4
    80007c90:	0047569b          	srliw	a3,a4,0x4
    80007c94:	00000c93          	li	s9,0
    80007c98:	0ee65063          	bge	a2,a4,80007d78 <__printf+0x410>
    80007c9c:	00f6f693          	andi	a3,a3,15
    80007ca0:	00dd86b3          	add	a3,s11,a3
    80007ca4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007ca8:	0087d79b          	srliw	a5,a5,0x8
    80007cac:	00100c93          	li	s9,1
    80007cb0:	f8d400a3          	sb	a3,-127(s0)
    80007cb4:	0cb67263          	bgeu	a2,a1,80007d78 <__printf+0x410>
    80007cb8:	00f7f693          	andi	a3,a5,15
    80007cbc:	00dd86b3          	add	a3,s11,a3
    80007cc0:	0006c583          	lbu	a1,0(a3)
    80007cc4:	00f00613          	li	a2,15
    80007cc8:	0047d69b          	srliw	a3,a5,0x4
    80007ccc:	f8b40123          	sb	a1,-126(s0)
    80007cd0:	0047d593          	srli	a1,a5,0x4
    80007cd4:	28f67e63          	bgeu	a2,a5,80007f70 <__printf+0x608>
    80007cd8:	00f6f693          	andi	a3,a3,15
    80007cdc:	00dd86b3          	add	a3,s11,a3
    80007ce0:	0006c503          	lbu	a0,0(a3)
    80007ce4:	0087d813          	srli	a6,a5,0x8
    80007ce8:	0087d69b          	srliw	a3,a5,0x8
    80007cec:	f8a401a3          	sb	a0,-125(s0)
    80007cf0:	28b67663          	bgeu	a2,a1,80007f7c <__printf+0x614>
    80007cf4:	00f6f693          	andi	a3,a3,15
    80007cf8:	00dd86b3          	add	a3,s11,a3
    80007cfc:	0006c583          	lbu	a1,0(a3)
    80007d00:	00c7d513          	srli	a0,a5,0xc
    80007d04:	00c7d69b          	srliw	a3,a5,0xc
    80007d08:	f8b40223          	sb	a1,-124(s0)
    80007d0c:	29067a63          	bgeu	a2,a6,80007fa0 <__printf+0x638>
    80007d10:	00f6f693          	andi	a3,a3,15
    80007d14:	00dd86b3          	add	a3,s11,a3
    80007d18:	0006c583          	lbu	a1,0(a3)
    80007d1c:	0107d813          	srli	a6,a5,0x10
    80007d20:	0107d69b          	srliw	a3,a5,0x10
    80007d24:	f8b402a3          	sb	a1,-123(s0)
    80007d28:	28a67263          	bgeu	a2,a0,80007fac <__printf+0x644>
    80007d2c:	00f6f693          	andi	a3,a3,15
    80007d30:	00dd86b3          	add	a3,s11,a3
    80007d34:	0006c683          	lbu	a3,0(a3)
    80007d38:	0147d79b          	srliw	a5,a5,0x14
    80007d3c:	f8d40323          	sb	a3,-122(s0)
    80007d40:	21067663          	bgeu	a2,a6,80007f4c <__printf+0x5e4>
    80007d44:	02079793          	slli	a5,a5,0x20
    80007d48:	0207d793          	srli	a5,a5,0x20
    80007d4c:	00fd8db3          	add	s11,s11,a5
    80007d50:	000dc683          	lbu	a3,0(s11)
    80007d54:	00800793          	li	a5,8
    80007d58:	00700c93          	li	s9,7
    80007d5c:	f8d403a3          	sb	a3,-121(s0)
    80007d60:	00075c63          	bgez	a4,80007d78 <__printf+0x410>
    80007d64:	f9040713          	addi	a4,s0,-112
    80007d68:	00f70733          	add	a4,a4,a5
    80007d6c:	02d00693          	li	a3,45
    80007d70:	fed70823          	sb	a3,-16(a4)
    80007d74:	00078c93          	mv	s9,a5
    80007d78:	f8040793          	addi	a5,s0,-128
    80007d7c:	01978cb3          	add	s9,a5,s9
    80007d80:	f7f40d13          	addi	s10,s0,-129
    80007d84:	000cc503          	lbu	a0,0(s9)
    80007d88:	fffc8c93          	addi	s9,s9,-1
    80007d8c:	00000097          	auipc	ra,0x0
    80007d90:	9f8080e7          	jalr	-1544(ra) # 80007784 <consputc>
    80007d94:	ff9d18e3          	bne	s10,s9,80007d84 <__printf+0x41c>
    80007d98:	0100006f          	j	80007da8 <__printf+0x440>
    80007d9c:	00000097          	auipc	ra,0x0
    80007da0:	9e8080e7          	jalr	-1560(ra) # 80007784 <consputc>
    80007da4:	000c8493          	mv	s1,s9
    80007da8:	00094503          	lbu	a0,0(s2)
    80007dac:	c60510e3          	bnez	a0,80007a0c <__printf+0xa4>
    80007db0:	e40c0ee3          	beqz	s8,80007c0c <__printf+0x2a4>
    80007db4:	00005517          	auipc	a0,0x5
    80007db8:	34c50513          	addi	a0,a0,844 # 8000d100 <pr>
    80007dbc:	00001097          	auipc	ra,0x1
    80007dc0:	94c080e7          	jalr	-1716(ra) # 80008708 <release>
    80007dc4:	e49ff06f          	j	80007c0c <__printf+0x2a4>
    80007dc8:	f7843783          	ld	a5,-136(s0)
    80007dcc:	03000513          	li	a0,48
    80007dd0:	01000d13          	li	s10,16
    80007dd4:	00878713          	addi	a4,a5,8
    80007dd8:	0007bc83          	ld	s9,0(a5)
    80007ddc:	f6e43c23          	sd	a4,-136(s0)
    80007de0:	00000097          	auipc	ra,0x0
    80007de4:	9a4080e7          	jalr	-1628(ra) # 80007784 <consputc>
    80007de8:	07800513          	li	a0,120
    80007dec:	00000097          	auipc	ra,0x0
    80007df0:	998080e7          	jalr	-1640(ra) # 80007784 <consputc>
    80007df4:	00002d97          	auipc	s11,0x2
    80007df8:	994d8d93          	addi	s11,s11,-1644 # 80009788 <digits>
    80007dfc:	03ccd793          	srli	a5,s9,0x3c
    80007e00:	00fd87b3          	add	a5,s11,a5
    80007e04:	0007c503          	lbu	a0,0(a5)
    80007e08:	fffd0d1b          	addiw	s10,s10,-1
    80007e0c:	004c9c93          	slli	s9,s9,0x4
    80007e10:	00000097          	auipc	ra,0x0
    80007e14:	974080e7          	jalr	-1676(ra) # 80007784 <consputc>
    80007e18:	fe0d12e3          	bnez	s10,80007dfc <__printf+0x494>
    80007e1c:	f8dff06f          	j	80007da8 <__printf+0x440>
    80007e20:	f7843783          	ld	a5,-136(s0)
    80007e24:	0007bc83          	ld	s9,0(a5)
    80007e28:	00878793          	addi	a5,a5,8
    80007e2c:	f6f43c23          	sd	a5,-136(s0)
    80007e30:	000c9a63          	bnez	s9,80007e44 <__printf+0x4dc>
    80007e34:	1080006f          	j	80007f3c <__printf+0x5d4>
    80007e38:	001c8c93          	addi	s9,s9,1
    80007e3c:	00000097          	auipc	ra,0x0
    80007e40:	948080e7          	jalr	-1720(ra) # 80007784 <consputc>
    80007e44:	000cc503          	lbu	a0,0(s9)
    80007e48:	fe0518e3          	bnez	a0,80007e38 <__printf+0x4d0>
    80007e4c:	f5dff06f          	j	80007da8 <__printf+0x440>
    80007e50:	02500513          	li	a0,37
    80007e54:	00000097          	auipc	ra,0x0
    80007e58:	930080e7          	jalr	-1744(ra) # 80007784 <consputc>
    80007e5c:	000c8513          	mv	a0,s9
    80007e60:	00000097          	auipc	ra,0x0
    80007e64:	924080e7          	jalr	-1756(ra) # 80007784 <consputc>
    80007e68:	f41ff06f          	j	80007da8 <__printf+0x440>
    80007e6c:	02500513          	li	a0,37
    80007e70:	00000097          	auipc	ra,0x0
    80007e74:	914080e7          	jalr	-1772(ra) # 80007784 <consputc>
    80007e78:	f31ff06f          	j	80007da8 <__printf+0x440>
    80007e7c:	00030513          	mv	a0,t1
    80007e80:	00000097          	auipc	ra,0x0
    80007e84:	7bc080e7          	jalr	1980(ra) # 8000863c <acquire>
    80007e88:	b4dff06f          	j	800079d4 <__printf+0x6c>
    80007e8c:	40c0053b          	negw	a0,a2
    80007e90:	00a00713          	li	a4,10
    80007e94:	02e576bb          	remuw	a3,a0,a4
    80007e98:	00002d97          	auipc	s11,0x2
    80007e9c:	8f0d8d93          	addi	s11,s11,-1808 # 80009788 <digits>
    80007ea0:	ff700593          	li	a1,-9
    80007ea4:	02069693          	slli	a3,a3,0x20
    80007ea8:	0206d693          	srli	a3,a3,0x20
    80007eac:	00dd86b3          	add	a3,s11,a3
    80007eb0:	0006c683          	lbu	a3,0(a3)
    80007eb4:	02e557bb          	divuw	a5,a0,a4
    80007eb8:	f8d40023          	sb	a3,-128(s0)
    80007ebc:	10b65e63          	bge	a2,a1,80007fd8 <__printf+0x670>
    80007ec0:	06300593          	li	a1,99
    80007ec4:	02e7f6bb          	remuw	a3,a5,a4
    80007ec8:	02069693          	slli	a3,a3,0x20
    80007ecc:	0206d693          	srli	a3,a3,0x20
    80007ed0:	00dd86b3          	add	a3,s11,a3
    80007ed4:	0006c683          	lbu	a3,0(a3)
    80007ed8:	02e7d73b          	divuw	a4,a5,a4
    80007edc:	00200793          	li	a5,2
    80007ee0:	f8d400a3          	sb	a3,-127(s0)
    80007ee4:	bca5ece3          	bltu	a1,a0,80007abc <__printf+0x154>
    80007ee8:	ce5ff06f          	j	80007bcc <__printf+0x264>
    80007eec:	40e007bb          	negw	a5,a4
    80007ef0:	00002d97          	auipc	s11,0x2
    80007ef4:	898d8d93          	addi	s11,s11,-1896 # 80009788 <digits>
    80007ef8:	00f7f693          	andi	a3,a5,15
    80007efc:	00dd86b3          	add	a3,s11,a3
    80007f00:	0006c583          	lbu	a1,0(a3)
    80007f04:	ff100613          	li	a2,-15
    80007f08:	0047d69b          	srliw	a3,a5,0x4
    80007f0c:	f8b40023          	sb	a1,-128(s0)
    80007f10:	0047d59b          	srliw	a1,a5,0x4
    80007f14:	0ac75e63          	bge	a4,a2,80007fd0 <__printf+0x668>
    80007f18:	00f6f693          	andi	a3,a3,15
    80007f1c:	00dd86b3          	add	a3,s11,a3
    80007f20:	0006c603          	lbu	a2,0(a3)
    80007f24:	00f00693          	li	a3,15
    80007f28:	0087d79b          	srliw	a5,a5,0x8
    80007f2c:	f8c400a3          	sb	a2,-127(s0)
    80007f30:	d8b6e4e3          	bltu	a3,a1,80007cb8 <__printf+0x350>
    80007f34:	00200793          	li	a5,2
    80007f38:	e2dff06f          	j	80007d64 <__printf+0x3fc>
    80007f3c:	00002c97          	auipc	s9,0x2
    80007f40:	82cc8c93          	addi	s9,s9,-2004 # 80009768 <CONSOLE_STATUS+0x758>
    80007f44:	02800513          	li	a0,40
    80007f48:	ef1ff06f          	j	80007e38 <__printf+0x4d0>
    80007f4c:	00700793          	li	a5,7
    80007f50:	00600c93          	li	s9,6
    80007f54:	e0dff06f          	j	80007d60 <__printf+0x3f8>
    80007f58:	00700793          	li	a5,7
    80007f5c:	00600c93          	li	s9,6
    80007f60:	c69ff06f          	j	80007bc8 <__printf+0x260>
    80007f64:	00300793          	li	a5,3
    80007f68:	00200c93          	li	s9,2
    80007f6c:	c5dff06f          	j	80007bc8 <__printf+0x260>
    80007f70:	00300793          	li	a5,3
    80007f74:	00200c93          	li	s9,2
    80007f78:	de9ff06f          	j	80007d60 <__printf+0x3f8>
    80007f7c:	00400793          	li	a5,4
    80007f80:	00300c93          	li	s9,3
    80007f84:	dddff06f          	j	80007d60 <__printf+0x3f8>
    80007f88:	00400793          	li	a5,4
    80007f8c:	00300c93          	li	s9,3
    80007f90:	c39ff06f          	j	80007bc8 <__printf+0x260>
    80007f94:	00500793          	li	a5,5
    80007f98:	00400c93          	li	s9,4
    80007f9c:	c2dff06f          	j	80007bc8 <__printf+0x260>
    80007fa0:	00500793          	li	a5,5
    80007fa4:	00400c93          	li	s9,4
    80007fa8:	db9ff06f          	j	80007d60 <__printf+0x3f8>
    80007fac:	00600793          	li	a5,6
    80007fb0:	00500c93          	li	s9,5
    80007fb4:	dadff06f          	j	80007d60 <__printf+0x3f8>
    80007fb8:	00600793          	li	a5,6
    80007fbc:	00500c93          	li	s9,5
    80007fc0:	c09ff06f          	j	80007bc8 <__printf+0x260>
    80007fc4:	00800793          	li	a5,8
    80007fc8:	00700c93          	li	s9,7
    80007fcc:	bfdff06f          	j	80007bc8 <__printf+0x260>
    80007fd0:	00100793          	li	a5,1
    80007fd4:	d91ff06f          	j	80007d64 <__printf+0x3fc>
    80007fd8:	00100793          	li	a5,1
    80007fdc:	bf1ff06f          	j	80007bcc <__printf+0x264>
    80007fe0:	00900793          	li	a5,9
    80007fe4:	00800c93          	li	s9,8
    80007fe8:	be1ff06f          	j	80007bc8 <__printf+0x260>
    80007fec:	00001517          	auipc	a0,0x1
    80007ff0:	78450513          	addi	a0,a0,1924 # 80009770 <CONSOLE_STATUS+0x760>
    80007ff4:	00000097          	auipc	ra,0x0
    80007ff8:	918080e7          	jalr	-1768(ra) # 8000790c <panic>

0000000080007ffc <printfinit>:
    80007ffc:	fe010113          	addi	sp,sp,-32
    80008000:	00813823          	sd	s0,16(sp)
    80008004:	00913423          	sd	s1,8(sp)
    80008008:	00113c23          	sd	ra,24(sp)
    8000800c:	02010413          	addi	s0,sp,32
    80008010:	00005497          	auipc	s1,0x5
    80008014:	0f048493          	addi	s1,s1,240 # 8000d100 <pr>
    80008018:	00048513          	mv	a0,s1
    8000801c:	00001597          	auipc	a1,0x1
    80008020:	76458593          	addi	a1,a1,1892 # 80009780 <CONSOLE_STATUS+0x770>
    80008024:	00000097          	auipc	ra,0x0
    80008028:	5f4080e7          	jalr	1524(ra) # 80008618 <initlock>
    8000802c:	01813083          	ld	ra,24(sp)
    80008030:	01013403          	ld	s0,16(sp)
    80008034:	0004ac23          	sw	zero,24(s1)
    80008038:	00813483          	ld	s1,8(sp)
    8000803c:	02010113          	addi	sp,sp,32
    80008040:	00008067          	ret

0000000080008044 <uartinit>:
    80008044:	ff010113          	addi	sp,sp,-16
    80008048:	00813423          	sd	s0,8(sp)
    8000804c:	01010413          	addi	s0,sp,16
    80008050:	100007b7          	lui	a5,0x10000
    80008054:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008058:	f8000713          	li	a4,-128
    8000805c:	00e781a3          	sb	a4,3(a5)
    80008060:	00300713          	li	a4,3
    80008064:	00e78023          	sb	a4,0(a5)
    80008068:	000780a3          	sb	zero,1(a5)
    8000806c:	00e781a3          	sb	a4,3(a5)
    80008070:	00700693          	li	a3,7
    80008074:	00d78123          	sb	a3,2(a5)
    80008078:	00e780a3          	sb	a4,1(a5)
    8000807c:	00813403          	ld	s0,8(sp)
    80008080:	01010113          	addi	sp,sp,16
    80008084:	00008067          	ret

0000000080008088 <uartputc>:
    80008088:	00004797          	auipc	a5,0x4
    8000808c:	d907a783          	lw	a5,-624(a5) # 8000be18 <panicked>
    80008090:	00078463          	beqz	a5,80008098 <uartputc+0x10>
    80008094:	0000006f          	j	80008094 <uartputc+0xc>
    80008098:	fd010113          	addi	sp,sp,-48
    8000809c:	02813023          	sd	s0,32(sp)
    800080a0:	00913c23          	sd	s1,24(sp)
    800080a4:	01213823          	sd	s2,16(sp)
    800080a8:	01313423          	sd	s3,8(sp)
    800080ac:	02113423          	sd	ra,40(sp)
    800080b0:	03010413          	addi	s0,sp,48
    800080b4:	00004917          	auipc	s2,0x4
    800080b8:	d6c90913          	addi	s2,s2,-660 # 8000be20 <uart_tx_r>
    800080bc:	00093783          	ld	a5,0(s2)
    800080c0:	00004497          	auipc	s1,0x4
    800080c4:	d6848493          	addi	s1,s1,-664 # 8000be28 <uart_tx_w>
    800080c8:	0004b703          	ld	a4,0(s1)
    800080cc:	02078693          	addi	a3,a5,32
    800080d0:	00050993          	mv	s3,a0
    800080d4:	02e69c63          	bne	a3,a4,8000810c <uartputc+0x84>
    800080d8:	00001097          	auipc	ra,0x1
    800080dc:	834080e7          	jalr	-1996(ra) # 8000890c <push_on>
    800080e0:	00093783          	ld	a5,0(s2)
    800080e4:	0004b703          	ld	a4,0(s1)
    800080e8:	02078793          	addi	a5,a5,32
    800080ec:	00e79463          	bne	a5,a4,800080f4 <uartputc+0x6c>
    800080f0:	0000006f          	j	800080f0 <uartputc+0x68>
    800080f4:	00001097          	auipc	ra,0x1
    800080f8:	88c080e7          	jalr	-1908(ra) # 80008980 <pop_on>
    800080fc:	00093783          	ld	a5,0(s2)
    80008100:	0004b703          	ld	a4,0(s1)
    80008104:	02078693          	addi	a3,a5,32
    80008108:	fce688e3          	beq	a3,a4,800080d8 <uartputc+0x50>
    8000810c:	01f77693          	andi	a3,a4,31
    80008110:	00005597          	auipc	a1,0x5
    80008114:	01058593          	addi	a1,a1,16 # 8000d120 <uart_tx_buf>
    80008118:	00d586b3          	add	a3,a1,a3
    8000811c:	00170713          	addi	a4,a4,1
    80008120:	01368023          	sb	s3,0(a3)
    80008124:	00e4b023          	sd	a4,0(s1)
    80008128:	10000637          	lui	a2,0x10000
    8000812c:	02f71063          	bne	a4,a5,8000814c <uartputc+0xc4>
    80008130:	0340006f          	j	80008164 <uartputc+0xdc>
    80008134:	00074703          	lbu	a4,0(a4)
    80008138:	00f93023          	sd	a5,0(s2)
    8000813c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008140:	00093783          	ld	a5,0(s2)
    80008144:	0004b703          	ld	a4,0(s1)
    80008148:	00f70e63          	beq	a4,a5,80008164 <uartputc+0xdc>
    8000814c:	00564683          	lbu	a3,5(a2)
    80008150:	01f7f713          	andi	a4,a5,31
    80008154:	00e58733          	add	a4,a1,a4
    80008158:	0206f693          	andi	a3,a3,32
    8000815c:	00178793          	addi	a5,a5,1
    80008160:	fc069ae3          	bnez	a3,80008134 <uartputc+0xac>
    80008164:	02813083          	ld	ra,40(sp)
    80008168:	02013403          	ld	s0,32(sp)
    8000816c:	01813483          	ld	s1,24(sp)
    80008170:	01013903          	ld	s2,16(sp)
    80008174:	00813983          	ld	s3,8(sp)
    80008178:	03010113          	addi	sp,sp,48
    8000817c:	00008067          	ret

0000000080008180 <uartputc_sync>:
    80008180:	ff010113          	addi	sp,sp,-16
    80008184:	00813423          	sd	s0,8(sp)
    80008188:	01010413          	addi	s0,sp,16
    8000818c:	00004717          	auipc	a4,0x4
    80008190:	c8c72703          	lw	a4,-884(a4) # 8000be18 <panicked>
    80008194:	02071663          	bnez	a4,800081c0 <uartputc_sync+0x40>
    80008198:	00050793          	mv	a5,a0
    8000819c:	100006b7          	lui	a3,0x10000
    800081a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800081a4:	02077713          	andi	a4,a4,32
    800081a8:	fe070ce3          	beqz	a4,800081a0 <uartputc_sync+0x20>
    800081ac:	0ff7f793          	andi	a5,a5,255
    800081b0:	00f68023          	sb	a5,0(a3)
    800081b4:	00813403          	ld	s0,8(sp)
    800081b8:	01010113          	addi	sp,sp,16
    800081bc:	00008067          	ret
    800081c0:	0000006f          	j	800081c0 <uartputc_sync+0x40>

00000000800081c4 <uartstart>:
    800081c4:	ff010113          	addi	sp,sp,-16
    800081c8:	00813423          	sd	s0,8(sp)
    800081cc:	01010413          	addi	s0,sp,16
    800081d0:	00004617          	auipc	a2,0x4
    800081d4:	c5060613          	addi	a2,a2,-944 # 8000be20 <uart_tx_r>
    800081d8:	00004517          	auipc	a0,0x4
    800081dc:	c5050513          	addi	a0,a0,-944 # 8000be28 <uart_tx_w>
    800081e0:	00063783          	ld	a5,0(a2)
    800081e4:	00053703          	ld	a4,0(a0)
    800081e8:	04f70263          	beq	a4,a5,8000822c <uartstart+0x68>
    800081ec:	100005b7          	lui	a1,0x10000
    800081f0:	00005817          	auipc	a6,0x5
    800081f4:	f3080813          	addi	a6,a6,-208 # 8000d120 <uart_tx_buf>
    800081f8:	01c0006f          	j	80008214 <uartstart+0x50>
    800081fc:	0006c703          	lbu	a4,0(a3)
    80008200:	00f63023          	sd	a5,0(a2)
    80008204:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008208:	00063783          	ld	a5,0(a2)
    8000820c:	00053703          	ld	a4,0(a0)
    80008210:	00f70e63          	beq	a4,a5,8000822c <uartstart+0x68>
    80008214:	01f7f713          	andi	a4,a5,31
    80008218:	00e806b3          	add	a3,a6,a4
    8000821c:	0055c703          	lbu	a4,5(a1)
    80008220:	00178793          	addi	a5,a5,1
    80008224:	02077713          	andi	a4,a4,32
    80008228:	fc071ae3          	bnez	a4,800081fc <uartstart+0x38>
    8000822c:	00813403          	ld	s0,8(sp)
    80008230:	01010113          	addi	sp,sp,16
    80008234:	00008067          	ret

0000000080008238 <uartgetc>:
    80008238:	ff010113          	addi	sp,sp,-16
    8000823c:	00813423          	sd	s0,8(sp)
    80008240:	01010413          	addi	s0,sp,16
    80008244:	10000737          	lui	a4,0x10000
    80008248:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000824c:	0017f793          	andi	a5,a5,1
    80008250:	00078c63          	beqz	a5,80008268 <uartgetc+0x30>
    80008254:	00074503          	lbu	a0,0(a4)
    80008258:	0ff57513          	andi	a0,a0,255
    8000825c:	00813403          	ld	s0,8(sp)
    80008260:	01010113          	addi	sp,sp,16
    80008264:	00008067          	ret
    80008268:	fff00513          	li	a0,-1
    8000826c:	ff1ff06f          	j	8000825c <uartgetc+0x24>

0000000080008270 <uartintr>:
    80008270:	100007b7          	lui	a5,0x10000
    80008274:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008278:	0017f793          	andi	a5,a5,1
    8000827c:	0a078463          	beqz	a5,80008324 <uartintr+0xb4>
    80008280:	fe010113          	addi	sp,sp,-32
    80008284:	00813823          	sd	s0,16(sp)
    80008288:	00913423          	sd	s1,8(sp)
    8000828c:	00113c23          	sd	ra,24(sp)
    80008290:	02010413          	addi	s0,sp,32
    80008294:	100004b7          	lui	s1,0x10000
    80008298:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000829c:	0ff57513          	andi	a0,a0,255
    800082a0:	fffff097          	auipc	ra,0xfffff
    800082a4:	534080e7          	jalr	1332(ra) # 800077d4 <consoleintr>
    800082a8:	0054c783          	lbu	a5,5(s1)
    800082ac:	0017f793          	andi	a5,a5,1
    800082b0:	fe0794e3          	bnez	a5,80008298 <uartintr+0x28>
    800082b4:	00004617          	auipc	a2,0x4
    800082b8:	b6c60613          	addi	a2,a2,-1172 # 8000be20 <uart_tx_r>
    800082bc:	00004517          	auipc	a0,0x4
    800082c0:	b6c50513          	addi	a0,a0,-1172 # 8000be28 <uart_tx_w>
    800082c4:	00063783          	ld	a5,0(a2)
    800082c8:	00053703          	ld	a4,0(a0)
    800082cc:	04f70263          	beq	a4,a5,80008310 <uartintr+0xa0>
    800082d0:	100005b7          	lui	a1,0x10000
    800082d4:	00005817          	auipc	a6,0x5
    800082d8:	e4c80813          	addi	a6,a6,-436 # 8000d120 <uart_tx_buf>
    800082dc:	01c0006f          	j	800082f8 <uartintr+0x88>
    800082e0:	0006c703          	lbu	a4,0(a3)
    800082e4:	00f63023          	sd	a5,0(a2)
    800082e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082ec:	00063783          	ld	a5,0(a2)
    800082f0:	00053703          	ld	a4,0(a0)
    800082f4:	00f70e63          	beq	a4,a5,80008310 <uartintr+0xa0>
    800082f8:	01f7f713          	andi	a4,a5,31
    800082fc:	00e806b3          	add	a3,a6,a4
    80008300:	0055c703          	lbu	a4,5(a1)
    80008304:	00178793          	addi	a5,a5,1
    80008308:	02077713          	andi	a4,a4,32
    8000830c:	fc071ae3          	bnez	a4,800082e0 <uartintr+0x70>
    80008310:	01813083          	ld	ra,24(sp)
    80008314:	01013403          	ld	s0,16(sp)
    80008318:	00813483          	ld	s1,8(sp)
    8000831c:	02010113          	addi	sp,sp,32
    80008320:	00008067          	ret
    80008324:	00004617          	auipc	a2,0x4
    80008328:	afc60613          	addi	a2,a2,-1284 # 8000be20 <uart_tx_r>
    8000832c:	00004517          	auipc	a0,0x4
    80008330:	afc50513          	addi	a0,a0,-1284 # 8000be28 <uart_tx_w>
    80008334:	00063783          	ld	a5,0(a2)
    80008338:	00053703          	ld	a4,0(a0)
    8000833c:	04f70263          	beq	a4,a5,80008380 <uartintr+0x110>
    80008340:	100005b7          	lui	a1,0x10000
    80008344:	00005817          	auipc	a6,0x5
    80008348:	ddc80813          	addi	a6,a6,-548 # 8000d120 <uart_tx_buf>
    8000834c:	01c0006f          	j	80008368 <uartintr+0xf8>
    80008350:	0006c703          	lbu	a4,0(a3)
    80008354:	00f63023          	sd	a5,0(a2)
    80008358:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000835c:	00063783          	ld	a5,0(a2)
    80008360:	00053703          	ld	a4,0(a0)
    80008364:	02f70063          	beq	a4,a5,80008384 <uartintr+0x114>
    80008368:	01f7f713          	andi	a4,a5,31
    8000836c:	00e806b3          	add	a3,a6,a4
    80008370:	0055c703          	lbu	a4,5(a1)
    80008374:	00178793          	addi	a5,a5,1
    80008378:	02077713          	andi	a4,a4,32
    8000837c:	fc071ae3          	bnez	a4,80008350 <uartintr+0xe0>
    80008380:	00008067          	ret
    80008384:	00008067          	ret

0000000080008388 <kinit>:
    80008388:	fc010113          	addi	sp,sp,-64
    8000838c:	02913423          	sd	s1,40(sp)
    80008390:	fffff7b7          	lui	a5,0xfffff
    80008394:	00006497          	auipc	s1,0x6
    80008398:	dab48493          	addi	s1,s1,-597 # 8000e13f <end+0xfff>
    8000839c:	02813823          	sd	s0,48(sp)
    800083a0:	01313c23          	sd	s3,24(sp)
    800083a4:	00f4f4b3          	and	s1,s1,a5
    800083a8:	02113c23          	sd	ra,56(sp)
    800083ac:	03213023          	sd	s2,32(sp)
    800083b0:	01413823          	sd	s4,16(sp)
    800083b4:	01513423          	sd	s5,8(sp)
    800083b8:	04010413          	addi	s0,sp,64
    800083bc:	000017b7          	lui	a5,0x1
    800083c0:	01100993          	li	s3,17
    800083c4:	00f487b3          	add	a5,s1,a5
    800083c8:	01b99993          	slli	s3,s3,0x1b
    800083cc:	06f9e063          	bltu	s3,a5,8000842c <kinit+0xa4>
    800083d0:	00005a97          	auipc	s5,0x5
    800083d4:	d70a8a93          	addi	s5,s5,-656 # 8000d140 <end>
    800083d8:	0754ec63          	bltu	s1,s5,80008450 <kinit+0xc8>
    800083dc:	0734fa63          	bgeu	s1,s3,80008450 <kinit+0xc8>
    800083e0:	00088a37          	lui	s4,0x88
    800083e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800083e8:	00004917          	auipc	s2,0x4
    800083ec:	a4890913          	addi	s2,s2,-1464 # 8000be30 <kmem>
    800083f0:	00ca1a13          	slli	s4,s4,0xc
    800083f4:	0140006f          	j	80008408 <kinit+0x80>
    800083f8:	000017b7          	lui	a5,0x1
    800083fc:	00f484b3          	add	s1,s1,a5
    80008400:	0554e863          	bltu	s1,s5,80008450 <kinit+0xc8>
    80008404:	0534f663          	bgeu	s1,s3,80008450 <kinit+0xc8>
    80008408:	00001637          	lui	a2,0x1
    8000840c:	00100593          	li	a1,1
    80008410:	00048513          	mv	a0,s1
    80008414:	00000097          	auipc	ra,0x0
    80008418:	5e4080e7          	jalr	1508(ra) # 800089f8 <__memset>
    8000841c:	00093783          	ld	a5,0(s2)
    80008420:	00f4b023          	sd	a5,0(s1)
    80008424:	00993023          	sd	s1,0(s2)
    80008428:	fd4498e3          	bne	s1,s4,800083f8 <kinit+0x70>
    8000842c:	03813083          	ld	ra,56(sp)
    80008430:	03013403          	ld	s0,48(sp)
    80008434:	02813483          	ld	s1,40(sp)
    80008438:	02013903          	ld	s2,32(sp)
    8000843c:	01813983          	ld	s3,24(sp)
    80008440:	01013a03          	ld	s4,16(sp)
    80008444:	00813a83          	ld	s5,8(sp)
    80008448:	04010113          	addi	sp,sp,64
    8000844c:	00008067          	ret
    80008450:	00001517          	auipc	a0,0x1
    80008454:	35050513          	addi	a0,a0,848 # 800097a0 <digits+0x18>
    80008458:	fffff097          	auipc	ra,0xfffff
    8000845c:	4b4080e7          	jalr	1204(ra) # 8000790c <panic>

0000000080008460 <freerange>:
    80008460:	fc010113          	addi	sp,sp,-64
    80008464:	000017b7          	lui	a5,0x1
    80008468:	02913423          	sd	s1,40(sp)
    8000846c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008470:	009504b3          	add	s1,a0,s1
    80008474:	fffff537          	lui	a0,0xfffff
    80008478:	02813823          	sd	s0,48(sp)
    8000847c:	02113c23          	sd	ra,56(sp)
    80008480:	03213023          	sd	s2,32(sp)
    80008484:	01313c23          	sd	s3,24(sp)
    80008488:	01413823          	sd	s4,16(sp)
    8000848c:	01513423          	sd	s5,8(sp)
    80008490:	01613023          	sd	s6,0(sp)
    80008494:	04010413          	addi	s0,sp,64
    80008498:	00a4f4b3          	and	s1,s1,a0
    8000849c:	00f487b3          	add	a5,s1,a5
    800084a0:	06f5e463          	bltu	a1,a5,80008508 <freerange+0xa8>
    800084a4:	00005a97          	auipc	s5,0x5
    800084a8:	c9ca8a93          	addi	s5,s5,-868 # 8000d140 <end>
    800084ac:	0954e263          	bltu	s1,s5,80008530 <freerange+0xd0>
    800084b0:	01100993          	li	s3,17
    800084b4:	01b99993          	slli	s3,s3,0x1b
    800084b8:	0734fc63          	bgeu	s1,s3,80008530 <freerange+0xd0>
    800084bc:	00058a13          	mv	s4,a1
    800084c0:	00004917          	auipc	s2,0x4
    800084c4:	97090913          	addi	s2,s2,-1680 # 8000be30 <kmem>
    800084c8:	00002b37          	lui	s6,0x2
    800084cc:	0140006f          	j	800084e0 <freerange+0x80>
    800084d0:	000017b7          	lui	a5,0x1
    800084d4:	00f484b3          	add	s1,s1,a5
    800084d8:	0554ec63          	bltu	s1,s5,80008530 <freerange+0xd0>
    800084dc:	0534fa63          	bgeu	s1,s3,80008530 <freerange+0xd0>
    800084e0:	00001637          	lui	a2,0x1
    800084e4:	00100593          	li	a1,1
    800084e8:	00048513          	mv	a0,s1
    800084ec:	00000097          	auipc	ra,0x0
    800084f0:	50c080e7          	jalr	1292(ra) # 800089f8 <__memset>
    800084f4:	00093703          	ld	a4,0(s2)
    800084f8:	016487b3          	add	a5,s1,s6
    800084fc:	00e4b023          	sd	a4,0(s1)
    80008500:	00993023          	sd	s1,0(s2)
    80008504:	fcfa76e3          	bgeu	s4,a5,800084d0 <freerange+0x70>
    80008508:	03813083          	ld	ra,56(sp)
    8000850c:	03013403          	ld	s0,48(sp)
    80008510:	02813483          	ld	s1,40(sp)
    80008514:	02013903          	ld	s2,32(sp)
    80008518:	01813983          	ld	s3,24(sp)
    8000851c:	01013a03          	ld	s4,16(sp)
    80008520:	00813a83          	ld	s5,8(sp)
    80008524:	00013b03          	ld	s6,0(sp)
    80008528:	04010113          	addi	sp,sp,64
    8000852c:	00008067          	ret
    80008530:	00001517          	auipc	a0,0x1
    80008534:	27050513          	addi	a0,a0,624 # 800097a0 <digits+0x18>
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	3d4080e7          	jalr	980(ra) # 8000790c <panic>

0000000080008540 <kfree>:
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00113c23          	sd	ra,24(sp)
    8000854c:	00913423          	sd	s1,8(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	03451793          	slli	a5,a0,0x34
    80008558:	04079c63          	bnez	a5,800085b0 <kfree+0x70>
    8000855c:	00005797          	auipc	a5,0x5
    80008560:	be478793          	addi	a5,a5,-1052 # 8000d140 <end>
    80008564:	00050493          	mv	s1,a0
    80008568:	04f56463          	bltu	a0,a5,800085b0 <kfree+0x70>
    8000856c:	01100793          	li	a5,17
    80008570:	01b79793          	slli	a5,a5,0x1b
    80008574:	02f57e63          	bgeu	a0,a5,800085b0 <kfree+0x70>
    80008578:	00001637          	lui	a2,0x1
    8000857c:	00100593          	li	a1,1
    80008580:	00000097          	auipc	ra,0x0
    80008584:	478080e7          	jalr	1144(ra) # 800089f8 <__memset>
    80008588:	00004797          	auipc	a5,0x4
    8000858c:	8a878793          	addi	a5,a5,-1880 # 8000be30 <kmem>
    80008590:	0007b703          	ld	a4,0(a5)
    80008594:	01813083          	ld	ra,24(sp)
    80008598:	01013403          	ld	s0,16(sp)
    8000859c:	00e4b023          	sd	a4,0(s1)
    800085a0:	0097b023          	sd	s1,0(a5)
    800085a4:	00813483          	ld	s1,8(sp)
    800085a8:	02010113          	addi	sp,sp,32
    800085ac:	00008067          	ret
    800085b0:	00001517          	auipc	a0,0x1
    800085b4:	1f050513          	addi	a0,a0,496 # 800097a0 <digits+0x18>
    800085b8:	fffff097          	auipc	ra,0xfffff
    800085bc:	354080e7          	jalr	852(ra) # 8000790c <panic>

00000000800085c0 <kalloc>:
    800085c0:	fe010113          	addi	sp,sp,-32
    800085c4:	00813823          	sd	s0,16(sp)
    800085c8:	00913423          	sd	s1,8(sp)
    800085cc:	00113c23          	sd	ra,24(sp)
    800085d0:	02010413          	addi	s0,sp,32
    800085d4:	00004797          	auipc	a5,0x4
    800085d8:	85c78793          	addi	a5,a5,-1956 # 8000be30 <kmem>
    800085dc:	0007b483          	ld	s1,0(a5)
    800085e0:	02048063          	beqz	s1,80008600 <kalloc+0x40>
    800085e4:	0004b703          	ld	a4,0(s1)
    800085e8:	00001637          	lui	a2,0x1
    800085ec:	00500593          	li	a1,5
    800085f0:	00048513          	mv	a0,s1
    800085f4:	00e7b023          	sd	a4,0(a5)
    800085f8:	00000097          	auipc	ra,0x0
    800085fc:	400080e7          	jalr	1024(ra) # 800089f8 <__memset>
    80008600:	01813083          	ld	ra,24(sp)
    80008604:	01013403          	ld	s0,16(sp)
    80008608:	00048513          	mv	a0,s1
    8000860c:	00813483          	ld	s1,8(sp)
    80008610:	02010113          	addi	sp,sp,32
    80008614:	00008067          	ret

0000000080008618 <initlock>:
    80008618:	ff010113          	addi	sp,sp,-16
    8000861c:	00813423          	sd	s0,8(sp)
    80008620:	01010413          	addi	s0,sp,16
    80008624:	00813403          	ld	s0,8(sp)
    80008628:	00b53423          	sd	a1,8(a0)
    8000862c:	00052023          	sw	zero,0(a0)
    80008630:	00053823          	sd	zero,16(a0)
    80008634:	01010113          	addi	sp,sp,16
    80008638:	00008067          	ret

000000008000863c <acquire>:
    8000863c:	fe010113          	addi	sp,sp,-32
    80008640:	00813823          	sd	s0,16(sp)
    80008644:	00913423          	sd	s1,8(sp)
    80008648:	00113c23          	sd	ra,24(sp)
    8000864c:	01213023          	sd	s2,0(sp)
    80008650:	02010413          	addi	s0,sp,32
    80008654:	00050493          	mv	s1,a0
    80008658:	10002973          	csrr	s2,sstatus
    8000865c:	100027f3          	csrr	a5,sstatus
    80008660:	ffd7f793          	andi	a5,a5,-3
    80008664:	10079073          	csrw	sstatus,a5
    80008668:	fffff097          	auipc	ra,0xfffff
    8000866c:	8ec080e7          	jalr	-1812(ra) # 80006f54 <mycpu>
    80008670:	07852783          	lw	a5,120(a0)
    80008674:	06078e63          	beqz	a5,800086f0 <acquire+0xb4>
    80008678:	fffff097          	auipc	ra,0xfffff
    8000867c:	8dc080e7          	jalr	-1828(ra) # 80006f54 <mycpu>
    80008680:	07852783          	lw	a5,120(a0)
    80008684:	0004a703          	lw	a4,0(s1)
    80008688:	0017879b          	addiw	a5,a5,1
    8000868c:	06f52c23          	sw	a5,120(a0)
    80008690:	04071063          	bnez	a4,800086d0 <acquire+0x94>
    80008694:	00100713          	li	a4,1
    80008698:	00070793          	mv	a5,a4
    8000869c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800086a0:	0007879b          	sext.w	a5,a5
    800086a4:	fe079ae3          	bnez	a5,80008698 <acquire+0x5c>
    800086a8:	0ff0000f          	fence
    800086ac:	fffff097          	auipc	ra,0xfffff
    800086b0:	8a8080e7          	jalr	-1880(ra) # 80006f54 <mycpu>
    800086b4:	01813083          	ld	ra,24(sp)
    800086b8:	01013403          	ld	s0,16(sp)
    800086bc:	00a4b823          	sd	a0,16(s1)
    800086c0:	00013903          	ld	s2,0(sp)
    800086c4:	00813483          	ld	s1,8(sp)
    800086c8:	02010113          	addi	sp,sp,32
    800086cc:	00008067          	ret
    800086d0:	0104b903          	ld	s2,16(s1)
    800086d4:	fffff097          	auipc	ra,0xfffff
    800086d8:	880080e7          	jalr	-1920(ra) # 80006f54 <mycpu>
    800086dc:	faa91ce3          	bne	s2,a0,80008694 <acquire+0x58>
    800086e0:	00001517          	auipc	a0,0x1
    800086e4:	0c850513          	addi	a0,a0,200 # 800097a8 <digits+0x20>
    800086e8:	fffff097          	auipc	ra,0xfffff
    800086ec:	224080e7          	jalr	548(ra) # 8000790c <panic>
    800086f0:	00195913          	srli	s2,s2,0x1
    800086f4:	fffff097          	auipc	ra,0xfffff
    800086f8:	860080e7          	jalr	-1952(ra) # 80006f54 <mycpu>
    800086fc:	00197913          	andi	s2,s2,1
    80008700:	07252e23          	sw	s2,124(a0)
    80008704:	f75ff06f          	j	80008678 <acquire+0x3c>

0000000080008708 <release>:
    80008708:	fe010113          	addi	sp,sp,-32
    8000870c:	00813823          	sd	s0,16(sp)
    80008710:	00113c23          	sd	ra,24(sp)
    80008714:	00913423          	sd	s1,8(sp)
    80008718:	01213023          	sd	s2,0(sp)
    8000871c:	02010413          	addi	s0,sp,32
    80008720:	00052783          	lw	a5,0(a0)
    80008724:	00079a63          	bnez	a5,80008738 <release+0x30>
    80008728:	00001517          	auipc	a0,0x1
    8000872c:	08850513          	addi	a0,a0,136 # 800097b0 <digits+0x28>
    80008730:	fffff097          	auipc	ra,0xfffff
    80008734:	1dc080e7          	jalr	476(ra) # 8000790c <panic>
    80008738:	01053903          	ld	s2,16(a0)
    8000873c:	00050493          	mv	s1,a0
    80008740:	fffff097          	auipc	ra,0xfffff
    80008744:	814080e7          	jalr	-2028(ra) # 80006f54 <mycpu>
    80008748:	fea910e3          	bne	s2,a0,80008728 <release+0x20>
    8000874c:	0004b823          	sd	zero,16(s1)
    80008750:	0ff0000f          	fence
    80008754:	0f50000f          	fence	iorw,ow
    80008758:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000875c:	ffffe097          	auipc	ra,0xffffe
    80008760:	7f8080e7          	jalr	2040(ra) # 80006f54 <mycpu>
    80008764:	100027f3          	csrr	a5,sstatus
    80008768:	0027f793          	andi	a5,a5,2
    8000876c:	04079a63          	bnez	a5,800087c0 <release+0xb8>
    80008770:	07852783          	lw	a5,120(a0)
    80008774:	02f05e63          	blez	a5,800087b0 <release+0xa8>
    80008778:	fff7871b          	addiw	a4,a5,-1
    8000877c:	06e52c23          	sw	a4,120(a0)
    80008780:	00071c63          	bnez	a4,80008798 <release+0x90>
    80008784:	07c52783          	lw	a5,124(a0)
    80008788:	00078863          	beqz	a5,80008798 <release+0x90>
    8000878c:	100027f3          	csrr	a5,sstatus
    80008790:	0027e793          	ori	a5,a5,2
    80008794:	10079073          	csrw	sstatus,a5
    80008798:	01813083          	ld	ra,24(sp)
    8000879c:	01013403          	ld	s0,16(sp)
    800087a0:	00813483          	ld	s1,8(sp)
    800087a4:	00013903          	ld	s2,0(sp)
    800087a8:	02010113          	addi	sp,sp,32
    800087ac:	00008067          	ret
    800087b0:	00001517          	auipc	a0,0x1
    800087b4:	02050513          	addi	a0,a0,32 # 800097d0 <digits+0x48>
    800087b8:	fffff097          	auipc	ra,0xfffff
    800087bc:	154080e7          	jalr	340(ra) # 8000790c <panic>
    800087c0:	00001517          	auipc	a0,0x1
    800087c4:	ff850513          	addi	a0,a0,-8 # 800097b8 <digits+0x30>
    800087c8:	fffff097          	auipc	ra,0xfffff
    800087cc:	144080e7          	jalr	324(ra) # 8000790c <panic>

00000000800087d0 <holding>:
    800087d0:	00052783          	lw	a5,0(a0)
    800087d4:	00079663          	bnez	a5,800087e0 <holding+0x10>
    800087d8:	00000513          	li	a0,0
    800087dc:	00008067          	ret
    800087e0:	fe010113          	addi	sp,sp,-32
    800087e4:	00813823          	sd	s0,16(sp)
    800087e8:	00913423          	sd	s1,8(sp)
    800087ec:	00113c23          	sd	ra,24(sp)
    800087f0:	02010413          	addi	s0,sp,32
    800087f4:	01053483          	ld	s1,16(a0)
    800087f8:	ffffe097          	auipc	ra,0xffffe
    800087fc:	75c080e7          	jalr	1884(ra) # 80006f54 <mycpu>
    80008800:	01813083          	ld	ra,24(sp)
    80008804:	01013403          	ld	s0,16(sp)
    80008808:	40a48533          	sub	a0,s1,a0
    8000880c:	00153513          	seqz	a0,a0
    80008810:	00813483          	ld	s1,8(sp)
    80008814:	02010113          	addi	sp,sp,32
    80008818:	00008067          	ret

000000008000881c <push_off>:
    8000881c:	fe010113          	addi	sp,sp,-32
    80008820:	00813823          	sd	s0,16(sp)
    80008824:	00113c23          	sd	ra,24(sp)
    80008828:	00913423          	sd	s1,8(sp)
    8000882c:	02010413          	addi	s0,sp,32
    80008830:	100024f3          	csrr	s1,sstatus
    80008834:	100027f3          	csrr	a5,sstatus
    80008838:	ffd7f793          	andi	a5,a5,-3
    8000883c:	10079073          	csrw	sstatus,a5
    80008840:	ffffe097          	auipc	ra,0xffffe
    80008844:	714080e7          	jalr	1812(ra) # 80006f54 <mycpu>
    80008848:	07852783          	lw	a5,120(a0)
    8000884c:	02078663          	beqz	a5,80008878 <push_off+0x5c>
    80008850:	ffffe097          	auipc	ra,0xffffe
    80008854:	704080e7          	jalr	1796(ra) # 80006f54 <mycpu>
    80008858:	07852783          	lw	a5,120(a0)
    8000885c:	01813083          	ld	ra,24(sp)
    80008860:	01013403          	ld	s0,16(sp)
    80008864:	0017879b          	addiw	a5,a5,1
    80008868:	06f52c23          	sw	a5,120(a0)
    8000886c:	00813483          	ld	s1,8(sp)
    80008870:	02010113          	addi	sp,sp,32
    80008874:	00008067          	ret
    80008878:	0014d493          	srli	s1,s1,0x1
    8000887c:	ffffe097          	auipc	ra,0xffffe
    80008880:	6d8080e7          	jalr	1752(ra) # 80006f54 <mycpu>
    80008884:	0014f493          	andi	s1,s1,1
    80008888:	06952e23          	sw	s1,124(a0)
    8000888c:	fc5ff06f          	j	80008850 <push_off+0x34>

0000000080008890 <pop_off>:
    80008890:	ff010113          	addi	sp,sp,-16
    80008894:	00813023          	sd	s0,0(sp)
    80008898:	00113423          	sd	ra,8(sp)
    8000889c:	01010413          	addi	s0,sp,16
    800088a0:	ffffe097          	auipc	ra,0xffffe
    800088a4:	6b4080e7          	jalr	1716(ra) # 80006f54 <mycpu>
    800088a8:	100027f3          	csrr	a5,sstatus
    800088ac:	0027f793          	andi	a5,a5,2
    800088b0:	04079663          	bnez	a5,800088fc <pop_off+0x6c>
    800088b4:	07852783          	lw	a5,120(a0)
    800088b8:	02f05a63          	blez	a5,800088ec <pop_off+0x5c>
    800088bc:	fff7871b          	addiw	a4,a5,-1
    800088c0:	06e52c23          	sw	a4,120(a0)
    800088c4:	00071c63          	bnez	a4,800088dc <pop_off+0x4c>
    800088c8:	07c52783          	lw	a5,124(a0)
    800088cc:	00078863          	beqz	a5,800088dc <pop_off+0x4c>
    800088d0:	100027f3          	csrr	a5,sstatus
    800088d4:	0027e793          	ori	a5,a5,2
    800088d8:	10079073          	csrw	sstatus,a5
    800088dc:	00813083          	ld	ra,8(sp)
    800088e0:	00013403          	ld	s0,0(sp)
    800088e4:	01010113          	addi	sp,sp,16
    800088e8:	00008067          	ret
    800088ec:	00001517          	auipc	a0,0x1
    800088f0:	ee450513          	addi	a0,a0,-284 # 800097d0 <digits+0x48>
    800088f4:	fffff097          	auipc	ra,0xfffff
    800088f8:	018080e7          	jalr	24(ra) # 8000790c <panic>
    800088fc:	00001517          	auipc	a0,0x1
    80008900:	ebc50513          	addi	a0,a0,-324 # 800097b8 <digits+0x30>
    80008904:	fffff097          	auipc	ra,0xfffff
    80008908:	008080e7          	jalr	8(ra) # 8000790c <panic>

000000008000890c <push_on>:
    8000890c:	fe010113          	addi	sp,sp,-32
    80008910:	00813823          	sd	s0,16(sp)
    80008914:	00113c23          	sd	ra,24(sp)
    80008918:	00913423          	sd	s1,8(sp)
    8000891c:	02010413          	addi	s0,sp,32
    80008920:	100024f3          	csrr	s1,sstatus
    80008924:	100027f3          	csrr	a5,sstatus
    80008928:	0027e793          	ori	a5,a5,2
    8000892c:	10079073          	csrw	sstatus,a5
    80008930:	ffffe097          	auipc	ra,0xffffe
    80008934:	624080e7          	jalr	1572(ra) # 80006f54 <mycpu>
    80008938:	07852783          	lw	a5,120(a0)
    8000893c:	02078663          	beqz	a5,80008968 <push_on+0x5c>
    80008940:	ffffe097          	auipc	ra,0xffffe
    80008944:	614080e7          	jalr	1556(ra) # 80006f54 <mycpu>
    80008948:	07852783          	lw	a5,120(a0)
    8000894c:	01813083          	ld	ra,24(sp)
    80008950:	01013403          	ld	s0,16(sp)
    80008954:	0017879b          	addiw	a5,a5,1
    80008958:	06f52c23          	sw	a5,120(a0)
    8000895c:	00813483          	ld	s1,8(sp)
    80008960:	02010113          	addi	sp,sp,32
    80008964:	00008067          	ret
    80008968:	0014d493          	srli	s1,s1,0x1
    8000896c:	ffffe097          	auipc	ra,0xffffe
    80008970:	5e8080e7          	jalr	1512(ra) # 80006f54 <mycpu>
    80008974:	0014f493          	andi	s1,s1,1
    80008978:	06952e23          	sw	s1,124(a0)
    8000897c:	fc5ff06f          	j	80008940 <push_on+0x34>

0000000080008980 <pop_on>:
    80008980:	ff010113          	addi	sp,sp,-16
    80008984:	00813023          	sd	s0,0(sp)
    80008988:	00113423          	sd	ra,8(sp)
    8000898c:	01010413          	addi	s0,sp,16
    80008990:	ffffe097          	auipc	ra,0xffffe
    80008994:	5c4080e7          	jalr	1476(ra) # 80006f54 <mycpu>
    80008998:	100027f3          	csrr	a5,sstatus
    8000899c:	0027f793          	andi	a5,a5,2
    800089a0:	04078463          	beqz	a5,800089e8 <pop_on+0x68>
    800089a4:	07852783          	lw	a5,120(a0)
    800089a8:	02f05863          	blez	a5,800089d8 <pop_on+0x58>
    800089ac:	fff7879b          	addiw	a5,a5,-1
    800089b0:	06f52c23          	sw	a5,120(a0)
    800089b4:	07853783          	ld	a5,120(a0)
    800089b8:	00079863          	bnez	a5,800089c8 <pop_on+0x48>
    800089bc:	100027f3          	csrr	a5,sstatus
    800089c0:	ffd7f793          	andi	a5,a5,-3
    800089c4:	10079073          	csrw	sstatus,a5
    800089c8:	00813083          	ld	ra,8(sp)
    800089cc:	00013403          	ld	s0,0(sp)
    800089d0:	01010113          	addi	sp,sp,16
    800089d4:	00008067          	ret
    800089d8:	00001517          	auipc	a0,0x1
    800089dc:	e2050513          	addi	a0,a0,-480 # 800097f8 <digits+0x70>
    800089e0:	fffff097          	auipc	ra,0xfffff
    800089e4:	f2c080e7          	jalr	-212(ra) # 8000790c <panic>
    800089e8:	00001517          	auipc	a0,0x1
    800089ec:	df050513          	addi	a0,a0,-528 # 800097d8 <digits+0x50>
    800089f0:	fffff097          	auipc	ra,0xfffff
    800089f4:	f1c080e7          	jalr	-228(ra) # 8000790c <panic>

00000000800089f8 <__memset>:
    800089f8:	ff010113          	addi	sp,sp,-16
    800089fc:	00813423          	sd	s0,8(sp)
    80008a00:	01010413          	addi	s0,sp,16
    80008a04:	1a060e63          	beqz	a2,80008bc0 <__memset+0x1c8>
    80008a08:	40a007b3          	neg	a5,a0
    80008a0c:	0077f793          	andi	a5,a5,7
    80008a10:	00778693          	addi	a3,a5,7
    80008a14:	00b00813          	li	a6,11
    80008a18:	0ff5f593          	andi	a1,a1,255
    80008a1c:	fff6071b          	addiw	a4,a2,-1
    80008a20:	1b06e663          	bltu	a3,a6,80008bcc <__memset+0x1d4>
    80008a24:	1cd76463          	bltu	a4,a3,80008bec <__memset+0x1f4>
    80008a28:	1a078e63          	beqz	a5,80008be4 <__memset+0x1ec>
    80008a2c:	00b50023          	sb	a1,0(a0)
    80008a30:	00100713          	li	a4,1
    80008a34:	1ae78463          	beq	a5,a4,80008bdc <__memset+0x1e4>
    80008a38:	00b500a3          	sb	a1,1(a0)
    80008a3c:	00200713          	li	a4,2
    80008a40:	1ae78a63          	beq	a5,a4,80008bf4 <__memset+0x1fc>
    80008a44:	00b50123          	sb	a1,2(a0)
    80008a48:	00300713          	li	a4,3
    80008a4c:	18e78463          	beq	a5,a4,80008bd4 <__memset+0x1dc>
    80008a50:	00b501a3          	sb	a1,3(a0)
    80008a54:	00400713          	li	a4,4
    80008a58:	1ae78263          	beq	a5,a4,80008bfc <__memset+0x204>
    80008a5c:	00b50223          	sb	a1,4(a0)
    80008a60:	00500713          	li	a4,5
    80008a64:	1ae78063          	beq	a5,a4,80008c04 <__memset+0x20c>
    80008a68:	00b502a3          	sb	a1,5(a0)
    80008a6c:	00700713          	li	a4,7
    80008a70:	18e79e63          	bne	a5,a4,80008c0c <__memset+0x214>
    80008a74:	00b50323          	sb	a1,6(a0)
    80008a78:	00700e93          	li	t4,7
    80008a7c:	00859713          	slli	a4,a1,0x8
    80008a80:	00e5e733          	or	a4,a1,a4
    80008a84:	01059e13          	slli	t3,a1,0x10
    80008a88:	01c76e33          	or	t3,a4,t3
    80008a8c:	01859313          	slli	t1,a1,0x18
    80008a90:	006e6333          	or	t1,t3,t1
    80008a94:	02059893          	slli	a7,a1,0x20
    80008a98:	40f60e3b          	subw	t3,a2,a5
    80008a9c:	011368b3          	or	a7,t1,a7
    80008aa0:	02859813          	slli	a6,a1,0x28
    80008aa4:	0108e833          	or	a6,a7,a6
    80008aa8:	03059693          	slli	a3,a1,0x30
    80008aac:	003e589b          	srliw	a7,t3,0x3
    80008ab0:	00d866b3          	or	a3,a6,a3
    80008ab4:	03859713          	slli	a4,a1,0x38
    80008ab8:	00389813          	slli	a6,a7,0x3
    80008abc:	00f507b3          	add	a5,a0,a5
    80008ac0:	00e6e733          	or	a4,a3,a4
    80008ac4:	000e089b          	sext.w	a7,t3
    80008ac8:	00f806b3          	add	a3,a6,a5
    80008acc:	00e7b023          	sd	a4,0(a5)
    80008ad0:	00878793          	addi	a5,a5,8
    80008ad4:	fed79ce3          	bne	a5,a3,80008acc <__memset+0xd4>
    80008ad8:	ff8e7793          	andi	a5,t3,-8
    80008adc:	0007871b          	sext.w	a4,a5
    80008ae0:	01d787bb          	addw	a5,a5,t4
    80008ae4:	0ce88e63          	beq	a7,a4,80008bc0 <__memset+0x1c8>
    80008ae8:	00f50733          	add	a4,a0,a5
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0017871b          	addiw	a4,a5,1
    80008af4:	0cc77663          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	0027871b          	addiw	a4,a5,2
    80008b04:	0ac77e63          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	0037871b          	addiw	a4,a5,3
    80008b14:	0ac77663          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0047871b          	addiw	a4,a5,4
    80008b24:	08c77e63          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0057871b          	addiw	a4,a5,5
    80008b34:	08c77663          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	0067871b          	addiw	a4,a5,6
    80008b44:	06c77e63          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	0077871b          	addiw	a4,a5,7
    80008b54:	06c77663          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	0087871b          	addiw	a4,a5,8
    80008b64:	04c77e63          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	0097871b          	addiw	a4,a5,9
    80008b74:	04c77663          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	00a7871b          	addiw	a4,a5,10
    80008b84:	02c77e63          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	00b7871b          	addiw	a4,a5,11
    80008b94:	02c77663          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008b98:	00e50733          	add	a4,a0,a4
    80008b9c:	00b70023          	sb	a1,0(a4)
    80008ba0:	00c7871b          	addiw	a4,a5,12
    80008ba4:	00c77e63          	bgeu	a4,a2,80008bc0 <__memset+0x1c8>
    80008ba8:	00e50733          	add	a4,a0,a4
    80008bac:	00b70023          	sb	a1,0(a4)
    80008bb0:	00d7879b          	addiw	a5,a5,13
    80008bb4:	00c7f663          	bgeu	a5,a2,80008bc0 <__memset+0x1c8>
    80008bb8:	00f507b3          	add	a5,a0,a5
    80008bbc:	00b78023          	sb	a1,0(a5)
    80008bc0:	00813403          	ld	s0,8(sp)
    80008bc4:	01010113          	addi	sp,sp,16
    80008bc8:	00008067          	ret
    80008bcc:	00b00693          	li	a3,11
    80008bd0:	e55ff06f          	j	80008a24 <__memset+0x2c>
    80008bd4:	00300e93          	li	t4,3
    80008bd8:	ea5ff06f          	j	80008a7c <__memset+0x84>
    80008bdc:	00100e93          	li	t4,1
    80008be0:	e9dff06f          	j	80008a7c <__memset+0x84>
    80008be4:	00000e93          	li	t4,0
    80008be8:	e95ff06f          	j	80008a7c <__memset+0x84>
    80008bec:	00000793          	li	a5,0
    80008bf0:	ef9ff06f          	j	80008ae8 <__memset+0xf0>
    80008bf4:	00200e93          	li	t4,2
    80008bf8:	e85ff06f          	j	80008a7c <__memset+0x84>
    80008bfc:	00400e93          	li	t4,4
    80008c00:	e7dff06f          	j	80008a7c <__memset+0x84>
    80008c04:	00500e93          	li	t4,5
    80008c08:	e75ff06f          	j	80008a7c <__memset+0x84>
    80008c0c:	00600e93          	li	t4,6
    80008c10:	e6dff06f          	j	80008a7c <__memset+0x84>

0000000080008c14 <__memmove>:
    80008c14:	ff010113          	addi	sp,sp,-16
    80008c18:	00813423          	sd	s0,8(sp)
    80008c1c:	01010413          	addi	s0,sp,16
    80008c20:	0e060863          	beqz	a2,80008d10 <__memmove+0xfc>
    80008c24:	fff6069b          	addiw	a3,a2,-1
    80008c28:	0006881b          	sext.w	a6,a3
    80008c2c:	0ea5e863          	bltu	a1,a0,80008d1c <__memmove+0x108>
    80008c30:	00758713          	addi	a4,a1,7
    80008c34:	00a5e7b3          	or	a5,a1,a0
    80008c38:	40a70733          	sub	a4,a4,a0
    80008c3c:	0077f793          	andi	a5,a5,7
    80008c40:	00f73713          	sltiu	a4,a4,15
    80008c44:	00174713          	xori	a4,a4,1
    80008c48:	0017b793          	seqz	a5,a5
    80008c4c:	00e7f7b3          	and	a5,a5,a4
    80008c50:	10078863          	beqz	a5,80008d60 <__memmove+0x14c>
    80008c54:	00900793          	li	a5,9
    80008c58:	1107f463          	bgeu	a5,a6,80008d60 <__memmove+0x14c>
    80008c5c:	0036581b          	srliw	a6,a2,0x3
    80008c60:	fff8081b          	addiw	a6,a6,-1
    80008c64:	02081813          	slli	a6,a6,0x20
    80008c68:	01d85893          	srli	a7,a6,0x1d
    80008c6c:	00858813          	addi	a6,a1,8
    80008c70:	00058793          	mv	a5,a1
    80008c74:	00050713          	mv	a4,a0
    80008c78:	01088833          	add	a6,a7,a6
    80008c7c:	0007b883          	ld	a7,0(a5)
    80008c80:	00878793          	addi	a5,a5,8
    80008c84:	00870713          	addi	a4,a4,8
    80008c88:	ff173c23          	sd	a7,-8(a4)
    80008c8c:	ff0798e3          	bne	a5,a6,80008c7c <__memmove+0x68>
    80008c90:	ff867713          	andi	a4,a2,-8
    80008c94:	02071793          	slli	a5,a4,0x20
    80008c98:	0207d793          	srli	a5,a5,0x20
    80008c9c:	00f585b3          	add	a1,a1,a5
    80008ca0:	40e686bb          	subw	a3,a3,a4
    80008ca4:	00f507b3          	add	a5,a0,a5
    80008ca8:	06e60463          	beq	a2,a4,80008d10 <__memmove+0xfc>
    80008cac:	0005c703          	lbu	a4,0(a1)
    80008cb0:	00e78023          	sb	a4,0(a5)
    80008cb4:	04068e63          	beqz	a3,80008d10 <__memmove+0xfc>
    80008cb8:	0015c603          	lbu	a2,1(a1)
    80008cbc:	00100713          	li	a4,1
    80008cc0:	00c780a3          	sb	a2,1(a5)
    80008cc4:	04e68663          	beq	a3,a4,80008d10 <__memmove+0xfc>
    80008cc8:	0025c603          	lbu	a2,2(a1)
    80008ccc:	00200713          	li	a4,2
    80008cd0:	00c78123          	sb	a2,2(a5)
    80008cd4:	02e68e63          	beq	a3,a4,80008d10 <__memmove+0xfc>
    80008cd8:	0035c603          	lbu	a2,3(a1)
    80008cdc:	00300713          	li	a4,3
    80008ce0:	00c781a3          	sb	a2,3(a5)
    80008ce4:	02e68663          	beq	a3,a4,80008d10 <__memmove+0xfc>
    80008ce8:	0045c603          	lbu	a2,4(a1)
    80008cec:	00400713          	li	a4,4
    80008cf0:	00c78223          	sb	a2,4(a5)
    80008cf4:	00e68e63          	beq	a3,a4,80008d10 <__memmove+0xfc>
    80008cf8:	0055c603          	lbu	a2,5(a1)
    80008cfc:	00500713          	li	a4,5
    80008d00:	00c782a3          	sb	a2,5(a5)
    80008d04:	00e68663          	beq	a3,a4,80008d10 <__memmove+0xfc>
    80008d08:	0065c703          	lbu	a4,6(a1)
    80008d0c:	00e78323          	sb	a4,6(a5)
    80008d10:	00813403          	ld	s0,8(sp)
    80008d14:	01010113          	addi	sp,sp,16
    80008d18:	00008067          	ret
    80008d1c:	02061713          	slli	a4,a2,0x20
    80008d20:	02075713          	srli	a4,a4,0x20
    80008d24:	00e587b3          	add	a5,a1,a4
    80008d28:	f0f574e3          	bgeu	a0,a5,80008c30 <__memmove+0x1c>
    80008d2c:	02069613          	slli	a2,a3,0x20
    80008d30:	02065613          	srli	a2,a2,0x20
    80008d34:	fff64613          	not	a2,a2
    80008d38:	00e50733          	add	a4,a0,a4
    80008d3c:	00c78633          	add	a2,a5,a2
    80008d40:	fff7c683          	lbu	a3,-1(a5)
    80008d44:	fff78793          	addi	a5,a5,-1
    80008d48:	fff70713          	addi	a4,a4,-1
    80008d4c:	00d70023          	sb	a3,0(a4)
    80008d50:	fec798e3          	bne	a5,a2,80008d40 <__memmove+0x12c>
    80008d54:	00813403          	ld	s0,8(sp)
    80008d58:	01010113          	addi	sp,sp,16
    80008d5c:	00008067          	ret
    80008d60:	02069713          	slli	a4,a3,0x20
    80008d64:	02075713          	srli	a4,a4,0x20
    80008d68:	00170713          	addi	a4,a4,1
    80008d6c:	00e50733          	add	a4,a0,a4
    80008d70:	00050793          	mv	a5,a0
    80008d74:	0005c683          	lbu	a3,0(a1)
    80008d78:	00178793          	addi	a5,a5,1
    80008d7c:	00158593          	addi	a1,a1,1
    80008d80:	fed78fa3          	sb	a3,-1(a5)
    80008d84:	fee798e3          	bne	a5,a4,80008d74 <__memmove+0x160>
    80008d88:	f89ff06f          	j	80008d10 <__memmove+0xfc>

0000000080008d8c <__putc>:
    80008d8c:	fe010113          	addi	sp,sp,-32
    80008d90:	00813823          	sd	s0,16(sp)
    80008d94:	00113c23          	sd	ra,24(sp)
    80008d98:	02010413          	addi	s0,sp,32
    80008d9c:	00050793          	mv	a5,a0
    80008da0:	fef40593          	addi	a1,s0,-17
    80008da4:	00100613          	li	a2,1
    80008da8:	00000513          	li	a0,0
    80008dac:	fef407a3          	sb	a5,-17(s0)
    80008db0:	fffff097          	auipc	ra,0xfffff
    80008db4:	b3c080e7          	jalr	-1220(ra) # 800078ec <console_write>
    80008db8:	01813083          	ld	ra,24(sp)
    80008dbc:	01013403          	ld	s0,16(sp)
    80008dc0:	02010113          	addi	sp,sp,32
    80008dc4:	00008067          	ret

0000000080008dc8 <__getc>:
    80008dc8:	fe010113          	addi	sp,sp,-32
    80008dcc:	00813823          	sd	s0,16(sp)
    80008dd0:	00113c23          	sd	ra,24(sp)
    80008dd4:	02010413          	addi	s0,sp,32
    80008dd8:	fe840593          	addi	a1,s0,-24
    80008ddc:	00100613          	li	a2,1
    80008de0:	00000513          	li	a0,0
    80008de4:	fffff097          	auipc	ra,0xfffff
    80008de8:	ae8080e7          	jalr	-1304(ra) # 800078cc <console_read>
    80008dec:	fe844503          	lbu	a0,-24(s0)
    80008df0:	01813083          	ld	ra,24(sp)
    80008df4:	01013403          	ld	s0,16(sp)
    80008df8:	02010113          	addi	sp,sp,32
    80008dfc:	00008067          	ret

0000000080008e00 <console_handler>:
    80008e00:	fe010113          	addi	sp,sp,-32
    80008e04:	00813823          	sd	s0,16(sp)
    80008e08:	00113c23          	sd	ra,24(sp)
    80008e0c:	00913423          	sd	s1,8(sp)
    80008e10:	02010413          	addi	s0,sp,32
    80008e14:	14202773          	csrr	a4,scause
    80008e18:	100027f3          	csrr	a5,sstatus
    80008e1c:	0027f793          	andi	a5,a5,2
    80008e20:	06079e63          	bnez	a5,80008e9c <console_handler+0x9c>
    80008e24:	00074c63          	bltz	a4,80008e3c <console_handler+0x3c>
    80008e28:	01813083          	ld	ra,24(sp)
    80008e2c:	01013403          	ld	s0,16(sp)
    80008e30:	00813483          	ld	s1,8(sp)
    80008e34:	02010113          	addi	sp,sp,32
    80008e38:	00008067          	ret
    80008e3c:	0ff77713          	andi	a4,a4,255
    80008e40:	00900793          	li	a5,9
    80008e44:	fef712e3          	bne	a4,a5,80008e28 <console_handler+0x28>
    80008e48:	ffffe097          	auipc	ra,0xffffe
    80008e4c:	6dc080e7          	jalr	1756(ra) # 80007524 <plic_claim>
    80008e50:	00a00793          	li	a5,10
    80008e54:	00050493          	mv	s1,a0
    80008e58:	02f50c63          	beq	a0,a5,80008e90 <console_handler+0x90>
    80008e5c:	fc0506e3          	beqz	a0,80008e28 <console_handler+0x28>
    80008e60:	00050593          	mv	a1,a0
    80008e64:	00001517          	auipc	a0,0x1
    80008e68:	89c50513          	addi	a0,a0,-1892 # 80009700 <CONSOLE_STATUS+0x6f0>
    80008e6c:	fffff097          	auipc	ra,0xfffff
    80008e70:	afc080e7          	jalr	-1284(ra) # 80007968 <__printf>
    80008e74:	01013403          	ld	s0,16(sp)
    80008e78:	01813083          	ld	ra,24(sp)
    80008e7c:	00048513          	mv	a0,s1
    80008e80:	00813483          	ld	s1,8(sp)
    80008e84:	02010113          	addi	sp,sp,32
    80008e88:	ffffe317          	auipc	t1,0xffffe
    80008e8c:	6d430067          	jr	1748(t1) # 8000755c <plic_complete>
    80008e90:	fffff097          	auipc	ra,0xfffff
    80008e94:	3e0080e7          	jalr	992(ra) # 80008270 <uartintr>
    80008e98:	fddff06f          	j	80008e74 <console_handler+0x74>
    80008e9c:	00001517          	auipc	a0,0x1
    80008ea0:	96450513          	addi	a0,a0,-1692 # 80009800 <digits+0x78>
    80008ea4:	fffff097          	auipc	ra,0xfffff
    80008ea8:	a68080e7          	jalr	-1432(ra) # 8000790c <panic>
	...
