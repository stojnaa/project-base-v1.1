
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	ef813103          	ld	sp,-264(sp) # 8000bef8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	4e5060ef          	jal	ra,80006d00 <start>

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

00000000800013c4 <_Z15thread_addChildP7_thread>:
int thread_addChild(thread_t child) {
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

0000000080001404 <_Z14thread_joinAllv>:

int thread_joinAll() {
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
    800016cc:	68c080e7          	jalr	1676(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    800016d0:	00050493          	mv	s1,a0
    800016d4:	00090513          	mv	a0,s2
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	fb4080e7          	jalr	-76(ra) # 8000168c <_ZL23blocksForBytesSemaphorem>
    800016e0:	00050593          	mv	a1,a0
    800016e4:	00048513          	mv	a0,s1
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	6ec080e7          	jalr	1772(ra) # 80002dd4 <_ZN15MemoryAllocator6mallocEm>
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
    80001728:	630080e7          	jalr	1584(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    8000172c:	00048593          	mv	a1,s1
    80001730:	00002097          	auipc	ra,0x2
    80001734:	800080e7          	jalr	-2048(ra) # 80002f30 <_ZN15MemoryAllocator4freeEPv>
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
    80001844:	0000a797          	auipc	a5,0xa
    80001848:	6a47b783          	ld	a5,1700(a5) # 8000bee8 <_GLOBAL_OFFSET_TABLE_+0x18>
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
    80001898:	0000a797          	auipc	a5,0xa
    8000189c:	6507b783          	ld	a5,1616(a5) # 8000bee8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018a0:	0007b503          	ld	a0,0(a5)
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	a60080e7          	jalr	-1440(ra) # 80002304 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	924080e7          	jalr	-1756(ra) # 800021d0 <_ZN7_thread8dispatchEv>
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
    80001994:	974080e7          	jalr	-1676(ra) # 80002304 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001998:	0004b503          	ld	a0,0(s1)
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	c9c080e7          	jalr	-868(ra) # 80002638 <_ZN9Scheduler3putEP7_thread>
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
    80001a88:	880080e7          	jalr	-1920(ra) # 80002304 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a8c:	0004b503          	ld	a0,0(s1)
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	ba8080e7          	jalr	-1112(ra) # 80002638 <_ZN9Scheduler3putEP7_thread>
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
    80001b18:	00050493          	mv	s1,a0
    static const uint64 SSTATUS_SPIE = (1UL << 5);
    static const uint64 SSTATUS_SPP = (1UL << 8);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001b1c:	14202773          	csrr	a4,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001b20:	ff870693          	addi	a3,a4,-8 # ff8 <_entry-0x7ffff008>
    80001b24:	00100793          	li	a5,1
    80001b28:	02d7f863          	bgeu	a5,a3,80001b58 <handleSupervisorTrap+0x5c>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001b2c:	fff00793          	li	a5,-1
    80001b30:	03f79793          	slli	a5,a5,0x3f
    80001b34:	00178793          	addi	a5,a5,1
    80001b38:	2cf70663          	beq	a4,a5,80001e04 <handleSupervisorTrap+0x308>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b3c:	fff00793          	li	a5,-1
    80001b40:	03f79793          	slli	a5,a5,0x3f
    80001b44:	00978793          	addi	a5,a5,9
    80001b48:	2cf70463          	beq	a4,a5,80001e10 <handleSupervisorTrap+0x314>
        console_handler();
        return;
    }
    if (scause == 2) { // illegal instruction
    80001b4c:	00200793          	li	a5,2
    80001b50:	2cf70663          	beq	a4,a5,80001e1c <handleSupervisorTrap+0x320>
        frame->sepc += 4;
        Riscv::w_sepc(frame->sepc);
        return;
    }

    while (true) {}
    80001b54:	0000006f          	j	80001b54 <handleSupervisorTrap+0x58>
        uint64 syscallCode = frame->a0;
    80001b58:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b5c:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b60:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b64:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001b68:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001b6c:	04200713          	li	a4,66
    80001b70:	28f76463          	bltu	a4,a5,80001df8 <handleSupervisorTrap+0x2fc>
    80001b74:	00279793          	slli	a5,a5,0x2
    80001b78:	00007717          	auipc	a4,0x7
    80001b7c:	4a870713          	addi	a4,a4,1192 # 80009020 <CONSOLE_STATUS+0x10>
    80001b80:	00e787b3          	add	a5,a5,a4
    80001b84:	0007a783          	lw	a5,0(a5)
    80001b88:	00e787b3          	add	a5,a5,a4
    80001b8c:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	1c4080e7          	jalr	452(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    80001b98:	00090593          	mv	a1,s2
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	238080e7          	jalr	568(ra) # 80002dd4 <_ZN15MemoryAllocator6mallocEm>
    80001ba4:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001ba8:	0f04b783          	ld	a5,240(s1)
    80001bac:	00478793          	addi	a5,a5,4
    80001bb0:	0ef4b823          	sd	a5,240(s1)
    80001bb4:	02813083          	ld	ra,40(sp)
    80001bb8:	02013403          	ld	s0,32(sp)
    80001bbc:	01813483          	ld	s1,24(sp)
    80001bc0:	01013903          	ld	s2,16(sp)
    80001bc4:	00813983          	ld	s3,8(sp)
    80001bc8:	03010113          	addi	sp,sp,48
    80001bcc:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	184080e7          	jalr	388(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    80001bd8:	00090593          	mv	a1,s2
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	354080e7          	jalr	852(ra) # 80002f30 <_ZN15MemoryAllocator4freeEPv>
    80001be4:	04a4b023          	sd	a0,64(s1)
                break;
    80001be8:	fc1ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001bec:	00090663          	beqz	s2,80001bf8 <handleSupervisorTrap+0xfc>
    80001bf0:	00050463          	beqz	a0,80001bf8 <handleSupervisorTrap+0xfc>
    80001bf4:	00061863          	bnez	a2,80001c04 <handleSupervisorTrap+0x108>
                    frame->a0 = (uint64)-1;
    80001bf8:	fff00793          	li	a5,-1
    80001bfc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c00:	fa9ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	4b4080e7          	jalr	1204(ra) # 800020b8 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001c0c:	00050c63          	beqz	a0,80001c24 <handleSupervisorTrap+0x128>
                *handle = thread;//korisnik dobija rucku nove niti
    80001c10:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	a24080e7          	jalr	-1500(ra) # 80002638 <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001c1c:	0404b023          	sd	zero,64(s1)
                break;
    80001c20:	f89ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001c24:	fff00793          	li	a5,-1
    80001c28:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c2c:	f7dff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001c30:	0f04b783          	ld	a5,240(s1)
    80001c34:	00478793          	addi	a5,a5,4
    80001c38:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	848080e7          	jalr	-1976(ra) # 80002484 <_ZN7_thread4exitEv>
    80001c44:	04a4b023          	sd	a0,64(s1)
                return;
    80001c48:	f6dff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>
                frame->sepc += 4;
    80001c4c:	0f04b783          	ld	a5,240(s1)
    80001c50:	00478793          	addi	a5,a5,4
    80001c54:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	578080e7          	jalr	1400(ra) # 800021d0 <_ZN7_thread8dispatchEv>
                return;
    80001c60:	f55ff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>
                if (child == nullptr) {
    80001c64:	00091863          	bnez	s2,80001c74 <handleSupervisorTrap+0x178>
                    frame->a0 = (uint64)-1;
    80001c68:	fff00793          	li	a5,-1
    80001c6c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c70:	f39ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)_thread::addChild(child);
    80001c74:	00090513          	mv	a0,s2
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	6c4080e7          	jalr	1732(ra) # 8000233c <_ZN7_thread8addChildEPS_>
    80001c80:	04a4b023          	sd	a0,64(s1)
                break;
    80001c84:	f25ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001c88:	0f04b783          	ld	a5,240(s1)
    80001c8c:	00478793          	addi	a5,a5,4
    80001c90:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::joinAll();
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	730080e7          	jalr	1840(ra) # 800023c4 <_ZN7_thread7joinAllEv>
    80001c9c:	04a4b023          	sd	a0,64(s1)
                return;
    80001ca0:	f15ff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>
                unsigned init = (unsigned)arg2;
    80001ca4:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001ca8:	00091863          	bnez	s2,80001cb8 <handleSupervisorTrap+0x1bc>
                    frame->a0 = (uint64)-1;
    80001cac:	fff00793          	li	a5,-1
    80001cb0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cb4:	ef5ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                _sem* sem = _sem::createSemaphore(init);
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	ac0080e7          	jalr	-1344(ra) # 80001778 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001cc0:	00050863          	beqz	a0,80001cd0 <handleSupervisorTrap+0x1d4>
                *handle = sem;
    80001cc4:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001cc8:	0404b023          	sd	zero,64(s1)
                break;
    80001ccc:	eddff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                    frame->a0 = (uint64)-1;
    80001cd0:	fff00793          	li	a5,-1
    80001cd4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd8:	ed1ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                if (sem == nullptr) {
    80001cdc:	00091863          	bnez	s2,80001cec <handleSupervisorTrap+0x1f0>
                    frame->a0 = (uint64)-1;
    80001ce0:	fff00793          	li	a5,-1
    80001ce4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001ce8:	ec1ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                int ret = sem->close();
    80001cec:	00090513          	mv	a0,s2
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	dc8080e7          	jalr	-568(ra) # 80001ab8 <_ZN4_sem5closeEv>
    80001cf8:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001cfc:	00050663          	beqz	a0,80001d08 <handleSupervisorTrap+0x20c>
                frame->a0 = (uint64)ret;
    80001d00:	0534b023          	sd	s3,64(s1)
                break;
    80001d04:	ea5ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                    _sem::destroySemaphore(sem);
    80001d08:	00090513          	mv	a0,s2
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	ac0080e7          	jalr	-1344(ra) # 800017cc <_ZN4_sem16destroySemaphoreEPS_>
    80001d14:	fedff06f          	j	80001d00 <handleSupervisorTrap+0x204>
                if (sem == nullptr) {
    80001d18:	00091863          	bnez	s2,80001d28 <handleSupervisorTrap+0x22c>
                    frame->a0 = (uint64)-1;
    80001d1c:	fff00793          	li	a5,-1
    80001d20:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d24:	e85ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d28:	0f04b783          	ld	a5,240(s1)
    80001d2c:	00478793          	addi	a5,a5,4
    80001d30:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d34:	00090513          	mv	a0,s2
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	bc4080e7          	jalr	-1084(ra) # 800018fc <_ZN4_sem4waitEv>
    80001d40:	04a4b023          	sd	a0,64(s1)
                return;
    80001d44:	e71ff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>
                if (sem == nullptr) {
    80001d48:	00091863          	bnez	s2,80001d58 <handleSupervisorTrap+0x25c>
                    frame->a0 = (uint64)-1;
    80001d4c:	fff00793          	li	a5,-1
    80001d50:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d54:	e55ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signal();
    80001d58:	00090513          	mv	a0,s2
    80001d5c:	00000097          	auipc	ra,0x0
    80001d60:	cb8080e7          	jalr	-840(ra) # 80001a14 <_ZN4_sem6signalEv>
    80001d64:	04a4b023          	sd	a0,64(s1)
                break;
    80001d68:	e41ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                unsigned n = (unsigned)arg2;
    80001d6c:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d70:	00091863          	bnez	s2,80001d80 <handleSupervisorTrap+0x284>
                    frame->a0 = (uint64)-1;
    80001d74:	fff00793          	li	a5,-1
    80001d78:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d7c:	e2dff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->sepc += 4;
    80001d80:	0f04b783          	ld	a5,240(s1)
    80001d84:	00478793          	addi	a5,a5,4
    80001d88:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d8c:	00090513          	mv	a0,s2
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	ab4080e7          	jalr	-1356(ra) # 80001844 <_ZN4_sem5waitNEj>
    80001d98:	04a4b023          	sd	a0,64(s1)
                return;
    80001d9c:	e19ff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>
                unsigned n = (unsigned)arg2;
    80001da0:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001da4:	00091863          	bnez	s2,80001db4 <handleSupervisorTrap+0x2b8>
                    frame->a0 = (uint64)-1;
    80001da8:	fff00793          	li	a5,-1
    80001dac:	04f4b023          	sd	a5,64(s1)
                    break;
    80001db0:	df9ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)sem->signalN(n);
    80001db4:	00090513          	mv	a0,s2
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	c08080e7          	jalr	-1016(ra) # 800019c0 <_ZN4_sem7signalNEj>
    80001dc0:	04a4b023          	sd	a0,64(s1)
                break;
    80001dc4:	de5ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001dc8:	fff00793          	li	a5,-1
    80001dcc:	04f4b023          	sd	a5,64(s1)
                break;
    80001dd0:	dd9ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)__getc();
    80001dd4:	00007097          	auipc	ra,0x7
    80001dd8:	024080e7          	jalr	36(ra) # 80008df8 <__getc>
    80001ddc:	04a4b023          	sd	a0,64(s1)
                break;
    80001de0:	dc9ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                __putc((char)arg1);
    80001de4:	0ff97513          	andi	a0,s2,255
    80001de8:	00007097          	auipc	ra,0x7
    80001dec:	fd4080e7          	jalr	-44(ra) # 80008dbc <__putc>
                frame->a0 = 0;
    80001df0:	0404b023          	sd	zero,64(s1)
                break;
    80001df4:	db5ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>
                frame->a0 = (uint64)-1;
    80001df8:	fff00793          	li	a5,-1
    80001dfc:	04f4b023          	sd	a5,64(s1)
                break;
    80001e00:	da9ff06f          	j	80001ba8 <handleSupervisorTrap+0xac>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001e04:	00200793          	li	a5,2
    80001e08:	1447b073          	csrc	sip,a5
        return;
    80001e0c:	da9ff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>
        console_handler();
    80001e10:	00007097          	auipc	ra,0x7
    80001e14:	020080e7          	jalr	32(ra) # 80008e30 <console_handler>
        return;
    80001e18:	d9dff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>
        frame->sepc += 4;
    80001e1c:	0f053783          	ld	a5,240(a0)
    80001e20:	00478793          	addi	a5,a5,4
    80001e24:	0ef53823          	sd	a5,240(a0)
        asm volatile("csrw sepc, %0" : : "r"(x));//upis u sepc
    80001e28:	14179073          	csrw	sepc,a5
        return;
    80001e2c:	d89ff06f          	j	80001bb4 <handleSupervisorTrap+0xb8>

0000000080001e30 <_ZL14blocksForBytesm>:
#include "../h/syscall_c.hpp"
#include "../h/Semaphore.hpp"

_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001e30:	ff010113          	addi	sp,sp,-16
    80001e34:	00813423          	sd	s0,8(sp)
    80001e38:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e3c:	03f50513          	addi	a0,a0,63
}
    80001e40:	00655513          	srli	a0,a0,0x6
    80001e44:	00813403          	ld	s0,8(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    }
    static void popSppSpie() {
        uint64 target;

        asm volatile("la %0, 1f" : "=r"(target));//skoci na adresu odmah posle sret-a, labela 1
    80001e60:	0000a797          	auipc	a5,0xa
    80001e64:	0787b783          	ld	a5,120(a5) # 8000bed8 <_GLOBAL_OFFSET_TABLE_+0x8>

        asm volatile("csrw sepc, %0" : : "r"(target));
    80001e68:	14179073          	csrw	sepc,a5
        asm volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));//vrati se u user mode
    80001e6c:	10000793          	li	a5,256
    80001e70:	1007b073          	csrc	sstatus,a5
        asm volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPIE));//enable prekide posle sret-a
    80001e74:	02000793          	li	a5,32
    80001e78:	1007a073          	csrs	sstatus,a5

        asm volatile(
            "sret\n"//sret menja rezim
            "1:\n"//procesor posle sret skoci ovde, da bi se vratio u threadWrapper
        );
    80001e7c:	10200073          	sret
    Riscv::popSppSpie();

    if (running != nullptr && running->body != nullptr) {
    80001e80:	0000a797          	auipc	a5,0xa
    80001e84:	0d07b783          	ld	a5,208(a5) # 8000bf50 <_ZN7_thread7runningE>
    80001e88:	00078a63          	beqz	a5,80001e9c <_ZN7_thread13threadWrapperEv+0x4c>
    80001e8c:	0007b703          	ld	a4,0(a5)
    80001e90:	00070663          	beqz	a4,80001e9c <_ZN7_thread13threadWrapperEv+0x4c>
        running->body(running->arg);
    80001e94:	0087b503          	ld	a0,8(a5)
    80001e98:	000700e7          	jalr	a4
    }

    thread_exit();
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	4ac080e7          	jalr	1196(ra) # 80001348 <_Z11thread_exitv>
}
    80001ea4:	00813083          	ld	ra,8(sp)
    80001ea8:	00013403          	ld	s0,0(sp)
    80001eac:	01010113          	addi	sp,sp,16
    80001eb0:	00008067          	ret

0000000080001eb4 <_ZN7_threadnwEm>:
void* _thread::operator new(size_t size) {
    80001eb4:	fe010113          	addi	sp,sp,-32
    80001eb8:	00113c23          	sd	ra,24(sp)
    80001ebc:	00813823          	sd	s0,16(sp)
    80001ec0:	00913423          	sd	s1,8(sp)
    80001ec4:	01213023          	sd	s2,0(sp)
    80001ec8:	02010413          	addi	s0,sp,32
    80001ecc:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	e84080e7          	jalr	-380(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    80001ed8:	00050493          	mv	s1,a0
    80001edc:	00090513          	mv	a0,s2
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	f50080e7          	jalr	-176(ra) # 80001e30 <_ZL14blocksForBytesm>
    80001ee8:	00050593          	mv	a1,a0
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	ee4080e7          	jalr	-284(ra) # 80002dd4 <_ZN15MemoryAllocator6mallocEm>
}
    80001ef8:	01813083          	ld	ra,24(sp)
    80001efc:	01013403          	ld	s0,16(sp)
    80001f00:	00813483          	ld	s1,8(sp)
    80001f04:	00013903          	ld	s2,0(sp)
    80001f08:	02010113          	addi	sp,sp,32
    80001f0c:	00008067          	ret

0000000080001f10 <_ZN7_threadnaEm>:
void* _thread::operator new[](size_t size) {
    80001f10:	fe010113          	addi	sp,sp,-32
    80001f14:	00113c23          	sd	ra,24(sp)
    80001f18:	00813823          	sd	s0,16(sp)
    80001f1c:	00913423          	sd	s1,8(sp)
    80001f20:	01213023          	sd	s2,0(sp)
    80001f24:	02010413          	addi	s0,sp,32
    80001f28:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	e28080e7          	jalr	-472(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    80001f34:	00050493          	mv	s1,a0
    80001f38:	00090513          	mv	a0,s2
    80001f3c:	00000097          	auipc	ra,0x0
    80001f40:	ef4080e7          	jalr	-268(ra) # 80001e30 <_ZL14blocksForBytesm>
    80001f44:	00050593          	mv	a1,a0
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	e88080e7          	jalr	-376(ra) # 80002dd4 <_ZN15MemoryAllocator6mallocEm>
}
    80001f54:	01813083          	ld	ra,24(sp)
    80001f58:	01013403          	ld	s0,16(sp)
    80001f5c:	00813483          	ld	s1,8(sp)
    80001f60:	00013903          	ld	s2,0(sp)
    80001f64:	02010113          	addi	sp,sp,32
    80001f68:	00008067          	ret

0000000080001f6c <_ZN7_threaddlEPv>:
    if (ptr == nullptr) {
    80001f6c:	04050263          	beqz	a0,80001fb0 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001f70:	fe010113          	addi	sp,sp,-32
    80001f74:	00113c23          	sd	ra,24(sp)
    80001f78:	00813823          	sd	s0,16(sp)
    80001f7c:	00913423          	sd	s1,8(sp)
    80001f80:	02010413          	addi	s0,sp,32
    80001f84:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	dcc080e7          	jalr	-564(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    80001f90:	00048593          	mv	a1,s1
    80001f94:	00001097          	auipc	ra,0x1
    80001f98:	f9c080e7          	jalr	-100(ra) # 80002f30 <_ZN15MemoryAllocator4freeEPv>
}
    80001f9c:	01813083          	ld	ra,24(sp)
    80001fa0:	01013403          	ld	s0,16(sp)
    80001fa4:	00813483          	ld	s1,8(sp)
    80001fa8:	02010113          	addi	sp,sp,32
    80001fac:	00008067          	ret
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN7_threaddaEPv>:
    if (ptr == nullptr) {
    80001fb4:	04050263          	beqz	a0,80001ff8 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001fb8:	fe010113          	addi	sp,sp,-32
    80001fbc:	00113c23          	sd	ra,24(sp)
    80001fc0:	00813823          	sd	s0,16(sp)
    80001fc4:	00913423          	sd	s1,8(sp)
    80001fc8:	02010413          	addi	s0,sp,32
    80001fcc:	00050493          	mv	s1,a0
    MemoryAllocator::getInstance().free(ptr);
    80001fd0:	00001097          	auipc	ra,0x1
    80001fd4:	d84080e7          	jalr	-636(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    80001fd8:	00048593          	mv	a1,s1
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	f54080e7          	jalr	-172(ra) # 80002f30 <_ZN15MemoryAllocator4freeEPv>
}
    80001fe4:	01813083          	ld	ra,24(sp)
    80001fe8:	01013403          	ld	s0,16(sp)
    80001fec:	00813483          	ld	s1,8(sp)
    80001ff0:	02010113          	addi	sp,sp,32
    80001ff4:	00008067          	ret
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN7_threadC1EPFvPvES0_S0_>:
_thread::_thread(Body body, void* arg, void* stackSpace) {
    80001ffc:	fe010113          	addi	sp,sp,-32
    80002000:	00113c23          	sd	ra,24(sp)
    80002004:	00813823          	sd	s0,16(sp)
    80002008:	00913423          	sd	s1,8(sp)
    8000200c:	02010413          	addi	s0,sp,32
    80002010:	00050493          	mv	s1,a0
    this->body = body;
    80002014:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80002018:	00c53423          	sd	a2,8(a0)
    if (stackSpace != nullptr) {
    8000201c:	08068863          	beqz	a3,800020ac <_ZN7_threadC1EPFvPvES0_S0_+0xb0>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80002020:	fffff7b7          	lui	a5,0xfffff
    80002024:	00f687b3          	add	a5,a3,a5
    80002028:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    8000202c:	02d53023          	sd	a3,32(a0)
    this->context.s0 = 0;
    80002030:	0204b423          	sd	zero,40(s1)
    this->context.s1 = 0;
    80002034:	0204b823          	sd	zero,48(s1)
    this->context.s2 = 0;
    80002038:	0204bc23          	sd	zero,56(s1)
    this->context.s3 = 0;
    8000203c:	0404b023          	sd	zero,64(s1)
    this->context.s4 = 0;
    80002040:	0404b423          	sd	zero,72(s1)
    this->context.s5 = 0;
    80002044:	0404b823          	sd	zero,80(s1)
    this->context.s6 = 0;
    80002048:	0404bc23          	sd	zero,88(s1)
    this->context.s7 = 0;
    8000204c:	0604b023          	sd	zero,96(s1)
    this->context.s8 = 0;
    80002050:	0604b423          	sd	zero,104(s1)
    this->context.s9 = 0;
    80002054:	0604b823          	sd	zero,112(s1)
    this->context.s10 = 0;
    80002058:	0604bc23          	sd	zero,120(s1)
    this->context.s11 = 0;
    8000205c:	0804b023          	sd	zero,128(s1)
    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    80002060:	00000797          	auipc	a5,0x0
    80002064:	df078793          	addi	a5,a5,-528 # 80001e50 <_ZN7_thread13threadWrapperEv>
    80002068:	00f4bc23          	sd	a5,24(s1)
    this->timeSlice = DEFAULT_TIME_SLICE;
    8000206c:	00200793          	li	a5,2
    80002070:	08f4b423          	sd	a5,136(s1)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80002074:	0804a823          	sw	zero,144(s1)
    this->next = nullptr;
    80002078:	0804bc23          	sd	zero,152(s1)
    this->parent = nullptr;
    8000207c:	0a04b023          	sd	zero,160(s1)
    this->activeDescendants = 0;
    80002080:	0a04a423          	sw	zero,168(s1)
    this->waitingJoinAll = false;
    80002084:	0a048623          	sb	zero,172(s1)
    this->joinAllSem = _sem::createSemaphore(0);
    80002088:	00000513          	li	a0,0
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	6ec080e7          	jalr	1772(ra) # 80001778 <_ZN4_sem15createSemaphoreEj>
    80002094:	0aa4b823          	sd	a0,176(s1)
}
    80002098:	01813083          	ld	ra,24(sp)
    8000209c:	01013403          	ld	s0,16(sp)
    800020a0:	00813483          	ld	s1,8(sp)
    800020a4:	02010113          	addi	sp,sp,32
    800020a8:	00008067          	ret
        this->stack = nullptr;
    800020ac:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    800020b0:	02053023          	sd	zero,32(a0)
    800020b4:	f7dff06f          	j	80002030 <_ZN7_threadC1EPFvPvES0_S0_+0x34>

00000000800020b8 <_ZN7_thread12createThreadEPFvPvES0_S0_>:
_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    800020b8:	fd010113          	addi	sp,sp,-48
    800020bc:	02113423          	sd	ra,40(sp)
    800020c0:	02813023          	sd	s0,32(sp)
    800020c4:	00913c23          	sd	s1,24(sp)
    800020c8:	01213823          	sd	s2,16(sp)
    800020cc:	01313423          	sd	s3,8(sp)
    800020d0:	01413023          	sd	s4,0(sp)
    800020d4:	03010413          	addi	s0,sp,48
    800020d8:	00050913          	mv	s2,a0
    800020dc:	00058993          	mv	s3,a1
    800020e0:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    800020e4:	0b800513          	li	a0,184
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	dcc080e7          	jalr	-564(ra) # 80001eb4 <_ZN7_threadnwEm>
    800020f0:	00050493          	mv	s1,a0
    800020f4:	000a0693          	mv	a3,s4
    800020f8:	00098613          	mv	a2,s3
    800020fc:	00090593          	mv	a1,s2
    80002100:	00000097          	auipc	ra,0x0
    80002104:	efc080e7          	jalr	-260(ra) # 80001ffc <_ZN7_threadC1EPFvPvES0_S0_>
    80002108:	0200006f          	j	80002128 <_ZN7_thread12createThreadEPFvPvES0_S0_+0x70>
    8000210c:	00050913          	mv	s2,a0
    80002110:	00048513          	mv	a0,s1
    80002114:	00000097          	auipc	ra,0x0
    80002118:	e58080e7          	jalr	-424(ra) # 80001f6c <_ZN7_threaddlEPv>
    8000211c:	00090513          	mv	a0,s2
    80002120:	0000b097          	auipc	ra,0xb
    80002124:	f78080e7          	jalr	-136(ra) # 8000d098 <_Unwind_Resume>
}
    80002128:	00048513          	mv	a0,s1
    8000212c:	02813083          	ld	ra,40(sp)
    80002130:	02013403          	ld	s0,32(sp)
    80002134:	01813483          	ld	s1,24(sp)
    80002138:	01013903          	ld	s2,16(sp)
    8000213c:	00813983          	ld	s3,8(sp)
    80002140:	00013a03          	ld	s4,0(sp)
    80002144:	03010113          	addi	sp,sp,48
    80002148:	00008067          	ret

000000008000214c <_ZN7_thread13destroyThreadEPS_>:
    if (thread == nullptr) {
    8000214c:	06050e63          	beqz	a0,800021c8 <_ZN7_thread13destroyThreadEPS_+0x7c>
int _thread::destroyThread(_thread* thread) {
    80002150:	fe010113          	addi	sp,sp,-32
    80002154:	00113c23          	sd	ra,24(sp)
    80002158:	00813823          	sd	s0,16(sp)
    8000215c:	00913423          	sd	s1,8(sp)
    80002160:	02010413          	addi	s0,sp,32
    80002164:	00050493          	mv	s1,a0
    if (thread->stack != nullptr) {
    80002168:	01053783          	ld	a5,16(a0)
    8000216c:	00078e63          	beqz	a5,80002188 <_ZN7_thread13destroyThreadEPS_+0x3c>
        MemoryAllocator::getInstance().free(thread->stack);
    80002170:	00001097          	auipc	ra,0x1
    80002174:	be4080e7          	jalr	-1052(ra) # 80002d54 <_ZN15MemoryAllocator11getInstanceEv>
    80002178:	0104b583          	ld	a1,16(s1)
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	db4080e7          	jalr	-588(ra) # 80002f30 <_ZN15MemoryAllocator4freeEPv>
        thread->stack = nullptr;
    80002184:	0004b823          	sd	zero,16(s1)
    if (thread->joinAllSem != nullptr) {
    80002188:	0b04b503          	ld	a0,176(s1)
    8000218c:	00050c63          	beqz	a0,800021a4 <_ZN7_thread13destroyThreadEPS_+0x58>
        thread->joinAllSem->close();
    80002190:	00000097          	auipc	ra,0x0
    80002194:	928080e7          	jalr	-1752(ra) # 80001ab8 <_ZN4_sem5closeEv>
        _sem::destroySemaphore(thread->joinAllSem);
    80002198:	0b04b503          	ld	a0,176(s1)
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	630080e7          	jalr	1584(ra) # 800017cc <_ZN4_sem16destroySemaphoreEPS_>
    delete thread;
    800021a4:	00048513          	mv	a0,s1
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	dc4080e7          	jalr	-572(ra) # 80001f6c <_ZN7_threaddlEPv>
    return 0;
    800021b0:	00000513          	li	a0,0
}
    800021b4:	01813083          	ld	ra,24(sp)
    800021b8:	01013403          	ld	s0,16(sp)
    800021bc:	00813483          	ld	s1,8(sp)
    800021c0:	02010113          	addi	sp,sp,32
    800021c4:	00008067          	ret
        return -1;
    800021c8:	fff00513          	li	a0,-1
}
    800021cc:	00008067          	ret

00000000800021d0 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    800021d0:	fe010113          	addi	sp,sp,-32
    800021d4:	00113c23          	sd	ra,24(sp)
    800021d8:	00813823          	sd	s0,16(sp)
    800021dc:	00913423          	sd	s1,8(sp)
    800021e0:	02010413          	addi	s0,sp,32
    _thread* old = running;
    800021e4:	0000a497          	auipc	s1,0xa
    800021e8:	d6c4b483          	ld	s1,-660(s1) # 8000bf50 <_ZN7_thread7runningE>
    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    800021ec:	00048c63          	beqz	s1,80002204 <_ZN7_thread8dispatchEv+0x34>
    800021f0:	0904a783          	lw	a5,144(s1)
    800021f4:	00400713          	li	a4,4
    800021f8:	00e78663          	beq	a5,a4,80002204 <_ZN7_thread8dispatchEv+0x34>
    800021fc:	00300713          	li	a4,3
    80002200:	04e79663          	bne	a5,a4,8000224c <_ZN7_thread8dispatchEv+0x7c>
    _thread* next = Scheduler::get();
    80002204:	00000097          	auipc	ra,0x0
    80002208:	4a0080e7          	jalr	1184(ra) # 800026a4 <_ZN9Scheduler3getEv>
    if (next == nullptr) {
    8000220c:	04050863          	beqz	a0,8000225c <_ZN7_thread8dispatchEv+0x8c>
    running = next;
    80002210:	0000a797          	auipc	a5,0xa
    80002214:	d4a7b023          	sd	a0,-704(a5) # 8000bf50 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002218:	00200793          	li	a5,2
    8000221c:	08f52823          	sw	a5,144(a0)
    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    80002220:	00048c63          	beqz	s1,80002238 <_ZN7_thread8dispatchEv+0x68>
    80002224:	00a48a63          	beq	s1,a0,80002238 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002228:	01850593          	addi	a1,a0,24
    8000222c:	01848513          	addi	a0,s1,24
    80002230:	fffff097          	auipc	ra,0xfffff
    80002234:	f00080e7          	jalr	-256(ra) # 80001130 <contextSwitch>
}
    80002238:	01813083          	ld	ra,24(sp)
    8000223c:	01013403          	ld	s0,16(sp)
    80002240:	00813483          	ld	s1,8(sp)
    80002244:	02010113          	addi	sp,sp,32
    80002248:	00008067          	ret
        Scheduler::put(old);
    8000224c:	00048513          	mv	a0,s1
    80002250:	00000097          	auipc	ra,0x0
    80002254:	3e8080e7          	jalr	1000(ra) # 80002638 <_ZN9Scheduler3putEP7_thread>
    80002258:	fadff06f          	j	80002204 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    8000225c:	fc048ee3          	beqz	s1,80002238 <_ZN7_thread8dispatchEv+0x68>
    80002260:	0904a703          	lw	a4,144(s1)
    80002264:	00200793          	li	a5,2
    80002268:	fcf718e3          	bne	a4,a5,80002238 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    8000226c:	0000a797          	auipc	a5,0xa
    80002270:	ce97b223          	sd	s1,-796(a5) # 8000bf50 <_ZN7_thread7runningE>
        return;
    80002274:	fc5ff06f          	j	80002238 <_ZN7_thread8dispatchEv+0x68>

0000000080002278 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00813423          	sd	s0,8(sp)
    80002280:	01010413          	addi	s0,sp,16
}
    80002284:	00053503          	ld	a0,0(a0)
    80002288:	00813403          	ld	s0,8(sp)
    8000228c:	01010113          	addi	sp,sp,16
    80002290:	00008067          	ret

0000000080002294 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    80002294:	ff010113          	addi	sp,sp,-16
    80002298:	00813423          	sd	s0,8(sp)
    8000229c:	01010413          	addi	s0,sp,16
}
    800022a0:	00853503          	ld	a0,8(a0)
    800022a4:	00813403          	ld	s0,8(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00813423          	sd	s0,8(sp)
    800022b8:	01010413          	addi	s0,sp,16
}
    800022bc:	01053503          	ld	a0,16(a0)
    800022c0:	00813403          	ld	s0,8(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
}
    800022d8:	01850513          	addi	a0,a0,24
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
}
    800022f4:	09052503          	lw	a0,144(a0)
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	01010113          	addi	sp,sp,16
    80002300:	00008067          	ret

0000000080002304 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    80002304:	ff010113          	addi	sp,sp,-16
    80002308:	00813423          	sd	s0,8(sp)
    8000230c:	01010413          	addi	s0,sp,16
    this->state = state;
    80002310:	08b52823          	sw	a1,144(a0)
}
    80002314:	00813403          	ld	s0,8(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret

0000000080002320 <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00813423          	sd	s0,8(sp)
    80002328:	01010413          	addi	s0,sp,16
}
    8000232c:	08853503          	ld	a0,136(a0)
    80002330:	00813403          	ld	s0,8(sp)
    80002334:	01010113          	addi	sp,sp,16
    80002338:	00008067          	ret

000000008000233c <_ZN7_thread8addChildEPS_>:
int _thread::addChild(_thread* child) {
    8000233c:	ff010113          	addi	sp,sp,-16
    80002340:	00813423          	sd	s0,8(sp)
    80002344:	01010413          	addi	s0,sp,16
    if (running == nullptr || child == nullptr) {
    80002348:	0000a797          	auipc	a5,0xa
    8000234c:	c087b783          	ld	a5,-1016(a5) # 8000bf50 <_ZN7_thread7runningE>
    80002350:	04078263          	beqz	a5,80002394 <_ZN7_thread8addChildEPS_+0x58>
    80002354:	04050463          	beqz	a0,8000239c <_ZN7_thread8addChildEPS_+0x60>
        return -1;
    }

    if (child == running) {
    80002358:	04a78663          	beq	a5,a0,800023a4 <_ZN7_thread8addChildEPS_+0x68>
        return -1;
    }

    if (child->parent != nullptr) {
    8000235c:	0a053703          	ld	a4,160(a0)
    80002360:	04071663          	bnez	a4,800023ac <_ZN7_thread8addChildEPS_+0x70>
        return -1;
    }

    child->parent = running;
    80002364:	0af53023          	sd	a5,160(a0)

    int added = child->activeDescendants;
    80002368:	0a852683          	lw	a3,168(a0)

    if (child->state != FINISHED) {
    8000236c:	09052603          	lw	a2,144(a0)
    80002370:	00400713          	li	a4,4
    80002374:	00e60463          	beq	a2,a4,8000237c <_ZN7_thread8addChildEPS_+0x40>
        added++;
    80002378:	0016869b          	addiw	a3,a3,1
    }

    for (_thread* t = running; t != nullptr; t = t->parent) {
    8000237c:	02078c63          	beqz	a5,800023b4 <_ZN7_thread8addChildEPS_+0x78>
        t->activeDescendants += added;
    80002380:	0a87a703          	lw	a4,168(a5)
    80002384:	00d7073b          	addw	a4,a4,a3
    80002388:	0ae7a423          	sw	a4,168(a5)
    for (_thread* t = running; t != nullptr; t = t->parent) {
    8000238c:	0a07b783          	ld	a5,160(a5)
    80002390:	fedff06f          	j	8000237c <_ZN7_thread8addChildEPS_+0x40>
        return -1;
    80002394:	fff00513          	li	a0,-1
    80002398:	0200006f          	j	800023b8 <_ZN7_thread8addChildEPS_+0x7c>
    8000239c:	fff00513          	li	a0,-1
    800023a0:	0180006f          	j	800023b8 <_ZN7_thread8addChildEPS_+0x7c>
        return -1;
    800023a4:	fff00513          	li	a0,-1
    800023a8:	0100006f          	j	800023b8 <_ZN7_thread8addChildEPS_+0x7c>
        return -1;
    800023ac:	fff00513          	li	a0,-1
    800023b0:	0080006f          	j	800023b8 <_ZN7_thread8addChildEPS_+0x7c>
    }

    return 0;
    800023b4:	00000513          	li	a0,0
}
    800023b8:	00813403          	ld	s0,8(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN7_thread7joinAllEv>:

int _thread::joinAll() {
    if (running == nullptr) {
    800023c4:	0000a797          	auipc	a5,0xa
    800023c8:	b8c7b783          	ld	a5,-1140(a5) # 8000bf50 <_ZN7_thread7runningE>
    800023cc:	04078263          	beqz	a5,80002410 <_ZN7_thread7joinAllEv+0x4c>
        return -1;
    }

    if (running->activeDescendants == 0) {
    800023d0:	0a87a503          	lw	a0,168(a5)
    800023d4:	00051463          	bnez	a0,800023dc <_ZN7_thread7joinAllEv+0x18>
        return 0;
    }

    running->waitingJoinAll = true;
    return running->joinAllSem->wait();
}
    800023d8:	00008067          	ret
int _thread::joinAll() {
    800023dc:	ff010113          	addi	sp,sp,-16
    800023e0:	00113423          	sd	ra,8(sp)
    800023e4:	00813023          	sd	s0,0(sp)
    800023e8:	01010413          	addi	s0,sp,16
    running->waitingJoinAll = true;
    800023ec:	00100713          	li	a4,1
    800023f0:	0ae78623          	sb	a4,172(a5)
    return running->joinAllSem->wait();
    800023f4:	0b07b503          	ld	a0,176(a5)
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	504080e7          	jalr	1284(ra) # 800018fc <_ZN4_sem4waitEv>
}
    80002400:	00813083          	ld	ra,8(sp)
    80002404:	00013403          	ld	s0,0(sp)
    80002408:	01010113          	addi	sp,sp,16
    8000240c:	00008067          	ret
        return -1;
    80002410:	fff00513          	li	a0,-1
    80002414:	00008067          	ret

0000000080002418 <_ZN7_thread14notifyFinishedEv>:

void _thread::notifyFinished() {
    80002418:	fe010113          	addi	sp,sp,-32
    8000241c:	00113c23          	sd	ra,24(sp)
    80002420:	00813823          	sd	s0,16(sp)
    80002424:	00913423          	sd	s1,8(sp)
    80002428:	02010413          	addi	s0,sp,32
    for (_thread* t = parent; t != nullptr; t = t->parent) {
    8000242c:	0a053483          	ld	s1,160(a0)
    80002430:	0180006f          	j	80002448 <_ZN7_thread14notifyFinishedEv+0x30>
        if (t->activeDescendants > 0) {
            t->activeDescendants--;
        }

        if (t->waitingJoinAll && t->activeDescendants == 0) {
            t->waitingJoinAll = false;
    80002434:	0a048623          	sb	zero,172(s1)
            t->joinAllSem->signal();
    80002438:	0b04b503          	ld	a0,176(s1)
    8000243c:	fffff097          	auipc	ra,0xfffff
    80002440:	5d8080e7          	jalr	1496(ra) # 80001a14 <_ZN4_sem6signalEv>
    for (_thread* t = parent; t != nullptr; t = t->parent) {
    80002444:	0a04b483          	ld	s1,160(s1)
    80002448:	02048463          	beqz	s1,80002470 <_ZN7_thread14notifyFinishedEv+0x58>
        if (t->activeDescendants > 0) {
    8000244c:	0a84a783          	lw	a5,168(s1)
    80002450:	00f05663          	blez	a5,8000245c <_ZN7_thread14notifyFinishedEv+0x44>
            t->activeDescendants--;
    80002454:	fff7879b          	addiw	a5,a5,-1
    80002458:	0af4a423          	sw	a5,168(s1)
        if (t->waitingJoinAll && t->activeDescendants == 0) {
    8000245c:	0ac4c783          	lbu	a5,172(s1)
    80002460:	fe0782e3          	beqz	a5,80002444 <_ZN7_thread14notifyFinishedEv+0x2c>
    80002464:	0a84a783          	lw	a5,168(s1)
    80002468:	fc079ee3          	bnez	a5,80002444 <_ZN7_thread14notifyFinishedEv+0x2c>
    8000246c:	fc9ff06f          	j	80002434 <_ZN7_thread14notifyFinishedEv+0x1c>
        }
    }
    80002470:	01813083          	ld	ra,24(sp)
    80002474:	01013403          	ld	s0,16(sp)
    80002478:	00813483          	ld	s1,8(sp)
    8000247c:	02010113          	addi	sp,sp,32
    80002480:	00008067          	ret

0000000080002484 <_ZN7_thread4exitEv>:
    if (running == nullptr) {
    80002484:	0000a517          	auipc	a0,0xa
    80002488:	acc53503          	ld	a0,-1332(a0) # 8000bf50 <_ZN7_thread7runningE>
    8000248c:	04050063          	beqz	a0,800024cc <_ZN7_thread4exitEv+0x48>
int _thread::exit() {
    80002490:	ff010113          	addi	sp,sp,-16
    80002494:	00113423          	sd	ra,8(sp)
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	01010413          	addi	s0,sp,16
    running->state = FINISHED;
    800024a0:	00400793          	li	a5,4
    800024a4:	08f52823          	sw	a5,144(a0)
    running->notifyFinished();
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	f70080e7          	jalr	-144(ra) # 80002418 <_ZN7_thread14notifyFinishedEv>
    dispatch();
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	d20080e7          	jalr	-736(ra) # 800021d0 <_ZN7_thread8dispatchEv>
    return 0;
    800024b8:	00000513          	li	a0,0
}
    800024bc:	00813083          	ld	ra,8(sp)
    800024c0:	00013403          	ld	s0,0(sp)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret
        return -1;
    800024cc:	fff00513          	li	a0,-1
}
    800024d0:	00008067          	ret

00000000800024d4 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800024d4:	fe010113          	addi	sp,sp,-32
    800024d8:	00113c23          	sd	ra,24(sp)
    800024dc:	00813823          	sd	s0,16(sp)
    800024e0:	00913423          	sd	s1,8(sp)
    800024e4:	01213023          	sd	s2,0(sp)
    800024e8:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800024ec:	00007517          	auipc	a0,0x7
    800024f0:	c4450513          	addi	a0,a0,-956 # 80009130 <CONSOLE_STATUS+0x120>
    800024f4:	00003097          	auipc	ra,0x3
    800024f8:	710080e7          	jalr	1808(ra) # 80005c04 <_Z11printStringPKc>
    int test = getc() - '0';
    800024fc:	fffff097          	auipc	ra,0xfffff
    80002500:	114080e7          	jalr	276(ra) # 80001610 <_Z4getcv>
    80002504:	00050913          	mv	s2,a0
    80002508:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000250c:	fffff097          	auipc	ra,0xfffff
    80002510:	104080e7          	jalr	260(ra) # 80001610 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80002514:	fcb9091b          	addiw	s2,s2,-53
    80002518:	00100793          	li	a5,1
    8000251c:	0327f463          	bgeu	a5,s2,80002544 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80002520:	00800793          	li	a5,8
    80002524:	1097e063          	bltu	a5,s1,80002624 <_Z8userMainv+0x150>
    80002528:	00249493          	slli	s1,s1,0x2
    8000252c:	00007717          	auipc	a4,0x7
    80002530:	e4470713          	addi	a4,a4,-444 # 80009370 <CONSOLE_STATUS+0x360>
    80002534:	00e484b3          	add	s1,s1,a4
    80002538:	0004a783          	lw	a5,0(s1)
    8000253c:	00e787b3          	add	a5,a5,a4
    80002540:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80002544:	00007517          	auipc	a0,0x7
    80002548:	c0c50513          	addi	a0,a0,-1012 # 80009150 <CONSOLE_STATUS+0x140>
    8000254c:	00003097          	auipc	ra,0x3
    80002550:	6b8080e7          	jalr	1720(ra) # 80005c04 <_Z11printStringPKc>
            printString("TEST 8 joinAll/addChild modifikacija\n");
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002554:	01813083          	ld	ra,24(sp)
    80002558:	01013403          	ld	s0,16(sp)
    8000255c:	00813483          	ld	s1,8(sp)
    80002560:	00013903          	ld	s2,0(sp)
    80002564:	02010113          	addi	sp,sp,32
    80002568:	00008067          	ret
            Threads_C_API_test();
    8000256c:	00003097          	auipc	ra,0x3
    80002570:	d10080e7          	jalr	-752(ra) # 8000527c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002574:	00007517          	auipc	a0,0x7
    80002578:	c0c50513          	addi	a0,a0,-1012 # 80009180 <CONSOLE_STATUS+0x170>
    8000257c:	00003097          	auipc	ra,0x3
    80002580:	688080e7          	jalr	1672(ra) # 80005c04 <_Z11printStringPKc>
            break;
    80002584:	fd1ff06f          	j	80002554 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002588:	00002097          	auipc	ra,0x2
    8000258c:	bd4080e7          	jalr	-1068(ra) # 8000415c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002590:	00007517          	auipc	a0,0x7
    80002594:	c3050513          	addi	a0,a0,-976 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80002598:	00003097          	auipc	ra,0x3
    8000259c:	66c080e7          	jalr	1644(ra) # 80005c04 <_Z11printStringPKc>
            break;
    800025a0:	fb5ff06f          	j	80002554 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800025a4:	00001097          	auipc	ra,0x1
    800025a8:	40c080e7          	jalr	1036(ra) # 800039b0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800025ac:	00007517          	auipc	a0,0x7
    800025b0:	c5450513          	addi	a0,a0,-940 # 80009200 <CONSOLE_STATUS+0x1f0>
    800025b4:	00003097          	auipc	ra,0x3
    800025b8:	650080e7          	jalr	1616(ra) # 80005c04 <_Z11printStringPKc>
            break;
    800025bc:	f99ff06f          	j	80002554 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800025c0:	00003097          	auipc	ra,0x3
    800025c4:	000080e7          	jalr	ra # 800055c0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800025c8:	00007517          	auipc	a0,0x7
    800025cc:	c8850513          	addi	a0,a0,-888 # 80009250 <CONSOLE_STATUS+0x240>
    800025d0:	00003097          	auipc	ra,0x3
    800025d4:	634080e7          	jalr	1588(ra) # 80005c04 <_Z11printStringPKc>
            break;
    800025d8:	f7dff06f          	j	80002554 <_Z8userMainv+0x80>
            System_Mode_test();
    800025dc:	00004097          	auipc	ra,0x4
    800025e0:	308080e7          	jalr	776(ra) # 800068e4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800025e4:	00007517          	auipc	a0,0x7
    800025e8:	cc450513          	addi	a0,a0,-828 # 800092a8 <CONSOLE_STATUS+0x298>
    800025ec:	00003097          	auipc	ra,0x3
    800025f0:	618080e7          	jalr	1560(ra) # 80005c04 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800025f4:	00007517          	auipc	a0,0x7
    800025f8:	cd450513          	addi	a0,a0,-812 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800025fc:	00003097          	auipc	ra,0x3
    80002600:	608080e7          	jalr	1544(ra) # 80005c04 <_Z11printStringPKc>
            break;
    80002604:	f51ff06f          	j	80002554 <_Z8userMainv+0x80>
            mod();
    80002608:	00001097          	auipc	ra,0x1
    8000260c:	ac8080e7          	jalr	-1336(ra) # 800030d0 <_Z3modv>
            printString("TEST 8 joinAll/addChild modifikacija\n");
    80002610:	00007517          	auipc	a0,0x7
    80002614:	d1050513          	addi	a0,a0,-752 # 80009320 <CONSOLE_STATUS+0x310>
    80002618:	00003097          	auipc	ra,0x3
    8000261c:	5ec080e7          	jalr	1516(ra) # 80005c04 <_Z11printStringPKc>
            break;
    80002620:	f35ff06f          	j	80002554 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80002624:	00007517          	auipc	a0,0x7
    80002628:	d2450513          	addi	a0,a0,-732 # 80009348 <CONSOLE_STATUS+0x338>
    8000262c:	00003097          	auipc	ra,0x3
    80002630:	5d8080e7          	jalr	1496(ra) # 80005c04 <_Z11printStringPKc>
    80002634:	f21ff06f          	j	80002554 <_Z8userMainv+0x80>

0000000080002638 <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    80002638:	ff010113          	addi	sp,sp,-16
    8000263c:	00813423          	sd	s0,8(sp)
    80002640:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    80002644:	04050063          	beqz	a0,80002684 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    80002648:	09052783          	lw	a5,144(a0)
    8000264c:	ffd7879b          	addiw	a5,a5,-3
    80002650:	00100713          	li	a4,1
    80002654:	02f77863          	bgeu	a4,a5,80002684 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    80002658:	00100793          	li	a5,1
    8000265c:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    80002660:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    80002664:	0000a797          	auipc	a5,0xa
    80002668:	8f47b783          	ld	a5,-1804(a5) # 8000bf58 <_ZN9Scheduler4headE>
    8000266c:	02078263          	beqz	a5,80002690 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002670:	0000a797          	auipc	a5,0xa
    80002674:	8e878793          	addi	a5,a5,-1816 # 8000bf58 <_ZN9Scheduler4headE>
    80002678:	0087b703          	ld	a4,8(a5)
    8000267c:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    80002680:	00a7b423          	sd	a0,8(a5)
    }
}
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret
        head = thread;
    80002690:	0000a797          	auipc	a5,0xa
    80002694:	8c878793          	addi	a5,a5,-1848 # 8000bf58 <_ZN9Scheduler4headE>
    80002698:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    8000269c:	00a7b423          	sd	a0,8(a5)
    800026a0:	fe5ff06f          	j	80002684 <_ZN9Scheduler3putEP7_thread+0x4c>

00000000800026a4 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    800026a4:	ff010113          	addi	sp,sp,-16
    800026a8:	00813423          	sd	s0,8(sp)
    800026ac:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    800026b0:	0000a517          	auipc	a0,0xa
    800026b4:	8a853503          	ld	a0,-1880(a0) # 8000bf58 <_ZN9Scheduler4headE>
    800026b8:	00050c63          	beqz	a0,800026d0 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    800026bc:	09853783          	ld	a5,152(a0)
    800026c0:	0000a717          	auipc	a4,0xa
    800026c4:	88f73c23          	sd	a5,-1896(a4) # 8000bf58 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    800026c8:	00078a63          	beqz	a5,800026dc <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    800026cc:	08053c23          	sd	zero,152(a0)

    return thread;
}
    800026d0:	00813403          	ld	s0,8(sp)
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret
        tail = nullptr;
    800026dc:	0000a797          	auipc	a5,0xa
    800026e0:	8807b223          	sd	zero,-1916(a5) # 8000bf60 <_ZN9Scheduler4tailE>
    800026e4:	fe9ff06f          	j	800026cc <_ZN9Scheduler3getEv+0x28>

00000000800026e8 <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00813423          	sd	s0,8(sp)
    800026f0:	01010413          	addi	s0,sp,16
    return head == nullptr;
    800026f4:	0000a517          	auipc	a0,0xa
    800026f8:	86453503          	ld	a0,-1948(a0) # 8000bf58 <_ZN9Scheduler4headE>
    800026fc:	00153513          	seqz	a0,a0
    80002700:	00813403          	ld	s0,8(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00113423          	sd	ra,8(sp)
    80002714:	00813023          	sd	s0,0(sp)
    80002718:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	adc080e7          	jalr	-1316(ra) # 800011f8 <_Z9mem_allocm>
}
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_Znam>:

void* operator new[](size_t size) {
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002744:	fffff097          	auipc	ra,0xfffff
    80002748:	ab4080e7          	jalr	-1356(ra) # 800011f8 <_Z9mem_allocm>
}
    8000274c:	00813083          	ld	ra,8(sp)
    80002750:	00013403          	ld	s0,0(sp)
    80002754:	01010113          	addi	sp,sp,16
    80002758:	00008067          	ret

000000008000275c <_ZdlPv>:

void operator delete(void* ptr) {
    8000275c:	ff010113          	addi	sp,sp,-16
    80002760:	00113423          	sd	ra,8(sp)
    80002764:	00813023          	sd	s0,0(sp)
    80002768:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000276c:	fffff097          	auipc	ra,0xfffff
    80002770:	ad8080e7          	jalr	-1320(ra) # 80001244 <_Z8mem_freePv>
}
    80002774:	00813083          	ld	ra,8(sp)
    80002778:	00013403          	ld	s0,0(sp)
    8000277c:	01010113          	addi	sp,sp,16
    80002780:	00008067          	ret

0000000080002784 <_ZdaPv>:

void operator delete[](void* ptr) {
    80002784:	ff010113          	addi	sp,sp,-16
    80002788:	00113423          	sd	ra,8(sp)
    8000278c:	00813023          	sd	s0,0(sp)
    80002790:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002794:	fffff097          	auipc	ra,0xfffff
    80002798:	ab0080e7          	jalr	-1360(ra) # 80001244 <_Z8mem_freePv>
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00113423          	sd	ra,8(sp)
    800027b4:	00813023          	sd	s0,0(sp)
    800027b8:	01010413          	addi	s0,sp,16
    userMain();
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	d18080e7          	jalr	-744(ra) # 800024d4 <_Z8userMainv>
    userMainFinished = true;
    800027c4:	00100793          	li	a5,1
    800027c8:	00009717          	auipc	a4,0x9
    800027cc:	7af70023          	sb	a5,1952(a4) # 8000bf68 <_ZL16userMainFinished>
    thread_exit();
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	b78080e7          	jalr	-1160(ra) # 80001348 <_Z11thread_exitv>
}
    800027d8:	00813083          	ld	ra,8(sp)
    800027dc:	00013403          	ld	s0,0(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <main>:

int main() {
    800027e8:	f2010113          	addi	sp,sp,-224
    800027ec:	0c113c23          	sd	ra,216(sp)
    800027f0:	0c813823          	sd	s0,208(sp)
    800027f4:	0c913423          	sd	s1,200(sp)
    800027f8:	0e010413          	addi	s0,sp,224
    Riscv::w_stvec((uint64)&supervisorTrap);
    800027fc:	00009797          	auipc	a5,0x9
    80002800:	6f47b783          	ld	a5,1780(a5) # 8000bef0 <_GLOBAL_OFFSET_TABLE_+0x20>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    80002804:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    80002808:	00200793          	li	a5,2
    8000280c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    80002810:	00000693          	li	a3,0
    80002814:	00000613          	li	a2,0
    80002818:	00000593          	li	a1,0
    8000281c:	f2840493          	addi	s1,s0,-216
    80002820:	00048513          	mv	a0,s1
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	7d8080e7          	jalr	2008(ra) # 80001ffc <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    8000282c:	00200593          	li	a1,2
    80002830:	00048513          	mv	a0,s1
    80002834:	00000097          	auipc	ra,0x0
    80002838:	ad0080e7          	jalr	-1328(ra) # 80002304 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    8000283c:	00009797          	auipc	a5,0x9
    80002840:	6ac7b783          	ld	a5,1708(a5) # 8000bee8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002844:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    80002848:	f2043023          	sd	zero,-224(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    8000284c:	00000613          	li	a2,0
    80002850:	00000597          	auipc	a1,0x0
    80002854:	f5c58593          	addi	a1,a1,-164 # 800027ac <_ZL15userMainWrapperPv>
    80002858:	f2040513          	addi	a0,s0,-224
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	a28080e7          	jalr	-1496(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    80002864:	00054663          	bltz	a0,80002870 <main+0x88>
    80002868:	f2043783          	ld	a5,-224(s0)
    8000286c:	02079063          	bnez	a5,8000288c <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    80002870:	00100737          	lui	a4,0x100
    80002874:	000057b7          	lui	a5,0x5
    80002878:	5557879b          	addiw	a5,a5,1365
    8000287c:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    80002880:	02c0006f          	j	800028ac <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    80002884:	fffff097          	auipc	ra,0xfffff
    80002888:	b04080e7          	jalr	-1276(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    8000288c:	00009797          	auipc	a5,0x9
    80002890:	6dc7c783          	lbu	a5,1756(a5) # 8000bf68 <_ZL16userMainFinished>
    80002894:	fe0788e3          	beqz	a5,80002884 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002898:	00100737          	lui	a4,0x100
    8000289c:	000057b7          	lui	a5,0x5
    800028a0:	5557879b          	addiw	a5,a5,1365
    800028a4:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    800028a8:	00000513          	li	a0,0
    800028ac:	0d813083          	ld	ra,216(sp)
    800028b0:	0d013403          	ld	s0,208(sp)
    800028b4:	0c813483          	ld	s1,200(sp)
    800028b8:	0e010113          	addi	sp,sp,224
    800028bc:	00008067          	ret

00000000800028c0 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    800028c0:	ff010113          	addi	sp,sp,-16
    800028c4:	00813423          	sd	s0,8(sp)
    800028c8:	01010413          	addi	s0,sp,16
}
    800028cc:	00813403          	ld	s0,8(sp)
    800028d0:	01010113          	addi	sp,sp,16
    800028d4:	00008067          	ret

00000000800028d8 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    800028d8:	02050863          	beqz	a0,80002908 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    800028dc:	ff010113          	addi	sp,sp,-16
    800028e0:	00113423          	sd	ra,8(sp)
    800028e4:	00813023          	sd	s0,0(sp)
    800028e8:	01010413          	addi	s0,sp,16
        t->run();
    800028ec:	00053783          	ld	a5,0(a0)
    800028f0:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    800028f4:	000780e7          	jalr	a5
    }
}
    800028f8:	00813083          	ld	ra,8(sp)
    800028fc:	00013403          	ld	s0,0(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret
    80002908:	00008067          	ret

000000008000290c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00113423          	sd	ra,8(sp)
    80002914:	00813023          	sd	s0,0(sp)
    80002918:	01010413          	addi	s0,sp,16
}
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	e40080e7          	jalr	-448(ra) # 8000275c <_ZdlPv>
    80002924:	00813083          	ld	ra,8(sp)
    80002928:	00013403          	ld	s0,0(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002934:	00009797          	auipc	a5,0x9
    80002938:	36c78793          	addi	a5,a5,876 # 8000bca0 <_ZTV9Semaphore+0x10>
    8000293c:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    80002940:	00853503          	ld	a0,8(a0)
    80002944:	02050663          	beqz	a0,80002970 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80002948:	ff010113          	addi	sp,sp,-16
    8000294c:	00113423          	sd	ra,8(sp)
    80002950:	00813023          	sd	s0,0(sp)
    80002954:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	b30080e7          	jalr	-1232(ra) # 80001488 <_Z9sem_closeP4_sem>
    }
}
    80002960:	00813083          	ld	ra,8(sp)
    80002964:	00013403          	ld	s0,0(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret
    80002970:	00008067          	ret

0000000080002974 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002974:	fe010113          	addi	sp,sp,-32
    80002978:	00113c23          	sd	ra,24(sp)
    8000297c:	00813823          	sd	s0,16(sp)
    80002980:	00913423          	sd	s1,8(sp)
    80002984:	02010413          	addi	s0,sp,32
    80002988:	00050493          	mv	s1,a0
}
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	fa8080e7          	jalr	-88(ra) # 80002934 <_ZN9SemaphoreD1Ev>
    80002994:	00048513          	mv	a0,s1
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	dc4080e7          	jalr	-572(ra) # 8000275c <_ZdlPv>
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	01013403          	ld	s0,16(sp)
    800029a8:	00813483          	ld	s1,8(sp)
    800029ac:	02010113          	addi	sp,sp,32
    800029b0:	00008067          	ret

00000000800029b4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00813423          	sd	s0,8(sp)
    800029bc:	01010413          	addi	s0,sp,16
    800029c0:	00009797          	auipc	a5,0x9
    800029c4:	2b878793          	addi	a5,a5,696 # 8000bc78 <_ZTV6Thread+0x10>
    800029c8:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800029cc:	00053423          	sd	zero,8(a0)
    this->body = body;
    800029d0:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800029d4:	00c53c23          	sd	a2,24(a0)
}
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00813423          	sd	s0,8(sp)
    800029ec:	01010413          	addi	s0,sp,16
    800029f0:	00009797          	auipc	a5,0x9
    800029f4:	28878793          	addi	a5,a5,648 # 8000bc78 <_ZTV6Thread+0x10>
    800029f8:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800029fc:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80002a00:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002a04:	00053c23          	sd	zero,24(a0)
}
    80002a08:	00813403          	ld	s0,8(sp)
    80002a0c:	01010113          	addi	sp,sp,16
    80002a10:	00008067          	ret

0000000080002a14 <_ZN6Thread5startEv>:
int Thread::start() {
    80002a14:	ff010113          	addi	sp,sp,-16
    80002a18:	00113423          	sd	ra,8(sp)
    80002a1c:	00813023          	sd	s0,0(sp)
    80002a20:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80002a24:	01053583          	ld	a1,16(a0)
    80002a28:	02058263          	beqz	a1,80002a4c <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80002a2c:	01853603          	ld	a2,24(a0)
    80002a30:	00850513          	addi	a0,a0,8
    80002a34:	fffff097          	auipc	ra,0xfffff
    80002a38:	850080e7          	jalr	-1968(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002a3c:	00813083          	ld	ra,8(sp)
    80002a40:	00013403          	ld	s0,0(sp)
    80002a44:	01010113          	addi	sp,sp,16
    80002a48:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    80002a4c:	00050613          	mv	a2,a0
    80002a50:	00000597          	auipc	a1,0x0
    80002a54:	e8858593          	addi	a1,a1,-376 # 800028d8 <_ZN6Thread13threadWrapperEPv>
    80002a58:	00850513          	addi	a0,a0,8
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	828080e7          	jalr	-2008(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    80002a64:	fd9ff06f          	j	80002a3c <_ZN6Thread5startEv+0x28>

0000000080002a68 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00113423          	sd	ra,8(sp)
    80002a70:	00813023          	sd	s0,0(sp)
    80002a74:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	910080e7          	jalr	-1776(ra) # 80001388 <_Z15thread_dispatchv>
}
    80002a80:	00813083          	ld	ra,8(sp)
    80002a84:	00013403          	ld	s0,0(sp)
    80002a88:	01010113          	addi	sp,sp,16
    80002a8c:	00008067          	ret

0000000080002a90 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002a90:	ff010113          	addi	sp,sp,-16
    80002a94:	00113423          	sd	ra,8(sp)
    80002a98:	00813023          	sd	s0,0(sp)
    80002a9c:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002aa0:	fffff097          	auipc	ra,0xfffff
    80002aa4:	b30080e7          	jalr	-1232(ra) # 800015d0 <_Z10time_sleepm>
}
    80002aa8:	00813083          	ld	ra,8(sp)
    80002aac:	00013403          	ld	s0,0(sp)
    80002ab0:	01010113          	addi	sp,sp,16
    80002ab4:	00008067          	ret

0000000080002ab8 <_ZN6Thread8addChildEPS_>:
    if (child == nullptr) {
    80002ab8:	02058863          	beqz	a1,80002ae8 <_ZN6Thread8addChildEPS_+0x30>
int Thread::addChild(Thread* child) {
    80002abc:	ff010113          	addi	sp,sp,-16
    80002ac0:	00113423          	sd	ra,8(sp)
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    return thread_addChild(child->myHandle);
    80002acc:	0085b503          	ld	a0,8(a1)
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	8f4080e7          	jalr	-1804(ra) # 800013c4 <_Z15thread_addChildP7_thread>
}
    80002ad8:	00813083          	ld	ra,8(sp)
    80002adc:	00013403          	ld	s0,0(sp)
    80002ae0:	01010113          	addi	sp,sp,16
    80002ae4:	00008067          	ret
        return -1;
    80002ae8:	fff00513          	li	a0,-1
}
    80002aec:	00008067          	ret

0000000080002af0 <_ZN6Thread7joinAllEv>:
int Thread::joinAll() {
    80002af0:	ff010113          	addi	sp,sp,-16
    80002af4:	00113423          	sd	ra,8(sp)
    80002af8:	00813023          	sd	s0,0(sp)
    80002afc:	01010413          	addi	s0,sp,16
    return thread_joinAll();
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	904080e7          	jalr	-1788(ra) # 80001404 <_Z14thread_joinAllv>
}
    80002b08:	00813083          	ld	ra,8(sp)
    80002b0c:	00013403          	ld	s0,0(sp)
    80002b10:	01010113          	addi	sp,sp,16
    80002b14:	00008067          	ret

0000000080002b18 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002b18:	ff010113          	addi	sp,sp,-16
    80002b1c:	00113423          	sd	ra,8(sp)
    80002b20:	00813023          	sd	s0,0(sp)
    80002b24:	01010413          	addi	s0,sp,16
    80002b28:	00009797          	auipc	a5,0x9
    80002b2c:	17878793          	addi	a5,a5,376 # 8000bca0 <_ZTV9Semaphore+0x10>
    80002b30:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002b34:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002b38:	00850513          	addi	a0,a0,8
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	908080e7          	jalr	-1784(ra) # 80001444 <_Z8sem_openPP4_semj>
}
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret

0000000080002b54 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00113423          	sd	ra,8(sp)
    80002b5c:	00813023          	sd	s0,0(sp)
    80002b60:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002b64:	00853503          	ld	a0,8(a0)
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	960080e7          	jalr	-1696(ra) # 800014c8 <_Z8sem_waitP4_sem>
}
    80002b70:	00813083          	ld	ra,8(sp)
    80002b74:	00013403          	ld	s0,0(sp)
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00008067          	ret

0000000080002b80 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00113423          	sd	ra,8(sp)
    80002b88:	00813023          	sd	s0,0(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002b90:	00853503          	ld	a0,8(a0)
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	974080e7          	jalr	-1676(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80002b9c:	00813083          	ld	ra,8(sp)
    80002ba0:	00013403          	ld	s0,0(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002bac:	fe010113          	addi	sp,sp,-32
    80002bb0:	00113c23          	sd	ra,24(sp)
    80002bb4:	00813823          	sd	s0,16(sp)
    80002bb8:	00913423          	sd	s1,8(sp)
    80002bbc:	01213023          	sd	s2,0(sp)
    80002bc0:	02010413          	addi	s0,sp,32
    80002bc4:	00050493          	mv	s1,a0
    80002bc8:	00058913          	mv	s2,a1
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	e18080e7          	jalr	-488(ra) # 800029e4 <_ZN6ThreadC1Ev>
    80002bd4:	00009797          	auipc	a5,0x9
    80002bd8:	07478793          	addi	a5,a5,116 # 8000bc48 <_ZTV14PeriodicThread+0x10>
    80002bdc:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002be0:	0324b023          	sd	s2,32(s1)
}
    80002be4:	01813083          	ld	ra,24(sp)
    80002be8:	01013403          	ld	s0,16(sp)
    80002bec:	00813483          	ld	s1,8(sp)
    80002bf0:	00013903          	ld	s2,0(sp)
    80002bf4:	02010113          	addi	sp,sp,32
    80002bf8:	00008067          	ret

0000000080002bfc <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002bfc:	ff010113          	addi	sp,sp,-16
    80002c00:	00813423          	sd	s0,8(sp)
    80002c04:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002c08:	00813403          	ld	s0,8(sp)
    80002c0c:	01010113          	addi	sp,sp,16
    80002c10:	00008067          	ret

0000000080002c14 <_ZN7Console4getcEv>:

char Console::getc() {
    80002c14:	ff010113          	addi	sp,sp,-16
    80002c18:	00113423          	sd	ra,8(sp)
    80002c1c:	00813023          	sd	s0,0(sp)
    80002c20:	01010413          	addi	s0,sp,16
    return ::getc();
    80002c24:	fffff097          	auipc	ra,0xfffff
    80002c28:	9ec080e7          	jalr	-1556(ra) # 80001610 <_Z4getcv>
}
    80002c2c:	00813083          	ld	ra,8(sp)
    80002c30:	00013403          	ld	s0,0(sp)
    80002c34:	01010113          	addi	sp,sp,16
    80002c38:	00008067          	ret

0000000080002c3c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00113423          	sd	ra,8(sp)
    80002c44:	00813023          	sd	s0,0(sp)
    80002c48:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002c4c:	fffff097          	auipc	ra,0xfffff
    80002c50:	a04080e7          	jalr	-1532(ra) # 80001650 <_Z4putcc>
    80002c54:	00813083          	ld	ra,8(sp)
    80002c58:	00013403          	ld	s0,0(sp)
    80002c5c:	01010113          	addi	sp,sp,16
    80002c60:	00008067          	ret

0000000080002c64 <_ZN6Thread3runEv>:
    int joinAll();

protected:
    Thread();

    virtual void run() {}
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00813423          	sd	s0,8(sp)
    80002c6c:	01010413          	addi	s0,sp,16
    80002c70:	00813403          	ld	s0,8(sp)
    80002c74:	01010113          	addi	sp,sp,16
    80002c78:	00008067          	ret

0000000080002c7c <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002c7c:	ff010113          	addi	sp,sp,-16
    80002c80:	00813423          	sd	s0,8(sp)
    80002c84:	01010413          	addi	s0,sp,16
    80002c88:	00813403          	ld	s0,8(sp)
    80002c8c:	01010113          	addi	sp,sp,16
    80002c90:	00008067          	ret

0000000080002c94 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002c94:	ff010113          	addi	sp,sp,-16
    80002c98:	00813423          	sd	s0,8(sp)
    80002c9c:	01010413          	addi	s0,sp,16
    80002ca0:	00009797          	auipc	a5,0x9
    80002ca4:	fa878793          	addi	a5,a5,-88 # 8000bc48 <_ZTV14PeriodicThread+0x10>
    80002ca8:	00f53023          	sd	a5,0(a0)
    80002cac:	00813403          	ld	s0,8(sp)
    80002cb0:	01010113          	addi	sp,sp,16
    80002cb4:	00008067          	ret

0000000080002cb8 <_ZN14PeriodicThreadD0Ev>:
    80002cb8:	ff010113          	addi	sp,sp,-16
    80002cbc:	00113423          	sd	ra,8(sp)
    80002cc0:	00813023          	sd	s0,0(sp)
    80002cc4:	01010413          	addi	s0,sp,16
    80002cc8:	00009797          	auipc	a5,0x9
    80002ccc:	f8078793          	addi	a5,a5,-128 # 8000bc48 <_ZTV14PeriodicThread+0x10>
    80002cd0:	00f53023          	sd	a5,0(a0)
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	a88080e7          	jalr	-1400(ra) # 8000275c <_ZdlPv>
    80002cdc:	00813083          	ld	ra,8(sp)
    80002ce0:	00013403          	ld	s0,0(sp)
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00008067          	ret

0000000080002cec <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002cec:	ff010113          	addi	sp,sp,-16
    80002cf0:	00813423          	sd	s0,8(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    80002cf8:	00053023          	sd	zero,0(a0)
    80002cfc:	00050423          	sb	zero,8(a0)
    80002d00:	00813403          	ld	s0,8(sp)
    80002d04:	01010113          	addi	sp,sp,16
    80002d08:	00008067          	ret

0000000080002d0c <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002d0c:	00100793          	li	a5,1
    80002d10:	00f50463          	beq	a0,a5,80002d18 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002d14:	00008067          	ret
    80002d18:	000107b7          	lui	a5,0x10
    80002d1c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002d20:	fef59ae3          	bne	a1,a5,80002d14 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002d24:	ff010113          	addi	sp,sp,-16
    80002d28:	00113423          	sd	ra,8(sp)
    80002d2c:	00813023          	sd	s0,0(sp)
    80002d30:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002d34:	00009517          	auipc	a0,0x9
    80002d38:	23c50513          	addi	a0,a0,572 # 8000bf70 <_ZN15MemoryAllocator8instanceE>
    80002d3c:	00000097          	auipc	ra,0x0
    80002d40:	fb0080e7          	jalr	-80(ra) # 80002cec <_ZN15MemoryAllocatorC1Ev>
    80002d44:	00813083          	ld	ra,8(sp)
    80002d48:	00013403          	ld	s0,0(sp)
    80002d4c:	01010113          	addi	sp,sp,16
    80002d50:	00008067          	ret

0000000080002d54 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002d54:	ff010113          	addi	sp,sp,-16
    80002d58:	00813423          	sd	s0,8(sp)
    80002d5c:	01010413          	addi	s0,sp,16
}
    80002d60:	00009517          	auipc	a0,0x9
    80002d64:	21050513          	addi	a0,a0,528 # 8000bf70 <_ZN15MemoryAllocator8instanceE>
    80002d68:	00813403          	ld	s0,8(sp)
    80002d6c:	01010113          	addi	sp,sp,16
    80002d70:	00008067          	ret

0000000080002d74 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002d74:	ff010113          	addi	sp,sp,-16
    80002d78:	00813423          	sd	s0,8(sp)
    80002d7c:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002d80:	00854783          	lbu	a5,8(a0)
    80002d84:	04079263          	bnez	a5,80002dc8 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002d88:	00009797          	auipc	a5,0x9
    80002d8c:	1587b783          	ld	a5,344(a5) # 8000bee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002d90:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002d94:	00009797          	auipc	a5,0x9
    80002d98:	16c7b783          	ld	a5,364(a5) # 8000bf00 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002d9c:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002da0:	40e787b3          	sub	a5,a5,a4
    80002da4:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002da8:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002dac:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002db0:	00053783          	ld	a5,0(a0)
    80002db4:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002db8:	00053783          	ld	a5,0(a0)
    80002dbc:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002dc0:	00100793          	li	a5,1
    80002dc4:	00f50423          	sb	a5,8(a0)
}
    80002dc8:	00813403          	ld	s0,8(sp)
    80002dcc:	01010113          	addi	sp,sp,16
    80002dd0:	00008067          	ret

0000000080002dd4 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002dd4:	fe010113          	addi	sp,sp,-32
    80002dd8:	00113c23          	sd	ra,24(sp)
    80002ddc:	00813823          	sd	s0,16(sp)
    80002de0:	00913423          	sd	s1,8(sp)
    80002de4:	01213023          	sd	s2,0(sp)
    80002de8:	02010413          	addi	s0,sp,32
    80002dec:	00050913          	mv	s2,a0
    80002df0:	00058493          	mv	s1,a1
    init();
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	f80080e7          	jalr	-128(ra) # 80002d74 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002dfc:	0c048863          	beqz	s1,80002ecc <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002e00:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002e04:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002e08:	00050a63          	beqz	a0,80002e1c <_ZN15MemoryAllocator6mallocEm+0x48>
    80002e0c:	00053783          	ld	a5,0(a0)
    80002e10:	00b7f663          	bgeu	a5,a1,80002e1c <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002e14:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002e18:	ff1ff06f          	j	80002e08 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002e1c:	04050063          	beqz	a0,80002e5c <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002e20:	00053783          	ld	a5,0(a0)
    80002e24:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002e28:	00100713          	li	a4,1
    80002e2c:	04f76463          	bltu	a4,a5,80002e74 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002e30:	01053783          	ld	a5,16(a0)
    80002e34:	08078663          	beqz	a5,80002ec0 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002e38:	00853703          	ld	a4,8(a0)
    80002e3c:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002e40:	00853783          	ld	a5,8(a0)
    80002e44:	00078663          	beqz	a5,80002e50 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002e48:	01053703          	ld	a4,16(a0)
    80002e4c:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002e50:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002e54:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002e58:	04050513          	addi	a0,a0,64
}
    80002e5c:	01813083          	ld	ra,24(sp)
    80002e60:	01013403          	ld	s0,16(sp)
    80002e64:	00813483          	ld	s1,8(sp)
    80002e68:	00013903          	ld	s2,0(sp)
    80002e6c:	02010113          	addi	sp,sp,32
    80002e70:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002e74:	00659713          	slli	a4,a1,0x6
    80002e78:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002e7c:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002e80:	00853783          	ld	a5,8(a0)
    80002e84:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002e88:	01053783          	ld	a5,16(a0)
    80002e8c:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002e90:	02078463          	beqz	a5,80002eb8 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002e94:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002e98:	00853783          	ld	a5,8(a0)
    80002e9c:	00078463          	beqz	a5,80002ea4 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002ea0:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002ea4:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002ea8:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002eac:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002eb0:	04050513          	addi	a0,a0,64
    80002eb4:	fa9ff06f          	j	80002e5c <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002eb8:	00e93023          	sd	a4,0(s2)
    80002ebc:	fddff06f          	j	80002e98 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002ec0:	00853783          	ld	a5,8(a0)
    80002ec4:	00f93023          	sd	a5,0(s2)
    80002ec8:	f79ff06f          	j	80002e40 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002ecc:	00000513          	li	a0,0
    80002ed0:	f8dff06f          	j	80002e5c <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002ed4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002ed4:	ff010113          	addi	sp,sp,-16
    80002ed8:	00813423          	sd	s0,8(sp)
    80002edc:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002ee0:	00058e63          	beqz	a1,80002efc <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002ee4:	0085b783          	ld	a5,8(a1)
    80002ee8:	00078a63          	beqz	a5,80002efc <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002eec:	0005b683          	ld	a3,0(a1)
    80002ef0:	00669713          	slli	a4,a3,0x6
    80002ef4:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002ef8:	00e78863          	beq	a5,a4,80002f08 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002efc:	00813403          	ld	s0,8(sp)
    80002f00:	01010113          	addi	sp,sp,16
    80002f04:	00008067          	ret
        block->size += nextBlock->size;
    80002f08:	0007b703          	ld	a4,0(a5)
    80002f0c:	00e686b3          	add	a3,a3,a4
    80002f10:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002f14:	0087b703          	ld	a4,8(a5)
    80002f18:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002f1c:	00070463          	beqz	a4,80002f24 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002f20:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002f24:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002f28:	0007b823          	sd	zero,16(a5)
    80002f2c:	fd1ff06f          	j	80002efc <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002f30 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002f30:	fd010113          	addi	sp,sp,-48
    80002f34:	02113423          	sd	ra,40(sp)
    80002f38:	02813023          	sd	s0,32(sp)
    80002f3c:	00913c23          	sd	s1,24(sp)
    80002f40:	01213823          	sd	s2,16(sp)
    80002f44:	01313423          	sd	s3,8(sp)
    80002f48:	03010413          	addi	s0,sp,48
    80002f4c:	00050993          	mv	s3,a0
    80002f50:	00058913          	mv	s2,a1
    init();
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	e20080e7          	jalr	-480(ra) # 80002d74 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002f5c:	0e090863          	beqz	s2,8000304c <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002f60:	00009797          	auipc	a5,0x9
    80002f64:	f807b783          	ld	a5,-128(a5) # 8000bee0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002f68:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002f6c:	00009797          	auipc	a5,0x9
    80002f70:	f947b783          	ld	a5,-108(a5) # 8000bf00 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002f74:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002f78:	04068793          	addi	a5,a3,64
    80002f7c:	0cf96c63          	bltu	s2,a5,80003054 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002f80:	0cc97e63          	bgeu	s2,a2,8000305c <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002f84:	40d907b3          	sub	a5,s2,a3
    80002f88:	03f7f793          	andi	a5,a5,63
    80002f8c:	0c079c63          	bnez	a5,80003064 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002f90:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002f94:	fc093783          	ld	a5,-64(s2)
    80002f98:	00100713          	li	a4,1
    80002f9c:	0cf77863          	bgeu	a4,a5,8000306c <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002fa0:	00058713          	mv	a4,a1
    80002fa4:	0cd5e863          	bltu	a1,a3,80003074 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002fa8:	00679793          	slli	a5,a5,0x6
    80002fac:	00f586b3          	add	a3,a1,a5
    80002fb0:	0cd66663          	bltu	a2,a3,8000307c <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002fb4:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002fb8:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002fbc:	00078a63          	beqz	a5,80002fd0 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002fc0:	00e7f863          	bgeu	a5,a4,80002fd0 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002fc4:	00078493          	mv	s1,a5
        current = current->next;
    80002fc8:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002fcc:	ff1ff06f          	j	80002fbc <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002fd0:	00048a63          	beqz	s1,80002fe4 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002fd4:	0004b603          	ld	a2,0(s1)
    80002fd8:	00661613          	slli	a2,a2,0x6
    80002fdc:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002fe0:	0ac76263          	bltu	a4,a2,80003084 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002fe4:	00078463          	beqz	a5,80002fec <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002fe8:	0ad7e263          	bltu	a5,a3,8000308c <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002fec:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002ff0:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002ff4:	04048863          	beqz	s1,80003044 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002ff8:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002ffc:	00078463          	beqz	a5,80003004 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80003000:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80003004:	00098513          	mv	a0,s3
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	ecc080e7          	jalr	-308(ra) # 80002ed4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80003010:	08048263          	beqz	s1,80003094 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80003014:	00048593          	mv	a1,s1
    80003018:	00098513          	mv	a0,s3
    8000301c:	00000097          	auipc	ra,0x0
    80003020:	eb8080e7          	jalr	-328(ra) # 80002ed4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80003024:	00000513          	li	a0,0
}
    80003028:	02813083          	ld	ra,40(sp)
    8000302c:	02013403          	ld	s0,32(sp)
    80003030:	01813483          	ld	s1,24(sp)
    80003034:	01013903          	ld	s2,16(sp)
    80003038:	00813983          	ld	s3,8(sp)
    8000303c:	03010113          	addi	sp,sp,48
    80003040:	00008067          	ret
        freeHead = block;
    80003044:	00b9b023          	sd	a1,0(s3)
    80003048:	fb5ff06f          	j	80002ffc <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    8000304c:	fff00513          	li	a0,-1
    80003050:	fd9ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003054:	fff00513          	li	a0,-1
    80003058:	fd1ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
    8000305c:	fff00513          	li	a0,-1
    80003060:	fc9ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003064:	fff00513          	li	a0,-1
    80003068:	fc1ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    8000306c:	fff00513          	li	a0,-1
    80003070:	fb9ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003074:	fff00513          	li	a0,-1
    80003078:	fb1ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    8000307c:	fff00513          	li	a0,-1
    80003080:	fa9ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003084:	fff00513          	li	a0,-1
    80003088:	fa1ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    8000308c:	fff00513          	li	a0,-1
    80003090:	f99ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80003094:	00000513          	li	a0,0
    80003098:	f91ff06f          	j	80003028 <_ZN15MemoryAllocator4freeEPv+0xf8>

000000008000309c <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    8000309c:	ff010113          	addi	sp,sp,-16
    800030a0:	00113423          	sd	ra,8(sp)
    800030a4:	00813023          	sd	s0,0(sp)
    800030a8:	01010413          	addi	s0,sp,16
    800030ac:	000105b7          	lui	a1,0x10
    800030b0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800030b4:	00100513          	li	a0,1
    800030b8:	00000097          	auipc	ra,0x0
    800030bc:	c54080e7          	jalr	-940(ra) # 80002d0c <_Z41__static_initialization_and_destruction_0ii>
    800030c0:	00813083          	ld	ra,8(sp)
    800030c4:	00013403          	ld	s0,0(sp)
    800030c8:	01010113          	addi	sp,sp,16
    800030cc:	00008067          	ret

00000000800030d0 <_Z3modv>:

        printString("A zavrsava\n");
    }
};

void mod() {
    800030d0:	fe010113          	addi	sp,sp,-32
    800030d4:	00113c23          	sd	ra,24(sp)
    800030d8:	00813823          	sd	s0,16(sp)
    800030dc:	00913423          	sd	s1,8(sp)
    800030e0:	01213023          	sd	s2,0(sp)
    800030e4:	02010413          	addi	s0,sp,32
    printString("MOD TEST: addChild + joinAll\n");
    800030e8:	00006517          	auipc	a0,0x6
    800030ec:	3a850513          	addi	a0,a0,936 # 80009490 <CONSOLE_STATUS+0x480>
    800030f0:	00003097          	auipc	ra,0x3
    800030f4:	b14080e7          	jalr	-1260(ra) # 80005c04 <_Z11printStringPKc>

    AThread* a = new AThread();
    800030f8:	02000513          	li	a0,32
    800030fc:	fffff097          	auipc	ra,0xfffff
    80003100:	610080e7          	jalr	1552(ra) # 8000270c <_Znwm>
    80003104:	00050913          	mv	s2,a0
    80003108:	00053023          	sd	zero,0(a0)
    8000310c:	00053423          	sd	zero,8(a0)
    80003110:	00053823          	sd	zero,16(a0)
    80003114:	00053c23          	sd	zero,24(a0)
class AThread : public Thread {
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	8cc080e7          	jalr	-1844(ra) # 800029e4 <_ZN6ThreadC1Ev>
    80003120:	00009797          	auipc	a5,0x9
    80003124:	bf078793          	addi	a5,a5,-1040 # 8000bd10 <_ZTV7AThread+0x10>
    80003128:	00f93023          	sd	a5,0(s2)

    a->start();
    8000312c:	00090513          	mv	a0,s2
    80003130:	00000097          	auipc	ra,0x0
    80003134:	8e4080e7          	jalr	-1820(ra) # 80002a14 <_ZN6Thread5startEv>

    for (int i = 0; i < 30; i++) {
    80003138:	00000493          	li	s1,0
    8000313c:	0100006f          	j	8000314c <_Z3modv+0x7c>
        Thread::dispatch();
    80003140:	00000097          	auipc	ra,0x0
    80003144:	928080e7          	jalr	-1752(ra) # 80002a68 <_ZN6Thread8dispatchEv>
    for (int i = 0; i < 30; i++) {
    80003148:	0014849b          	addiw	s1,s1,1
    8000314c:	01d00793          	li	a5,29
    80003150:	fe97d8e3          	bge	a5,s1,80003140 <_Z3modv+0x70>
    }

    printString("mod() zavrsava\n");
    80003154:	00006517          	auipc	a0,0x6
    80003158:	35c50513          	addi	a0,a0,860 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000315c:	00003097          	auipc	ra,0x3
    80003160:	aa8080e7          	jalr	-1368(ra) # 80005c04 <_Z11printStringPKc>

    delete a;
    80003164:	00090a63          	beqz	s2,80003178 <_Z3modv+0xa8>
    80003168:	00093783          	ld	a5,0(s2)
    8000316c:	0087b783          	ld	a5,8(a5)
    80003170:	00090513          	mv	a0,s2
    80003174:	000780e7          	jalr	a5
    80003178:	01813083          	ld	ra,24(sp)
    8000317c:	01013403          	ld	s0,16(sp)
    80003180:	00813483          	ld	s1,8(sp)
    80003184:	00013903          	ld	s2,0(sp)
    80003188:	02010113          	addi	sp,sp,32
    8000318c:	00008067          	ret
    80003190:	00050493          	mv	s1,a0
    AThread* a = new AThread();
    80003194:	00090513          	mv	a0,s2
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	5c4080e7          	jalr	1476(ra) # 8000275c <_ZdlPv>
    800031a0:	00048513          	mv	a0,s1
    800031a4:	0000a097          	auipc	ra,0xa
    800031a8:	ef4080e7          	jalr	-268(ra) # 8000d098 <_Unwind_Resume>

00000000800031ac <_ZN7AThread3runEv>:
    void run() override {
    800031ac:	fd010113          	addi	sp,sp,-48
    800031b0:	02113423          	sd	ra,40(sp)
    800031b4:	02813023          	sd	s0,32(sp)
    800031b8:	00913c23          	sd	s1,24(sp)
    800031bc:	01213823          	sd	s2,16(sp)
    800031c0:	01313423          	sd	s3,8(sp)
    800031c4:	03010413          	addi	s0,sp,48
    800031c8:	00050993          	mv	s3,a0
        printString("A pocinje\n");
    800031cc:	00006517          	auipc	a0,0x6
    800031d0:	1cc50513          	addi	a0,a0,460 # 80009398 <CONSOLE_STATUS+0x388>
    800031d4:	00003097          	auipc	ra,0x3
    800031d8:	a30080e7          	jalr	-1488(ra) # 80005c04 <_Z11printStringPKc>
        BThread* b1 = new BThread(1);
    800031dc:	02800513          	li	a0,40
    800031e0:	fffff097          	auipc	ra,0xfffff
    800031e4:	52c080e7          	jalr	1324(ra) # 8000270c <_Znwm>
    800031e8:	00050913          	mv	s2,a0
    BThread(int id) : Thread(), id(id) {}
    800031ec:	fffff097          	auipc	ra,0xfffff
    800031f0:	7f8080e7          	jalr	2040(ra) # 800029e4 <_ZN6ThreadC1Ev>
    800031f4:	00009797          	auipc	a5,0x9
    800031f8:	af478793          	addi	a5,a5,-1292 # 8000bce8 <_ZTV7BThread+0x10>
    800031fc:	00f93023          	sd	a5,0(s2)
    80003200:	00100793          	li	a5,1
    80003204:	02f92023          	sw	a5,32(s2)
        BThread* b2 = new BThread(2);
    80003208:	02800513          	li	a0,40
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	500080e7          	jalr	1280(ra) # 8000270c <_Znwm>
    80003214:	00050493          	mv	s1,a0
    BThread(int id) : Thread(), id(id) {}
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	7cc080e7          	jalr	1996(ra) # 800029e4 <_ZN6ThreadC1Ev>
    80003220:	00009797          	auipc	a5,0x9
    80003224:	ac878793          	addi	a5,a5,-1336 # 8000bce8 <_ZTV7BThread+0x10>
    80003228:	00f4b023          	sd	a5,0(s1)
    8000322c:	00200793          	li	a5,2
    80003230:	02f4a023          	sw	a5,32(s1)
        b1->start();
    80003234:	00090513          	mv	a0,s2
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	7dc080e7          	jalr	2012(ra) # 80002a14 <_ZN6Thread5startEv>
        b2->start();
    80003240:	00048513          	mv	a0,s1
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	7d0080e7          	jalr	2000(ra) # 80002a14 <_ZN6Thread5startEv>
        this->addChild(b1);
    8000324c:	00090593          	mv	a1,s2
    80003250:	00098513          	mv	a0,s3
    80003254:	00000097          	auipc	ra,0x0
    80003258:	864080e7          	jalr	-1948(ra) # 80002ab8 <_ZN6Thread8addChildEPS_>
        this->addChild(b2);
    8000325c:	00048593          	mv	a1,s1
    80003260:	00098513          	mv	a0,s3
    80003264:	00000097          	auipc	ra,0x0
    80003268:	854080e7          	jalr	-1964(ra) # 80002ab8 <_ZN6Thread8addChildEPS_>
        printString("A zove joinAll\n");
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	13c50513          	addi	a0,a0,316 # 800093a8 <CONSOLE_STATUS+0x398>
    80003274:	00003097          	auipc	ra,0x3
    80003278:	990080e7          	jalr	-1648(ra) # 80005c04 <_Z11printStringPKc>
        this->joinAll();
    8000327c:	00098513          	mv	a0,s3
    80003280:	00000097          	auipc	ra,0x0
    80003284:	870080e7          	jalr	-1936(ra) # 80002af0 <_ZN6Thread7joinAllEv>
        printString("A nastavlja tek kad su B i C niti zavrsile\n");
    80003288:	00006517          	auipc	a0,0x6
    8000328c:	13050513          	addi	a0,a0,304 # 800093b8 <CONSOLE_STATUS+0x3a8>
    80003290:	00003097          	auipc	ra,0x3
    80003294:	974080e7          	jalr	-1676(ra) # 80005c04 <_Z11printStringPKc>
        delete b1;
    80003298:	00090a63          	beqz	s2,800032ac <_ZN7AThread3runEv+0x100>
    8000329c:	00093783          	ld	a5,0(s2)
    800032a0:	0087b783          	ld	a5,8(a5)
    800032a4:	00090513          	mv	a0,s2
    800032a8:	000780e7          	jalr	a5
        delete b2;
    800032ac:	00048a63          	beqz	s1,800032c0 <_ZN7AThread3runEv+0x114>
    800032b0:	0004b783          	ld	a5,0(s1)
    800032b4:	0087b783          	ld	a5,8(a5)
    800032b8:	00048513          	mv	a0,s1
    800032bc:	000780e7          	jalr	a5
        printString("A zavrsava\n");
    800032c0:	00006517          	auipc	a0,0x6
    800032c4:	12850513          	addi	a0,a0,296 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800032c8:	00003097          	auipc	ra,0x3
    800032cc:	93c080e7          	jalr	-1732(ra) # 80005c04 <_Z11printStringPKc>
    }
    800032d0:	02813083          	ld	ra,40(sp)
    800032d4:	02013403          	ld	s0,32(sp)
    800032d8:	01813483          	ld	s1,24(sp)
    800032dc:	01013903          	ld	s2,16(sp)
    800032e0:	00813983          	ld	s3,8(sp)
    800032e4:	03010113          	addi	sp,sp,48
    800032e8:	00008067          	ret
    800032ec:	00050493          	mv	s1,a0
        BThread* b1 = new BThread(1);
    800032f0:	00090513          	mv	a0,s2
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	468080e7          	jalr	1128(ra) # 8000275c <_ZdlPv>
    800032fc:	00048513          	mv	a0,s1
    80003300:	0000a097          	auipc	ra,0xa
    80003304:	d98080e7          	jalr	-616(ra) # 8000d098 <_Unwind_Resume>
    80003308:	00050913          	mv	s2,a0
        BThread* b2 = new BThread(2);
    8000330c:	00048513          	mv	a0,s1
    80003310:	fffff097          	auipc	ra,0xfffff
    80003314:	44c080e7          	jalr	1100(ra) # 8000275c <_ZdlPv>
    80003318:	00090513          	mv	a0,s2
    8000331c:	0000a097          	auipc	ra,0xa
    80003320:	d7c080e7          	jalr	-644(ra) # 8000d098 <_Unwind_Resume>

0000000080003324 <_ZN7CThread3runEv>:
    void run() override {
    80003324:	fe010113          	addi	sp,sp,-32
    80003328:	00113c23          	sd	ra,24(sp)
    8000332c:	00813823          	sd	s0,16(sp)
    80003330:	00913423          	sd	s1,8(sp)
    80003334:	01213023          	sd	s2,0(sp)
    80003338:	02010413          	addi	s0,sp,32
    8000333c:	00050913          	mv	s2,a0
        printString("    C pocinje: ");
    80003340:	00006517          	auipc	a0,0x6
    80003344:	0b850513          	addi	a0,a0,184 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003348:	00003097          	auipc	ra,0x3
    8000334c:	8bc080e7          	jalr	-1860(ra) # 80005c04 <_Z11printStringPKc>
        printInt(id);
    80003350:	00000613          	li	a2,0
    80003354:	00a00593          	li	a1,10
    80003358:	02092503          	lw	a0,32(s2)
    8000335c:	00003097          	auipc	ra,0x3
    80003360:	a58080e7          	jalr	-1448(ra) # 80005db4 <_Z8printIntiii>
        printString("\n");
    80003364:	00006517          	auipc	a0,0x6
    80003368:	f3c50513          	addi	a0,a0,-196 # 800092a0 <CONSOLE_STATUS+0x290>
    8000336c:	00003097          	auipc	ra,0x3
    80003370:	898080e7          	jalr	-1896(ra) # 80005c04 <_Z11printStringPKc>
        for (int i = 0; i < 5; i++) {
    80003374:	00000493          	li	s1,0
    80003378:	00400793          	li	a5,4
    8000337c:	0097ca63          	blt	a5,s1,80003390 <_ZN7CThread3runEv+0x6c>
            Thread::dispatch();
    80003380:	fffff097          	auipc	ra,0xfffff
    80003384:	6e8080e7          	jalr	1768(ra) # 80002a68 <_ZN6Thread8dispatchEv>
        for (int i = 0; i < 5; i++) {
    80003388:	0014849b          	addiw	s1,s1,1
    8000338c:	fedff06f          	j	80003378 <_ZN7CThread3runEv+0x54>
        printString("    C zavrsava: ");
    80003390:	00006517          	auipc	a0,0x6
    80003394:	07850513          	addi	a0,a0,120 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003398:	00003097          	auipc	ra,0x3
    8000339c:	86c080e7          	jalr	-1940(ra) # 80005c04 <_Z11printStringPKc>
        printInt(id);
    800033a0:	00000613          	li	a2,0
    800033a4:	00a00593          	li	a1,10
    800033a8:	02092503          	lw	a0,32(s2)
    800033ac:	00003097          	auipc	ra,0x3
    800033b0:	a08080e7          	jalr	-1528(ra) # 80005db4 <_Z8printIntiii>
        printString("\n");
    800033b4:	00006517          	auipc	a0,0x6
    800033b8:	eec50513          	addi	a0,a0,-276 # 800092a0 <CONSOLE_STATUS+0x290>
    800033bc:	00003097          	auipc	ra,0x3
    800033c0:	848080e7          	jalr	-1976(ra) # 80005c04 <_Z11printStringPKc>
    }
    800033c4:	01813083          	ld	ra,24(sp)
    800033c8:	01013403          	ld	s0,16(sp)
    800033cc:	00813483          	ld	s1,8(sp)
    800033d0:	00013903          	ld	s2,0(sp)
    800033d4:	02010113          	addi	sp,sp,32
    800033d8:	00008067          	ret

00000000800033dc <_ZN7BThread3runEv>:
    void run() override {
    800033dc:	fd010113          	addi	sp,sp,-48
    800033e0:	02113423          	sd	ra,40(sp)
    800033e4:	02813023          	sd	s0,32(sp)
    800033e8:	00913c23          	sd	s1,24(sp)
    800033ec:	01213823          	sd	s2,16(sp)
    800033f0:	01313423          	sd	s3,8(sp)
    800033f4:	01413023          	sd	s4,0(sp)
    800033f8:	03010413          	addi	s0,sp,48
    800033fc:	00050493          	mv	s1,a0
        printString("B pocinje: ");
    80003400:	00006517          	auipc	a0,0x6
    80003404:	02050513          	addi	a0,a0,32 # 80009420 <CONSOLE_STATUS+0x410>
    80003408:	00002097          	auipc	ra,0x2
    8000340c:	7fc080e7          	jalr	2044(ra) # 80005c04 <_Z11printStringPKc>
        printInt(id);
    80003410:	00000613          	li	a2,0
    80003414:	00a00593          	li	a1,10
    80003418:	0204a503          	lw	a0,32(s1)
    8000341c:	00003097          	auipc	ra,0x3
    80003420:	998080e7          	jalr	-1640(ra) # 80005db4 <_Z8printIntiii>
        printString("\n");
    80003424:	00006517          	auipc	a0,0x6
    80003428:	e7c50513          	addi	a0,a0,-388 # 800092a0 <CONSOLE_STATUS+0x290>
    8000342c:	00002097          	auipc	ra,0x2
    80003430:	7d8080e7          	jalr	2008(ra) # 80005c04 <_Z11printStringPKc>
        CThread* c1 = new CThread(id * 10 + 1);
    80003434:	02800513          	li	a0,40
    80003438:	fffff097          	auipc	ra,0xfffff
    8000343c:	2d4080e7          	jalr	724(ra) # 8000270c <_Znwm>
    80003440:	00050993          	mv	s3,a0
    80003444:	0204a783          	lw	a5,32(s1)
    80003448:	0027991b          	slliw	s2,a5,0x2
    8000344c:	00f9093b          	addw	s2,s2,a5
    CThread(int id) : Thread(), id(id) {}
    80003450:	fffff097          	auipc	ra,0xfffff
    80003454:	594080e7          	jalr	1428(ra) # 800029e4 <_ZN6ThreadC1Ev>
    80003458:	0019191b          	slliw	s2,s2,0x1
    8000345c:	0019091b          	addiw	s2,s2,1
    80003460:	00009797          	auipc	a5,0x9
    80003464:	86078793          	addi	a5,a5,-1952 # 8000bcc0 <_ZTV7CThread+0x10>
    80003468:	00f9b023          	sd	a5,0(s3)
    8000346c:	0329a023          	sw	s2,32(s3)
        CThread* c2 = new CThread(id * 10 + 2);
    80003470:	02800513          	li	a0,40
    80003474:	fffff097          	auipc	ra,0xfffff
    80003478:	298080e7          	jalr	664(ra) # 8000270c <_Znwm>
    8000347c:	00050913          	mv	s2,a0
    80003480:	0204a783          	lw	a5,32(s1)
    80003484:	00279a1b          	slliw	s4,a5,0x2
    80003488:	00fa0a3b          	addw	s4,s4,a5
    8000348c:	001a1a1b          	slliw	s4,s4,0x1
    80003490:	002a0a1b          	addiw	s4,s4,2
    CThread(int id) : Thread(), id(id) {}
    80003494:	fffff097          	auipc	ra,0xfffff
    80003498:	550080e7          	jalr	1360(ra) # 800029e4 <_ZN6ThreadC1Ev>
    8000349c:	00009797          	auipc	a5,0x9
    800034a0:	82478793          	addi	a5,a5,-2012 # 8000bcc0 <_ZTV7CThread+0x10>
    800034a4:	00f93023          	sd	a5,0(s2)
    800034a8:	03492023          	sw	s4,32(s2)
        c1->start();
    800034ac:	00098513          	mv	a0,s3
    800034b0:	fffff097          	auipc	ra,0xfffff
    800034b4:	564080e7          	jalr	1380(ra) # 80002a14 <_ZN6Thread5startEv>
        c2->start();
    800034b8:	00090513          	mv	a0,s2
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	558080e7          	jalr	1368(ra) # 80002a14 <_ZN6Thread5startEv>
        this->addChild(c1);
    800034c4:	00098593          	mv	a1,s3
    800034c8:	00048513          	mv	a0,s1
    800034cc:	fffff097          	auipc	ra,0xfffff
    800034d0:	5ec080e7          	jalr	1516(ra) # 80002ab8 <_ZN6Thread8addChildEPS_>
        this->addChild(c2);
    800034d4:	00090593          	mv	a1,s2
    800034d8:	00048513          	mv	a0,s1
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	5dc080e7          	jalr	1500(ra) # 80002ab8 <_ZN6Thread8addChildEPS_>
        printString("B zove joinAll: ");
    800034e4:	00006517          	auipc	a0,0x6
    800034e8:	f4c50513          	addi	a0,a0,-180 # 80009430 <CONSOLE_STATUS+0x420>
    800034ec:	00002097          	auipc	ra,0x2
    800034f0:	718080e7          	jalr	1816(ra) # 80005c04 <_Z11printStringPKc>
        printInt(id);
    800034f4:	00000613          	li	a2,0
    800034f8:	00a00593          	li	a1,10
    800034fc:	0204a503          	lw	a0,32(s1)
    80003500:	00003097          	auipc	ra,0x3
    80003504:	8b4080e7          	jalr	-1868(ra) # 80005db4 <_Z8printIntiii>
        printString("\n");
    80003508:	00006517          	auipc	a0,0x6
    8000350c:	d9850513          	addi	a0,a0,-616 # 800092a0 <CONSOLE_STATUS+0x290>
    80003510:	00002097          	auipc	ra,0x2
    80003514:	6f4080e7          	jalr	1780(ra) # 80005c04 <_Z11printStringPKc>
        this->joinAll();
    80003518:	00048513          	mv	a0,s1
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	5d4080e7          	jalr	1492(ra) # 80002af0 <_ZN6Thread7joinAllEv>
        printString("B nastavlja tek kad su njegova C deca zavrsila: ");
    80003524:	00006517          	auipc	a0,0x6
    80003528:	f2450513          	addi	a0,a0,-220 # 80009448 <CONSOLE_STATUS+0x438>
    8000352c:	00002097          	auipc	ra,0x2
    80003530:	6d8080e7          	jalr	1752(ra) # 80005c04 <_Z11printStringPKc>
        printInt(id);
    80003534:	00000613          	li	a2,0
    80003538:	00a00593          	li	a1,10
    8000353c:	0204a503          	lw	a0,32(s1)
    80003540:	00003097          	auipc	ra,0x3
    80003544:	874080e7          	jalr	-1932(ra) # 80005db4 <_Z8printIntiii>
        printString("\n");
    80003548:	00006517          	auipc	a0,0x6
    8000354c:	d5850513          	addi	a0,a0,-680 # 800092a0 <CONSOLE_STATUS+0x290>
    80003550:	00002097          	auipc	ra,0x2
    80003554:	6b4080e7          	jalr	1716(ra) # 80005c04 <_Z11printStringPKc>
        delete c1;
    80003558:	00098a63          	beqz	s3,8000356c <_ZN7BThread3runEv+0x190>
    8000355c:	0009b783          	ld	a5,0(s3)
    80003560:	0087b783          	ld	a5,8(a5)
    80003564:	00098513          	mv	a0,s3
    80003568:	000780e7          	jalr	a5
        delete c2;
    8000356c:	00090a63          	beqz	s2,80003580 <_ZN7BThread3runEv+0x1a4>
    80003570:	00093783          	ld	a5,0(s2)
    80003574:	0087b783          	ld	a5,8(a5)
    80003578:	00090513          	mv	a0,s2
    8000357c:	000780e7          	jalr	a5
        printString("B zavrsava: ");
    80003580:	00006517          	auipc	a0,0x6
    80003584:	f0050513          	addi	a0,a0,-256 # 80009480 <CONSOLE_STATUS+0x470>
    80003588:	00002097          	auipc	ra,0x2
    8000358c:	67c080e7          	jalr	1660(ra) # 80005c04 <_Z11printStringPKc>
        printInt(id);
    80003590:	00000613          	li	a2,0
    80003594:	00a00593          	li	a1,10
    80003598:	0204a503          	lw	a0,32(s1)
    8000359c:	00003097          	auipc	ra,0x3
    800035a0:	818080e7          	jalr	-2024(ra) # 80005db4 <_Z8printIntiii>
        printString("\n");
    800035a4:	00006517          	auipc	a0,0x6
    800035a8:	cfc50513          	addi	a0,a0,-772 # 800092a0 <CONSOLE_STATUS+0x290>
    800035ac:	00002097          	auipc	ra,0x2
    800035b0:	658080e7          	jalr	1624(ra) # 80005c04 <_Z11printStringPKc>
    }
    800035b4:	02813083          	ld	ra,40(sp)
    800035b8:	02013403          	ld	s0,32(sp)
    800035bc:	01813483          	ld	s1,24(sp)
    800035c0:	01013903          	ld	s2,16(sp)
    800035c4:	00813983          	ld	s3,8(sp)
    800035c8:	00013a03          	ld	s4,0(sp)
    800035cc:	03010113          	addi	sp,sp,48
    800035d0:	00008067          	ret
    800035d4:	00050493          	mv	s1,a0
        CThread* c1 = new CThread(id * 10 + 1);
    800035d8:	00098513          	mv	a0,s3
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	180080e7          	jalr	384(ra) # 8000275c <_ZdlPv>
    800035e4:	00048513          	mv	a0,s1
    800035e8:	0000a097          	auipc	ra,0xa
    800035ec:	ab0080e7          	jalr	-1360(ra) # 8000d098 <_Unwind_Resume>
    800035f0:	00050493          	mv	s1,a0
        CThread* c2 = new CThread(id * 10 + 2);
    800035f4:	00090513          	mv	a0,s2
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	164080e7          	jalr	356(ra) # 8000275c <_ZdlPv>
    80003600:	00048513          	mv	a0,s1
    80003604:	0000a097          	auipc	ra,0xa
    80003608:	a94080e7          	jalr	-1388(ra) # 8000d098 <_Unwind_Resume>

000000008000360c <_ZN7CThreadD1Ev>:
class CThread : public Thread {
    8000360c:	ff010113          	addi	sp,sp,-16
    80003610:	00113423          	sd	ra,8(sp)
    80003614:	00813023          	sd	s0,0(sp)
    80003618:	01010413          	addi	s0,sp,16
    8000361c:	00008797          	auipc	a5,0x8
    80003620:	6a478793          	addi	a5,a5,1700 # 8000bcc0 <_ZTV7CThread+0x10>
    80003624:	00f53023          	sd	a5,0(a0)
    80003628:	fffff097          	auipc	ra,0xfffff
    8000362c:	298080e7          	jalr	664(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80003630:	00813083          	ld	ra,8(sp)
    80003634:	00013403          	ld	s0,0(sp)
    80003638:	01010113          	addi	sp,sp,16
    8000363c:	00008067          	ret

0000000080003640 <_ZN7CThreadD0Ev>:
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00113c23          	sd	ra,24(sp)
    80003648:	00813823          	sd	s0,16(sp)
    8000364c:	00913423          	sd	s1,8(sp)
    80003650:	02010413          	addi	s0,sp,32
    80003654:	00050493          	mv	s1,a0
    80003658:	00008797          	auipc	a5,0x8
    8000365c:	66878793          	addi	a5,a5,1640 # 8000bcc0 <_ZTV7CThread+0x10>
    80003660:	00f53023          	sd	a5,0(a0)
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	25c080e7          	jalr	604(ra) # 800028c0 <_ZN6ThreadD1Ev>
    8000366c:	00048513          	mv	a0,s1
    80003670:	fffff097          	auipc	ra,0xfffff
    80003674:	0ec080e7          	jalr	236(ra) # 8000275c <_ZdlPv>
    80003678:	01813083          	ld	ra,24(sp)
    8000367c:	01013403          	ld	s0,16(sp)
    80003680:	00813483          	ld	s1,8(sp)
    80003684:	02010113          	addi	sp,sp,32
    80003688:	00008067          	ret

000000008000368c <_ZN7BThreadD1Ev>:
class BThread : public Thread {
    8000368c:	ff010113          	addi	sp,sp,-16
    80003690:	00113423          	sd	ra,8(sp)
    80003694:	00813023          	sd	s0,0(sp)
    80003698:	01010413          	addi	s0,sp,16
    8000369c:	00008797          	auipc	a5,0x8
    800036a0:	64c78793          	addi	a5,a5,1612 # 8000bce8 <_ZTV7BThread+0x10>
    800036a4:	00f53023          	sd	a5,0(a0)
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	218080e7          	jalr	536(ra) # 800028c0 <_ZN6ThreadD1Ev>
    800036b0:	00813083          	ld	ra,8(sp)
    800036b4:	00013403          	ld	s0,0(sp)
    800036b8:	01010113          	addi	sp,sp,16
    800036bc:	00008067          	ret

00000000800036c0 <_ZN7BThreadD0Ev>:
    800036c0:	fe010113          	addi	sp,sp,-32
    800036c4:	00113c23          	sd	ra,24(sp)
    800036c8:	00813823          	sd	s0,16(sp)
    800036cc:	00913423          	sd	s1,8(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	00050493          	mv	s1,a0
    800036d8:	00008797          	auipc	a5,0x8
    800036dc:	61078793          	addi	a5,a5,1552 # 8000bce8 <_ZTV7BThread+0x10>
    800036e0:	00f53023          	sd	a5,0(a0)
    800036e4:	fffff097          	auipc	ra,0xfffff
    800036e8:	1dc080e7          	jalr	476(ra) # 800028c0 <_ZN6ThreadD1Ev>
    800036ec:	00048513          	mv	a0,s1
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	06c080e7          	jalr	108(ra) # 8000275c <_ZdlPv>
    800036f8:	01813083          	ld	ra,24(sp)
    800036fc:	01013403          	ld	s0,16(sp)
    80003700:	00813483          	ld	s1,8(sp)
    80003704:	02010113          	addi	sp,sp,32
    80003708:	00008067          	ret

000000008000370c <_ZN7AThreadD1Ev>:
class AThread : public Thread {
    8000370c:	ff010113          	addi	sp,sp,-16
    80003710:	00113423          	sd	ra,8(sp)
    80003714:	00813023          	sd	s0,0(sp)
    80003718:	01010413          	addi	s0,sp,16
    8000371c:	00008797          	auipc	a5,0x8
    80003720:	5f478793          	addi	a5,a5,1524 # 8000bd10 <_ZTV7AThread+0x10>
    80003724:	00f53023          	sd	a5,0(a0)
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	198080e7          	jalr	408(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80003730:	00813083          	ld	ra,8(sp)
    80003734:	00013403          	ld	s0,0(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret

0000000080003740 <_ZN7AThreadD0Ev>:
    80003740:	fe010113          	addi	sp,sp,-32
    80003744:	00113c23          	sd	ra,24(sp)
    80003748:	00813823          	sd	s0,16(sp)
    8000374c:	00913423          	sd	s1,8(sp)
    80003750:	02010413          	addi	s0,sp,32
    80003754:	00050493          	mv	s1,a0
    80003758:	00008797          	auipc	a5,0x8
    8000375c:	5b878793          	addi	a5,a5,1464 # 8000bd10 <_ZTV7AThread+0x10>
    80003760:	00f53023          	sd	a5,0(a0)
    80003764:	fffff097          	auipc	ra,0xfffff
    80003768:	15c080e7          	jalr	348(ra) # 800028c0 <_ZN6ThreadD1Ev>
    8000376c:	00048513          	mv	a0,s1
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	fec080e7          	jalr	-20(ra) # 8000275c <_ZdlPv>
    80003778:	01813083          	ld	ra,24(sp)
    8000377c:	01013403          	ld	s0,16(sp)
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret

000000008000378c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000378c:	fe010113          	addi	sp,sp,-32
    80003790:	00113c23          	sd	ra,24(sp)
    80003794:	00813823          	sd	s0,16(sp)
    80003798:	00913423          	sd	s1,8(sp)
    8000379c:	01213023          	sd	s2,0(sp)
    800037a0:	02010413          	addi	s0,sp,32
    800037a4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800037a8:	00000913          	li	s2,0
    800037ac:	00c0006f          	j	800037b8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	bd8080e7          	jalr	-1064(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	e58080e7          	jalr	-424(ra) # 80001610 <_Z4getcv>
    800037c0:	0005059b          	sext.w	a1,a0
    800037c4:	01b00793          	li	a5,27
    800037c8:	02f58a63          	beq	a1,a5,800037fc <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800037cc:	0084b503          	ld	a0,8(s1)
    800037d0:	00003097          	auipc	ra,0x3
    800037d4:	2ac080e7          	jalr	684(ra) # 80006a7c <_ZN6Buffer3putEi>
        i++;
    800037d8:	0019071b          	addiw	a4,s2,1
    800037dc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800037e0:	0004a683          	lw	a3,0(s1)
    800037e4:	0026979b          	slliw	a5,a3,0x2
    800037e8:	00d787bb          	addw	a5,a5,a3
    800037ec:	0017979b          	slliw	a5,a5,0x1
    800037f0:	02f767bb          	remw	a5,a4,a5
    800037f4:	fc0792e3          	bnez	a5,800037b8 <_ZL16producerKeyboardPv+0x2c>
    800037f8:	fb9ff06f          	j	800037b0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800037fc:	00100793          	li	a5,1
    80003800:	00008717          	auipc	a4,0x8
    80003804:	78f72023          	sw	a5,1920(a4) # 8000bf80 <_ZL9threadEnd>
    data->buffer->put('!');
    80003808:	02100593          	li	a1,33
    8000380c:	0084b503          	ld	a0,8(s1)
    80003810:	00003097          	auipc	ra,0x3
    80003814:	26c080e7          	jalr	620(ra) # 80006a7c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003818:	0104b503          	ld	a0,16(s1)
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	cec080e7          	jalr	-788(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80003824:	01813083          	ld	ra,24(sp)
    80003828:	01013403          	ld	s0,16(sp)
    8000382c:	00813483          	ld	s1,8(sp)
    80003830:	00013903          	ld	s2,0(sp)
    80003834:	02010113          	addi	sp,sp,32
    80003838:	00008067          	ret

000000008000383c <_ZL8producerPv>:

static void producer(void *arg) {
    8000383c:	fe010113          	addi	sp,sp,-32
    80003840:	00113c23          	sd	ra,24(sp)
    80003844:	00813823          	sd	s0,16(sp)
    80003848:	00913423          	sd	s1,8(sp)
    8000384c:	01213023          	sd	s2,0(sp)
    80003850:	02010413          	addi	s0,sp,32
    80003854:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003858:	00000913          	li	s2,0
    8000385c:	00c0006f          	j	80003868 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	b28080e7          	jalr	-1240(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003868:	00008797          	auipc	a5,0x8
    8000386c:	7187a783          	lw	a5,1816(a5) # 8000bf80 <_ZL9threadEnd>
    80003870:	02079e63          	bnez	a5,800038ac <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003874:	0004a583          	lw	a1,0(s1)
    80003878:	0305859b          	addiw	a1,a1,48
    8000387c:	0084b503          	ld	a0,8(s1)
    80003880:	00003097          	auipc	ra,0x3
    80003884:	1fc080e7          	jalr	508(ra) # 80006a7c <_ZN6Buffer3putEi>
        i++;
    80003888:	0019071b          	addiw	a4,s2,1
    8000388c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003890:	0004a683          	lw	a3,0(s1)
    80003894:	0026979b          	slliw	a5,a3,0x2
    80003898:	00d787bb          	addw	a5,a5,a3
    8000389c:	0017979b          	slliw	a5,a5,0x1
    800038a0:	02f767bb          	remw	a5,a4,a5
    800038a4:	fc0792e3          	bnez	a5,80003868 <_ZL8producerPv+0x2c>
    800038a8:	fb9ff06f          	j	80003860 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800038ac:	0104b503          	ld	a0,16(s1)
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	c58080e7          	jalr	-936(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    800038b8:	01813083          	ld	ra,24(sp)
    800038bc:	01013403          	ld	s0,16(sp)
    800038c0:	00813483          	ld	s1,8(sp)
    800038c4:	00013903          	ld	s2,0(sp)
    800038c8:	02010113          	addi	sp,sp,32
    800038cc:	00008067          	ret

00000000800038d0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800038d0:	fd010113          	addi	sp,sp,-48
    800038d4:	02113423          	sd	ra,40(sp)
    800038d8:	02813023          	sd	s0,32(sp)
    800038dc:	00913c23          	sd	s1,24(sp)
    800038e0:	01213823          	sd	s2,16(sp)
    800038e4:	01313423          	sd	s3,8(sp)
    800038e8:	03010413          	addi	s0,sp,48
    800038ec:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800038f0:	00000993          	li	s3,0
    800038f4:	01c0006f          	j	80003910 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	a90080e7          	jalr	-1392(ra) # 80001388 <_Z15thread_dispatchv>
    80003900:	0500006f          	j	80003950 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003904:	00a00513          	li	a0,10
    80003908:	ffffe097          	auipc	ra,0xffffe
    8000390c:	d48080e7          	jalr	-696(ra) # 80001650 <_Z4putcc>
    while (!threadEnd) {
    80003910:	00008797          	auipc	a5,0x8
    80003914:	6707a783          	lw	a5,1648(a5) # 8000bf80 <_ZL9threadEnd>
    80003918:	06079063          	bnez	a5,80003978 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000391c:	00893503          	ld	a0,8(s2)
    80003920:	00003097          	auipc	ra,0x3
    80003924:	1ec080e7          	jalr	492(ra) # 80006b0c <_ZN6Buffer3getEv>
        i++;
    80003928:	0019849b          	addiw	s1,s3,1
    8000392c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003930:	0ff57513          	andi	a0,a0,255
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	d1c080e7          	jalr	-740(ra) # 80001650 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000393c:	00092703          	lw	a4,0(s2)
    80003940:	0027179b          	slliw	a5,a4,0x2
    80003944:	00e787bb          	addw	a5,a5,a4
    80003948:	02f4e7bb          	remw	a5,s1,a5
    8000394c:	fa0786e3          	beqz	a5,800038f8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003950:	05000793          	li	a5,80
    80003954:	02f4e4bb          	remw	s1,s1,a5
    80003958:	fa049ce3          	bnez	s1,80003910 <_ZL8consumerPv+0x40>
    8000395c:	fa9ff06f          	j	80003904 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003960:	00893503          	ld	a0,8(s2)
    80003964:	00003097          	auipc	ra,0x3
    80003968:	1a8080e7          	jalr	424(ra) # 80006b0c <_ZN6Buffer3getEv>
        putc(key);
    8000396c:	0ff57513          	andi	a0,a0,255
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	ce0080e7          	jalr	-800(ra) # 80001650 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003978:	00893503          	ld	a0,8(s2)
    8000397c:	00003097          	auipc	ra,0x3
    80003980:	21c080e7          	jalr	540(ra) # 80006b98 <_ZN6Buffer6getCntEv>
    80003984:	fca04ee3          	bgtz	a0,80003960 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003988:	01093503          	ld	a0,16(s2)
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	b7c080e7          	jalr	-1156(ra) # 80001508 <_Z10sem_signalP4_sem>
}
    80003994:	02813083          	ld	ra,40(sp)
    80003998:	02013403          	ld	s0,32(sp)
    8000399c:	01813483          	ld	s1,24(sp)
    800039a0:	01013903          	ld	s2,16(sp)
    800039a4:	00813983          	ld	s3,8(sp)
    800039a8:	03010113          	addi	sp,sp,48
    800039ac:	00008067          	ret

00000000800039b0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800039b0:	f9010113          	addi	sp,sp,-112
    800039b4:	06113423          	sd	ra,104(sp)
    800039b8:	06813023          	sd	s0,96(sp)
    800039bc:	04913c23          	sd	s1,88(sp)
    800039c0:	05213823          	sd	s2,80(sp)
    800039c4:	05313423          	sd	s3,72(sp)
    800039c8:	05413023          	sd	s4,64(sp)
    800039cc:	03513c23          	sd	s5,56(sp)
    800039d0:	03613823          	sd	s6,48(sp)
    800039d4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800039d8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800039dc:	00006517          	auipc	a0,0x6
    800039e0:	ae450513          	addi	a0,a0,-1308 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800039e4:	00002097          	auipc	ra,0x2
    800039e8:	220080e7          	jalr	544(ra) # 80005c04 <_Z11printStringPKc>
    getString(input, 30);
    800039ec:	01e00593          	li	a1,30
    800039f0:	fa040493          	addi	s1,s0,-96
    800039f4:	00048513          	mv	a0,s1
    800039f8:	00002097          	auipc	ra,0x2
    800039fc:	294080e7          	jalr	660(ra) # 80005c8c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003a00:	00048513          	mv	a0,s1
    80003a04:	00002097          	auipc	ra,0x2
    80003a08:	360080e7          	jalr	864(ra) # 80005d64 <_Z11stringToIntPKc>
    80003a0c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003a10:	00006517          	auipc	a0,0x6
    80003a14:	ad050513          	addi	a0,a0,-1328 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	1ec080e7          	jalr	492(ra) # 80005c04 <_Z11printStringPKc>
    getString(input, 30);
    80003a20:	01e00593          	li	a1,30
    80003a24:	00048513          	mv	a0,s1
    80003a28:	00002097          	auipc	ra,0x2
    80003a2c:	264080e7          	jalr	612(ra) # 80005c8c <_Z9getStringPci>
    n = stringToInt(input);
    80003a30:	00048513          	mv	a0,s1
    80003a34:	00002097          	auipc	ra,0x2
    80003a38:	330080e7          	jalr	816(ra) # 80005d64 <_Z11stringToIntPKc>
    80003a3c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003a40:	00006517          	auipc	a0,0x6
    80003a44:	ac050513          	addi	a0,a0,-1344 # 80009500 <CONSOLE_STATUS+0x4f0>
    80003a48:	00002097          	auipc	ra,0x2
    80003a4c:	1bc080e7          	jalr	444(ra) # 80005c04 <_Z11printStringPKc>
    80003a50:	00000613          	li	a2,0
    80003a54:	00a00593          	li	a1,10
    80003a58:	00090513          	mv	a0,s2
    80003a5c:	00002097          	auipc	ra,0x2
    80003a60:	358080e7          	jalr	856(ra) # 80005db4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003a64:	00006517          	auipc	a0,0x6
    80003a68:	ab450513          	addi	a0,a0,-1356 # 80009518 <CONSOLE_STATUS+0x508>
    80003a6c:	00002097          	auipc	ra,0x2
    80003a70:	198080e7          	jalr	408(ra) # 80005c04 <_Z11printStringPKc>
    80003a74:	00000613          	li	a2,0
    80003a78:	00a00593          	li	a1,10
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	00002097          	auipc	ra,0x2
    80003a84:	334080e7          	jalr	820(ra) # 80005db4 <_Z8printIntiii>
    printString(".\n");
    80003a88:	00006517          	auipc	a0,0x6
    80003a8c:	aa850513          	addi	a0,a0,-1368 # 80009530 <CONSOLE_STATUS+0x520>
    80003a90:	00002097          	auipc	ra,0x2
    80003a94:	174080e7          	jalr	372(ra) # 80005c04 <_Z11printStringPKc>
    if(threadNum > n) {
    80003a98:	0324c463          	blt	s1,s2,80003ac0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003a9c:	03205c63          	blez	s2,80003ad4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003aa0:	03800513          	li	a0,56
    80003aa4:	fffff097          	auipc	ra,0xfffff
    80003aa8:	c68080e7          	jalr	-920(ra) # 8000270c <_Znwm>
    80003aac:	00050a13          	mv	s4,a0
    80003ab0:	00048593          	mv	a1,s1
    80003ab4:	00003097          	auipc	ra,0x3
    80003ab8:	f2c080e7          	jalr	-212(ra) # 800069e0 <_ZN6BufferC1Ei>
    80003abc:	0300006f          	j	80003aec <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003ac0:	00006517          	auipc	a0,0x6
    80003ac4:	a7850513          	addi	a0,a0,-1416 # 80009538 <CONSOLE_STATUS+0x528>
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	13c080e7          	jalr	316(ra) # 80005c04 <_Z11printStringPKc>
        return;
    80003ad0:	0140006f          	j	80003ae4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003ad4:	00006517          	auipc	a0,0x6
    80003ad8:	aa450513          	addi	a0,a0,-1372 # 80009578 <CONSOLE_STATUS+0x568>
    80003adc:	00002097          	auipc	ra,0x2
    80003ae0:	128080e7          	jalr	296(ra) # 80005c04 <_Z11printStringPKc>
        return;
    80003ae4:	000b0113          	mv	sp,s6
    80003ae8:	1500006f          	j	80003c38 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003aec:	00000593          	li	a1,0
    80003af0:	00008517          	auipc	a0,0x8
    80003af4:	49850513          	addi	a0,a0,1176 # 8000bf88 <_ZL10waitForAll>
    80003af8:	ffffe097          	auipc	ra,0xffffe
    80003afc:	94c080e7          	jalr	-1716(ra) # 80001444 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003b00:	00391793          	slli	a5,s2,0x3
    80003b04:	00f78793          	addi	a5,a5,15
    80003b08:	ff07f793          	andi	a5,a5,-16
    80003b0c:	40f10133          	sub	sp,sp,a5
    80003b10:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003b14:	0019071b          	addiw	a4,s2,1
    80003b18:	00171793          	slli	a5,a4,0x1
    80003b1c:	00e787b3          	add	a5,a5,a4
    80003b20:	00379793          	slli	a5,a5,0x3
    80003b24:	00f78793          	addi	a5,a5,15
    80003b28:	ff07f793          	andi	a5,a5,-16
    80003b2c:	40f10133          	sub	sp,sp,a5
    80003b30:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003b34:	00191613          	slli	a2,s2,0x1
    80003b38:	012607b3          	add	a5,a2,s2
    80003b3c:	00379793          	slli	a5,a5,0x3
    80003b40:	00f987b3          	add	a5,s3,a5
    80003b44:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003b48:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003b4c:	00008717          	auipc	a4,0x8
    80003b50:	43c73703          	ld	a4,1084(a4) # 8000bf88 <_ZL10waitForAll>
    80003b54:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003b58:	00078613          	mv	a2,a5
    80003b5c:	00000597          	auipc	a1,0x0
    80003b60:	d7458593          	addi	a1,a1,-652 # 800038d0 <_ZL8consumerPv>
    80003b64:	f9840513          	addi	a0,s0,-104
    80003b68:	ffffd097          	auipc	ra,0xffffd
    80003b6c:	71c080e7          	jalr	1820(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003b70:	00000493          	li	s1,0
    80003b74:	0280006f          	j	80003b9c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003b78:	00000597          	auipc	a1,0x0
    80003b7c:	c1458593          	addi	a1,a1,-1004 # 8000378c <_ZL16producerKeyboardPv>
                      data + i);
    80003b80:	00179613          	slli	a2,a5,0x1
    80003b84:	00f60633          	add	a2,a2,a5
    80003b88:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003b8c:	00c98633          	add	a2,s3,a2
    80003b90:	ffffd097          	auipc	ra,0xffffd
    80003b94:	6f4080e7          	jalr	1780(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003b98:	0014849b          	addiw	s1,s1,1
    80003b9c:	0524d263          	bge	s1,s2,80003be0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003ba0:	00149793          	slli	a5,s1,0x1
    80003ba4:	009787b3          	add	a5,a5,s1
    80003ba8:	00379793          	slli	a5,a5,0x3
    80003bac:	00f987b3          	add	a5,s3,a5
    80003bb0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003bb4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003bb8:	00008717          	auipc	a4,0x8
    80003bbc:	3d073703          	ld	a4,976(a4) # 8000bf88 <_ZL10waitForAll>
    80003bc0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003bc4:	00048793          	mv	a5,s1
    80003bc8:	00349513          	slli	a0,s1,0x3
    80003bcc:	00aa8533          	add	a0,s5,a0
    80003bd0:	fa9054e3          	blez	s1,80003b78 <_Z22producerConsumer_C_APIv+0x1c8>
    80003bd4:	00000597          	auipc	a1,0x0
    80003bd8:	c6858593          	addi	a1,a1,-920 # 8000383c <_ZL8producerPv>
    80003bdc:	fa5ff06f          	j	80003b80 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003be0:	ffffd097          	auipc	ra,0xffffd
    80003be4:	7a8080e7          	jalr	1960(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003be8:	00000493          	li	s1,0
    80003bec:	00994e63          	blt	s2,s1,80003c08 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003bf0:	00008517          	auipc	a0,0x8
    80003bf4:	39853503          	ld	a0,920(a0) # 8000bf88 <_ZL10waitForAll>
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	8d0080e7          	jalr	-1840(ra) # 800014c8 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003c00:	0014849b          	addiw	s1,s1,1
    80003c04:	fe9ff06f          	j	80003bec <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003c08:	00008517          	auipc	a0,0x8
    80003c0c:	38053503          	ld	a0,896(a0) # 8000bf88 <_ZL10waitForAll>
    80003c10:	ffffe097          	auipc	ra,0xffffe
    80003c14:	878080e7          	jalr	-1928(ra) # 80001488 <_Z9sem_closeP4_sem>
    delete buffer;
    80003c18:	000a0e63          	beqz	s4,80003c34 <_Z22producerConsumer_C_APIv+0x284>
    80003c1c:	000a0513          	mv	a0,s4
    80003c20:	00003097          	auipc	ra,0x3
    80003c24:	000080e7          	jalr	ra # 80006c20 <_ZN6BufferD1Ev>
    80003c28:	000a0513          	mv	a0,s4
    80003c2c:	fffff097          	auipc	ra,0xfffff
    80003c30:	b30080e7          	jalr	-1232(ra) # 8000275c <_ZdlPv>
    80003c34:	000b0113          	mv	sp,s6

}
    80003c38:	f9040113          	addi	sp,s0,-112
    80003c3c:	06813083          	ld	ra,104(sp)
    80003c40:	06013403          	ld	s0,96(sp)
    80003c44:	05813483          	ld	s1,88(sp)
    80003c48:	05013903          	ld	s2,80(sp)
    80003c4c:	04813983          	ld	s3,72(sp)
    80003c50:	04013a03          	ld	s4,64(sp)
    80003c54:	03813a83          	ld	s5,56(sp)
    80003c58:	03013b03          	ld	s6,48(sp)
    80003c5c:	07010113          	addi	sp,sp,112
    80003c60:	00008067          	ret
    80003c64:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003c68:	000a0513          	mv	a0,s4
    80003c6c:	fffff097          	auipc	ra,0xfffff
    80003c70:	af0080e7          	jalr	-1296(ra) # 8000275c <_ZdlPv>
    80003c74:	00048513          	mv	a0,s1
    80003c78:	00009097          	auipc	ra,0x9
    80003c7c:	420080e7          	jalr	1056(ra) # 8000d098 <_Unwind_Resume>

0000000080003c80 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003c80:	fe010113          	addi	sp,sp,-32
    80003c84:	00113c23          	sd	ra,24(sp)
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00913423          	sd	s1,8(sp)
    80003c90:	01213023          	sd	s2,0(sp)
    80003c94:	02010413          	addi	s0,sp,32
    80003c98:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003c9c:	00100793          	li	a5,1
    80003ca0:	02a7f863          	bgeu	a5,a0,80003cd0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003ca4:	00a00793          	li	a5,10
    80003ca8:	02f577b3          	remu	a5,a0,a5
    80003cac:	02078e63          	beqz	a5,80003ce8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003cb0:	fff48513          	addi	a0,s1,-1
    80003cb4:	00000097          	auipc	ra,0x0
    80003cb8:	fcc080e7          	jalr	-52(ra) # 80003c80 <_ZL9fibonaccim>
    80003cbc:	00050913          	mv	s2,a0
    80003cc0:	ffe48513          	addi	a0,s1,-2
    80003cc4:	00000097          	auipc	ra,0x0
    80003cc8:	fbc080e7          	jalr	-68(ra) # 80003c80 <_ZL9fibonaccim>
    80003ccc:	00a90533          	add	a0,s2,a0
}
    80003cd0:	01813083          	ld	ra,24(sp)
    80003cd4:	01013403          	ld	s0,16(sp)
    80003cd8:	00813483          	ld	s1,8(sp)
    80003cdc:	00013903          	ld	s2,0(sp)
    80003ce0:	02010113          	addi	sp,sp,32
    80003ce4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003ce8:	ffffd097          	auipc	ra,0xffffd
    80003cec:	6a0080e7          	jalr	1696(ra) # 80001388 <_Z15thread_dispatchv>
    80003cf0:	fc1ff06f          	j	80003cb0 <_ZL9fibonaccim+0x30>

0000000080003cf4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003cf4:	fe010113          	addi	sp,sp,-32
    80003cf8:	00113c23          	sd	ra,24(sp)
    80003cfc:	00813823          	sd	s0,16(sp)
    80003d00:	00913423          	sd	s1,8(sp)
    80003d04:	01213023          	sd	s2,0(sp)
    80003d08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003d0c:	00000913          	li	s2,0
    80003d10:	0380006f          	j	80003d48 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d14:	ffffd097          	auipc	ra,0xffffd
    80003d18:	674080e7          	jalr	1652(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d1c:	00148493          	addi	s1,s1,1
    80003d20:	000027b7          	lui	a5,0x2
    80003d24:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d28:	0097ee63          	bltu	a5,s1,80003d44 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d2c:	00000713          	li	a4,0
    80003d30:	000077b7          	lui	a5,0x7
    80003d34:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d38:	fce7eee3          	bltu	a5,a4,80003d14 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003d3c:	00170713          	addi	a4,a4,1
    80003d40:	ff1ff06f          	j	80003d30 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003d44:	00190913          	addi	s2,s2,1
    80003d48:	00900793          	li	a5,9
    80003d4c:	0527e063          	bltu	a5,s2,80003d8c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003d50:	00006517          	auipc	a0,0x6
    80003d54:	85850513          	addi	a0,a0,-1960 # 800095a8 <CONSOLE_STATUS+0x598>
    80003d58:	00002097          	auipc	ra,0x2
    80003d5c:	eac080e7          	jalr	-340(ra) # 80005c04 <_Z11printStringPKc>
    80003d60:	00000613          	li	a2,0
    80003d64:	00a00593          	li	a1,10
    80003d68:	0009051b          	sext.w	a0,s2
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	048080e7          	jalr	72(ra) # 80005db4 <_Z8printIntiii>
    80003d74:	00005517          	auipc	a0,0x5
    80003d78:	52c50513          	addi	a0,a0,1324 # 800092a0 <CONSOLE_STATUS+0x290>
    80003d7c:	00002097          	auipc	ra,0x2
    80003d80:	e88080e7          	jalr	-376(ra) # 80005c04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d84:	00000493          	li	s1,0
    80003d88:	f99ff06f          	j	80003d20 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003d8c:	00006517          	auipc	a0,0x6
    80003d90:	82450513          	addi	a0,a0,-2012 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80003d94:	00002097          	auipc	ra,0x2
    80003d98:	e70080e7          	jalr	-400(ra) # 80005c04 <_Z11printStringPKc>
    finishedA = true;
    80003d9c:	00100793          	li	a5,1
    80003da0:	00008717          	auipc	a4,0x8
    80003da4:	1ef70823          	sb	a5,496(a4) # 8000bf90 <_ZL9finishedA>
}
    80003da8:	01813083          	ld	ra,24(sp)
    80003dac:	01013403          	ld	s0,16(sp)
    80003db0:	00813483          	ld	s1,8(sp)
    80003db4:	00013903          	ld	s2,0(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret

0000000080003dc0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003dc0:	fe010113          	addi	sp,sp,-32
    80003dc4:	00113c23          	sd	ra,24(sp)
    80003dc8:	00813823          	sd	s0,16(sp)
    80003dcc:	00913423          	sd	s1,8(sp)
    80003dd0:	01213023          	sd	s2,0(sp)
    80003dd4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003dd8:	00000913          	li	s2,0
    80003ddc:	0380006f          	j	80003e14 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003de0:	ffffd097          	auipc	ra,0xffffd
    80003de4:	5a8080e7          	jalr	1448(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003de8:	00148493          	addi	s1,s1,1
    80003dec:	000027b7          	lui	a5,0x2
    80003df0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003df4:	0097ee63          	bltu	a5,s1,80003e10 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003df8:	00000713          	li	a4,0
    80003dfc:	000077b7          	lui	a5,0x7
    80003e00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e04:	fce7eee3          	bltu	a5,a4,80003de0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003e08:	00170713          	addi	a4,a4,1
    80003e0c:	ff1ff06f          	j	80003dfc <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003e10:	00190913          	addi	s2,s2,1
    80003e14:	00f00793          	li	a5,15
    80003e18:	0527e063          	bltu	a5,s2,80003e58 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003e1c:	00005517          	auipc	a0,0x5
    80003e20:	7a450513          	addi	a0,a0,1956 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80003e24:	00002097          	auipc	ra,0x2
    80003e28:	de0080e7          	jalr	-544(ra) # 80005c04 <_Z11printStringPKc>
    80003e2c:	00000613          	li	a2,0
    80003e30:	00a00593          	li	a1,10
    80003e34:	0009051b          	sext.w	a0,s2
    80003e38:	00002097          	auipc	ra,0x2
    80003e3c:	f7c080e7          	jalr	-132(ra) # 80005db4 <_Z8printIntiii>
    80003e40:	00005517          	auipc	a0,0x5
    80003e44:	46050513          	addi	a0,a0,1120 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e48:	00002097          	auipc	ra,0x2
    80003e4c:	dbc080e7          	jalr	-580(ra) # 80005c04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e50:	00000493          	li	s1,0
    80003e54:	f99ff06f          	j	80003dec <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003e58:	00005517          	auipc	a0,0x5
    80003e5c:	77050513          	addi	a0,a0,1904 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80003e60:	00002097          	auipc	ra,0x2
    80003e64:	da4080e7          	jalr	-604(ra) # 80005c04 <_Z11printStringPKc>
    finishedB = true;
    80003e68:	00100793          	li	a5,1
    80003e6c:	00008717          	auipc	a4,0x8
    80003e70:	12f702a3          	sb	a5,293(a4) # 8000bf91 <_ZL9finishedB>
    thread_dispatch();
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	514080e7          	jalr	1300(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003e7c:	01813083          	ld	ra,24(sp)
    80003e80:	01013403          	ld	s0,16(sp)
    80003e84:	00813483          	ld	s1,8(sp)
    80003e88:	00013903          	ld	s2,0(sp)
    80003e8c:	02010113          	addi	sp,sp,32
    80003e90:	00008067          	ret

0000000080003e94 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003e94:	fe010113          	addi	sp,sp,-32
    80003e98:	00113c23          	sd	ra,24(sp)
    80003e9c:	00813823          	sd	s0,16(sp)
    80003ea0:	00913423          	sd	s1,8(sp)
    80003ea4:	01213023          	sd	s2,0(sp)
    80003ea8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003eac:	00000493          	li	s1,0
    80003eb0:	0400006f          	j	80003ef0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003eb4:	00005517          	auipc	a0,0x5
    80003eb8:	72450513          	addi	a0,a0,1828 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80003ebc:	00002097          	auipc	ra,0x2
    80003ec0:	d48080e7          	jalr	-696(ra) # 80005c04 <_Z11printStringPKc>
    80003ec4:	00000613          	li	a2,0
    80003ec8:	00a00593          	li	a1,10
    80003ecc:	00048513          	mv	a0,s1
    80003ed0:	00002097          	auipc	ra,0x2
    80003ed4:	ee4080e7          	jalr	-284(ra) # 80005db4 <_Z8printIntiii>
    80003ed8:	00005517          	auipc	a0,0x5
    80003edc:	3c850513          	addi	a0,a0,968 # 800092a0 <CONSOLE_STATUS+0x290>
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	d24080e7          	jalr	-732(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003ee8:	0014849b          	addiw	s1,s1,1
    80003eec:	0ff4f493          	andi	s1,s1,255
    80003ef0:	00200793          	li	a5,2
    80003ef4:	fc97f0e3          	bgeu	a5,s1,80003eb4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003ef8:	00005517          	auipc	a0,0x5
    80003efc:	6e850513          	addi	a0,a0,1768 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80003f00:	00002097          	auipc	ra,0x2
    80003f04:	d04080e7          	jalr	-764(ra) # 80005c04 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003f08:	00700313          	li	t1,7
    thread_dispatch();
    80003f0c:	ffffd097          	auipc	ra,0xffffd
    80003f10:	47c080e7          	jalr	1148(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003f14:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003f18:	00005517          	auipc	a0,0x5
    80003f1c:	6d850513          	addi	a0,a0,1752 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80003f20:	00002097          	auipc	ra,0x2
    80003f24:	ce4080e7          	jalr	-796(ra) # 80005c04 <_Z11printStringPKc>
    80003f28:	00000613          	li	a2,0
    80003f2c:	00a00593          	li	a1,10
    80003f30:	0009051b          	sext.w	a0,s2
    80003f34:	00002097          	auipc	ra,0x2
    80003f38:	e80080e7          	jalr	-384(ra) # 80005db4 <_Z8printIntiii>
    80003f3c:	00005517          	auipc	a0,0x5
    80003f40:	36450513          	addi	a0,a0,868 # 800092a0 <CONSOLE_STATUS+0x290>
    80003f44:	00002097          	auipc	ra,0x2
    80003f48:	cc0080e7          	jalr	-832(ra) # 80005c04 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003f4c:	00c00513          	li	a0,12
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	d30080e7          	jalr	-720(ra) # 80003c80 <_ZL9fibonaccim>
    80003f58:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003f5c:	00005517          	auipc	a0,0x5
    80003f60:	69c50513          	addi	a0,a0,1692 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80003f64:	00002097          	auipc	ra,0x2
    80003f68:	ca0080e7          	jalr	-864(ra) # 80005c04 <_Z11printStringPKc>
    80003f6c:	00000613          	li	a2,0
    80003f70:	00a00593          	li	a1,10
    80003f74:	0009051b          	sext.w	a0,s2
    80003f78:	00002097          	auipc	ra,0x2
    80003f7c:	e3c080e7          	jalr	-452(ra) # 80005db4 <_Z8printIntiii>
    80003f80:	00005517          	auipc	a0,0x5
    80003f84:	32050513          	addi	a0,a0,800 # 800092a0 <CONSOLE_STATUS+0x290>
    80003f88:	00002097          	auipc	ra,0x2
    80003f8c:	c7c080e7          	jalr	-900(ra) # 80005c04 <_Z11printStringPKc>
    80003f90:	0400006f          	j	80003fd0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003f94:	00005517          	auipc	a0,0x5
    80003f98:	64450513          	addi	a0,a0,1604 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	c68080e7          	jalr	-920(ra) # 80005c04 <_Z11printStringPKc>
    80003fa4:	00000613          	li	a2,0
    80003fa8:	00a00593          	li	a1,10
    80003fac:	00048513          	mv	a0,s1
    80003fb0:	00002097          	auipc	ra,0x2
    80003fb4:	e04080e7          	jalr	-508(ra) # 80005db4 <_Z8printIntiii>
    80003fb8:	00005517          	auipc	a0,0x5
    80003fbc:	2e850513          	addi	a0,a0,744 # 800092a0 <CONSOLE_STATUS+0x290>
    80003fc0:	00002097          	auipc	ra,0x2
    80003fc4:	c44080e7          	jalr	-956(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003fc8:	0014849b          	addiw	s1,s1,1
    80003fcc:	0ff4f493          	andi	s1,s1,255
    80003fd0:	00500793          	li	a5,5
    80003fd4:	fc97f0e3          	bgeu	a5,s1,80003f94 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003fd8:	00005517          	auipc	a0,0x5
    80003fdc:	5d850513          	addi	a0,a0,1496 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80003fe0:	00002097          	auipc	ra,0x2
    80003fe4:	c24080e7          	jalr	-988(ra) # 80005c04 <_Z11printStringPKc>
    finishedC = true;
    80003fe8:	00100793          	li	a5,1
    80003fec:	00008717          	auipc	a4,0x8
    80003ff0:	faf70323          	sb	a5,-90(a4) # 8000bf92 <_ZL9finishedC>
    thread_dispatch();
    80003ff4:	ffffd097          	auipc	ra,0xffffd
    80003ff8:	394080e7          	jalr	916(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003ffc:	01813083          	ld	ra,24(sp)
    80004000:	01013403          	ld	s0,16(sp)
    80004004:	00813483          	ld	s1,8(sp)
    80004008:	00013903          	ld	s2,0(sp)
    8000400c:	02010113          	addi	sp,sp,32
    80004010:	00008067          	ret

0000000080004014 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004014:	fe010113          	addi	sp,sp,-32
    80004018:	00113c23          	sd	ra,24(sp)
    8000401c:	00813823          	sd	s0,16(sp)
    80004020:	00913423          	sd	s1,8(sp)
    80004024:	01213023          	sd	s2,0(sp)
    80004028:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000402c:	00a00493          	li	s1,10
    80004030:	0400006f          	j	80004070 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004034:	00005517          	auipc	a0,0x5
    80004038:	5d450513          	addi	a0,a0,1492 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000403c:	00002097          	auipc	ra,0x2
    80004040:	bc8080e7          	jalr	-1080(ra) # 80005c04 <_Z11printStringPKc>
    80004044:	00000613          	li	a2,0
    80004048:	00a00593          	li	a1,10
    8000404c:	00048513          	mv	a0,s1
    80004050:	00002097          	auipc	ra,0x2
    80004054:	d64080e7          	jalr	-668(ra) # 80005db4 <_Z8printIntiii>
    80004058:	00005517          	auipc	a0,0x5
    8000405c:	24850513          	addi	a0,a0,584 # 800092a0 <CONSOLE_STATUS+0x290>
    80004060:	00002097          	auipc	ra,0x2
    80004064:	ba4080e7          	jalr	-1116(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004068:	0014849b          	addiw	s1,s1,1
    8000406c:	0ff4f493          	andi	s1,s1,255
    80004070:	00c00793          	li	a5,12
    80004074:	fc97f0e3          	bgeu	a5,s1,80004034 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004078:	00005517          	auipc	a0,0x5
    8000407c:	59850513          	addi	a0,a0,1432 # 80009610 <CONSOLE_STATUS+0x600>
    80004080:	00002097          	auipc	ra,0x2
    80004084:	b84080e7          	jalr	-1148(ra) # 80005c04 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004088:	00500313          	li	t1,5
    thread_dispatch();
    8000408c:	ffffd097          	auipc	ra,0xffffd
    80004090:	2fc080e7          	jalr	764(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004094:	01000513          	li	a0,16
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	be8080e7          	jalr	-1048(ra) # 80003c80 <_ZL9fibonaccim>
    800040a0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800040a4:	00005517          	auipc	a0,0x5
    800040a8:	57c50513          	addi	a0,a0,1404 # 80009620 <CONSOLE_STATUS+0x610>
    800040ac:	00002097          	auipc	ra,0x2
    800040b0:	b58080e7          	jalr	-1192(ra) # 80005c04 <_Z11printStringPKc>
    800040b4:	00000613          	li	a2,0
    800040b8:	00a00593          	li	a1,10
    800040bc:	0009051b          	sext.w	a0,s2
    800040c0:	00002097          	auipc	ra,0x2
    800040c4:	cf4080e7          	jalr	-780(ra) # 80005db4 <_Z8printIntiii>
    800040c8:	00005517          	auipc	a0,0x5
    800040cc:	1d850513          	addi	a0,a0,472 # 800092a0 <CONSOLE_STATUS+0x290>
    800040d0:	00002097          	auipc	ra,0x2
    800040d4:	b34080e7          	jalr	-1228(ra) # 80005c04 <_Z11printStringPKc>
    800040d8:	0400006f          	j	80004118 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040dc:	00005517          	auipc	a0,0x5
    800040e0:	52c50513          	addi	a0,a0,1324 # 80009608 <CONSOLE_STATUS+0x5f8>
    800040e4:	00002097          	auipc	ra,0x2
    800040e8:	b20080e7          	jalr	-1248(ra) # 80005c04 <_Z11printStringPKc>
    800040ec:	00000613          	li	a2,0
    800040f0:	00a00593          	li	a1,10
    800040f4:	00048513          	mv	a0,s1
    800040f8:	00002097          	auipc	ra,0x2
    800040fc:	cbc080e7          	jalr	-836(ra) # 80005db4 <_Z8printIntiii>
    80004100:	00005517          	auipc	a0,0x5
    80004104:	1a050513          	addi	a0,a0,416 # 800092a0 <CONSOLE_STATUS+0x290>
    80004108:	00002097          	auipc	ra,0x2
    8000410c:	afc080e7          	jalr	-1284(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004110:	0014849b          	addiw	s1,s1,1
    80004114:	0ff4f493          	andi	s1,s1,255
    80004118:	00f00793          	li	a5,15
    8000411c:	fc97f0e3          	bgeu	a5,s1,800040dc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004120:	00005517          	auipc	a0,0x5
    80004124:	51050513          	addi	a0,a0,1296 # 80009630 <CONSOLE_STATUS+0x620>
    80004128:	00002097          	auipc	ra,0x2
    8000412c:	adc080e7          	jalr	-1316(ra) # 80005c04 <_Z11printStringPKc>
    finishedD = true;
    80004130:	00100793          	li	a5,1
    80004134:	00008717          	auipc	a4,0x8
    80004138:	e4f70fa3          	sb	a5,-417(a4) # 8000bf93 <_ZL9finishedD>
    thread_dispatch();
    8000413c:	ffffd097          	auipc	ra,0xffffd
    80004140:	24c080e7          	jalr	588(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004144:	01813083          	ld	ra,24(sp)
    80004148:	01013403          	ld	s0,16(sp)
    8000414c:	00813483          	ld	s1,8(sp)
    80004150:	00013903          	ld	s2,0(sp)
    80004154:	02010113          	addi	sp,sp,32
    80004158:	00008067          	ret

000000008000415c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    8000415c:	fc010113          	addi	sp,sp,-64
    80004160:	02113c23          	sd	ra,56(sp)
    80004164:	02813823          	sd	s0,48(sp)
    80004168:	02913423          	sd	s1,40(sp)
    8000416c:	03213023          	sd	s2,32(sp)
    80004170:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004174:	02000513          	li	a0,32
    80004178:	ffffe097          	auipc	ra,0xffffe
    8000417c:	594080e7          	jalr	1428(ra) # 8000270c <_Znwm>
    80004180:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004184:	fffff097          	auipc	ra,0xfffff
    80004188:	860080e7          	jalr	-1952(ra) # 800029e4 <_ZN6ThreadC1Ev>
    8000418c:	00008797          	auipc	a5,0x8
    80004190:	bac78793          	addi	a5,a5,-1108 # 8000bd38 <_ZTV7WorkerA+0x10>
    80004194:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004198:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000419c:	00005517          	auipc	a0,0x5
    800041a0:	4a450513          	addi	a0,a0,1188 # 80009640 <CONSOLE_STATUS+0x630>
    800041a4:	00002097          	auipc	ra,0x2
    800041a8:	a60080e7          	jalr	-1440(ra) # 80005c04 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800041ac:	02000513          	li	a0,32
    800041b0:	ffffe097          	auipc	ra,0xffffe
    800041b4:	55c080e7          	jalr	1372(ra) # 8000270c <_Znwm>
    800041b8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800041bc:	fffff097          	auipc	ra,0xfffff
    800041c0:	828080e7          	jalr	-2008(ra) # 800029e4 <_ZN6ThreadC1Ev>
    800041c4:	00008797          	auipc	a5,0x8
    800041c8:	b9c78793          	addi	a5,a5,-1124 # 8000bd60 <_ZTV7WorkerB+0x10>
    800041cc:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800041d0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800041d4:	00005517          	auipc	a0,0x5
    800041d8:	48450513          	addi	a0,a0,1156 # 80009658 <CONSOLE_STATUS+0x648>
    800041dc:	00002097          	auipc	ra,0x2
    800041e0:	a28080e7          	jalr	-1496(ra) # 80005c04 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800041e4:	02000513          	li	a0,32
    800041e8:	ffffe097          	auipc	ra,0xffffe
    800041ec:	524080e7          	jalr	1316(ra) # 8000270c <_Znwm>
    800041f0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800041f4:	ffffe097          	auipc	ra,0xffffe
    800041f8:	7f0080e7          	jalr	2032(ra) # 800029e4 <_ZN6ThreadC1Ev>
    800041fc:	00008797          	auipc	a5,0x8
    80004200:	b8c78793          	addi	a5,a5,-1140 # 8000bd88 <_ZTV7WorkerC+0x10>
    80004204:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004208:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000420c:	00005517          	auipc	a0,0x5
    80004210:	46450513          	addi	a0,a0,1124 # 80009670 <CONSOLE_STATUS+0x660>
    80004214:	00002097          	auipc	ra,0x2
    80004218:	9f0080e7          	jalr	-1552(ra) # 80005c04 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000421c:	02000513          	li	a0,32
    80004220:	ffffe097          	auipc	ra,0xffffe
    80004224:	4ec080e7          	jalr	1260(ra) # 8000270c <_Znwm>
    80004228:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    8000422c:	ffffe097          	auipc	ra,0xffffe
    80004230:	7b8080e7          	jalr	1976(ra) # 800029e4 <_ZN6ThreadC1Ev>
    80004234:	00008797          	auipc	a5,0x8
    80004238:	b7c78793          	addi	a5,a5,-1156 # 8000bdb0 <_ZTV7WorkerD+0x10>
    8000423c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004240:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004244:	00005517          	auipc	a0,0x5
    80004248:	44450513          	addi	a0,a0,1092 # 80009688 <CONSOLE_STATUS+0x678>
    8000424c:	00002097          	auipc	ra,0x2
    80004250:	9b8080e7          	jalr	-1608(ra) # 80005c04 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80004254:	00000493          	li	s1,0
    80004258:	00300793          	li	a5,3
    8000425c:	0297c663          	blt	a5,s1,80004288 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80004260:	00349793          	slli	a5,s1,0x3
    80004264:	fe040713          	addi	a4,s0,-32
    80004268:	00f707b3          	add	a5,a4,a5
    8000426c:	fe07b503          	ld	a0,-32(a5)
    80004270:	ffffe097          	auipc	ra,0xffffe
    80004274:	7a4080e7          	jalr	1956(ra) # 80002a14 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004278:	0014849b          	addiw	s1,s1,1
    8000427c:	fddff06f          	j	80004258 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	7e8080e7          	jalr	2024(ra) # 80002a68 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004288:	00008797          	auipc	a5,0x8
    8000428c:	d087c783          	lbu	a5,-760(a5) # 8000bf90 <_ZL9finishedA>
    80004290:	fe0788e3          	beqz	a5,80004280 <_Z20Threads_CPP_API_testv+0x124>
    80004294:	00008797          	auipc	a5,0x8
    80004298:	cfd7c783          	lbu	a5,-771(a5) # 8000bf91 <_ZL9finishedB>
    8000429c:	fe0782e3          	beqz	a5,80004280 <_Z20Threads_CPP_API_testv+0x124>
    800042a0:	00008797          	auipc	a5,0x8
    800042a4:	cf27c783          	lbu	a5,-782(a5) # 8000bf92 <_ZL9finishedC>
    800042a8:	fc078ce3          	beqz	a5,80004280 <_Z20Threads_CPP_API_testv+0x124>
    800042ac:	00008797          	auipc	a5,0x8
    800042b0:	ce77c783          	lbu	a5,-793(a5) # 8000bf93 <_ZL9finishedD>
    800042b4:	fc0786e3          	beqz	a5,80004280 <_Z20Threads_CPP_API_testv+0x124>
    800042b8:	fc040493          	addi	s1,s0,-64
    800042bc:	0080006f          	j	800042c4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800042c0:	00848493          	addi	s1,s1,8
    800042c4:	fe040793          	addi	a5,s0,-32
    800042c8:	08f48663          	beq	s1,a5,80004354 <_Z20Threads_CPP_API_testv+0x1f8>
    800042cc:	0004b503          	ld	a0,0(s1)
    800042d0:	fe0508e3          	beqz	a0,800042c0 <_Z20Threads_CPP_API_testv+0x164>
    800042d4:	00053783          	ld	a5,0(a0)
    800042d8:	0087b783          	ld	a5,8(a5)
    800042dc:	000780e7          	jalr	a5
    800042e0:	fe1ff06f          	j	800042c0 <_Z20Threads_CPP_API_testv+0x164>
    800042e4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800042e8:	00048513          	mv	a0,s1
    800042ec:	ffffe097          	auipc	ra,0xffffe
    800042f0:	470080e7          	jalr	1136(ra) # 8000275c <_ZdlPv>
    800042f4:	00090513          	mv	a0,s2
    800042f8:	00009097          	auipc	ra,0x9
    800042fc:	da0080e7          	jalr	-608(ra) # 8000d098 <_Unwind_Resume>
    80004300:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004304:	00048513          	mv	a0,s1
    80004308:	ffffe097          	auipc	ra,0xffffe
    8000430c:	454080e7          	jalr	1108(ra) # 8000275c <_ZdlPv>
    80004310:	00090513          	mv	a0,s2
    80004314:	00009097          	auipc	ra,0x9
    80004318:	d84080e7          	jalr	-636(ra) # 8000d098 <_Unwind_Resume>
    8000431c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004320:	00048513          	mv	a0,s1
    80004324:	ffffe097          	auipc	ra,0xffffe
    80004328:	438080e7          	jalr	1080(ra) # 8000275c <_ZdlPv>
    8000432c:	00090513          	mv	a0,s2
    80004330:	00009097          	auipc	ra,0x9
    80004334:	d68080e7          	jalr	-664(ra) # 8000d098 <_Unwind_Resume>
    80004338:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000433c:	00048513          	mv	a0,s1
    80004340:	ffffe097          	auipc	ra,0xffffe
    80004344:	41c080e7          	jalr	1052(ra) # 8000275c <_ZdlPv>
    80004348:	00090513          	mv	a0,s2
    8000434c:	00009097          	auipc	ra,0x9
    80004350:	d4c080e7          	jalr	-692(ra) # 8000d098 <_Unwind_Resume>
}
    80004354:	03813083          	ld	ra,56(sp)
    80004358:	03013403          	ld	s0,48(sp)
    8000435c:	02813483          	ld	s1,40(sp)
    80004360:	02013903          	ld	s2,32(sp)
    80004364:	04010113          	addi	sp,sp,64
    80004368:	00008067          	ret

000000008000436c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000436c:	ff010113          	addi	sp,sp,-16
    80004370:	00113423          	sd	ra,8(sp)
    80004374:	00813023          	sd	s0,0(sp)
    80004378:	01010413          	addi	s0,sp,16
    8000437c:	00008797          	auipc	a5,0x8
    80004380:	9bc78793          	addi	a5,a5,-1604 # 8000bd38 <_ZTV7WorkerA+0x10>
    80004384:	00f53023          	sd	a5,0(a0)
    80004388:	ffffe097          	auipc	ra,0xffffe
    8000438c:	538080e7          	jalr	1336(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004390:	00813083          	ld	ra,8(sp)
    80004394:	00013403          	ld	s0,0(sp)
    80004398:	01010113          	addi	sp,sp,16
    8000439c:	00008067          	ret

00000000800043a0 <_ZN7WorkerAD0Ev>:
    800043a0:	fe010113          	addi	sp,sp,-32
    800043a4:	00113c23          	sd	ra,24(sp)
    800043a8:	00813823          	sd	s0,16(sp)
    800043ac:	00913423          	sd	s1,8(sp)
    800043b0:	02010413          	addi	s0,sp,32
    800043b4:	00050493          	mv	s1,a0
    800043b8:	00008797          	auipc	a5,0x8
    800043bc:	98078793          	addi	a5,a5,-1664 # 8000bd38 <_ZTV7WorkerA+0x10>
    800043c0:	00f53023          	sd	a5,0(a0)
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	4fc080e7          	jalr	1276(ra) # 800028c0 <_ZN6ThreadD1Ev>
    800043cc:	00048513          	mv	a0,s1
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	38c080e7          	jalr	908(ra) # 8000275c <_ZdlPv>
    800043d8:	01813083          	ld	ra,24(sp)
    800043dc:	01013403          	ld	s0,16(sp)
    800043e0:	00813483          	ld	s1,8(sp)
    800043e4:	02010113          	addi	sp,sp,32
    800043e8:	00008067          	ret

00000000800043ec <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800043ec:	ff010113          	addi	sp,sp,-16
    800043f0:	00113423          	sd	ra,8(sp)
    800043f4:	00813023          	sd	s0,0(sp)
    800043f8:	01010413          	addi	s0,sp,16
    800043fc:	00008797          	auipc	a5,0x8
    80004400:	96478793          	addi	a5,a5,-1692 # 8000bd60 <_ZTV7WorkerB+0x10>
    80004404:	00f53023          	sd	a5,0(a0)
    80004408:	ffffe097          	auipc	ra,0xffffe
    8000440c:	4b8080e7          	jalr	1208(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004410:	00813083          	ld	ra,8(sp)
    80004414:	00013403          	ld	s0,0(sp)
    80004418:	01010113          	addi	sp,sp,16
    8000441c:	00008067          	ret

0000000080004420 <_ZN7WorkerBD0Ev>:
    80004420:	fe010113          	addi	sp,sp,-32
    80004424:	00113c23          	sd	ra,24(sp)
    80004428:	00813823          	sd	s0,16(sp)
    8000442c:	00913423          	sd	s1,8(sp)
    80004430:	02010413          	addi	s0,sp,32
    80004434:	00050493          	mv	s1,a0
    80004438:	00008797          	auipc	a5,0x8
    8000443c:	92878793          	addi	a5,a5,-1752 # 8000bd60 <_ZTV7WorkerB+0x10>
    80004440:	00f53023          	sd	a5,0(a0)
    80004444:	ffffe097          	auipc	ra,0xffffe
    80004448:	47c080e7          	jalr	1148(ra) # 800028c0 <_ZN6ThreadD1Ev>
    8000444c:	00048513          	mv	a0,s1
    80004450:	ffffe097          	auipc	ra,0xffffe
    80004454:	30c080e7          	jalr	780(ra) # 8000275c <_ZdlPv>
    80004458:	01813083          	ld	ra,24(sp)
    8000445c:	01013403          	ld	s0,16(sp)
    80004460:	00813483          	ld	s1,8(sp)
    80004464:	02010113          	addi	sp,sp,32
    80004468:	00008067          	ret

000000008000446c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000446c:	ff010113          	addi	sp,sp,-16
    80004470:	00113423          	sd	ra,8(sp)
    80004474:	00813023          	sd	s0,0(sp)
    80004478:	01010413          	addi	s0,sp,16
    8000447c:	00008797          	auipc	a5,0x8
    80004480:	90c78793          	addi	a5,a5,-1780 # 8000bd88 <_ZTV7WorkerC+0x10>
    80004484:	00f53023          	sd	a5,0(a0)
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	438080e7          	jalr	1080(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004490:	00813083          	ld	ra,8(sp)
    80004494:	00013403          	ld	s0,0(sp)
    80004498:	01010113          	addi	sp,sp,16
    8000449c:	00008067          	ret

00000000800044a0 <_ZN7WorkerCD0Ev>:
    800044a0:	fe010113          	addi	sp,sp,-32
    800044a4:	00113c23          	sd	ra,24(sp)
    800044a8:	00813823          	sd	s0,16(sp)
    800044ac:	00913423          	sd	s1,8(sp)
    800044b0:	02010413          	addi	s0,sp,32
    800044b4:	00050493          	mv	s1,a0
    800044b8:	00008797          	auipc	a5,0x8
    800044bc:	8d078793          	addi	a5,a5,-1840 # 8000bd88 <_ZTV7WorkerC+0x10>
    800044c0:	00f53023          	sd	a5,0(a0)
    800044c4:	ffffe097          	auipc	ra,0xffffe
    800044c8:	3fc080e7          	jalr	1020(ra) # 800028c0 <_ZN6ThreadD1Ev>
    800044cc:	00048513          	mv	a0,s1
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	28c080e7          	jalr	652(ra) # 8000275c <_ZdlPv>
    800044d8:	01813083          	ld	ra,24(sp)
    800044dc:	01013403          	ld	s0,16(sp)
    800044e0:	00813483          	ld	s1,8(sp)
    800044e4:	02010113          	addi	sp,sp,32
    800044e8:	00008067          	ret

00000000800044ec <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800044ec:	ff010113          	addi	sp,sp,-16
    800044f0:	00113423          	sd	ra,8(sp)
    800044f4:	00813023          	sd	s0,0(sp)
    800044f8:	01010413          	addi	s0,sp,16
    800044fc:	00008797          	auipc	a5,0x8
    80004500:	8b478793          	addi	a5,a5,-1868 # 8000bdb0 <_ZTV7WorkerD+0x10>
    80004504:	00f53023          	sd	a5,0(a0)
    80004508:	ffffe097          	auipc	ra,0xffffe
    8000450c:	3b8080e7          	jalr	952(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004510:	00813083          	ld	ra,8(sp)
    80004514:	00013403          	ld	s0,0(sp)
    80004518:	01010113          	addi	sp,sp,16
    8000451c:	00008067          	ret

0000000080004520 <_ZN7WorkerDD0Ev>:
    80004520:	fe010113          	addi	sp,sp,-32
    80004524:	00113c23          	sd	ra,24(sp)
    80004528:	00813823          	sd	s0,16(sp)
    8000452c:	00913423          	sd	s1,8(sp)
    80004530:	02010413          	addi	s0,sp,32
    80004534:	00050493          	mv	s1,a0
    80004538:	00008797          	auipc	a5,0x8
    8000453c:	87878793          	addi	a5,a5,-1928 # 8000bdb0 <_ZTV7WorkerD+0x10>
    80004540:	00f53023          	sd	a5,0(a0)
    80004544:	ffffe097          	auipc	ra,0xffffe
    80004548:	37c080e7          	jalr	892(ra) # 800028c0 <_ZN6ThreadD1Ev>
    8000454c:	00048513          	mv	a0,s1
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	20c080e7          	jalr	524(ra) # 8000275c <_ZdlPv>
    80004558:	01813083          	ld	ra,24(sp)
    8000455c:	01013403          	ld	s0,16(sp)
    80004560:	00813483          	ld	s1,8(sp)
    80004564:	02010113          	addi	sp,sp,32
    80004568:	00008067          	ret

000000008000456c <_ZN7WorkerA3runEv>:
    void run() override {
    8000456c:	ff010113          	addi	sp,sp,-16
    80004570:	00113423          	sd	ra,8(sp)
    80004574:	00813023          	sd	s0,0(sp)
    80004578:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000457c:	00000593          	li	a1,0
    80004580:	fffff097          	auipc	ra,0xfffff
    80004584:	774080e7          	jalr	1908(ra) # 80003cf4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004588:	00813083          	ld	ra,8(sp)
    8000458c:	00013403          	ld	s0,0(sp)
    80004590:	01010113          	addi	sp,sp,16
    80004594:	00008067          	ret

0000000080004598 <_ZN7WorkerB3runEv>:
    void run() override {
    80004598:	ff010113          	addi	sp,sp,-16
    8000459c:	00113423          	sd	ra,8(sp)
    800045a0:	00813023          	sd	s0,0(sp)
    800045a4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800045a8:	00000593          	li	a1,0
    800045ac:	00000097          	auipc	ra,0x0
    800045b0:	814080e7          	jalr	-2028(ra) # 80003dc0 <_ZN7WorkerB11workerBodyBEPv>
    }
    800045b4:	00813083          	ld	ra,8(sp)
    800045b8:	00013403          	ld	s0,0(sp)
    800045bc:	01010113          	addi	sp,sp,16
    800045c0:	00008067          	ret

00000000800045c4 <_ZN7WorkerC3runEv>:
    void run() override {
    800045c4:	ff010113          	addi	sp,sp,-16
    800045c8:	00113423          	sd	ra,8(sp)
    800045cc:	00813023          	sd	s0,0(sp)
    800045d0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800045d4:	00000593          	li	a1,0
    800045d8:	00000097          	auipc	ra,0x0
    800045dc:	8bc080e7          	jalr	-1860(ra) # 80003e94 <_ZN7WorkerC11workerBodyCEPv>
    }
    800045e0:	00813083          	ld	ra,8(sp)
    800045e4:	00013403          	ld	s0,0(sp)
    800045e8:	01010113          	addi	sp,sp,16
    800045ec:	00008067          	ret

00000000800045f0 <_ZN7WorkerD3runEv>:
    void run() override {
    800045f0:	ff010113          	addi	sp,sp,-16
    800045f4:	00113423          	sd	ra,8(sp)
    800045f8:	00813023          	sd	s0,0(sp)
    800045fc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004600:	00000593          	li	a1,0
    80004604:	00000097          	auipc	ra,0x0
    80004608:	a10080e7          	jalr	-1520(ra) # 80004014 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000460c:	00813083          	ld	ra,8(sp)
    80004610:	00013403          	ld	s0,0(sp)
    80004614:	01010113          	addi	sp,sp,16
    80004618:	00008067          	ret

000000008000461c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000461c:	f8010113          	addi	sp,sp,-128
    80004620:	06113c23          	sd	ra,120(sp)
    80004624:	06813823          	sd	s0,112(sp)
    80004628:	06913423          	sd	s1,104(sp)
    8000462c:	07213023          	sd	s2,96(sp)
    80004630:	05313c23          	sd	s3,88(sp)
    80004634:	05413823          	sd	s4,80(sp)
    80004638:	05513423          	sd	s5,72(sp)
    8000463c:	05613023          	sd	s6,64(sp)
    80004640:	03713c23          	sd	s7,56(sp)
    80004644:	03813823          	sd	s8,48(sp)
    80004648:	03913423          	sd	s9,40(sp)
    8000464c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004650:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004654:	00005517          	auipc	a0,0x5
    80004658:	e6c50513          	addi	a0,a0,-404 # 800094c0 <CONSOLE_STATUS+0x4b0>
    8000465c:	00001097          	auipc	ra,0x1
    80004660:	5a8080e7          	jalr	1448(ra) # 80005c04 <_Z11printStringPKc>
    getString(input, 30);
    80004664:	01e00593          	li	a1,30
    80004668:	f8040493          	addi	s1,s0,-128
    8000466c:	00048513          	mv	a0,s1
    80004670:	00001097          	auipc	ra,0x1
    80004674:	61c080e7          	jalr	1564(ra) # 80005c8c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004678:	00048513          	mv	a0,s1
    8000467c:	00001097          	auipc	ra,0x1
    80004680:	6e8080e7          	jalr	1768(ra) # 80005d64 <_Z11stringToIntPKc>
    80004684:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004688:	00005517          	auipc	a0,0x5
    8000468c:	e5850513          	addi	a0,a0,-424 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004690:	00001097          	auipc	ra,0x1
    80004694:	574080e7          	jalr	1396(ra) # 80005c04 <_Z11printStringPKc>
    getString(input, 30);
    80004698:	01e00593          	li	a1,30
    8000469c:	00048513          	mv	a0,s1
    800046a0:	00001097          	auipc	ra,0x1
    800046a4:	5ec080e7          	jalr	1516(ra) # 80005c8c <_Z9getStringPci>
    n = stringToInt(input);
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	6b8080e7          	jalr	1720(ra) # 80005d64 <_Z11stringToIntPKc>
    800046b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800046b8:	00005517          	auipc	a0,0x5
    800046bc:	e4850513          	addi	a0,a0,-440 # 80009500 <CONSOLE_STATUS+0x4f0>
    800046c0:	00001097          	auipc	ra,0x1
    800046c4:	544080e7          	jalr	1348(ra) # 80005c04 <_Z11printStringPKc>
    printInt(threadNum);
    800046c8:	00000613          	li	a2,0
    800046cc:	00a00593          	li	a1,10
    800046d0:	00098513          	mv	a0,s3
    800046d4:	00001097          	auipc	ra,0x1
    800046d8:	6e0080e7          	jalr	1760(ra) # 80005db4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800046dc:	00005517          	auipc	a0,0x5
    800046e0:	e3c50513          	addi	a0,a0,-452 # 80009518 <CONSOLE_STATUS+0x508>
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	520080e7          	jalr	1312(ra) # 80005c04 <_Z11printStringPKc>
    printInt(n);
    800046ec:	00000613          	li	a2,0
    800046f0:	00a00593          	li	a1,10
    800046f4:	00048513          	mv	a0,s1
    800046f8:	00001097          	auipc	ra,0x1
    800046fc:	6bc080e7          	jalr	1724(ra) # 80005db4 <_Z8printIntiii>
    printString(".\n");
    80004700:	00005517          	auipc	a0,0x5
    80004704:	e3050513          	addi	a0,a0,-464 # 80009530 <CONSOLE_STATUS+0x520>
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	4fc080e7          	jalr	1276(ra) # 80005c04 <_Z11printStringPKc>
    if (threadNum > n) {
    80004710:	0334c463          	blt	s1,s3,80004738 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004714:	03305c63          	blez	s3,8000474c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004718:	03800513          	li	a0,56
    8000471c:	ffffe097          	auipc	ra,0xffffe
    80004720:	ff0080e7          	jalr	-16(ra) # 8000270c <_Znwm>
    80004724:	00050a93          	mv	s5,a0
    80004728:	00048593          	mv	a1,s1
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	7a8080e7          	jalr	1960(ra) # 80005ed4 <_ZN9BufferCPPC1Ei>
    80004734:	0300006f          	j	80004764 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004738:	00005517          	auipc	a0,0x5
    8000473c:	e0050513          	addi	a0,a0,-512 # 80009538 <CONSOLE_STATUS+0x528>
    80004740:	00001097          	auipc	ra,0x1
    80004744:	4c4080e7          	jalr	1220(ra) # 80005c04 <_Z11printStringPKc>
        return;
    80004748:	0140006f          	j	8000475c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000474c:	00005517          	auipc	a0,0x5
    80004750:	e2c50513          	addi	a0,a0,-468 # 80009578 <CONSOLE_STATUS+0x568>
    80004754:	00001097          	auipc	ra,0x1
    80004758:	4b0080e7          	jalr	1200(ra) # 80005c04 <_Z11printStringPKc>
        return;
    8000475c:	000c0113          	mv	sp,s8
    80004760:	2140006f          	j	80004974 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004764:	01000513          	li	a0,16
    80004768:	ffffe097          	auipc	ra,0xffffe
    8000476c:	fa4080e7          	jalr	-92(ra) # 8000270c <_Znwm>
    80004770:	00050913          	mv	s2,a0
    80004774:	00000593          	li	a1,0
    80004778:	ffffe097          	auipc	ra,0xffffe
    8000477c:	3a0080e7          	jalr	928(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80004780:	00008797          	auipc	a5,0x8
    80004784:	8327b023          	sd	s2,-2016(a5) # 8000bfa0 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004788:	00399793          	slli	a5,s3,0x3
    8000478c:	00f78793          	addi	a5,a5,15
    80004790:	ff07f793          	andi	a5,a5,-16
    80004794:	40f10133          	sub	sp,sp,a5
    80004798:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000479c:	0019871b          	addiw	a4,s3,1
    800047a0:	00171793          	slli	a5,a4,0x1
    800047a4:	00e787b3          	add	a5,a5,a4
    800047a8:	00379793          	slli	a5,a5,0x3
    800047ac:	00f78793          	addi	a5,a5,15
    800047b0:	ff07f793          	andi	a5,a5,-16
    800047b4:	40f10133          	sub	sp,sp,a5
    800047b8:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800047bc:	00199493          	slli	s1,s3,0x1
    800047c0:	013484b3          	add	s1,s1,s3
    800047c4:	00349493          	slli	s1,s1,0x3
    800047c8:	009b04b3          	add	s1,s6,s1
    800047cc:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800047d0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800047d4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800047d8:	02800513          	li	a0,40
    800047dc:	ffffe097          	auipc	ra,0xffffe
    800047e0:	f30080e7          	jalr	-208(ra) # 8000270c <_Znwm>
    800047e4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800047e8:	ffffe097          	auipc	ra,0xffffe
    800047ec:	1fc080e7          	jalr	508(ra) # 800029e4 <_ZN6ThreadC1Ev>
    800047f0:	00007797          	auipc	a5,0x7
    800047f4:	63878793          	addi	a5,a5,1592 # 8000be28 <_ZTV8Consumer+0x10>
    800047f8:	00fbb023          	sd	a5,0(s7)
    800047fc:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004800:	000b8513          	mv	a0,s7
    80004804:	ffffe097          	auipc	ra,0xffffe
    80004808:	210080e7          	jalr	528(ra) # 80002a14 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000480c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004810:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004814:	00007797          	auipc	a5,0x7
    80004818:	78c7b783          	ld	a5,1932(a5) # 8000bfa0 <_ZL10waitForAll>
    8000481c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004820:	02800513          	li	a0,40
    80004824:	ffffe097          	auipc	ra,0xffffe
    80004828:	ee8080e7          	jalr	-280(ra) # 8000270c <_Znwm>
    8000482c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	1b4080e7          	jalr	436(ra) # 800029e4 <_ZN6ThreadC1Ev>
    80004838:	00007797          	auipc	a5,0x7
    8000483c:	5a078793          	addi	a5,a5,1440 # 8000bdd8 <_ZTV16ProducerKeyborad+0x10>
    80004840:	00f4b023          	sd	a5,0(s1)
    80004844:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004848:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000484c:	00048513          	mv	a0,s1
    80004850:	ffffe097          	auipc	ra,0xffffe
    80004854:	1c4080e7          	jalr	452(ra) # 80002a14 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004858:	00100913          	li	s2,1
    8000485c:	0300006f          	j	8000488c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004860:	00007797          	auipc	a5,0x7
    80004864:	5a078793          	addi	a5,a5,1440 # 8000be00 <_ZTV8Producer+0x10>
    80004868:	00fcb023          	sd	a5,0(s9)
    8000486c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004870:	00391793          	slli	a5,s2,0x3
    80004874:	00fa07b3          	add	a5,s4,a5
    80004878:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000487c:	000c8513          	mv	a0,s9
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	194080e7          	jalr	404(ra) # 80002a14 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004888:	0019091b          	addiw	s2,s2,1
    8000488c:	05395263          	bge	s2,s3,800048d0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004890:	00191493          	slli	s1,s2,0x1
    80004894:	012484b3          	add	s1,s1,s2
    80004898:	00349493          	slli	s1,s1,0x3
    8000489c:	009b04b3          	add	s1,s6,s1
    800048a0:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800048a4:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800048a8:	00007797          	auipc	a5,0x7
    800048ac:	6f87b783          	ld	a5,1784(a5) # 8000bfa0 <_ZL10waitForAll>
    800048b0:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800048b4:	02800513          	li	a0,40
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	e54080e7          	jalr	-428(ra) # 8000270c <_Znwm>
    800048c0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800048c4:	ffffe097          	auipc	ra,0xffffe
    800048c8:	120080e7          	jalr	288(ra) # 800029e4 <_ZN6ThreadC1Ev>
    800048cc:	f95ff06f          	j	80004860 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800048d0:	ffffe097          	auipc	ra,0xffffe
    800048d4:	198080e7          	jalr	408(ra) # 80002a68 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800048d8:	00000493          	li	s1,0
    800048dc:	0099ce63          	blt	s3,s1,800048f8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800048e0:	00007517          	auipc	a0,0x7
    800048e4:	6c053503          	ld	a0,1728(a0) # 8000bfa0 <_ZL10waitForAll>
    800048e8:	ffffe097          	auipc	ra,0xffffe
    800048ec:	26c080e7          	jalr	620(ra) # 80002b54 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800048f0:	0014849b          	addiw	s1,s1,1
    800048f4:	fe9ff06f          	j	800048dc <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800048f8:	00007517          	auipc	a0,0x7
    800048fc:	6a853503          	ld	a0,1704(a0) # 8000bfa0 <_ZL10waitForAll>
    80004900:	00050863          	beqz	a0,80004910 <_Z20testConsumerProducerv+0x2f4>
    80004904:	00053783          	ld	a5,0(a0)
    80004908:	0087b783          	ld	a5,8(a5)
    8000490c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004910:	00000493          	li	s1,0
    80004914:	0080006f          	j	8000491c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004918:	0014849b          	addiw	s1,s1,1
    8000491c:	0334d263          	bge	s1,s3,80004940 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004920:	00349793          	slli	a5,s1,0x3
    80004924:	00fa07b3          	add	a5,s4,a5
    80004928:	0007b503          	ld	a0,0(a5)
    8000492c:	fe0506e3          	beqz	a0,80004918 <_Z20testConsumerProducerv+0x2fc>
    80004930:	00053783          	ld	a5,0(a0)
    80004934:	0087b783          	ld	a5,8(a5)
    80004938:	000780e7          	jalr	a5
    8000493c:	fddff06f          	j	80004918 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004940:	000b8a63          	beqz	s7,80004954 <_Z20testConsumerProducerv+0x338>
    80004944:	000bb783          	ld	a5,0(s7)
    80004948:	0087b783          	ld	a5,8(a5)
    8000494c:	000b8513          	mv	a0,s7
    80004950:	000780e7          	jalr	a5
    delete buffer;
    80004954:	000a8e63          	beqz	s5,80004970 <_Z20testConsumerProducerv+0x354>
    80004958:	000a8513          	mv	a0,s5
    8000495c:	00002097          	auipc	ra,0x2
    80004960:	870080e7          	jalr	-1936(ra) # 800061cc <_ZN9BufferCPPD1Ev>
    80004964:	000a8513          	mv	a0,s5
    80004968:	ffffe097          	auipc	ra,0xffffe
    8000496c:	df4080e7          	jalr	-524(ra) # 8000275c <_ZdlPv>
    80004970:	000c0113          	mv	sp,s8
}
    80004974:	f8040113          	addi	sp,s0,-128
    80004978:	07813083          	ld	ra,120(sp)
    8000497c:	07013403          	ld	s0,112(sp)
    80004980:	06813483          	ld	s1,104(sp)
    80004984:	06013903          	ld	s2,96(sp)
    80004988:	05813983          	ld	s3,88(sp)
    8000498c:	05013a03          	ld	s4,80(sp)
    80004990:	04813a83          	ld	s5,72(sp)
    80004994:	04013b03          	ld	s6,64(sp)
    80004998:	03813b83          	ld	s7,56(sp)
    8000499c:	03013c03          	ld	s8,48(sp)
    800049a0:	02813c83          	ld	s9,40(sp)
    800049a4:	08010113          	addi	sp,sp,128
    800049a8:	00008067          	ret
    800049ac:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800049b0:	000a8513          	mv	a0,s5
    800049b4:	ffffe097          	auipc	ra,0xffffe
    800049b8:	da8080e7          	jalr	-600(ra) # 8000275c <_ZdlPv>
    800049bc:	00048513          	mv	a0,s1
    800049c0:	00008097          	auipc	ra,0x8
    800049c4:	6d8080e7          	jalr	1752(ra) # 8000d098 <_Unwind_Resume>
    800049c8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800049cc:	00090513          	mv	a0,s2
    800049d0:	ffffe097          	auipc	ra,0xffffe
    800049d4:	d8c080e7          	jalr	-628(ra) # 8000275c <_ZdlPv>
    800049d8:	00048513          	mv	a0,s1
    800049dc:	00008097          	auipc	ra,0x8
    800049e0:	6bc080e7          	jalr	1724(ra) # 8000d098 <_Unwind_Resume>
    800049e4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800049e8:	000b8513          	mv	a0,s7
    800049ec:	ffffe097          	auipc	ra,0xffffe
    800049f0:	d70080e7          	jalr	-656(ra) # 8000275c <_ZdlPv>
    800049f4:	00048513          	mv	a0,s1
    800049f8:	00008097          	auipc	ra,0x8
    800049fc:	6a0080e7          	jalr	1696(ra) # 8000d098 <_Unwind_Resume>
    80004a00:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004a04:	00048513          	mv	a0,s1
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	d54080e7          	jalr	-684(ra) # 8000275c <_ZdlPv>
    80004a10:	00090513          	mv	a0,s2
    80004a14:	00008097          	auipc	ra,0x8
    80004a18:	684080e7          	jalr	1668(ra) # 8000d098 <_Unwind_Resume>
    80004a1c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004a20:	000c8513          	mv	a0,s9
    80004a24:	ffffe097          	auipc	ra,0xffffe
    80004a28:	d38080e7          	jalr	-712(ra) # 8000275c <_ZdlPv>
    80004a2c:	00048513          	mv	a0,s1
    80004a30:	00008097          	auipc	ra,0x8
    80004a34:	668080e7          	jalr	1640(ra) # 8000d098 <_Unwind_Resume>

0000000080004a38 <_ZN8Consumer3runEv>:
    void run() override {
    80004a38:	fd010113          	addi	sp,sp,-48
    80004a3c:	02113423          	sd	ra,40(sp)
    80004a40:	02813023          	sd	s0,32(sp)
    80004a44:	00913c23          	sd	s1,24(sp)
    80004a48:	01213823          	sd	s2,16(sp)
    80004a4c:	01313423          	sd	s3,8(sp)
    80004a50:	03010413          	addi	s0,sp,48
    80004a54:	00050913          	mv	s2,a0
        int i = 0;
    80004a58:	00000993          	li	s3,0
    80004a5c:	0100006f          	j	80004a6c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004a60:	00a00513          	li	a0,10
    80004a64:	ffffe097          	auipc	ra,0xffffe
    80004a68:	1d8080e7          	jalr	472(ra) # 80002c3c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004a6c:	00007797          	auipc	a5,0x7
    80004a70:	52c7a783          	lw	a5,1324(a5) # 8000bf98 <_ZL9threadEnd>
    80004a74:	04079a63          	bnez	a5,80004ac8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004a78:	02093783          	ld	a5,32(s2)
    80004a7c:	0087b503          	ld	a0,8(a5)
    80004a80:	00001097          	auipc	ra,0x1
    80004a84:	638080e7          	jalr	1592(ra) # 800060b8 <_ZN9BufferCPP3getEv>
            i++;
    80004a88:	0019849b          	addiw	s1,s3,1
    80004a8c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004a90:	0ff57513          	andi	a0,a0,255
    80004a94:	ffffe097          	auipc	ra,0xffffe
    80004a98:	1a8080e7          	jalr	424(ra) # 80002c3c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004a9c:	05000793          	li	a5,80
    80004aa0:	02f4e4bb          	remw	s1,s1,a5
    80004aa4:	fc0494e3          	bnez	s1,80004a6c <_ZN8Consumer3runEv+0x34>
    80004aa8:	fb9ff06f          	j	80004a60 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004aac:	02093783          	ld	a5,32(s2)
    80004ab0:	0087b503          	ld	a0,8(a5)
    80004ab4:	00001097          	auipc	ra,0x1
    80004ab8:	604080e7          	jalr	1540(ra) # 800060b8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004abc:	0ff57513          	andi	a0,a0,255
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	17c080e7          	jalr	380(ra) # 80002c3c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004ac8:	02093783          	ld	a5,32(s2)
    80004acc:	0087b503          	ld	a0,8(a5)
    80004ad0:	00001097          	auipc	ra,0x1
    80004ad4:	674080e7          	jalr	1652(ra) # 80006144 <_ZN9BufferCPP6getCntEv>
    80004ad8:	fca04ae3          	bgtz	a0,80004aac <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004adc:	02093783          	ld	a5,32(s2)
    80004ae0:	0107b503          	ld	a0,16(a5)
    80004ae4:	ffffe097          	auipc	ra,0xffffe
    80004ae8:	09c080e7          	jalr	156(ra) # 80002b80 <_ZN9Semaphore6signalEv>
    }
    80004aec:	02813083          	ld	ra,40(sp)
    80004af0:	02013403          	ld	s0,32(sp)
    80004af4:	01813483          	ld	s1,24(sp)
    80004af8:	01013903          	ld	s2,16(sp)
    80004afc:	00813983          	ld	s3,8(sp)
    80004b00:	03010113          	addi	sp,sp,48
    80004b04:	00008067          	ret

0000000080004b08 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004b08:	ff010113          	addi	sp,sp,-16
    80004b0c:	00113423          	sd	ra,8(sp)
    80004b10:	00813023          	sd	s0,0(sp)
    80004b14:	01010413          	addi	s0,sp,16
    80004b18:	00007797          	auipc	a5,0x7
    80004b1c:	31078793          	addi	a5,a5,784 # 8000be28 <_ZTV8Consumer+0x10>
    80004b20:	00f53023          	sd	a5,0(a0)
    80004b24:	ffffe097          	auipc	ra,0xffffe
    80004b28:	d9c080e7          	jalr	-612(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004b2c:	00813083          	ld	ra,8(sp)
    80004b30:	00013403          	ld	s0,0(sp)
    80004b34:	01010113          	addi	sp,sp,16
    80004b38:	00008067          	ret

0000000080004b3c <_ZN8ConsumerD0Ev>:
    80004b3c:	fe010113          	addi	sp,sp,-32
    80004b40:	00113c23          	sd	ra,24(sp)
    80004b44:	00813823          	sd	s0,16(sp)
    80004b48:	00913423          	sd	s1,8(sp)
    80004b4c:	02010413          	addi	s0,sp,32
    80004b50:	00050493          	mv	s1,a0
    80004b54:	00007797          	auipc	a5,0x7
    80004b58:	2d478793          	addi	a5,a5,724 # 8000be28 <_ZTV8Consumer+0x10>
    80004b5c:	00f53023          	sd	a5,0(a0)
    80004b60:	ffffe097          	auipc	ra,0xffffe
    80004b64:	d60080e7          	jalr	-672(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004b68:	00048513          	mv	a0,s1
    80004b6c:	ffffe097          	auipc	ra,0xffffe
    80004b70:	bf0080e7          	jalr	-1040(ra) # 8000275c <_ZdlPv>
    80004b74:	01813083          	ld	ra,24(sp)
    80004b78:	01013403          	ld	s0,16(sp)
    80004b7c:	00813483          	ld	s1,8(sp)
    80004b80:	02010113          	addi	sp,sp,32
    80004b84:	00008067          	ret

0000000080004b88 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004b88:	ff010113          	addi	sp,sp,-16
    80004b8c:	00113423          	sd	ra,8(sp)
    80004b90:	00813023          	sd	s0,0(sp)
    80004b94:	01010413          	addi	s0,sp,16
    80004b98:	00007797          	auipc	a5,0x7
    80004b9c:	24078793          	addi	a5,a5,576 # 8000bdd8 <_ZTV16ProducerKeyborad+0x10>
    80004ba0:	00f53023          	sd	a5,0(a0)
    80004ba4:	ffffe097          	auipc	ra,0xffffe
    80004ba8:	d1c080e7          	jalr	-740(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004bac:	00813083          	ld	ra,8(sp)
    80004bb0:	00013403          	ld	s0,0(sp)
    80004bb4:	01010113          	addi	sp,sp,16
    80004bb8:	00008067          	ret

0000000080004bbc <_ZN16ProducerKeyboradD0Ev>:
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00113c23          	sd	ra,24(sp)
    80004bc4:	00813823          	sd	s0,16(sp)
    80004bc8:	00913423          	sd	s1,8(sp)
    80004bcc:	02010413          	addi	s0,sp,32
    80004bd0:	00050493          	mv	s1,a0
    80004bd4:	00007797          	auipc	a5,0x7
    80004bd8:	20478793          	addi	a5,a5,516 # 8000bdd8 <_ZTV16ProducerKeyborad+0x10>
    80004bdc:	00f53023          	sd	a5,0(a0)
    80004be0:	ffffe097          	auipc	ra,0xffffe
    80004be4:	ce0080e7          	jalr	-800(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004be8:	00048513          	mv	a0,s1
    80004bec:	ffffe097          	auipc	ra,0xffffe
    80004bf0:	b70080e7          	jalr	-1168(ra) # 8000275c <_ZdlPv>
    80004bf4:	01813083          	ld	ra,24(sp)
    80004bf8:	01013403          	ld	s0,16(sp)
    80004bfc:	00813483          	ld	s1,8(sp)
    80004c00:	02010113          	addi	sp,sp,32
    80004c04:	00008067          	ret

0000000080004c08 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004c08:	ff010113          	addi	sp,sp,-16
    80004c0c:	00113423          	sd	ra,8(sp)
    80004c10:	00813023          	sd	s0,0(sp)
    80004c14:	01010413          	addi	s0,sp,16
    80004c18:	00007797          	auipc	a5,0x7
    80004c1c:	1e878793          	addi	a5,a5,488 # 8000be00 <_ZTV8Producer+0x10>
    80004c20:	00f53023          	sd	a5,0(a0)
    80004c24:	ffffe097          	auipc	ra,0xffffe
    80004c28:	c9c080e7          	jalr	-868(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004c2c:	00813083          	ld	ra,8(sp)
    80004c30:	00013403          	ld	s0,0(sp)
    80004c34:	01010113          	addi	sp,sp,16
    80004c38:	00008067          	ret

0000000080004c3c <_ZN8ProducerD0Ev>:
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00113c23          	sd	ra,24(sp)
    80004c44:	00813823          	sd	s0,16(sp)
    80004c48:	00913423          	sd	s1,8(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    80004c50:	00050493          	mv	s1,a0
    80004c54:	00007797          	auipc	a5,0x7
    80004c58:	1ac78793          	addi	a5,a5,428 # 8000be00 <_ZTV8Producer+0x10>
    80004c5c:	00f53023          	sd	a5,0(a0)
    80004c60:	ffffe097          	auipc	ra,0xffffe
    80004c64:	c60080e7          	jalr	-928(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80004c68:	00048513          	mv	a0,s1
    80004c6c:	ffffe097          	auipc	ra,0xffffe
    80004c70:	af0080e7          	jalr	-1296(ra) # 8000275c <_ZdlPv>
    80004c74:	01813083          	ld	ra,24(sp)
    80004c78:	01013403          	ld	s0,16(sp)
    80004c7c:	00813483          	ld	s1,8(sp)
    80004c80:	02010113          	addi	sp,sp,32
    80004c84:	00008067          	ret

0000000080004c88 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004c88:	fe010113          	addi	sp,sp,-32
    80004c8c:	00113c23          	sd	ra,24(sp)
    80004c90:	00813823          	sd	s0,16(sp)
    80004c94:	00913423          	sd	s1,8(sp)
    80004c98:	02010413          	addi	s0,sp,32
    80004c9c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	970080e7          	jalr	-1680(ra) # 80001610 <_Z4getcv>
    80004ca8:	0005059b          	sext.w	a1,a0
    80004cac:	01b00793          	li	a5,27
    80004cb0:	00f58c63          	beq	a1,a5,80004cc8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004cb4:	0204b783          	ld	a5,32(s1)
    80004cb8:	0087b503          	ld	a0,8(a5)
    80004cbc:	00001097          	auipc	ra,0x1
    80004cc0:	36c080e7          	jalr	876(ra) # 80006028 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004cc4:	fddff06f          	j	80004ca0 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004cc8:	00100793          	li	a5,1
    80004ccc:	00007717          	auipc	a4,0x7
    80004cd0:	2cf72623          	sw	a5,716(a4) # 8000bf98 <_ZL9threadEnd>
        td->buffer->put('!');
    80004cd4:	0204b783          	ld	a5,32(s1)
    80004cd8:	02100593          	li	a1,33
    80004cdc:	0087b503          	ld	a0,8(a5)
    80004ce0:	00001097          	auipc	ra,0x1
    80004ce4:	348080e7          	jalr	840(ra) # 80006028 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004ce8:	0204b783          	ld	a5,32(s1)
    80004cec:	0107b503          	ld	a0,16(a5)
    80004cf0:	ffffe097          	auipc	ra,0xffffe
    80004cf4:	e90080e7          	jalr	-368(ra) # 80002b80 <_ZN9Semaphore6signalEv>
    }
    80004cf8:	01813083          	ld	ra,24(sp)
    80004cfc:	01013403          	ld	s0,16(sp)
    80004d00:	00813483          	ld	s1,8(sp)
    80004d04:	02010113          	addi	sp,sp,32
    80004d08:	00008067          	ret

0000000080004d0c <_ZN8Producer3runEv>:
    void run() override {
    80004d0c:	fe010113          	addi	sp,sp,-32
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	00813823          	sd	s0,16(sp)
    80004d18:	00913423          	sd	s1,8(sp)
    80004d1c:	01213023          	sd	s2,0(sp)
    80004d20:	02010413          	addi	s0,sp,32
    80004d24:	00050493          	mv	s1,a0
        int i = 0;
    80004d28:	00000913          	li	s2,0
        while (!threadEnd) {
    80004d2c:	00007797          	auipc	a5,0x7
    80004d30:	26c7a783          	lw	a5,620(a5) # 8000bf98 <_ZL9threadEnd>
    80004d34:	04079263          	bnez	a5,80004d78 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004d38:	0204b783          	ld	a5,32(s1)
    80004d3c:	0007a583          	lw	a1,0(a5)
    80004d40:	0305859b          	addiw	a1,a1,48
    80004d44:	0087b503          	ld	a0,8(a5)
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	2e0080e7          	jalr	736(ra) # 80006028 <_ZN9BufferCPP3putEi>
            i++;
    80004d50:	0019071b          	addiw	a4,s2,1
    80004d54:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004d58:	0204b783          	ld	a5,32(s1)
    80004d5c:	0007a783          	lw	a5,0(a5)
    80004d60:	00e787bb          	addw	a5,a5,a4
    80004d64:	00500513          	li	a0,5
    80004d68:	02a7e53b          	remw	a0,a5,a0
    80004d6c:	ffffe097          	auipc	ra,0xffffe
    80004d70:	d24080e7          	jalr	-732(ra) # 80002a90 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004d74:	fb9ff06f          	j	80004d2c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004d78:	0204b783          	ld	a5,32(s1)
    80004d7c:	0107b503          	ld	a0,16(a5)
    80004d80:	ffffe097          	auipc	ra,0xffffe
    80004d84:	e00080e7          	jalr	-512(ra) # 80002b80 <_ZN9Semaphore6signalEv>
    }
    80004d88:	01813083          	ld	ra,24(sp)
    80004d8c:	01013403          	ld	s0,16(sp)
    80004d90:	00813483          	ld	s1,8(sp)
    80004d94:	00013903          	ld	s2,0(sp)
    80004d98:	02010113          	addi	sp,sp,32
    80004d9c:	00008067          	ret

0000000080004da0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004da0:	fe010113          	addi	sp,sp,-32
    80004da4:	00113c23          	sd	ra,24(sp)
    80004da8:	00813823          	sd	s0,16(sp)
    80004dac:	00913423          	sd	s1,8(sp)
    80004db0:	01213023          	sd	s2,0(sp)
    80004db4:	02010413          	addi	s0,sp,32
    80004db8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004dbc:	00100793          	li	a5,1
    80004dc0:	02a7f863          	bgeu	a5,a0,80004df0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004dc4:	00a00793          	li	a5,10
    80004dc8:	02f577b3          	remu	a5,a0,a5
    80004dcc:	02078e63          	beqz	a5,80004e08 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004dd0:	fff48513          	addi	a0,s1,-1
    80004dd4:	00000097          	auipc	ra,0x0
    80004dd8:	fcc080e7          	jalr	-52(ra) # 80004da0 <_ZL9fibonaccim>
    80004ddc:	00050913          	mv	s2,a0
    80004de0:	ffe48513          	addi	a0,s1,-2
    80004de4:	00000097          	auipc	ra,0x0
    80004de8:	fbc080e7          	jalr	-68(ra) # 80004da0 <_ZL9fibonaccim>
    80004dec:	00a90533          	add	a0,s2,a0
}
    80004df0:	01813083          	ld	ra,24(sp)
    80004df4:	01013403          	ld	s0,16(sp)
    80004df8:	00813483          	ld	s1,8(sp)
    80004dfc:	00013903          	ld	s2,0(sp)
    80004e00:	02010113          	addi	sp,sp,32
    80004e04:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004e08:	ffffc097          	auipc	ra,0xffffc
    80004e0c:	580080e7          	jalr	1408(ra) # 80001388 <_Z15thread_dispatchv>
    80004e10:	fc1ff06f          	j	80004dd0 <_ZL9fibonaccim+0x30>

0000000080004e14 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004e14:	fe010113          	addi	sp,sp,-32
    80004e18:	00113c23          	sd	ra,24(sp)
    80004e1c:	00813823          	sd	s0,16(sp)
    80004e20:	00913423          	sd	s1,8(sp)
    80004e24:	01213023          	sd	s2,0(sp)
    80004e28:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004e2c:	00a00493          	li	s1,10
    80004e30:	0400006f          	j	80004e70 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e34:	00004517          	auipc	a0,0x4
    80004e38:	7d450513          	addi	a0,a0,2004 # 80009608 <CONSOLE_STATUS+0x5f8>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	dc8080e7          	jalr	-568(ra) # 80005c04 <_Z11printStringPKc>
    80004e44:	00000613          	li	a2,0
    80004e48:	00a00593          	li	a1,10
    80004e4c:	00048513          	mv	a0,s1
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	f64080e7          	jalr	-156(ra) # 80005db4 <_Z8printIntiii>
    80004e58:	00004517          	auipc	a0,0x4
    80004e5c:	44850513          	addi	a0,a0,1096 # 800092a0 <CONSOLE_STATUS+0x290>
    80004e60:	00001097          	auipc	ra,0x1
    80004e64:	da4080e7          	jalr	-604(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004e68:	0014849b          	addiw	s1,s1,1
    80004e6c:	0ff4f493          	andi	s1,s1,255
    80004e70:	00c00793          	li	a5,12
    80004e74:	fc97f0e3          	bgeu	a5,s1,80004e34 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004e78:	00004517          	auipc	a0,0x4
    80004e7c:	79850513          	addi	a0,a0,1944 # 80009610 <CONSOLE_STATUS+0x600>
    80004e80:	00001097          	auipc	ra,0x1
    80004e84:	d84080e7          	jalr	-636(ra) # 80005c04 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004e88:	00500313          	li	t1,5
    thread_dispatch();
    80004e8c:	ffffc097          	auipc	ra,0xffffc
    80004e90:	4fc080e7          	jalr	1276(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004e94:	01000513          	li	a0,16
    80004e98:	00000097          	auipc	ra,0x0
    80004e9c:	f08080e7          	jalr	-248(ra) # 80004da0 <_ZL9fibonaccim>
    80004ea0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004ea4:	00004517          	auipc	a0,0x4
    80004ea8:	77c50513          	addi	a0,a0,1916 # 80009620 <CONSOLE_STATUS+0x610>
    80004eac:	00001097          	auipc	ra,0x1
    80004eb0:	d58080e7          	jalr	-680(ra) # 80005c04 <_Z11printStringPKc>
    80004eb4:	00000613          	li	a2,0
    80004eb8:	00a00593          	li	a1,10
    80004ebc:	0009051b          	sext.w	a0,s2
    80004ec0:	00001097          	auipc	ra,0x1
    80004ec4:	ef4080e7          	jalr	-268(ra) # 80005db4 <_Z8printIntiii>
    80004ec8:	00004517          	auipc	a0,0x4
    80004ecc:	3d850513          	addi	a0,a0,984 # 800092a0 <CONSOLE_STATUS+0x290>
    80004ed0:	00001097          	auipc	ra,0x1
    80004ed4:	d34080e7          	jalr	-716(ra) # 80005c04 <_Z11printStringPKc>
    80004ed8:	0400006f          	j	80004f18 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004edc:	00004517          	auipc	a0,0x4
    80004ee0:	72c50513          	addi	a0,a0,1836 # 80009608 <CONSOLE_STATUS+0x5f8>
    80004ee4:	00001097          	auipc	ra,0x1
    80004ee8:	d20080e7          	jalr	-736(ra) # 80005c04 <_Z11printStringPKc>
    80004eec:	00000613          	li	a2,0
    80004ef0:	00a00593          	li	a1,10
    80004ef4:	00048513          	mv	a0,s1
    80004ef8:	00001097          	auipc	ra,0x1
    80004efc:	ebc080e7          	jalr	-324(ra) # 80005db4 <_Z8printIntiii>
    80004f00:	00004517          	auipc	a0,0x4
    80004f04:	3a050513          	addi	a0,a0,928 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f08:	00001097          	auipc	ra,0x1
    80004f0c:	cfc080e7          	jalr	-772(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004f10:	0014849b          	addiw	s1,s1,1
    80004f14:	0ff4f493          	andi	s1,s1,255
    80004f18:	00f00793          	li	a5,15
    80004f1c:	fc97f0e3          	bgeu	a5,s1,80004edc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004f20:	00004517          	auipc	a0,0x4
    80004f24:	71050513          	addi	a0,a0,1808 # 80009630 <CONSOLE_STATUS+0x620>
    80004f28:	00001097          	auipc	ra,0x1
    80004f2c:	cdc080e7          	jalr	-804(ra) # 80005c04 <_Z11printStringPKc>
    finishedD = true;
    80004f30:	00100793          	li	a5,1
    80004f34:	00007717          	auipc	a4,0x7
    80004f38:	06f70a23          	sb	a5,116(a4) # 8000bfa8 <_ZL9finishedD>
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

0000000080004f5c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004f5c:	fe010113          	addi	sp,sp,-32
    80004f60:	00113c23          	sd	ra,24(sp)
    80004f64:	00813823          	sd	s0,16(sp)
    80004f68:	00913423          	sd	s1,8(sp)
    80004f6c:	01213023          	sd	s2,0(sp)
    80004f70:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004f74:	00000493          	li	s1,0
    80004f78:	0400006f          	j	80004fb8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004f7c:	00004517          	auipc	a0,0x4
    80004f80:	65c50513          	addi	a0,a0,1628 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80004f84:	00001097          	auipc	ra,0x1
    80004f88:	c80080e7          	jalr	-896(ra) # 80005c04 <_Z11printStringPKc>
    80004f8c:	00000613          	li	a2,0
    80004f90:	00a00593          	li	a1,10
    80004f94:	00048513          	mv	a0,s1
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	e1c080e7          	jalr	-484(ra) # 80005db4 <_Z8printIntiii>
    80004fa0:	00004517          	auipc	a0,0x4
    80004fa4:	30050513          	addi	a0,a0,768 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fa8:	00001097          	auipc	ra,0x1
    80004fac:	c5c080e7          	jalr	-932(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004fb0:	0014849b          	addiw	s1,s1,1
    80004fb4:	0ff4f493          	andi	s1,s1,255
    80004fb8:	00200793          	li	a5,2
    80004fbc:	fc97f0e3          	bgeu	a5,s1,80004f7c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004fc0:	00004517          	auipc	a0,0x4
    80004fc4:	62050513          	addi	a0,a0,1568 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80004fc8:	00001097          	auipc	ra,0x1
    80004fcc:	c3c080e7          	jalr	-964(ra) # 80005c04 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004fd0:	00700313          	li	t1,7
    thread_dispatch();
    80004fd4:	ffffc097          	auipc	ra,0xffffc
    80004fd8:	3b4080e7          	jalr	948(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004fdc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004fe0:	00004517          	auipc	a0,0x4
    80004fe4:	61050513          	addi	a0,a0,1552 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	c1c080e7          	jalr	-996(ra) # 80005c04 <_Z11printStringPKc>
    80004ff0:	00000613          	li	a2,0
    80004ff4:	00a00593          	li	a1,10
    80004ff8:	0009051b          	sext.w	a0,s2
    80004ffc:	00001097          	auipc	ra,0x1
    80005000:	db8080e7          	jalr	-584(ra) # 80005db4 <_Z8printIntiii>
    80005004:	00004517          	auipc	a0,0x4
    80005008:	29c50513          	addi	a0,a0,668 # 800092a0 <CONSOLE_STATUS+0x290>
    8000500c:	00001097          	auipc	ra,0x1
    80005010:	bf8080e7          	jalr	-1032(ra) # 80005c04 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005014:	00c00513          	li	a0,12
    80005018:	00000097          	auipc	ra,0x0
    8000501c:	d88080e7          	jalr	-632(ra) # 80004da0 <_ZL9fibonaccim>
    80005020:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005024:	00004517          	auipc	a0,0x4
    80005028:	5d450513          	addi	a0,a0,1492 # 800095f8 <CONSOLE_STATUS+0x5e8>
    8000502c:	00001097          	auipc	ra,0x1
    80005030:	bd8080e7          	jalr	-1064(ra) # 80005c04 <_Z11printStringPKc>
    80005034:	00000613          	li	a2,0
    80005038:	00a00593          	li	a1,10
    8000503c:	0009051b          	sext.w	a0,s2
    80005040:	00001097          	auipc	ra,0x1
    80005044:	d74080e7          	jalr	-652(ra) # 80005db4 <_Z8printIntiii>
    80005048:	00004517          	auipc	a0,0x4
    8000504c:	25850513          	addi	a0,a0,600 # 800092a0 <CONSOLE_STATUS+0x290>
    80005050:	00001097          	auipc	ra,0x1
    80005054:	bb4080e7          	jalr	-1100(ra) # 80005c04 <_Z11printStringPKc>
    80005058:	0400006f          	j	80005098 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000505c:	00004517          	auipc	a0,0x4
    80005060:	57c50513          	addi	a0,a0,1404 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005064:	00001097          	auipc	ra,0x1
    80005068:	ba0080e7          	jalr	-1120(ra) # 80005c04 <_Z11printStringPKc>
    8000506c:	00000613          	li	a2,0
    80005070:	00a00593          	li	a1,10
    80005074:	00048513          	mv	a0,s1
    80005078:	00001097          	auipc	ra,0x1
    8000507c:	d3c080e7          	jalr	-708(ra) # 80005db4 <_Z8printIntiii>
    80005080:	00004517          	auipc	a0,0x4
    80005084:	22050513          	addi	a0,a0,544 # 800092a0 <CONSOLE_STATUS+0x290>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	b7c080e7          	jalr	-1156(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005090:	0014849b          	addiw	s1,s1,1
    80005094:	0ff4f493          	andi	s1,s1,255
    80005098:	00500793          	li	a5,5
    8000509c:	fc97f0e3          	bgeu	a5,s1,8000505c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800050a0:	00004517          	auipc	a0,0x4
    800050a4:	51050513          	addi	a0,a0,1296 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800050a8:	00001097          	auipc	ra,0x1
    800050ac:	b5c080e7          	jalr	-1188(ra) # 80005c04 <_Z11printStringPKc>
    finishedC = true;
    800050b0:	00100793          	li	a5,1
    800050b4:	00007717          	auipc	a4,0x7
    800050b8:	eef70aa3          	sb	a5,-267(a4) # 8000bfa9 <_ZL9finishedC>
    thread_dispatch();
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	2cc080e7          	jalr	716(ra) # 80001388 <_Z15thread_dispatchv>
}
    800050c4:	01813083          	ld	ra,24(sp)
    800050c8:	01013403          	ld	s0,16(sp)
    800050cc:	00813483          	ld	s1,8(sp)
    800050d0:	00013903          	ld	s2,0(sp)
    800050d4:	02010113          	addi	sp,sp,32
    800050d8:	00008067          	ret

00000000800050dc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800050dc:	fe010113          	addi	sp,sp,-32
    800050e0:	00113c23          	sd	ra,24(sp)
    800050e4:	00813823          	sd	s0,16(sp)
    800050e8:	00913423          	sd	s1,8(sp)
    800050ec:	01213023          	sd	s2,0(sp)
    800050f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800050f4:	00000913          	li	s2,0
    800050f8:	0380006f          	j	80005130 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800050fc:	ffffc097          	auipc	ra,0xffffc
    80005100:	28c080e7          	jalr	652(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005104:	00148493          	addi	s1,s1,1
    80005108:	000027b7          	lui	a5,0x2
    8000510c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005110:	0097ee63          	bltu	a5,s1,8000512c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005114:	00000713          	li	a4,0
    80005118:	000077b7          	lui	a5,0x7
    8000511c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005120:	fce7eee3          	bltu	a5,a4,800050fc <_ZL11workerBodyBPv+0x20>
    80005124:	00170713          	addi	a4,a4,1
    80005128:	ff1ff06f          	j	80005118 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000512c:	00190913          	addi	s2,s2,1
    80005130:	00f00793          	li	a5,15
    80005134:	0527e063          	bltu	a5,s2,80005174 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005138:	00004517          	auipc	a0,0x4
    8000513c:	48850513          	addi	a0,a0,1160 # 800095c0 <CONSOLE_STATUS+0x5b0>
    80005140:	00001097          	auipc	ra,0x1
    80005144:	ac4080e7          	jalr	-1340(ra) # 80005c04 <_Z11printStringPKc>
    80005148:	00000613          	li	a2,0
    8000514c:	00a00593          	li	a1,10
    80005150:	0009051b          	sext.w	a0,s2
    80005154:	00001097          	auipc	ra,0x1
    80005158:	c60080e7          	jalr	-928(ra) # 80005db4 <_Z8printIntiii>
    8000515c:	00004517          	auipc	a0,0x4
    80005160:	14450513          	addi	a0,a0,324 # 800092a0 <CONSOLE_STATUS+0x290>
    80005164:	00001097          	auipc	ra,0x1
    80005168:	aa0080e7          	jalr	-1376(ra) # 80005c04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000516c:	00000493          	li	s1,0
    80005170:	f99ff06f          	j	80005108 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005174:	00004517          	auipc	a0,0x4
    80005178:	45450513          	addi	a0,a0,1108 # 800095c8 <CONSOLE_STATUS+0x5b8>
    8000517c:	00001097          	auipc	ra,0x1
    80005180:	a88080e7          	jalr	-1400(ra) # 80005c04 <_Z11printStringPKc>
    finishedB = true;
    80005184:	00100793          	li	a5,1
    80005188:	00007717          	auipc	a4,0x7
    8000518c:	e2f70123          	sb	a5,-478(a4) # 8000bfaa <_ZL9finishedB>
    thread_dispatch();
    80005190:	ffffc097          	auipc	ra,0xffffc
    80005194:	1f8080e7          	jalr	504(ra) # 80001388 <_Z15thread_dispatchv>
}
    80005198:	01813083          	ld	ra,24(sp)
    8000519c:	01013403          	ld	s0,16(sp)
    800051a0:	00813483          	ld	s1,8(sp)
    800051a4:	00013903          	ld	s2,0(sp)
    800051a8:	02010113          	addi	sp,sp,32
    800051ac:	00008067          	ret

00000000800051b0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800051b0:	fe010113          	addi	sp,sp,-32
    800051b4:	00113c23          	sd	ra,24(sp)
    800051b8:	00813823          	sd	s0,16(sp)
    800051bc:	00913423          	sd	s1,8(sp)
    800051c0:	01213023          	sd	s2,0(sp)
    800051c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800051c8:	00000913          	li	s2,0
    800051cc:	0380006f          	j	80005204 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800051d0:	ffffc097          	auipc	ra,0xffffc
    800051d4:	1b8080e7          	jalr	440(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800051d8:	00148493          	addi	s1,s1,1
    800051dc:	000027b7          	lui	a5,0x2
    800051e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800051e4:	0097ee63          	bltu	a5,s1,80005200 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800051e8:	00000713          	li	a4,0
    800051ec:	000077b7          	lui	a5,0x7
    800051f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800051f4:	fce7eee3          	bltu	a5,a4,800051d0 <_ZL11workerBodyAPv+0x20>
    800051f8:	00170713          	addi	a4,a4,1
    800051fc:	ff1ff06f          	j	800051ec <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005200:	00190913          	addi	s2,s2,1
    80005204:	00900793          	li	a5,9
    80005208:	0527e063          	bltu	a5,s2,80005248 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000520c:	00004517          	auipc	a0,0x4
    80005210:	39c50513          	addi	a0,a0,924 # 800095a8 <CONSOLE_STATUS+0x598>
    80005214:	00001097          	auipc	ra,0x1
    80005218:	9f0080e7          	jalr	-1552(ra) # 80005c04 <_Z11printStringPKc>
    8000521c:	00000613          	li	a2,0
    80005220:	00a00593          	li	a1,10
    80005224:	0009051b          	sext.w	a0,s2
    80005228:	00001097          	auipc	ra,0x1
    8000522c:	b8c080e7          	jalr	-1140(ra) # 80005db4 <_Z8printIntiii>
    80005230:	00004517          	auipc	a0,0x4
    80005234:	07050513          	addi	a0,a0,112 # 800092a0 <CONSOLE_STATUS+0x290>
    80005238:	00001097          	auipc	ra,0x1
    8000523c:	9cc080e7          	jalr	-1588(ra) # 80005c04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005240:	00000493          	li	s1,0
    80005244:	f99ff06f          	j	800051dc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005248:	00004517          	auipc	a0,0x4
    8000524c:	36850513          	addi	a0,a0,872 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80005250:	00001097          	auipc	ra,0x1
    80005254:	9b4080e7          	jalr	-1612(ra) # 80005c04 <_Z11printStringPKc>
    finishedA = true;
    80005258:	00100793          	li	a5,1
    8000525c:	00007717          	auipc	a4,0x7
    80005260:	d4f707a3          	sb	a5,-689(a4) # 8000bfab <_ZL9finishedA>
}
    80005264:	01813083          	ld	ra,24(sp)
    80005268:	01013403          	ld	s0,16(sp)
    8000526c:	00813483          	ld	s1,8(sp)
    80005270:	00013903          	ld	s2,0(sp)
    80005274:	02010113          	addi	sp,sp,32
    80005278:	00008067          	ret

000000008000527c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000527c:	fd010113          	addi	sp,sp,-48
    80005280:	02113423          	sd	ra,40(sp)
    80005284:	02813023          	sd	s0,32(sp)
    80005288:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000528c:	00000613          	li	a2,0
    80005290:	00000597          	auipc	a1,0x0
    80005294:	f2058593          	addi	a1,a1,-224 # 800051b0 <_ZL11workerBodyAPv>
    80005298:	fd040513          	addi	a0,s0,-48
    8000529c:	ffffc097          	auipc	ra,0xffffc
    800052a0:	fe8080e7          	jalr	-24(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800052a4:	00004517          	auipc	a0,0x4
    800052a8:	39c50513          	addi	a0,a0,924 # 80009640 <CONSOLE_STATUS+0x630>
    800052ac:	00001097          	auipc	ra,0x1
    800052b0:	958080e7          	jalr	-1704(ra) # 80005c04 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800052b4:	00000613          	li	a2,0
    800052b8:	00000597          	auipc	a1,0x0
    800052bc:	e2458593          	addi	a1,a1,-476 # 800050dc <_ZL11workerBodyBPv>
    800052c0:	fd840513          	addi	a0,s0,-40
    800052c4:	ffffc097          	auipc	ra,0xffffc
    800052c8:	fc0080e7          	jalr	-64(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800052cc:	00004517          	auipc	a0,0x4
    800052d0:	38c50513          	addi	a0,a0,908 # 80009658 <CONSOLE_STATUS+0x648>
    800052d4:	00001097          	auipc	ra,0x1
    800052d8:	930080e7          	jalr	-1744(ra) # 80005c04 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800052dc:	00000613          	li	a2,0
    800052e0:	00000597          	auipc	a1,0x0
    800052e4:	c7c58593          	addi	a1,a1,-900 # 80004f5c <_ZL11workerBodyCPv>
    800052e8:	fe040513          	addi	a0,s0,-32
    800052ec:	ffffc097          	auipc	ra,0xffffc
    800052f0:	f98080e7          	jalr	-104(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800052f4:	00004517          	auipc	a0,0x4
    800052f8:	37c50513          	addi	a0,a0,892 # 80009670 <CONSOLE_STATUS+0x660>
    800052fc:	00001097          	auipc	ra,0x1
    80005300:	908080e7          	jalr	-1784(ra) # 80005c04 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005304:	00000613          	li	a2,0
    80005308:	00000597          	auipc	a1,0x0
    8000530c:	b0c58593          	addi	a1,a1,-1268 # 80004e14 <_ZL11workerBodyDPv>
    80005310:	fe840513          	addi	a0,s0,-24
    80005314:	ffffc097          	auipc	ra,0xffffc
    80005318:	f70080e7          	jalr	-144(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    8000531c:	00004517          	auipc	a0,0x4
    80005320:	36c50513          	addi	a0,a0,876 # 80009688 <CONSOLE_STATUS+0x678>
    80005324:	00001097          	auipc	ra,0x1
    80005328:	8e0080e7          	jalr	-1824(ra) # 80005c04 <_Z11printStringPKc>
    8000532c:	00c0006f          	j	80005338 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	058080e7          	jalr	88(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005338:	00007797          	auipc	a5,0x7
    8000533c:	c737c783          	lbu	a5,-909(a5) # 8000bfab <_ZL9finishedA>
    80005340:	fe0788e3          	beqz	a5,80005330 <_Z18Threads_C_API_testv+0xb4>
    80005344:	00007797          	auipc	a5,0x7
    80005348:	c667c783          	lbu	a5,-922(a5) # 8000bfaa <_ZL9finishedB>
    8000534c:	fe0782e3          	beqz	a5,80005330 <_Z18Threads_C_API_testv+0xb4>
    80005350:	00007797          	auipc	a5,0x7
    80005354:	c597c783          	lbu	a5,-935(a5) # 8000bfa9 <_ZL9finishedC>
    80005358:	fc078ce3          	beqz	a5,80005330 <_Z18Threads_C_API_testv+0xb4>
    8000535c:	00007797          	auipc	a5,0x7
    80005360:	c4c7c783          	lbu	a5,-948(a5) # 8000bfa8 <_ZL9finishedD>
    80005364:	fc0786e3          	beqz	a5,80005330 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005368:	02813083          	ld	ra,40(sp)
    8000536c:	02013403          	ld	s0,32(sp)
    80005370:	03010113          	addi	sp,sp,48
    80005374:	00008067          	ret

0000000080005378 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005378:	fd010113          	addi	sp,sp,-48
    8000537c:	02113423          	sd	ra,40(sp)
    80005380:	02813023          	sd	s0,32(sp)
    80005384:	00913c23          	sd	s1,24(sp)
    80005388:	01213823          	sd	s2,16(sp)
    8000538c:	01313423          	sd	s3,8(sp)
    80005390:	03010413          	addi	s0,sp,48
    80005394:	00050993          	mv	s3,a0
    80005398:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000539c:	00000913          	li	s2,0
    800053a0:	00c0006f          	j	800053ac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800053a4:	ffffd097          	auipc	ra,0xffffd
    800053a8:	6c4080e7          	jalr	1732(ra) # 80002a68 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800053ac:	ffffc097          	auipc	ra,0xffffc
    800053b0:	264080e7          	jalr	612(ra) # 80001610 <_Z4getcv>
    800053b4:	0005059b          	sext.w	a1,a0
    800053b8:	01b00793          	li	a5,27
    800053bc:	02f58a63          	beq	a1,a5,800053f0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800053c0:	0084b503          	ld	a0,8(s1)
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	c64080e7          	jalr	-924(ra) # 80006028 <_ZN9BufferCPP3putEi>
        i++;
    800053cc:	0019071b          	addiw	a4,s2,1
    800053d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800053d4:	0004a683          	lw	a3,0(s1)
    800053d8:	0026979b          	slliw	a5,a3,0x2
    800053dc:	00d787bb          	addw	a5,a5,a3
    800053e0:	0017979b          	slliw	a5,a5,0x1
    800053e4:	02f767bb          	remw	a5,a4,a5
    800053e8:	fc0792e3          	bnez	a5,800053ac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800053ec:	fb9ff06f          	j	800053a4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800053f0:	00100793          	li	a5,1
    800053f4:	00007717          	auipc	a4,0x7
    800053f8:	baf72e23          	sw	a5,-1092(a4) # 8000bfb0 <_ZL9threadEnd>
    td->buffer->put('!');
    800053fc:	0209b783          	ld	a5,32(s3)
    80005400:	02100593          	li	a1,33
    80005404:	0087b503          	ld	a0,8(a5)
    80005408:	00001097          	auipc	ra,0x1
    8000540c:	c20080e7          	jalr	-992(ra) # 80006028 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005410:	0104b503          	ld	a0,16(s1)
    80005414:	ffffd097          	auipc	ra,0xffffd
    80005418:	76c080e7          	jalr	1900(ra) # 80002b80 <_ZN9Semaphore6signalEv>
}
    8000541c:	02813083          	ld	ra,40(sp)
    80005420:	02013403          	ld	s0,32(sp)
    80005424:	01813483          	ld	s1,24(sp)
    80005428:	01013903          	ld	s2,16(sp)
    8000542c:	00813983          	ld	s3,8(sp)
    80005430:	03010113          	addi	sp,sp,48
    80005434:	00008067          	ret

0000000080005438 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005438:	fe010113          	addi	sp,sp,-32
    8000543c:	00113c23          	sd	ra,24(sp)
    80005440:	00813823          	sd	s0,16(sp)
    80005444:	00913423          	sd	s1,8(sp)
    80005448:	01213023          	sd	s2,0(sp)
    8000544c:	02010413          	addi	s0,sp,32
    80005450:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005454:	00000913          	li	s2,0
    80005458:	00c0006f          	j	80005464 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	60c080e7          	jalr	1548(ra) # 80002a68 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005464:	00007797          	auipc	a5,0x7
    80005468:	b4c7a783          	lw	a5,-1204(a5) # 8000bfb0 <_ZL9threadEnd>
    8000546c:	02079e63          	bnez	a5,800054a8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005470:	0004a583          	lw	a1,0(s1)
    80005474:	0305859b          	addiw	a1,a1,48
    80005478:	0084b503          	ld	a0,8(s1)
    8000547c:	00001097          	auipc	ra,0x1
    80005480:	bac080e7          	jalr	-1108(ra) # 80006028 <_ZN9BufferCPP3putEi>
        i++;
    80005484:	0019071b          	addiw	a4,s2,1
    80005488:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000548c:	0004a683          	lw	a3,0(s1)
    80005490:	0026979b          	slliw	a5,a3,0x2
    80005494:	00d787bb          	addw	a5,a5,a3
    80005498:	0017979b          	slliw	a5,a5,0x1
    8000549c:	02f767bb          	remw	a5,a4,a5
    800054a0:	fc0792e3          	bnez	a5,80005464 <_ZN12ProducerSync8producerEPv+0x2c>
    800054a4:	fb9ff06f          	j	8000545c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800054a8:	0104b503          	ld	a0,16(s1)
    800054ac:	ffffd097          	auipc	ra,0xffffd
    800054b0:	6d4080e7          	jalr	1748(ra) # 80002b80 <_ZN9Semaphore6signalEv>
}
    800054b4:	01813083          	ld	ra,24(sp)
    800054b8:	01013403          	ld	s0,16(sp)
    800054bc:	00813483          	ld	s1,8(sp)
    800054c0:	00013903          	ld	s2,0(sp)
    800054c4:	02010113          	addi	sp,sp,32
    800054c8:	00008067          	ret

00000000800054cc <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800054cc:	fd010113          	addi	sp,sp,-48
    800054d0:	02113423          	sd	ra,40(sp)
    800054d4:	02813023          	sd	s0,32(sp)
    800054d8:	00913c23          	sd	s1,24(sp)
    800054dc:	01213823          	sd	s2,16(sp)
    800054e0:	01313423          	sd	s3,8(sp)
    800054e4:	01413023          	sd	s4,0(sp)
    800054e8:	03010413          	addi	s0,sp,48
    800054ec:	00050993          	mv	s3,a0
    800054f0:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800054f4:	00000a13          	li	s4,0
    800054f8:	01c0006f          	j	80005514 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	56c080e7          	jalr	1388(ra) # 80002a68 <_ZN6Thread8dispatchEv>
    80005504:	0500006f          	j	80005554 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005508:	00a00513          	li	a0,10
    8000550c:	ffffc097          	auipc	ra,0xffffc
    80005510:	144080e7          	jalr	324(ra) # 80001650 <_Z4putcc>
    while (!threadEnd) {
    80005514:	00007797          	auipc	a5,0x7
    80005518:	a9c7a783          	lw	a5,-1380(a5) # 8000bfb0 <_ZL9threadEnd>
    8000551c:	06079263          	bnez	a5,80005580 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005520:	00893503          	ld	a0,8(s2)
    80005524:	00001097          	auipc	ra,0x1
    80005528:	b94080e7          	jalr	-1132(ra) # 800060b8 <_ZN9BufferCPP3getEv>
        i++;
    8000552c:	001a049b          	addiw	s1,s4,1
    80005530:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005534:	0ff57513          	andi	a0,a0,255
    80005538:	ffffc097          	auipc	ra,0xffffc
    8000553c:	118080e7          	jalr	280(ra) # 80001650 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005540:	00092703          	lw	a4,0(s2)
    80005544:	0027179b          	slliw	a5,a4,0x2
    80005548:	00e787bb          	addw	a5,a5,a4
    8000554c:	02f4e7bb          	remw	a5,s1,a5
    80005550:	fa0786e3          	beqz	a5,800054fc <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005554:	05000793          	li	a5,80
    80005558:	02f4e4bb          	remw	s1,s1,a5
    8000555c:	fa049ce3          	bnez	s1,80005514 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005560:	fa9ff06f          	j	80005508 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005564:	0209b783          	ld	a5,32(s3)
    80005568:	0087b503          	ld	a0,8(a5)
    8000556c:	00001097          	auipc	ra,0x1
    80005570:	b4c080e7          	jalr	-1204(ra) # 800060b8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005574:	0ff57513          	andi	a0,a0,255
    80005578:	ffffd097          	auipc	ra,0xffffd
    8000557c:	6c4080e7          	jalr	1732(ra) # 80002c3c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005580:	0209b783          	ld	a5,32(s3)
    80005584:	0087b503          	ld	a0,8(a5)
    80005588:	00001097          	auipc	ra,0x1
    8000558c:	bbc080e7          	jalr	-1092(ra) # 80006144 <_ZN9BufferCPP6getCntEv>
    80005590:	fca04ae3          	bgtz	a0,80005564 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005594:	01093503          	ld	a0,16(s2)
    80005598:	ffffd097          	auipc	ra,0xffffd
    8000559c:	5e8080e7          	jalr	1512(ra) # 80002b80 <_ZN9Semaphore6signalEv>
}
    800055a0:	02813083          	ld	ra,40(sp)
    800055a4:	02013403          	ld	s0,32(sp)
    800055a8:	01813483          	ld	s1,24(sp)
    800055ac:	01013903          	ld	s2,16(sp)
    800055b0:	00813983          	ld	s3,8(sp)
    800055b4:	00013a03          	ld	s4,0(sp)
    800055b8:	03010113          	addi	sp,sp,48
    800055bc:	00008067          	ret

00000000800055c0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800055c0:	f8010113          	addi	sp,sp,-128
    800055c4:	06113c23          	sd	ra,120(sp)
    800055c8:	06813823          	sd	s0,112(sp)
    800055cc:	06913423          	sd	s1,104(sp)
    800055d0:	07213023          	sd	s2,96(sp)
    800055d4:	05313c23          	sd	s3,88(sp)
    800055d8:	05413823          	sd	s4,80(sp)
    800055dc:	05513423          	sd	s5,72(sp)
    800055e0:	05613023          	sd	s6,64(sp)
    800055e4:	03713c23          	sd	s7,56(sp)
    800055e8:	03813823          	sd	s8,48(sp)
    800055ec:	03913423          	sd	s9,40(sp)
    800055f0:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800055f4:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800055f8:	00004517          	auipc	a0,0x4
    800055fc:	ec850513          	addi	a0,a0,-312 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80005600:	00000097          	auipc	ra,0x0
    80005604:	604080e7          	jalr	1540(ra) # 80005c04 <_Z11printStringPKc>
    getString(input, 30);
    80005608:	01e00593          	li	a1,30
    8000560c:	f8040493          	addi	s1,s0,-128
    80005610:	00048513          	mv	a0,s1
    80005614:	00000097          	auipc	ra,0x0
    80005618:	678080e7          	jalr	1656(ra) # 80005c8c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000561c:	00048513          	mv	a0,s1
    80005620:	00000097          	auipc	ra,0x0
    80005624:	744080e7          	jalr	1860(ra) # 80005d64 <_Z11stringToIntPKc>
    80005628:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000562c:	00004517          	auipc	a0,0x4
    80005630:	eb450513          	addi	a0,a0,-332 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005634:	00000097          	auipc	ra,0x0
    80005638:	5d0080e7          	jalr	1488(ra) # 80005c04 <_Z11printStringPKc>
    getString(input, 30);
    8000563c:	01e00593          	li	a1,30
    80005640:	00048513          	mv	a0,s1
    80005644:	00000097          	auipc	ra,0x0
    80005648:	648080e7          	jalr	1608(ra) # 80005c8c <_Z9getStringPci>
    n = stringToInt(input);
    8000564c:	00048513          	mv	a0,s1
    80005650:	00000097          	auipc	ra,0x0
    80005654:	714080e7          	jalr	1812(ra) # 80005d64 <_Z11stringToIntPKc>
    80005658:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000565c:	00004517          	auipc	a0,0x4
    80005660:	ea450513          	addi	a0,a0,-348 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005664:	00000097          	auipc	ra,0x0
    80005668:	5a0080e7          	jalr	1440(ra) # 80005c04 <_Z11printStringPKc>
    8000566c:	00000613          	li	a2,0
    80005670:	00a00593          	li	a1,10
    80005674:	00090513          	mv	a0,s2
    80005678:	00000097          	auipc	ra,0x0
    8000567c:	73c080e7          	jalr	1852(ra) # 80005db4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005680:	00004517          	auipc	a0,0x4
    80005684:	e9850513          	addi	a0,a0,-360 # 80009518 <CONSOLE_STATUS+0x508>
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	57c080e7          	jalr	1404(ra) # 80005c04 <_Z11printStringPKc>
    80005690:	00000613          	li	a2,0
    80005694:	00a00593          	li	a1,10
    80005698:	00048513          	mv	a0,s1
    8000569c:	00000097          	auipc	ra,0x0
    800056a0:	718080e7          	jalr	1816(ra) # 80005db4 <_Z8printIntiii>
    printString(".\n");
    800056a4:	00004517          	auipc	a0,0x4
    800056a8:	e8c50513          	addi	a0,a0,-372 # 80009530 <CONSOLE_STATUS+0x520>
    800056ac:	00000097          	auipc	ra,0x0
    800056b0:	558080e7          	jalr	1368(ra) # 80005c04 <_Z11printStringPKc>
    if(threadNum > n) {
    800056b4:	0324c463          	blt	s1,s2,800056dc <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800056b8:	03205c63          	blez	s2,800056f0 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800056bc:	03800513          	li	a0,56
    800056c0:	ffffd097          	auipc	ra,0xffffd
    800056c4:	04c080e7          	jalr	76(ra) # 8000270c <_Znwm>
    800056c8:	00050a93          	mv	s5,a0
    800056cc:	00048593          	mv	a1,s1
    800056d0:	00001097          	auipc	ra,0x1
    800056d4:	804080e7          	jalr	-2044(ra) # 80005ed4 <_ZN9BufferCPPC1Ei>
    800056d8:	0300006f          	j	80005708 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800056dc:	00004517          	auipc	a0,0x4
    800056e0:	e5c50513          	addi	a0,a0,-420 # 80009538 <CONSOLE_STATUS+0x528>
    800056e4:	00000097          	auipc	ra,0x0
    800056e8:	520080e7          	jalr	1312(ra) # 80005c04 <_Z11printStringPKc>
        return;
    800056ec:	0140006f          	j	80005700 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800056f0:	00004517          	auipc	a0,0x4
    800056f4:	e8850513          	addi	a0,a0,-376 # 80009578 <CONSOLE_STATUS+0x568>
    800056f8:	00000097          	auipc	ra,0x0
    800056fc:	50c080e7          	jalr	1292(ra) # 80005c04 <_Z11printStringPKc>
        return;
    80005700:	000b8113          	mv	sp,s7
    80005704:	2380006f          	j	8000593c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005708:	01000513          	li	a0,16
    8000570c:	ffffd097          	auipc	ra,0xffffd
    80005710:	000080e7          	jalr	ra # 8000270c <_Znwm>
    80005714:	00050493          	mv	s1,a0
    80005718:	00000593          	li	a1,0
    8000571c:	ffffd097          	auipc	ra,0xffffd
    80005720:	3fc080e7          	jalr	1020(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80005724:	00007797          	auipc	a5,0x7
    80005728:	8897ba23          	sd	s1,-1900(a5) # 8000bfb8 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000572c:	00391793          	slli	a5,s2,0x3
    80005730:	00f78793          	addi	a5,a5,15
    80005734:	ff07f793          	andi	a5,a5,-16
    80005738:	40f10133          	sub	sp,sp,a5
    8000573c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005740:	0019071b          	addiw	a4,s2,1
    80005744:	00171793          	slli	a5,a4,0x1
    80005748:	00e787b3          	add	a5,a5,a4
    8000574c:	00379793          	slli	a5,a5,0x3
    80005750:	00f78793          	addi	a5,a5,15
    80005754:	ff07f793          	andi	a5,a5,-16
    80005758:	40f10133          	sub	sp,sp,a5
    8000575c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005760:	00191c13          	slli	s8,s2,0x1
    80005764:	012c07b3          	add	a5,s8,s2
    80005768:	00379793          	slli	a5,a5,0x3
    8000576c:	00fa07b3          	add	a5,s4,a5
    80005770:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005774:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005778:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000577c:	02800513          	li	a0,40
    80005780:	ffffd097          	auipc	ra,0xffffd
    80005784:	f8c080e7          	jalr	-116(ra) # 8000270c <_Znwm>
    80005788:	00050b13          	mv	s6,a0
    8000578c:	012c0c33          	add	s8,s8,s2
    80005790:	003c1c13          	slli	s8,s8,0x3
    80005794:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005798:	ffffd097          	auipc	ra,0xffffd
    8000579c:	24c080e7          	jalr	588(ra) # 800029e4 <_ZN6ThreadC1Ev>
    800057a0:	00006797          	auipc	a5,0x6
    800057a4:	70078793          	addi	a5,a5,1792 # 8000bea0 <_ZTV12ConsumerSync+0x10>
    800057a8:	00fb3023          	sd	a5,0(s6)
    800057ac:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800057b0:	000b0513          	mv	a0,s6
    800057b4:	ffffd097          	auipc	ra,0xffffd
    800057b8:	260080e7          	jalr	608(ra) # 80002a14 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800057bc:	00000493          	li	s1,0
    800057c0:	0380006f          	j	800057f8 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800057c4:	00006797          	auipc	a5,0x6
    800057c8:	6b478793          	addi	a5,a5,1716 # 8000be78 <_ZTV12ProducerSync+0x10>
    800057cc:	00fcb023          	sd	a5,0(s9)
    800057d0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800057d4:	00349793          	slli	a5,s1,0x3
    800057d8:	00f987b3          	add	a5,s3,a5
    800057dc:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800057e0:	00349793          	slli	a5,s1,0x3
    800057e4:	00f987b3          	add	a5,s3,a5
    800057e8:	0007b503          	ld	a0,0(a5)
    800057ec:	ffffd097          	auipc	ra,0xffffd
    800057f0:	228080e7          	jalr	552(ra) # 80002a14 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800057f4:	0014849b          	addiw	s1,s1,1
    800057f8:	0b24d063          	bge	s1,s2,80005898 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800057fc:	00149793          	slli	a5,s1,0x1
    80005800:	009787b3          	add	a5,a5,s1
    80005804:	00379793          	slli	a5,a5,0x3
    80005808:	00fa07b3          	add	a5,s4,a5
    8000580c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005810:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005814:	00006717          	auipc	a4,0x6
    80005818:	7a473703          	ld	a4,1956(a4) # 8000bfb8 <_ZL10waitForAll>
    8000581c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005820:	02905863          	blez	s1,80005850 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005824:	02800513          	li	a0,40
    80005828:	ffffd097          	auipc	ra,0xffffd
    8000582c:	ee4080e7          	jalr	-284(ra) # 8000270c <_Znwm>
    80005830:	00050c93          	mv	s9,a0
    80005834:	00149c13          	slli	s8,s1,0x1
    80005838:	009c0c33          	add	s8,s8,s1
    8000583c:	003c1c13          	slli	s8,s8,0x3
    80005840:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005844:	ffffd097          	auipc	ra,0xffffd
    80005848:	1a0080e7          	jalr	416(ra) # 800029e4 <_ZN6ThreadC1Ev>
    8000584c:	f79ff06f          	j	800057c4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005850:	02800513          	li	a0,40
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	eb8080e7          	jalr	-328(ra) # 8000270c <_Znwm>
    8000585c:	00050c93          	mv	s9,a0
    80005860:	00149c13          	slli	s8,s1,0x1
    80005864:	009c0c33          	add	s8,s8,s1
    80005868:	003c1c13          	slli	s8,s8,0x3
    8000586c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005870:	ffffd097          	auipc	ra,0xffffd
    80005874:	174080e7          	jalr	372(ra) # 800029e4 <_ZN6ThreadC1Ev>
    80005878:	00006797          	auipc	a5,0x6
    8000587c:	5d878793          	addi	a5,a5,1496 # 8000be50 <_ZTV16ProducerKeyboard+0x10>
    80005880:	00fcb023          	sd	a5,0(s9)
    80005884:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005888:	00349793          	slli	a5,s1,0x3
    8000588c:	00f987b3          	add	a5,s3,a5
    80005890:	0197b023          	sd	s9,0(a5)
    80005894:	f4dff06f          	j	800057e0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005898:	ffffd097          	auipc	ra,0xffffd
    8000589c:	1d0080e7          	jalr	464(ra) # 80002a68 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800058a0:	00000493          	li	s1,0
    800058a4:	00994e63          	blt	s2,s1,800058c0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800058a8:	00006517          	auipc	a0,0x6
    800058ac:	71053503          	ld	a0,1808(a0) # 8000bfb8 <_ZL10waitForAll>
    800058b0:	ffffd097          	auipc	ra,0xffffd
    800058b4:	2a4080e7          	jalr	676(ra) # 80002b54 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800058b8:	0014849b          	addiw	s1,s1,1
    800058bc:	fe9ff06f          	j	800058a4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800058c0:	00000493          	li	s1,0
    800058c4:	0080006f          	j	800058cc <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800058c8:	0014849b          	addiw	s1,s1,1
    800058cc:	0324d263          	bge	s1,s2,800058f0 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800058d0:	00349793          	slli	a5,s1,0x3
    800058d4:	00f987b3          	add	a5,s3,a5
    800058d8:	0007b503          	ld	a0,0(a5)
    800058dc:	fe0506e3          	beqz	a0,800058c8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800058e0:	00053783          	ld	a5,0(a0)
    800058e4:	0087b783          	ld	a5,8(a5)
    800058e8:	000780e7          	jalr	a5
    800058ec:	fddff06f          	j	800058c8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    800058f0:	000b0a63          	beqz	s6,80005904 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    800058f4:	000b3783          	ld	a5,0(s6)
    800058f8:	0087b783          	ld	a5,8(a5)
    800058fc:	000b0513          	mv	a0,s6
    80005900:	000780e7          	jalr	a5
    delete waitForAll;
    80005904:	00006517          	auipc	a0,0x6
    80005908:	6b453503          	ld	a0,1716(a0) # 8000bfb8 <_ZL10waitForAll>
    8000590c:	00050863          	beqz	a0,8000591c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005910:	00053783          	ld	a5,0(a0)
    80005914:	0087b783          	ld	a5,8(a5)
    80005918:	000780e7          	jalr	a5
    delete buffer;
    8000591c:	000a8e63          	beqz	s5,80005938 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005920:	000a8513          	mv	a0,s5
    80005924:	00001097          	auipc	ra,0x1
    80005928:	8a8080e7          	jalr	-1880(ra) # 800061cc <_ZN9BufferCPPD1Ev>
    8000592c:	000a8513          	mv	a0,s5
    80005930:	ffffd097          	auipc	ra,0xffffd
    80005934:	e2c080e7          	jalr	-468(ra) # 8000275c <_ZdlPv>
    80005938:	000b8113          	mv	sp,s7

}
    8000593c:	f8040113          	addi	sp,s0,-128
    80005940:	07813083          	ld	ra,120(sp)
    80005944:	07013403          	ld	s0,112(sp)
    80005948:	06813483          	ld	s1,104(sp)
    8000594c:	06013903          	ld	s2,96(sp)
    80005950:	05813983          	ld	s3,88(sp)
    80005954:	05013a03          	ld	s4,80(sp)
    80005958:	04813a83          	ld	s5,72(sp)
    8000595c:	04013b03          	ld	s6,64(sp)
    80005960:	03813b83          	ld	s7,56(sp)
    80005964:	03013c03          	ld	s8,48(sp)
    80005968:	02813c83          	ld	s9,40(sp)
    8000596c:	08010113          	addi	sp,sp,128
    80005970:	00008067          	ret
    80005974:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005978:	000a8513          	mv	a0,s5
    8000597c:	ffffd097          	auipc	ra,0xffffd
    80005980:	de0080e7          	jalr	-544(ra) # 8000275c <_ZdlPv>
    80005984:	00048513          	mv	a0,s1
    80005988:	00007097          	auipc	ra,0x7
    8000598c:	710080e7          	jalr	1808(ra) # 8000d098 <_Unwind_Resume>
    80005990:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005994:	00048513          	mv	a0,s1
    80005998:	ffffd097          	auipc	ra,0xffffd
    8000599c:	dc4080e7          	jalr	-572(ra) # 8000275c <_ZdlPv>
    800059a0:	00090513          	mv	a0,s2
    800059a4:	00007097          	auipc	ra,0x7
    800059a8:	6f4080e7          	jalr	1780(ra) # 8000d098 <_Unwind_Resume>
    800059ac:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800059b0:	000b0513          	mv	a0,s6
    800059b4:	ffffd097          	auipc	ra,0xffffd
    800059b8:	da8080e7          	jalr	-600(ra) # 8000275c <_ZdlPv>
    800059bc:	00048513          	mv	a0,s1
    800059c0:	00007097          	auipc	ra,0x7
    800059c4:	6d8080e7          	jalr	1752(ra) # 8000d098 <_Unwind_Resume>
    800059c8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800059cc:	000c8513          	mv	a0,s9
    800059d0:	ffffd097          	auipc	ra,0xffffd
    800059d4:	d8c080e7          	jalr	-628(ra) # 8000275c <_ZdlPv>
    800059d8:	00048513          	mv	a0,s1
    800059dc:	00007097          	auipc	ra,0x7
    800059e0:	6bc080e7          	jalr	1724(ra) # 8000d098 <_Unwind_Resume>
    800059e4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800059e8:	000c8513          	mv	a0,s9
    800059ec:	ffffd097          	auipc	ra,0xffffd
    800059f0:	d70080e7          	jalr	-656(ra) # 8000275c <_ZdlPv>
    800059f4:	00048513          	mv	a0,s1
    800059f8:	00007097          	auipc	ra,0x7
    800059fc:	6a0080e7          	jalr	1696(ra) # 8000d098 <_Unwind_Resume>

0000000080005a00 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005a00:	ff010113          	addi	sp,sp,-16
    80005a04:	00113423          	sd	ra,8(sp)
    80005a08:	00813023          	sd	s0,0(sp)
    80005a0c:	01010413          	addi	s0,sp,16
    80005a10:	00006797          	auipc	a5,0x6
    80005a14:	49078793          	addi	a5,a5,1168 # 8000bea0 <_ZTV12ConsumerSync+0x10>
    80005a18:	00f53023          	sd	a5,0(a0)
    80005a1c:	ffffd097          	auipc	ra,0xffffd
    80005a20:	ea4080e7          	jalr	-348(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80005a24:	00813083          	ld	ra,8(sp)
    80005a28:	00013403          	ld	s0,0(sp)
    80005a2c:	01010113          	addi	sp,sp,16
    80005a30:	00008067          	ret

0000000080005a34 <_ZN12ConsumerSyncD0Ev>:
    80005a34:	fe010113          	addi	sp,sp,-32
    80005a38:	00113c23          	sd	ra,24(sp)
    80005a3c:	00813823          	sd	s0,16(sp)
    80005a40:	00913423          	sd	s1,8(sp)
    80005a44:	02010413          	addi	s0,sp,32
    80005a48:	00050493          	mv	s1,a0
    80005a4c:	00006797          	auipc	a5,0x6
    80005a50:	45478793          	addi	a5,a5,1108 # 8000bea0 <_ZTV12ConsumerSync+0x10>
    80005a54:	00f53023          	sd	a5,0(a0)
    80005a58:	ffffd097          	auipc	ra,0xffffd
    80005a5c:	e68080e7          	jalr	-408(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80005a60:	00048513          	mv	a0,s1
    80005a64:	ffffd097          	auipc	ra,0xffffd
    80005a68:	cf8080e7          	jalr	-776(ra) # 8000275c <_ZdlPv>
    80005a6c:	01813083          	ld	ra,24(sp)
    80005a70:	01013403          	ld	s0,16(sp)
    80005a74:	00813483          	ld	s1,8(sp)
    80005a78:	02010113          	addi	sp,sp,32
    80005a7c:	00008067          	ret

0000000080005a80 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005a80:	ff010113          	addi	sp,sp,-16
    80005a84:	00113423          	sd	ra,8(sp)
    80005a88:	00813023          	sd	s0,0(sp)
    80005a8c:	01010413          	addi	s0,sp,16
    80005a90:	00006797          	auipc	a5,0x6
    80005a94:	3e878793          	addi	a5,a5,1000 # 8000be78 <_ZTV12ProducerSync+0x10>
    80005a98:	00f53023          	sd	a5,0(a0)
    80005a9c:	ffffd097          	auipc	ra,0xffffd
    80005aa0:	e24080e7          	jalr	-476(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80005aa4:	00813083          	ld	ra,8(sp)
    80005aa8:	00013403          	ld	s0,0(sp)
    80005aac:	01010113          	addi	sp,sp,16
    80005ab0:	00008067          	ret

0000000080005ab4 <_ZN12ProducerSyncD0Ev>:
    80005ab4:	fe010113          	addi	sp,sp,-32
    80005ab8:	00113c23          	sd	ra,24(sp)
    80005abc:	00813823          	sd	s0,16(sp)
    80005ac0:	00913423          	sd	s1,8(sp)
    80005ac4:	02010413          	addi	s0,sp,32
    80005ac8:	00050493          	mv	s1,a0
    80005acc:	00006797          	auipc	a5,0x6
    80005ad0:	3ac78793          	addi	a5,a5,940 # 8000be78 <_ZTV12ProducerSync+0x10>
    80005ad4:	00f53023          	sd	a5,0(a0)
    80005ad8:	ffffd097          	auipc	ra,0xffffd
    80005adc:	de8080e7          	jalr	-536(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80005ae0:	00048513          	mv	a0,s1
    80005ae4:	ffffd097          	auipc	ra,0xffffd
    80005ae8:	c78080e7          	jalr	-904(ra) # 8000275c <_ZdlPv>
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	00813483          	ld	s1,8(sp)
    80005af8:	02010113          	addi	sp,sp,32
    80005afc:	00008067          	ret

0000000080005b00 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005b00:	ff010113          	addi	sp,sp,-16
    80005b04:	00113423          	sd	ra,8(sp)
    80005b08:	00813023          	sd	s0,0(sp)
    80005b0c:	01010413          	addi	s0,sp,16
    80005b10:	00006797          	auipc	a5,0x6
    80005b14:	34078793          	addi	a5,a5,832 # 8000be50 <_ZTV16ProducerKeyboard+0x10>
    80005b18:	00f53023          	sd	a5,0(a0)
    80005b1c:	ffffd097          	auipc	ra,0xffffd
    80005b20:	da4080e7          	jalr	-604(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80005b24:	00813083          	ld	ra,8(sp)
    80005b28:	00013403          	ld	s0,0(sp)
    80005b2c:	01010113          	addi	sp,sp,16
    80005b30:	00008067          	ret

0000000080005b34 <_ZN16ProducerKeyboardD0Ev>:
    80005b34:	fe010113          	addi	sp,sp,-32
    80005b38:	00113c23          	sd	ra,24(sp)
    80005b3c:	00813823          	sd	s0,16(sp)
    80005b40:	00913423          	sd	s1,8(sp)
    80005b44:	02010413          	addi	s0,sp,32
    80005b48:	00050493          	mv	s1,a0
    80005b4c:	00006797          	auipc	a5,0x6
    80005b50:	30478793          	addi	a5,a5,772 # 8000be50 <_ZTV16ProducerKeyboard+0x10>
    80005b54:	00f53023          	sd	a5,0(a0)
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	d68080e7          	jalr	-664(ra) # 800028c0 <_ZN6ThreadD1Ev>
    80005b60:	00048513          	mv	a0,s1
    80005b64:	ffffd097          	auipc	ra,0xffffd
    80005b68:	bf8080e7          	jalr	-1032(ra) # 8000275c <_ZdlPv>
    80005b6c:	01813083          	ld	ra,24(sp)
    80005b70:	01013403          	ld	s0,16(sp)
    80005b74:	00813483          	ld	s1,8(sp)
    80005b78:	02010113          	addi	sp,sp,32
    80005b7c:	00008067          	ret

0000000080005b80 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005b80:	ff010113          	addi	sp,sp,-16
    80005b84:	00113423          	sd	ra,8(sp)
    80005b88:	00813023          	sd	s0,0(sp)
    80005b8c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005b90:	02053583          	ld	a1,32(a0)
    80005b94:	fffff097          	auipc	ra,0xfffff
    80005b98:	7e4080e7          	jalr	2020(ra) # 80005378 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005b9c:	00813083          	ld	ra,8(sp)
    80005ba0:	00013403          	ld	s0,0(sp)
    80005ba4:	01010113          	addi	sp,sp,16
    80005ba8:	00008067          	ret

0000000080005bac <_ZN12ProducerSync3runEv>:
    void run() override {
    80005bac:	ff010113          	addi	sp,sp,-16
    80005bb0:	00113423          	sd	ra,8(sp)
    80005bb4:	00813023          	sd	s0,0(sp)
    80005bb8:	01010413          	addi	s0,sp,16
        producer(td);
    80005bbc:	02053583          	ld	a1,32(a0)
    80005bc0:	00000097          	auipc	ra,0x0
    80005bc4:	878080e7          	jalr	-1928(ra) # 80005438 <_ZN12ProducerSync8producerEPv>
    }
    80005bc8:	00813083          	ld	ra,8(sp)
    80005bcc:	00013403          	ld	s0,0(sp)
    80005bd0:	01010113          	addi	sp,sp,16
    80005bd4:	00008067          	ret

0000000080005bd8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005bd8:	ff010113          	addi	sp,sp,-16
    80005bdc:	00113423          	sd	ra,8(sp)
    80005be0:	00813023          	sd	s0,0(sp)
    80005be4:	01010413          	addi	s0,sp,16
        consumer(td);
    80005be8:	02053583          	ld	a1,32(a0)
    80005bec:	00000097          	auipc	ra,0x0
    80005bf0:	8e0080e7          	jalr	-1824(ra) # 800054cc <_ZN12ConsumerSync8consumerEPv>
    }
    80005bf4:	00813083          	ld	ra,8(sp)
    80005bf8:	00013403          	ld	s0,0(sp)
    80005bfc:	01010113          	addi	sp,sp,16
    80005c00:	00008067          	ret

0000000080005c04 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005c04:	fe010113          	addi	sp,sp,-32
    80005c08:	00113c23          	sd	ra,24(sp)
    80005c0c:	00813823          	sd	s0,16(sp)
    80005c10:	00913423          	sd	s1,8(sp)
    80005c14:	02010413          	addi	s0,sp,32
    80005c18:	00050493          	mv	s1,a0
    LOCK();
    80005c1c:	00100613          	li	a2,1
    80005c20:	00000593          	li	a1,0
    80005c24:	00006517          	auipc	a0,0x6
    80005c28:	39c50513          	addi	a0,a0,924 # 8000bfc0 <lockPrint>
    80005c2c:	ffffb097          	auipc	ra,0xffffb
    80005c30:	578080e7          	jalr	1400(ra) # 800011a4 <copy_and_swap>
    80005c34:	00050863          	beqz	a0,80005c44 <_Z11printStringPKc+0x40>
    80005c38:	ffffb097          	auipc	ra,0xffffb
    80005c3c:	750080e7          	jalr	1872(ra) # 80001388 <_Z15thread_dispatchv>
    80005c40:	fddff06f          	j	80005c1c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005c44:	0004c503          	lbu	a0,0(s1)
    80005c48:	00050a63          	beqz	a0,80005c5c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	a04080e7          	jalr	-1532(ra) # 80001650 <_Z4putcc>
        string++;
    80005c54:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005c58:	fedff06f          	j	80005c44 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005c5c:	00000613          	li	a2,0
    80005c60:	00100593          	li	a1,1
    80005c64:	00006517          	auipc	a0,0x6
    80005c68:	35c50513          	addi	a0,a0,860 # 8000bfc0 <lockPrint>
    80005c6c:	ffffb097          	auipc	ra,0xffffb
    80005c70:	538080e7          	jalr	1336(ra) # 800011a4 <copy_and_swap>
    80005c74:	fe0514e3          	bnez	a0,80005c5c <_Z11printStringPKc+0x58>
}
    80005c78:	01813083          	ld	ra,24(sp)
    80005c7c:	01013403          	ld	s0,16(sp)
    80005c80:	00813483          	ld	s1,8(sp)
    80005c84:	02010113          	addi	sp,sp,32
    80005c88:	00008067          	ret

0000000080005c8c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005c8c:	fd010113          	addi	sp,sp,-48
    80005c90:	02113423          	sd	ra,40(sp)
    80005c94:	02813023          	sd	s0,32(sp)
    80005c98:	00913c23          	sd	s1,24(sp)
    80005c9c:	01213823          	sd	s2,16(sp)
    80005ca0:	01313423          	sd	s3,8(sp)
    80005ca4:	01413023          	sd	s4,0(sp)
    80005ca8:	03010413          	addi	s0,sp,48
    80005cac:	00050993          	mv	s3,a0
    80005cb0:	00058a13          	mv	s4,a1
    LOCK();
    80005cb4:	00100613          	li	a2,1
    80005cb8:	00000593          	li	a1,0
    80005cbc:	00006517          	auipc	a0,0x6
    80005cc0:	30450513          	addi	a0,a0,772 # 8000bfc0 <lockPrint>
    80005cc4:	ffffb097          	auipc	ra,0xffffb
    80005cc8:	4e0080e7          	jalr	1248(ra) # 800011a4 <copy_and_swap>
    80005ccc:	00050863          	beqz	a0,80005cdc <_Z9getStringPci+0x50>
    80005cd0:	ffffb097          	auipc	ra,0xffffb
    80005cd4:	6b8080e7          	jalr	1720(ra) # 80001388 <_Z15thread_dispatchv>
    80005cd8:	fddff06f          	j	80005cb4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005cdc:	00000913          	li	s2,0
    80005ce0:	00090493          	mv	s1,s2
    80005ce4:	0019091b          	addiw	s2,s2,1
    80005ce8:	03495a63          	bge	s2,s4,80005d1c <_Z9getStringPci+0x90>
        cc = getc();
    80005cec:	ffffc097          	auipc	ra,0xffffc
    80005cf0:	924080e7          	jalr	-1756(ra) # 80001610 <_Z4getcv>
        if(cc < 1)
    80005cf4:	02050463          	beqz	a0,80005d1c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005cf8:	009984b3          	add	s1,s3,s1
    80005cfc:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005d00:	00a00793          	li	a5,10
    80005d04:	00f50a63          	beq	a0,a5,80005d18 <_Z9getStringPci+0x8c>
    80005d08:	00d00793          	li	a5,13
    80005d0c:	fcf51ae3          	bne	a0,a5,80005ce0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005d10:	00090493          	mv	s1,s2
    80005d14:	0080006f          	j	80005d1c <_Z9getStringPci+0x90>
    80005d18:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005d1c:	009984b3          	add	s1,s3,s1
    80005d20:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005d24:	00000613          	li	a2,0
    80005d28:	00100593          	li	a1,1
    80005d2c:	00006517          	auipc	a0,0x6
    80005d30:	29450513          	addi	a0,a0,660 # 8000bfc0 <lockPrint>
    80005d34:	ffffb097          	auipc	ra,0xffffb
    80005d38:	470080e7          	jalr	1136(ra) # 800011a4 <copy_and_swap>
    80005d3c:	fe0514e3          	bnez	a0,80005d24 <_Z9getStringPci+0x98>
    return buf;
}
    80005d40:	00098513          	mv	a0,s3
    80005d44:	02813083          	ld	ra,40(sp)
    80005d48:	02013403          	ld	s0,32(sp)
    80005d4c:	01813483          	ld	s1,24(sp)
    80005d50:	01013903          	ld	s2,16(sp)
    80005d54:	00813983          	ld	s3,8(sp)
    80005d58:	00013a03          	ld	s4,0(sp)
    80005d5c:	03010113          	addi	sp,sp,48
    80005d60:	00008067          	ret

0000000080005d64 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005d64:	ff010113          	addi	sp,sp,-16
    80005d68:	00813423          	sd	s0,8(sp)
    80005d6c:	01010413          	addi	s0,sp,16
    80005d70:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005d74:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005d78:	0006c603          	lbu	a2,0(a3)
    80005d7c:	fd06071b          	addiw	a4,a2,-48
    80005d80:	0ff77713          	andi	a4,a4,255
    80005d84:	00900793          	li	a5,9
    80005d88:	02e7e063          	bltu	a5,a4,80005da8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005d8c:	0025179b          	slliw	a5,a0,0x2
    80005d90:	00a787bb          	addw	a5,a5,a0
    80005d94:	0017979b          	slliw	a5,a5,0x1
    80005d98:	00168693          	addi	a3,a3,1
    80005d9c:	00c787bb          	addw	a5,a5,a2
    80005da0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005da4:	fd5ff06f          	j	80005d78 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005da8:	00813403          	ld	s0,8(sp)
    80005dac:	01010113          	addi	sp,sp,16
    80005db0:	00008067          	ret

0000000080005db4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005db4:	fc010113          	addi	sp,sp,-64
    80005db8:	02113c23          	sd	ra,56(sp)
    80005dbc:	02813823          	sd	s0,48(sp)
    80005dc0:	02913423          	sd	s1,40(sp)
    80005dc4:	03213023          	sd	s2,32(sp)
    80005dc8:	01313c23          	sd	s3,24(sp)
    80005dcc:	04010413          	addi	s0,sp,64
    80005dd0:	00050493          	mv	s1,a0
    80005dd4:	00058913          	mv	s2,a1
    80005dd8:	00060993          	mv	s3,a2
    LOCK();
    80005ddc:	00100613          	li	a2,1
    80005de0:	00000593          	li	a1,0
    80005de4:	00006517          	auipc	a0,0x6
    80005de8:	1dc50513          	addi	a0,a0,476 # 8000bfc0 <lockPrint>
    80005dec:	ffffb097          	auipc	ra,0xffffb
    80005df0:	3b8080e7          	jalr	952(ra) # 800011a4 <copy_and_swap>
    80005df4:	00050863          	beqz	a0,80005e04 <_Z8printIntiii+0x50>
    80005df8:	ffffb097          	auipc	ra,0xffffb
    80005dfc:	590080e7          	jalr	1424(ra) # 80001388 <_Z15thread_dispatchv>
    80005e00:	fddff06f          	j	80005ddc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005e04:	00098463          	beqz	s3,80005e0c <_Z8printIntiii+0x58>
    80005e08:	0804c463          	bltz	s1,80005e90 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005e0c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005e10:	00000593          	li	a1,0
    }

    i = 0;
    80005e14:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005e18:	0009079b          	sext.w	a5,s2
    80005e1c:	0325773b          	remuw	a4,a0,s2
    80005e20:	00048613          	mv	a2,s1
    80005e24:	0014849b          	addiw	s1,s1,1
    80005e28:	02071693          	slli	a3,a4,0x20
    80005e2c:	0206d693          	srli	a3,a3,0x20
    80005e30:	00006717          	auipc	a4,0x6
    80005e34:	08870713          	addi	a4,a4,136 # 8000beb8 <digits>
    80005e38:	00d70733          	add	a4,a4,a3
    80005e3c:	00074683          	lbu	a3,0(a4)
    80005e40:	fd040713          	addi	a4,s0,-48
    80005e44:	00c70733          	add	a4,a4,a2
    80005e48:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005e4c:	0005071b          	sext.w	a4,a0
    80005e50:	0325553b          	divuw	a0,a0,s2
    80005e54:	fcf772e3          	bgeu	a4,a5,80005e18 <_Z8printIntiii+0x64>
    if(neg)
    80005e58:	00058c63          	beqz	a1,80005e70 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005e5c:	fd040793          	addi	a5,s0,-48
    80005e60:	009784b3          	add	s1,a5,s1
    80005e64:	02d00793          	li	a5,45
    80005e68:	fef48823          	sb	a5,-16(s1)
    80005e6c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005e70:	fff4849b          	addiw	s1,s1,-1
    80005e74:	0204c463          	bltz	s1,80005e9c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005e78:	fd040793          	addi	a5,s0,-48
    80005e7c:	009787b3          	add	a5,a5,s1
    80005e80:	ff07c503          	lbu	a0,-16(a5)
    80005e84:	ffffb097          	auipc	ra,0xffffb
    80005e88:	7cc080e7          	jalr	1996(ra) # 80001650 <_Z4putcc>
    80005e8c:	fe5ff06f          	j	80005e70 <_Z8printIntiii+0xbc>
        x = -xx;
    80005e90:	4090053b          	negw	a0,s1
        neg = 1;
    80005e94:	00100593          	li	a1,1
        x = -xx;
    80005e98:	f7dff06f          	j	80005e14 <_Z8printIntiii+0x60>

    UNLOCK();
    80005e9c:	00000613          	li	a2,0
    80005ea0:	00100593          	li	a1,1
    80005ea4:	00006517          	auipc	a0,0x6
    80005ea8:	11c50513          	addi	a0,a0,284 # 8000bfc0 <lockPrint>
    80005eac:	ffffb097          	auipc	ra,0xffffb
    80005eb0:	2f8080e7          	jalr	760(ra) # 800011a4 <copy_and_swap>
    80005eb4:	fe0514e3          	bnez	a0,80005e9c <_Z8printIntiii+0xe8>
    80005eb8:	03813083          	ld	ra,56(sp)
    80005ebc:	03013403          	ld	s0,48(sp)
    80005ec0:	02813483          	ld	s1,40(sp)
    80005ec4:	02013903          	ld	s2,32(sp)
    80005ec8:	01813983          	ld	s3,24(sp)
    80005ecc:	04010113          	addi	sp,sp,64
    80005ed0:	00008067          	ret

0000000080005ed4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005ed4:	fd010113          	addi	sp,sp,-48
    80005ed8:	02113423          	sd	ra,40(sp)
    80005edc:	02813023          	sd	s0,32(sp)
    80005ee0:	00913c23          	sd	s1,24(sp)
    80005ee4:	01213823          	sd	s2,16(sp)
    80005ee8:	01313423          	sd	s3,8(sp)
    80005eec:	03010413          	addi	s0,sp,48
    80005ef0:	00050493          	mv	s1,a0
    80005ef4:	00058913          	mv	s2,a1
    80005ef8:	0015879b          	addiw	a5,a1,1
    80005efc:	0007851b          	sext.w	a0,a5
    80005f00:	00f4a023          	sw	a5,0(s1)
    80005f04:	0004a823          	sw	zero,16(s1)
    80005f08:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005f0c:	00251513          	slli	a0,a0,0x2
    80005f10:	ffffb097          	auipc	ra,0xffffb
    80005f14:	2e8080e7          	jalr	744(ra) # 800011f8 <_Z9mem_allocm>
    80005f18:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005f1c:	01000513          	li	a0,16
    80005f20:	ffffc097          	auipc	ra,0xffffc
    80005f24:	7ec080e7          	jalr	2028(ra) # 8000270c <_Znwm>
    80005f28:	00050993          	mv	s3,a0
    80005f2c:	00000593          	li	a1,0
    80005f30:	ffffd097          	auipc	ra,0xffffd
    80005f34:	be8080e7          	jalr	-1048(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80005f38:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005f3c:	01000513          	li	a0,16
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	7cc080e7          	jalr	1996(ra) # 8000270c <_Znwm>
    80005f48:	00050993          	mv	s3,a0
    80005f4c:	00090593          	mv	a1,s2
    80005f50:	ffffd097          	auipc	ra,0xffffd
    80005f54:	bc8080e7          	jalr	-1080(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80005f58:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005f5c:	01000513          	li	a0,16
    80005f60:	ffffc097          	auipc	ra,0xffffc
    80005f64:	7ac080e7          	jalr	1964(ra) # 8000270c <_Znwm>
    80005f68:	00050913          	mv	s2,a0
    80005f6c:	00100593          	li	a1,1
    80005f70:	ffffd097          	auipc	ra,0xffffd
    80005f74:	ba8080e7          	jalr	-1112(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80005f78:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005f7c:	01000513          	li	a0,16
    80005f80:	ffffc097          	auipc	ra,0xffffc
    80005f84:	78c080e7          	jalr	1932(ra) # 8000270c <_Znwm>
    80005f88:	00050913          	mv	s2,a0
    80005f8c:	00100593          	li	a1,1
    80005f90:	ffffd097          	auipc	ra,0xffffd
    80005f94:	b88080e7          	jalr	-1144(ra) # 80002b18 <_ZN9SemaphoreC1Ej>
    80005f98:	0324b823          	sd	s2,48(s1)
}
    80005f9c:	02813083          	ld	ra,40(sp)
    80005fa0:	02013403          	ld	s0,32(sp)
    80005fa4:	01813483          	ld	s1,24(sp)
    80005fa8:	01013903          	ld	s2,16(sp)
    80005fac:	00813983          	ld	s3,8(sp)
    80005fb0:	03010113          	addi	sp,sp,48
    80005fb4:	00008067          	ret
    80005fb8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005fbc:	00098513          	mv	a0,s3
    80005fc0:	ffffc097          	auipc	ra,0xffffc
    80005fc4:	79c080e7          	jalr	1948(ra) # 8000275c <_ZdlPv>
    80005fc8:	00048513          	mv	a0,s1
    80005fcc:	00007097          	auipc	ra,0x7
    80005fd0:	0cc080e7          	jalr	204(ra) # 8000d098 <_Unwind_Resume>
    80005fd4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005fd8:	00098513          	mv	a0,s3
    80005fdc:	ffffc097          	auipc	ra,0xffffc
    80005fe0:	780080e7          	jalr	1920(ra) # 8000275c <_ZdlPv>
    80005fe4:	00048513          	mv	a0,s1
    80005fe8:	00007097          	auipc	ra,0x7
    80005fec:	0b0080e7          	jalr	176(ra) # 8000d098 <_Unwind_Resume>
    80005ff0:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005ff4:	00090513          	mv	a0,s2
    80005ff8:	ffffc097          	auipc	ra,0xffffc
    80005ffc:	764080e7          	jalr	1892(ra) # 8000275c <_ZdlPv>
    80006000:	00048513          	mv	a0,s1
    80006004:	00007097          	auipc	ra,0x7
    80006008:	094080e7          	jalr	148(ra) # 8000d098 <_Unwind_Resume>
    8000600c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80006010:	00090513          	mv	a0,s2
    80006014:	ffffc097          	auipc	ra,0xffffc
    80006018:	748080e7          	jalr	1864(ra) # 8000275c <_ZdlPv>
    8000601c:	00048513          	mv	a0,s1
    80006020:	00007097          	auipc	ra,0x7
    80006024:	078080e7          	jalr	120(ra) # 8000d098 <_Unwind_Resume>

0000000080006028 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006028:	fe010113          	addi	sp,sp,-32
    8000602c:	00113c23          	sd	ra,24(sp)
    80006030:	00813823          	sd	s0,16(sp)
    80006034:	00913423          	sd	s1,8(sp)
    80006038:	01213023          	sd	s2,0(sp)
    8000603c:	02010413          	addi	s0,sp,32
    80006040:	00050493          	mv	s1,a0
    80006044:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006048:	01853503          	ld	a0,24(a0)
    8000604c:	ffffd097          	auipc	ra,0xffffd
    80006050:	b08080e7          	jalr	-1272(ra) # 80002b54 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006054:	0304b503          	ld	a0,48(s1)
    80006058:	ffffd097          	auipc	ra,0xffffd
    8000605c:	afc080e7          	jalr	-1284(ra) # 80002b54 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80006060:	0084b783          	ld	a5,8(s1)
    80006064:	0144a703          	lw	a4,20(s1)
    80006068:	00271713          	slli	a4,a4,0x2
    8000606c:	00e787b3          	add	a5,a5,a4
    80006070:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006074:	0144a783          	lw	a5,20(s1)
    80006078:	0017879b          	addiw	a5,a5,1
    8000607c:	0004a703          	lw	a4,0(s1)
    80006080:	02e7e7bb          	remw	a5,a5,a4
    80006084:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006088:	0304b503          	ld	a0,48(s1)
    8000608c:	ffffd097          	auipc	ra,0xffffd
    80006090:	af4080e7          	jalr	-1292(ra) # 80002b80 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006094:	0204b503          	ld	a0,32(s1)
    80006098:	ffffd097          	auipc	ra,0xffffd
    8000609c:	ae8080e7          	jalr	-1304(ra) # 80002b80 <_ZN9Semaphore6signalEv>

}
    800060a0:	01813083          	ld	ra,24(sp)
    800060a4:	01013403          	ld	s0,16(sp)
    800060a8:	00813483          	ld	s1,8(sp)
    800060ac:	00013903          	ld	s2,0(sp)
    800060b0:	02010113          	addi	sp,sp,32
    800060b4:	00008067          	ret

00000000800060b8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800060b8:	fe010113          	addi	sp,sp,-32
    800060bc:	00113c23          	sd	ra,24(sp)
    800060c0:	00813823          	sd	s0,16(sp)
    800060c4:	00913423          	sd	s1,8(sp)
    800060c8:	01213023          	sd	s2,0(sp)
    800060cc:	02010413          	addi	s0,sp,32
    800060d0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800060d4:	02053503          	ld	a0,32(a0)
    800060d8:	ffffd097          	auipc	ra,0xffffd
    800060dc:	a7c080e7          	jalr	-1412(ra) # 80002b54 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800060e0:	0284b503          	ld	a0,40(s1)
    800060e4:	ffffd097          	auipc	ra,0xffffd
    800060e8:	a70080e7          	jalr	-1424(ra) # 80002b54 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800060ec:	0084b703          	ld	a4,8(s1)
    800060f0:	0104a783          	lw	a5,16(s1)
    800060f4:	00279693          	slli	a3,a5,0x2
    800060f8:	00d70733          	add	a4,a4,a3
    800060fc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006100:	0017879b          	addiw	a5,a5,1
    80006104:	0004a703          	lw	a4,0(s1)
    80006108:	02e7e7bb          	remw	a5,a5,a4
    8000610c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006110:	0284b503          	ld	a0,40(s1)
    80006114:	ffffd097          	auipc	ra,0xffffd
    80006118:	a6c080e7          	jalr	-1428(ra) # 80002b80 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000611c:	0184b503          	ld	a0,24(s1)
    80006120:	ffffd097          	auipc	ra,0xffffd
    80006124:	a60080e7          	jalr	-1440(ra) # 80002b80 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006128:	00090513          	mv	a0,s2
    8000612c:	01813083          	ld	ra,24(sp)
    80006130:	01013403          	ld	s0,16(sp)
    80006134:	00813483          	ld	s1,8(sp)
    80006138:	00013903          	ld	s2,0(sp)
    8000613c:	02010113          	addi	sp,sp,32
    80006140:	00008067          	ret

0000000080006144 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006144:	fe010113          	addi	sp,sp,-32
    80006148:	00113c23          	sd	ra,24(sp)
    8000614c:	00813823          	sd	s0,16(sp)
    80006150:	00913423          	sd	s1,8(sp)
    80006154:	01213023          	sd	s2,0(sp)
    80006158:	02010413          	addi	s0,sp,32
    8000615c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006160:	02853503          	ld	a0,40(a0)
    80006164:	ffffd097          	auipc	ra,0xffffd
    80006168:	9f0080e7          	jalr	-1552(ra) # 80002b54 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000616c:	0304b503          	ld	a0,48(s1)
    80006170:	ffffd097          	auipc	ra,0xffffd
    80006174:	9e4080e7          	jalr	-1564(ra) # 80002b54 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006178:	0144a783          	lw	a5,20(s1)
    8000617c:	0104a903          	lw	s2,16(s1)
    80006180:	0327ce63          	blt	a5,s2,800061bc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006184:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006188:	0304b503          	ld	a0,48(s1)
    8000618c:	ffffd097          	auipc	ra,0xffffd
    80006190:	9f4080e7          	jalr	-1548(ra) # 80002b80 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006194:	0284b503          	ld	a0,40(s1)
    80006198:	ffffd097          	auipc	ra,0xffffd
    8000619c:	9e8080e7          	jalr	-1560(ra) # 80002b80 <_ZN9Semaphore6signalEv>

    return ret;
}
    800061a0:	00090513          	mv	a0,s2
    800061a4:	01813083          	ld	ra,24(sp)
    800061a8:	01013403          	ld	s0,16(sp)
    800061ac:	00813483          	ld	s1,8(sp)
    800061b0:	00013903          	ld	s2,0(sp)
    800061b4:	02010113          	addi	sp,sp,32
    800061b8:	00008067          	ret
        ret = cap - head + tail;
    800061bc:	0004a703          	lw	a4,0(s1)
    800061c0:	4127093b          	subw	s2,a4,s2
    800061c4:	00f9093b          	addw	s2,s2,a5
    800061c8:	fc1ff06f          	j	80006188 <_ZN9BufferCPP6getCntEv+0x44>

00000000800061cc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800061cc:	fe010113          	addi	sp,sp,-32
    800061d0:	00113c23          	sd	ra,24(sp)
    800061d4:	00813823          	sd	s0,16(sp)
    800061d8:	00913423          	sd	s1,8(sp)
    800061dc:	02010413          	addi	s0,sp,32
    800061e0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800061e4:	00a00513          	li	a0,10
    800061e8:	ffffd097          	auipc	ra,0xffffd
    800061ec:	a54080e7          	jalr	-1452(ra) # 80002c3c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800061f0:	00003517          	auipc	a0,0x3
    800061f4:	4b050513          	addi	a0,a0,1200 # 800096a0 <CONSOLE_STATUS+0x690>
    800061f8:	00000097          	auipc	ra,0x0
    800061fc:	a0c080e7          	jalr	-1524(ra) # 80005c04 <_Z11printStringPKc>
    while (getCnt()) {
    80006200:	00048513          	mv	a0,s1
    80006204:	00000097          	auipc	ra,0x0
    80006208:	f40080e7          	jalr	-192(ra) # 80006144 <_ZN9BufferCPP6getCntEv>
    8000620c:	02050c63          	beqz	a0,80006244 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006210:	0084b783          	ld	a5,8(s1)
    80006214:	0104a703          	lw	a4,16(s1)
    80006218:	00271713          	slli	a4,a4,0x2
    8000621c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006220:	0007c503          	lbu	a0,0(a5)
    80006224:	ffffd097          	auipc	ra,0xffffd
    80006228:	a18080e7          	jalr	-1512(ra) # 80002c3c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000622c:	0104a783          	lw	a5,16(s1)
    80006230:	0017879b          	addiw	a5,a5,1
    80006234:	0004a703          	lw	a4,0(s1)
    80006238:	02e7e7bb          	remw	a5,a5,a4
    8000623c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006240:	fc1ff06f          	j	80006200 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006244:	02100513          	li	a0,33
    80006248:	ffffd097          	auipc	ra,0xffffd
    8000624c:	9f4080e7          	jalr	-1548(ra) # 80002c3c <_ZN7Console4putcEc>
    Console::putc('\n');
    80006250:	00a00513          	li	a0,10
    80006254:	ffffd097          	auipc	ra,0xffffd
    80006258:	9e8080e7          	jalr	-1560(ra) # 80002c3c <_ZN7Console4putcEc>
    mem_free(buffer);
    8000625c:	0084b503          	ld	a0,8(s1)
    80006260:	ffffb097          	auipc	ra,0xffffb
    80006264:	fe4080e7          	jalr	-28(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    80006268:	0204b503          	ld	a0,32(s1)
    8000626c:	00050863          	beqz	a0,8000627c <_ZN9BufferCPPD1Ev+0xb0>
    80006270:	00053783          	ld	a5,0(a0)
    80006274:	0087b783          	ld	a5,8(a5)
    80006278:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000627c:	0184b503          	ld	a0,24(s1)
    80006280:	00050863          	beqz	a0,80006290 <_ZN9BufferCPPD1Ev+0xc4>
    80006284:	00053783          	ld	a5,0(a0)
    80006288:	0087b783          	ld	a5,8(a5)
    8000628c:	000780e7          	jalr	a5
    delete mutexTail;
    80006290:	0304b503          	ld	a0,48(s1)
    80006294:	00050863          	beqz	a0,800062a4 <_ZN9BufferCPPD1Ev+0xd8>
    80006298:	00053783          	ld	a5,0(a0)
    8000629c:	0087b783          	ld	a5,8(a5)
    800062a0:	000780e7          	jalr	a5
    delete mutexHead;
    800062a4:	0284b503          	ld	a0,40(s1)
    800062a8:	00050863          	beqz	a0,800062b8 <_ZN9BufferCPPD1Ev+0xec>
    800062ac:	00053783          	ld	a5,0(a0)
    800062b0:	0087b783          	ld	a5,8(a5)
    800062b4:	000780e7          	jalr	a5
}
    800062b8:	01813083          	ld	ra,24(sp)
    800062bc:	01013403          	ld	s0,16(sp)
    800062c0:	00813483          	ld	s1,8(sp)
    800062c4:	02010113          	addi	sp,sp,32
    800062c8:	00008067          	ret

00000000800062cc <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800062cc:	fe010113          	addi	sp,sp,-32
    800062d0:	00113c23          	sd	ra,24(sp)
    800062d4:	00813823          	sd	s0,16(sp)
    800062d8:	00913423          	sd	s1,8(sp)
    800062dc:	01213023          	sd	s2,0(sp)
    800062e0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800062e4:	00053903          	ld	s2,0(a0)
    int i = 6;
    800062e8:	00600493          	li	s1,6
    while (--i > 0) {
    800062ec:	fff4849b          	addiw	s1,s1,-1
    800062f0:	04905463          	blez	s1,80006338 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800062f4:	00003517          	auipc	a0,0x3
    800062f8:	3c450513          	addi	a0,a0,964 # 800096b8 <CONSOLE_STATUS+0x6a8>
    800062fc:	00000097          	auipc	ra,0x0
    80006300:	908080e7          	jalr	-1784(ra) # 80005c04 <_Z11printStringPKc>
        printInt(sleep_time);
    80006304:	00000613          	li	a2,0
    80006308:	00a00593          	li	a1,10
    8000630c:	0009051b          	sext.w	a0,s2
    80006310:	00000097          	auipc	ra,0x0
    80006314:	aa4080e7          	jalr	-1372(ra) # 80005db4 <_Z8printIntiii>
        printString(" !\n");
    80006318:	00003517          	auipc	a0,0x3
    8000631c:	3a850513          	addi	a0,a0,936 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006320:	00000097          	auipc	ra,0x0
    80006324:	8e4080e7          	jalr	-1820(ra) # 80005c04 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006328:	00090513          	mv	a0,s2
    8000632c:	ffffb097          	auipc	ra,0xffffb
    80006330:	2a4080e7          	jalr	676(ra) # 800015d0 <_Z10time_sleepm>
    while (--i > 0) {
    80006334:	fb9ff06f          	j	800062ec <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006338:	00a00793          	li	a5,10
    8000633c:	02f95933          	divu	s2,s2,a5
    80006340:	fff90913          	addi	s2,s2,-1
    80006344:	00006797          	auipc	a5,0x6
    80006348:	c8478793          	addi	a5,a5,-892 # 8000bfc8 <_ZL8finished>
    8000634c:	01278933          	add	s2,a5,s2
    80006350:	00100793          	li	a5,1
    80006354:	00f90023          	sb	a5,0(s2)
}
    80006358:	01813083          	ld	ra,24(sp)
    8000635c:	01013403          	ld	s0,16(sp)
    80006360:	00813483          	ld	s1,8(sp)
    80006364:	00013903          	ld	s2,0(sp)
    80006368:	02010113          	addi	sp,sp,32
    8000636c:	00008067          	ret

0000000080006370 <_Z12testSleepingv>:

void testSleeping() {
    80006370:	fc010113          	addi	sp,sp,-64
    80006374:	02113c23          	sd	ra,56(sp)
    80006378:	02813823          	sd	s0,48(sp)
    8000637c:	02913423          	sd	s1,40(sp)
    80006380:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006384:	00a00793          	li	a5,10
    80006388:	fcf43823          	sd	a5,-48(s0)
    8000638c:	01400793          	li	a5,20
    80006390:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006394:	00000493          	li	s1,0
    80006398:	02c0006f          	j	800063c4 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000639c:	00349793          	slli	a5,s1,0x3
    800063a0:	fd040613          	addi	a2,s0,-48
    800063a4:	00f60633          	add	a2,a2,a5
    800063a8:	00000597          	auipc	a1,0x0
    800063ac:	f2458593          	addi	a1,a1,-220 # 800062cc <_ZL9sleepyRunPv>
    800063b0:	fc040513          	addi	a0,s0,-64
    800063b4:	00f50533          	add	a0,a0,a5
    800063b8:	ffffb097          	auipc	ra,0xffffb
    800063bc:	ecc080e7          	jalr	-308(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800063c0:	0014849b          	addiw	s1,s1,1
    800063c4:	00100793          	li	a5,1
    800063c8:	fc97dae3          	bge	a5,s1,8000639c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800063cc:	00006797          	auipc	a5,0x6
    800063d0:	bfc7c783          	lbu	a5,-1028(a5) # 8000bfc8 <_ZL8finished>
    800063d4:	fe078ce3          	beqz	a5,800063cc <_Z12testSleepingv+0x5c>
    800063d8:	00006797          	auipc	a5,0x6
    800063dc:	bf17c783          	lbu	a5,-1039(a5) # 8000bfc9 <_ZL8finished+0x1>
    800063e0:	fe0786e3          	beqz	a5,800063cc <_Z12testSleepingv+0x5c>
}
    800063e4:	03813083          	ld	ra,56(sp)
    800063e8:	03013403          	ld	s0,48(sp)
    800063ec:	02813483          	ld	s1,40(sp)
    800063f0:	04010113          	addi	sp,sp,64
    800063f4:	00008067          	ret

00000000800063f8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800063f8:	fe010113          	addi	sp,sp,-32
    800063fc:	00113c23          	sd	ra,24(sp)
    80006400:	00813823          	sd	s0,16(sp)
    80006404:	00913423          	sd	s1,8(sp)
    80006408:	01213023          	sd	s2,0(sp)
    8000640c:	02010413          	addi	s0,sp,32
    80006410:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006414:	00100793          	li	a5,1
    80006418:	02a7f863          	bgeu	a5,a0,80006448 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000641c:	00a00793          	li	a5,10
    80006420:	02f577b3          	remu	a5,a0,a5
    80006424:	02078e63          	beqz	a5,80006460 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006428:	fff48513          	addi	a0,s1,-1
    8000642c:	00000097          	auipc	ra,0x0
    80006430:	fcc080e7          	jalr	-52(ra) # 800063f8 <_ZL9fibonaccim>
    80006434:	00050913          	mv	s2,a0
    80006438:	ffe48513          	addi	a0,s1,-2
    8000643c:	00000097          	auipc	ra,0x0
    80006440:	fbc080e7          	jalr	-68(ra) # 800063f8 <_ZL9fibonaccim>
    80006444:	00a90533          	add	a0,s2,a0
}
    80006448:	01813083          	ld	ra,24(sp)
    8000644c:	01013403          	ld	s0,16(sp)
    80006450:	00813483          	ld	s1,8(sp)
    80006454:	00013903          	ld	s2,0(sp)
    80006458:	02010113          	addi	sp,sp,32
    8000645c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006460:	ffffb097          	auipc	ra,0xffffb
    80006464:	f28080e7          	jalr	-216(ra) # 80001388 <_Z15thread_dispatchv>
    80006468:	fc1ff06f          	j	80006428 <_ZL9fibonaccim+0x30>

000000008000646c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000646c:	fe010113          	addi	sp,sp,-32
    80006470:	00113c23          	sd	ra,24(sp)
    80006474:	00813823          	sd	s0,16(sp)
    80006478:	00913423          	sd	s1,8(sp)
    8000647c:	01213023          	sd	s2,0(sp)
    80006480:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006484:	00a00493          	li	s1,10
    80006488:	0400006f          	j	800064c8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000648c:	00003517          	auipc	a0,0x3
    80006490:	17c50513          	addi	a0,a0,380 # 80009608 <CONSOLE_STATUS+0x5f8>
    80006494:	fffff097          	auipc	ra,0xfffff
    80006498:	770080e7          	jalr	1904(ra) # 80005c04 <_Z11printStringPKc>
    8000649c:	00000613          	li	a2,0
    800064a0:	00a00593          	li	a1,10
    800064a4:	00048513          	mv	a0,s1
    800064a8:	00000097          	auipc	ra,0x0
    800064ac:	90c080e7          	jalr	-1780(ra) # 80005db4 <_Z8printIntiii>
    800064b0:	00003517          	auipc	a0,0x3
    800064b4:	df050513          	addi	a0,a0,-528 # 800092a0 <CONSOLE_STATUS+0x290>
    800064b8:	fffff097          	auipc	ra,0xfffff
    800064bc:	74c080e7          	jalr	1868(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800064c0:	0014849b          	addiw	s1,s1,1
    800064c4:	0ff4f493          	andi	s1,s1,255
    800064c8:	00c00793          	li	a5,12
    800064cc:	fc97f0e3          	bgeu	a5,s1,8000648c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800064d0:	00003517          	auipc	a0,0x3
    800064d4:	14050513          	addi	a0,a0,320 # 80009610 <CONSOLE_STATUS+0x600>
    800064d8:	fffff097          	auipc	ra,0xfffff
    800064dc:	72c080e7          	jalr	1836(ra) # 80005c04 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800064e0:	00500313          	li	t1,5
    thread_dispatch();
    800064e4:	ffffb097          	auipc	ra,0xffffb
    800064e8:	ea4080e7          	jalr	-348(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800064ec:	01000513          	li	a0,16
    800064f0:	00000097          	auipc	ra,0x0
    800064f4:	f08080e7          	jalr	-248(ra) # 800063f8 <_ZL9fibonaccim>
    800064f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	12450513          	addi	a0,a0,292 # 80009620 <CONSOLE_STATUS+0x610>
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	700080e7          	jalr	1792(ra) # 80005c04 <_Z11printStringPKc>
    8000650c:	00000613          	li	a2,0
    80006510:	00a00593          	li	a1,10
    80006514:	0009051b          	sext.w	a0,s2
    80006518:	00000097          	auipc	ra,0x0
    8000651c:	89c080e7          	jalr	-1892(ra) # 80005db4 <_Z8printIntiii>
    80006520:	00003517          	auipc	a0,0x3
    80006524:	d8050513          	addi	a0,a0,-640 # 800092a0 <CONSOLE_STATUS+0x290>
    80006528:	fffff097          	auipc	ra,0xfffff
    8000652c:	6dc080e7          	jalr	1756(ra) # 80005c04 <_Z11printStringPKc>
    80006530:	0400006f          	j	80006570 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006534:	00003517          	auipc	a0,0x3
    80006538:	0d450513          	addi	a0,a0,212 # 80009608 <CONSOLE_STATUS+0x5f8>
    8000653c:	fffff097          	auipc	ra,0xfffff
    80006540:	6c8080e7          	jalr	1736(ra) # 80005c04 <_Z11printStringPKc>
    80006544:	00000613          	li	a2,0
    80006548:	00a00593          	li	a1,10
    8000654c:	00048513          	mv	a0,s1
    80006550:	00000097          	auipc	ra,0x0
    80006554:	864080e7          	jalr	-1948(ra) # 80005db4 <_Z8printIntiii>
    80006558:	00003517          	auipc	a0,0x3
    8000655c:	d4850513          	addi	a0,a0,-696 # 800092a0 <CONSOLE_STATUS+0x290>
    80006560:	fffff097          	auipc	ra,0xfffff
    80006564:	6a4080e7          	jalr	1700(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006568:	0014849b          	addiw	s1,s1,1
    8000656c:	0ff4f493          	andi	s1,s1,255
    80006570:	00f00793          	li	a5,15
    80006574:	fc97f0e3          	bgeu	a5,s1,80006534 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	0b850513          	addi	a0,a0,184 # 80009630 <CONSOLE_STATUS+0x620>
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	684080e7          	jalr	1668(ra) # 80005c04 <_Z11printStringPKc>
    finishedD = true;
    80006588:	00100793          	li	a5,1
    8000658c:	00006717          	auipc	a4,0x6
    80006590:	a2f70f23          	sb	a5,-1474(a4) # 8000bfca <_ZL9finishedD>
    thread_dispatch();
    80006594:	ffffb097          	auipc	ra,0xffffb
    80006598:	df4080e7          	jalr	-524(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000659c:	01813083          	ld	ra,24(sp)
    800065a0:	01013403          	ld	s0,16(sp)
    800065a4:	00813483          	ld	s1,8(sp)
    800065a8:	00013903          	ld	s2,0(sp)
    800065ac:	02010113          	addi	sp,sp,32
    800065b0:	00008067          	ret

00000000800065b4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800065b4:	fe010113          	addi	sp,sp,-32
    800065b8:	00113c23          	sd	ra,24(sp)
    800065bc:	00813823          	sd	s0,16(sp)
    800065c0:	00913423          	sd	s1,8(sp)
    800065c4:	01213023          	sd	s2,0(sp)
    800065c8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800065cc:	00000493          	li	s1,0
    800065d0:	0400006f          	j	80006610 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800065d4:	00003517          	auipc	a0,0x3
    800065d8:	00450513          	addi	a0,a0,4 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800065dc:	fffff097          	auipc	ra,0xfffff
    800065e0:	628080e7          	jalr	1576(ra) # 80005c04 <_Z11printStringPKc>
    800065e4:	00000613          	li	a2,0
    800065e8:	00a00593          	li	a1,10
    800065ec:	00048513          	mv	a0,s1
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	7c4080e7          	jalr	1988(ra) # 80005db4 <_Z8printIntiii>
    800065f8:	00003517          	auipc	a0,0x3
    800065fc:	ca850513          	addi	a0,a0,-856 # 800092a0 <CONSOLE_STATUS+0x290>
    80006600:	fffff097          	auipc	ra,0xfffff
    80006604:	604080e7          	jalr	1540(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006608:	0014849b          	addiw	s1,s1,1
    8000660c:	0ff4f493          	andi	s1,s1,255
    80006610:	00200793          	li	a5,2
    80006614:	fc97f0e3          	bgeu	a5,s1,800065d4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006618:	00003517          	auipc	a0,0x3
    8000661c:	fc850513          	addi	a0,a0,-56 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006620:	fffff097          	auipc	ra,0xfffff
    80006624:	5e4080e7          	jalr	1508(ra) # 80005c04 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006628:	00700313          	li	t1,7
    thread_dispatch();
    8000662c:	ffffb097          	auipc	ra,0xffffb
    80006630:	d5c080e7          	jalr	-676(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006634:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	fb850513          	addi	a0,a0,-72 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006640:	fffff097          	auipc	ra,0xfffff
    80006644:	5c4080e7          	jalr	1476(ra) # 80005c04 <_Z11printStringPKc>
    80006648:	00000613          	li	a2,0
    8000664c:	00a00593          	li	a1,10
    80006650:	0009051b          	sext.w	a0,s2
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	760080e7          	jalr	1888(ra) # 80005db4 <_Z8printIntiii>
    8000665c:	00003517          	auipc	a0,0x3
    80006660:	c4450513          	addi	a0,a0,-956 # 800092a0 <CONSOLE_STATUS+0x290>
    80006664:	fffff097          	auipc	ra,0xfffff
    80006668:	5a0080e7          	jalr	1440(ra) # 80005c04 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000666c:	00c00513          	li	a0,12
    80006670:	00000097          	auipc	ra,0x0
    80006674:	d88080e7          	jalr	-632(ra) # 800063f8 <_ZL9fibonaccim>
    80006678:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	f7c50513          	addi	a0,a0,-132 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	580080e7          	jalr	1408(ra) # 80005c04 <_Z11printStringPKc>
    8000668c:	00000613          	li	a2,0
    80006690:	00a00593          	li	a1,10
    80006694:	0009051b          	sext.w	a0,s2
    80006698:	fffff097          	auipc	ra,0xfffff
    8000669c:	71c080e7          	jalr	1820(ra) # 80005db4 <_Z8printIntiii>
    800066a0:	00003517          	auipc	a0,0x3
    800066a4:	c0050513          	addi	a0,a0,-1024 # 800092a0 <CONSOLE_STATUS+0x290>
    800066a8:	fffff097          	auipc	ra,0xfffff
    800066ac:	55c080e7          	jalr	1372(ra) # 80005c04 <_Z11printStringPKc>
    800066b0:	0400006f          	j	800066f0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800066b4:	00003517          	auipc	a0,0x3
    800066b8:	f2450513          	addi	a0,a0,-220 # 800095d8 <CONSOLE_STATUS+0x5c8>
    800066bc:	fffff097          	auipc	ra,0xfffff
    800066c0:	548080e7          	jalr	1352(ra) # 80005c04 <_Z11printStringPKc>
    800066c4:	00000613          	li	a2,0
    800066c8:	00a00593          	li	a1,10
    800066cc:	00048513          	mv	a0,s1
    800066d0:	fffff097          	auipc	ra,0xfffff
    800066d4:	6e4080e7          	jalr	1764(ra) # 80005db4 <_Z8printIntiii>
    800066d8:	00003517          	auipc	a0,0x3
    800066dc:	bc850513          	addi	a0,a0,-1080 # 800092a0 <CONSOLE_STATUS+0x290>
    800066e0:	fffff097          	auipc	ra,0xfffff
    800066e4:	524080e7          	jalr	1316(ra) # 80005c04 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800066e8:	0014849b          	addiw	s1,s1,1
    800066ec:	0ff4f493          	andi	s1,s1,255
    800066f0:	00500793          	li	a5,5
    800066f4:	fc97f0e3          	bgeu	a5,s1,800066b4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800066f8:	00003517          	auipc	a0,0x3
    800066fc:	eb850513          	addi	a0,a0,-328 # 800095b0 <CONSOLE_STATUS+0x5a0>
    80006700:	fffff097          	auipc	ra,0xfffff
    80006704:	504080e7          	jalr	1284(ra) # 80005c04 <_Z11printStringPKc>
    finishedC = true;
    80006708:	00100793          	li	a5,1
    8000670c:	00006717          	auipc	a4,0x6
    80006710:	8af70fa3          	sb	a5,-1857(a4) # 8000bfcb <_ZL9finishedC>
    thread_dispatch();
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	c74080e7          	jalr	-908(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000671c:	01813083          	ld	ra,24(sp)
    80006720:	01013403          	ld	s0,16(sp)
    80006724:	00813483          	ld	s1,8(sp)
    80006728:	00013903          	ld	s2,0(sp)
    8000672c:	02010113          	addi	sp,sp,32
    80006730:	00008067          	ret

0000000080006734 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006734:	fe010113          	addi	sp,sp,-32
    80006738:	00113c23          	sd	ra,24(sp)
    8000673c:	00813823          	sd	s0,16(sp)
    80006740:	00913423          	sd	s1,8(sp)
    80006744:	01213023          	sd	s2,0(sp)
    80006748:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000674c:	00000913          	li	s2,0
    80006750:	0400006f          	j	80006790 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006754:	ffffb097          	auipc	ra,0xffffb
    80006758:	c34080e7          	jalr	-972(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000675c:	00148493          	addi	s1,s1,1
    80006760:	000027b7          	lui	a5,0x2
    80006764:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006768:	0097ee63          	bltu	a5,s1,80006784 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000676c:	00000713          	li	a4,0
    80006770:	000077b7          	lui	a5,0x7
    80006774:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006778:	fce7eee3          	bltu	a5,a4,80006754 <_ZL11workerBodyBPv+0x20>
    8000677c:	00170713          	addi	a4,a4,1
    80006780:	ff1ff06f          	j	80006770 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006784:	00a00793          	li	a5,10
    80006788:	04f90663          	beq	s2,a5,800067d4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000678c:	00190913          	addi	s2,s2,1
    80006790:	00f00793          	li	a5,15
    80006794:	0527e463          	bltu	a5,s2,800067dc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006798:	00003517          	auipc	a0,0x3
    8000679c:	e2850513          	addi	a0,a0,-472 # 800095c0 <CONSOLE_STATUS+0x5b0>
    800067a0:	fffff097          	auipc	ra,0xfffff
    800067a4:	464080e7          	jalr	1124(ra) # 80005c04 <_Z11printStringPKc>
    800067a8:	00000613          	li	a2,0
    800067ac:	00a00593          	li	a1,10
    800067b0:	0009051b          	sext.w	a0,s2
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	600080e7          	jalr	1536(ra) # 80005db4 <_Z8printIntiii>
    800067bc:	00003517          	auipc	a0,0x3
    800067c0:	ae450513          	addi	a0,a0,-1308 # 800092a0 <CONSOLE_STATUS+0x290>
    800067c4:	fffff097          	auipc	ra,0xfffff
    800067c8:	440080e7          	jalr	1088(ra) # 80005c04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800067cc:	00000493          	li	s1,0
    800067d0:	f91ff06f          	j	80006760 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800067d4:	14102ff3          	csrr	t6,sepc
    800067d8:	fb5ff06f          	j	8000678c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800067dc:	00003517          	auipc	a0,0x3
    800067e0:	dec50513          	addi	a0,a0,-532 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800067e4:	fffff097          	auipc	ra,0xfffff
    800067e8:	420080e7          	jalr	1056(ra) # 80005c04 <_Z11printStringPKc>
    finishedB = true;
    800067ec:	00100793          	li	a5,1
    800067f0:	00005717          	auipc	a4,0x5
    800067f4:	7cf70e23          	sb	a5,2012(a4) # 8000bfcc <_ZL9finishedB>
    thread_dispatch();
    800067f8:	ffffb097          	auipc	ra,0xffffb
    800067fc:	b90080e7          	jalr	-1136(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006800:	01813083          	ld	ra,24(sp)
    80006804:	01013403          	ld	s0,16(sp)
    80006808:	00813483          	ld	s1,8(sp)
    8000680c:	00013903          	ld	s2,0(sp)
    80006810:	02010113          	addi	sp,sp,32
    80006814:	00008067          	ret

0000000080006818 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006818:	fe010113          	addi	sp,sp,-32
    8000681c:	00113c23          	sd	ra,24(sp)
    80006820:	00813823          	sd	s0,16(sp)
    80006824:	00913423          	sd	s1,8(sp)
    80006828:	01213023          	sd	s2,0(sp)
    8000682c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006830:	00000913          	li	s2,0
    80006834:	0380006f          	j	8000686c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006838:	ffffb097          	auipc	ra,0xffffb
    8000683c:	b50080e7          	jalr	-1200(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006840:	00148493          	addi	s1,s1,1
    80006844:	000027b7          	lui	a5,0x2
    80006848:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000684c:	0097ee63          	bltu	a5,s1,80006868 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006850:	00000713          	li	a4,0
    80006854:	000077b7          	lui	a5,0x7
    80006858:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000685c:	fce7eee3          	bltu	a5,a4,80006838 <_ZL11workerBodyAPv+0x20>
    80006860:	00170713          	addi	a4,a4,1
    80006864:	ff1ff06f          	j	80006854 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006868:	00190913          	addi	s2,s2,1
    8000686c:	00900793          	li	a5,9
    80006870:	0527e063          	bltu	a5,s2,800068b0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006874:	00003517          	auipc	a0,0x3
    80006878:	d3450513          	addi	a0,a0,-716 # 800095a8 <CONSOLE_STATUS+0x598>
    8000687c:	fffff097          	auipc	ra,0xfffff
    80006880:	388080e7          	jalr	904(ra) # 80005c04 <_Z11printStringPKc>
    80006884:	00000613          	li	a2,0
    80006888:	00a00593          	li	a1,10
    8000688c:	0009051b          	sext.w	a0,s2
    80006890:	fffff097          	auipc	ra,0xfffff
    80006894:	524080e7          	jalr	1316(ra) # 80005db4 <_Z8printIntiii>
    80006898:	00003517          	auipc	a0,0x3
    8000689c:	a0850513          	addi	a0,a0,-1528 # 800092a0 <CONSOLE_STATUS+0x290>
    800068a0:	fffff097          	auipc	ra,0xfffff
    800068a4:	364080e7          	jalr	868(ra) # 80005c04 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800068a8:	00000493          	li	s1,0
    800068ac:	f99ff06f          	j	80006844 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800068b0:	00003517          	auipc	a0,0x3
    800068b4:	d0050513          	addi	a0,a0,-768 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800068b8:	fffff097          	auipc	ra,0xfffff
    800068bc:	34c080e7          	jalr	844(ra) # 80005c04 <_Z11printStringPKc>
    finishedA = true;
    800068c0:	00100793          	li	a5,1
    800068c4:	00005717          	auipc	a4,0x5
    800068c8:	70f704a3          	sb	a5,1801(a4) # 8000bfcd <_ZL9finishedA>
}
    800068cc:	01813083          	ld	ra,24(sp)
    800068d0:	01013403          	ld	s0,16(sp)
    800068d4:	00813483          	ld	s1,8(sp)
    800068d8:	00013903          	ld	s2,0(sp)
    800068dc:	02010113          	addi	sp,sp,32
    800068e0:	00008067          	ret

00000000800068e4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    800068e4:	fd010113          	addi	sp,sp,-48
    800068e8:	02113423          	sd	ra,40(sp)
    800068ec:	02813023          	sd	s0,32(sp)
    800068f0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800068f4:	00000613          	li	a2,0
    800068f8:	00000597          	auipc	a1,0x0
    800068fc:	f2058593          	addi	a1,a1,-224 # 80006818 <_ZL11workerBodyAPv>
    80006900:	fd040513          	addi	a0,s0,-48
    80006904:	ffffb097          	auipc	ra,0xffffb
    80006908:	980080e7          	jalr	-1664(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    8000690c:	00003517          	auipc	a0,0x3
    80006910:	d3450513          	addi	a0,a0,-716 # 80009640 <CONSOLE_STATUS+0x630>
    80006914:	fffff097          	auipc	ra,0xfffff
    80006918:	2f0080e7          	jalr	752(ra) # 80005c04 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000691c:	00000613          	li	a2,0
    80006920:	00000597          	auipc	a1,0x0
    80006924:	e1458593          	addi	a1,a1,-492 # 80006734 <_ZL11workerBodyBPv>
    80006928:	fd840513          	addi	a0,s0,-40
    8000692c:	ffffb097          	auipc	ra,0xffffb
    80006930:	958080e7          	jalr	-1704(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80006934:	00003517          	auipc	a0,0x3
    80006938:	d2450513          	addi	a0,a0,-732 # 80009658 <CONSOLE_STATUS+0x648>
    8000693c:	fffff097          	auipc	ra,0xfffff
    80006940:	2c8080e7          	jalr	712(ra) # 80005c04 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80006944:	00000613          	li	a2,0
    80006948:	00000597          	auipc	a1,0x0
    8000694c:	c6c58593          	addi	a1,a1,-916 # 800065b4 <_ZL11workerBodyCPv>
    80006950:	fe040513          	addi	a0,s0,-32
    80006954:	ffffb097          	auipc	ra,0xffffb
    80006958:	930080e7          	jalr	-1744(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000695c:	00003517          	auipc	a0,0x3
    80006960:	d1450513          	addi	a0,a0,-748 # 80009670 <CONSOLE_STATUS+0x660>
    80006964:	fffff097          	auipc	ra,0xfffff
    80006968:	2a0080e7          	jalr	672(ra) # 80005c04 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000696c:	00000613          	li	a2,0
    80006970:	00000597          	auipc	a1,0x0
    80006974:	afc58593          	addi	a1,a1,-1284 # 8000646c <_ZL11workerBodyDPv>
    80006978:	fe840513          	addi	a0,s0,-24
    8000697c:	ffffb097          	auipc	ra,0xffffb
    80006980:	908080e7          	jalr	-1784(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006984:	00003517          	auipc	a0,0x3
    80006988:	d0450513          	addi	a0,a0,-764 # 80009688 <CONSOLE_STATUS+0x678>
    8000698c:	fffff097          	auipc	ra,0xfffff
    80006990:	278080e7          	jalr	632(ra) # 80005c04 <_Z11printStringPKc>
    80006994:	00c0006f          	j	800069a0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006998:	ffffb097          	auipc	ra,0xffffb
    8000699c:	9f0080e7          	jalr	-1552(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800069a0:	00005797          	auipc	a5,0x5
    800069a4:	62d7c783          	lbu	a5,1581(a5) # 8000bfcd <_ZL9finishedA>
    800069a8:	fe0788e3          	beqz	a5,80006998 <_Z16System_Mode_testv+0xb4>
    800069ac:	00005797          	auipc	a5,0x5
    800069b0:	6207c783          	lbu	a5,1568(a5) # 8000bfcc <_ZL9finishedB>
    800069b4:	fe0782e3          	beqz	a5,80006998 <_Z16System_Mode_testv+0xb4>
    800069b8:	00005797          	auipc	a5,0x5
    800069bc:	6137c783          	lbu	a5,1555(a5) # 8000bfcb <_ZL9finishedC>
    800069c0:	fc078ce3          	beqz	a5,80006998 <_Z16System_Mode_testv+0xb4>
    800069c4:	00005797          	auipc	a5,0x5
    800069c8:	6067c783          	lbu	a5,1542(a5) # 8000bfca <_ZL9finishedD>
    800069cc:	fc0786e3          	beqz	a5,80006998 <_Z16System_Mode_testv+0xb4>
    }

}
    800069d0:	02813083          	ld	ra,40(sp)
    800069d4:	02013403          	ld	s0,32(sp)
    800069d8:	03010113          	addi	sp,sp,48
    800069dc:	00008067          	ret

00000000800069e0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800069e0:	fe010113          	addi	sp,sp,-32
    800069e4:	00113c23          	sd	ra,24(sp)
    800069e8:	00813823          	sd	s0,16(sp)
    800069ec:	00913423          	sd	s1,8(sp)
    800069f0:	01213023          	sd	s2,0(sp)
    800069f4:	02010413          	addi	s0,sp,32
    800069f8:	00050493          	mv	s1,a0
    800069fc:	00058913          	mv	s2,a1
    80006a00:	0015879b          	addiw	a5,a1,1
    80006a04:	0007851b          	sext.w	a0,a5
    80006a08:	00f4a023          	sw	a5,0(s1)
    80006a0c:	0004a823          	sw	zero,16(s1)
    80006a10:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006a14:	00251513          	slli	a0,a0,0x2
    80006a18:	ffffa097          	auipc	ra,0xffffa
    80006a1c:	7e0080e7          	jalr	2016(ra) # 800011f8 <_Z9mem_allocm>
    80006a20:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80006a24:	00000593          	li	a1,0
    80006a28:	02048513          	addi	a0,s1,32
    80006a2c:	ffffb097          	auipc	ra,0xffffb
    80006a30:	a18080e7          	jalr	-1512(ra) # 80001444 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80006a34:	00090593          	mv	a1,s2
    80006a38:	01848513          	addi	a0,s1,24
    80006a3c:	ffffb097          	auipc	ra,0xffffb
    80006a40:	a08080e7          	jalr	-1528(ra) # 80001444 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80006a44:	00100593          	li	a1,1
    80006a48:	02848513          	addi	a0,s1,40
    80006a4c:	ffffb097          	auipc	ra,0xffffb
    80006a50:	9f8080e7          	jalr	-1544(ra) # 80001444 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80006a54:	00100593          	li	a1,1
    80006a58:	03048513          	addi	a0,s1,48
    80006a5c:	ffffb097          	auipc	ra,0xffffb
    80006a60:	9e8080e7          	jalr	-1560(ra) # 80001444 <_Z8sem_openPP4_semj>
}
    80006a64:	01813083          	ld	ra,24(sp)
    80006a68:	01013403          	ld	s0,16(sp)
    80006a6c:	00813483          	ld	s1,8(sp)
    80006a70:	00013903          	ld	s2,0(sp)
    80006a74:	02010113          	addi	sp,sp,32
    80006a78:	00008067          	ret

0000000080006a7c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006a7c:	fe010113          	addi	sp,sp,-32
    80006a80:	00113c23          	sd	ra,24(sp)
    80006a84:	00813823          	sd	s0,16(sp)
    80006a88:	00913423          	sd	s1,8(sp)
    80006a8c:	01213023          	sd	s2,0(sp)
    80006a90:	02010413          	addi	s0,sp,32
    80006a94:	00050493          	mv	s1,a0
    80006a98:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006a9c:	01853503          	ld	a0,24(a0)
    80006aa0:	ffffb097          	auipc	ra,0xffffb
    80006aa4:	a28080e7          	jalr	-1496(ra) # 800014c8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006aa8:	0304b503          	ld	a0,48(s1)
    80006aac:	ffffb097          	auipc	ra,0xffffb
    80006ab0:	a1c080e7          	jalr	-1508(ra) # 800014c8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006ab4:	0084b783          	ld	a5,8(s1)
    80006ab8:	0144a703          	lw	a4,20(s1)
    80006abc:	00271713          	slli	a4,a4,0x2
    80006ac0:	00e787b3          	add	a5,a5,a4
    80006ac4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006ac8:	0144a783          	lw	a5,20(s1)
    80006acc:	0017879b          	addiw	a5,a5,1
    80006ad0:	0004a703          	lw	a4,0(s1)
    80006ad4:	02e7e7bb          	remw	a5,a5,a4
    80006ad8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006adc:	0304b503          	ld	a0,48(s1)
    80006ae0:	ffffb097          	auipc	ra,0xffffb
    80006ae4:	a28080e7          	jalr	-1496(ra) # 80001508 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006ae8:	0204b503          	ld	a0,32(s1)
    80006aec:	ffffb097          	auipc	ra,0xffffb
    80006af0:	a1c080e7          	jalr	-1508(ra) # 80001508 <_Z10sem_signalP4_sem>

}
    80006af4:	01813083          	ld	ra,24(sp)
    80006af8:	01013403          	ld	s0,16(sp)
    80006afc:	00813483          	ld	s1,8(sp)
    80006b00:	00013903          	ld	s2,0(sp)
    80006b04:	02010113          	addi	sp,sp,32
    80006b08:	00008067          	ret

0000000080006b0c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006b0c:	fe010113          	addi	sp,sp,-32
    80006b10:	00113c23          	sd	ra,24(sp)
    80006b14:	00813823          	sd	s0,16(sp)
    80006b18:	00913423          	sd	s1,8(sp)
    80006b1c:	01213023          	sd	s2,0(sp)
    80006b20:	02010413          	addi	s0,sp,32
    80006b24:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006b28:	02053503          	ld	a0,32(a0)
    80006b2c:	ffffb097          	auipc	ra,0xffffb
    80006b30:	99c080e7          	jalr	-1636(ra) # 800014c8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006b34:	0284b503          	ld	a0,40(s1)
    80006b38:	ffffb097          	auipc	ra,0xffffb
    80006b3c:	990080e7          	jalr	-1648(ra) # 800014c8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006b40:	0084b703          	ld	a4,8(s1)
    80006b44:	0104a783          	lw	a5,16(s1)
    80006b48:	00279693          	slli	a3,a5,0x2
    80006b4c:	00d70733          	add	a4,a4,a3
    80006b50:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006b54:	0017879b          	addiw	a5,a5,1
    80006b58:	0004a703          	lw	a4,0(s1)
    80006b5c:	02e7e7bb          	remw	a5,a5,a4
    80006b60:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006b64:	0284b503          	ld	a0,40(s1)
    80006b68:	ffffb097          	auipc	ra,0xffffb
    80006b6c:	9a0080e7          	jalr	-1632(ra) # 80001508 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006b70:	0184b503          	ld	a0,24(s1)
    80006b74:	ffffb097          	auipc	ra,0xffffb
    80006b78:	994080e7          	jalr	-1644(ra) # 80001508 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b7c:	00090513          	mv	a0,s2
    80006b80:	01813083          	ld	ra,24(sp)
    80006b84:	01013403          	ld	s0,16(sp)
    80006b88:	00813483          	ld	s1,8(sp)
    80006b8c:	00013903          	ld	s2,0(sp)
    80006b90:	02010113          	addi	sp,sp,32
    80006b94:	00008067          	ret

0000000080006b98 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006b98:	fe010113          	addi	sp,sp,-32
    80006b9c:	00113c23          	sd	ra,24(sp)
    80006ba0:	00813823          	sd	s0,16(sp)
    80006ba4:	00913423          	sd	s1,8(sp)
    80006ba8:	01213023          	sd	s2,0(sp)
    80006bac:	02010413          	addi	s0,sp,32
    80006bb0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006bb4:	02853503          	ld	a0,40(a0)
    80006bb8:	ffffb097          	auipc	ra,0xffffb
    80006bbc:	910080e7          	jalr	-1776(ra) # 800014c8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006bc0:	0304b503          	ld	a0,48(s1)
    80006bc4:	ffffb097          	auipc	ra,0xffffb
    80006bc8:	904080e7          	jalr	-1788(ra) # 800014c8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006bcc:	0144a783          	lw	a5,20(s1)
    80006bd0:	0104a903          	lw	s2,16(s1)
    80006bd4:	0327ce63          	blt	a5,s2,80006c10 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006bd8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006bdc:	0304b503          	ld	a0,48(s1)
    80006be0:	ffffb097          	auipc	ra,0xffffb
    80006be4:	928080e7          	jalr	-1752(ra) # 80001508 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006be8:	0284b503          	ld	a0,40(s1)
    80006bec:	ffffb097          	auipc	ra,0xffffb
    80006bf0:	91c080e7          	jalr	-1764(ra) # 80001508 <_Z10sem_signalP4_sem>

    return ret;
}
    80006bf4:	00090513          	mv	a0,s2
    80006bf8:	01813083          	ld	ra,24(sp)
    80006bfc:	01013403          	ld	s0,16(sp)
    80006c00:	00813483          	ld	s1,8(sp)
    80006c04:	00013903          	ld	s2,0(sp)
    80006c08:	02010113          	addi	sp,sp,32
    80006c0c:	00008067          	ret
        ret = cap - head + tail;
    80006c10:	0004a703          	lw	a4,0(s1)
    80006c14:	4127093b          	subw	s2,a4,s2
    80006c18:	00f9093b          	addw	s2,s2,a5
    80006c1c:	fc1ff06f          	j	80006bdc <_ZN6Buffer6getCntEv+0x44>

0000000080006c20 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006c20:	fe010113          	addi	sp,sp,-32
    80006c24:	00113c23          	sd	ra,24(sp)
    80006c28:	00813823          	sd	s0,16(sp)
    80006c2c:	00913423          	sd	s1,8(sp)
    80006c30:	02010413          	addi	s0,sp,32
    80006c34:	00050493          	mv	s1,a0
    putc('\n');
    80006c38:	00a00513          	li	a0,10
    80006c3c:	ffffb097          	auipc	ra,0xffffb
    80006c40:	a14080e7          	jalr	-1516(ra) # 80001650 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006c44:	00003517          	auipc	a0,0x3
    80006c48:	a5c50513          	addi	a0,a0,-1444 # 800096a0 <CONSOLE_STATUS+0x690>
    80006c4c:	fffff097          	auipc	ra,0xfffff
    80006c50:	fb8080e7          	jalr	-72(ra) # 80005c04 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006c54:	00048513          	mv	a0,s1
    80006c58:	00000097          	auipc	ra,0x0
    80006c5c:	f40080e7          	jalr	-192(ra) # 80006b98 <_ZN6Buffer6getCntEv>
    80006c60:	02a05c63          	blez	a0,80006c98 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006c64:	0084b783          	ld	a5,8(s1)
    80006c68:	0104a703          	lw	a4,16(s1)
    80006c6c:	00271713          	slli	a4,a4,0x2
    80006c70:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006c74:	0007c503          	lbu	a0,0(a5)
    80006c78:	ffffb097          	auipc	ra,0xffffb
    80006c7c:	9d8080e7          	jalr	-1576(ra) # 80001650 <_Z4putcc>
        head = (head + 1) % cap;
    80006c80:	0104a783          	lw	a5,16(s1)
    80006c84:	0017879b          	addiw	a5,a5,1
    80006c88:	0004a703          	lw	a4,0(s1)
    80006c8c:	02e7e7bb          	remw	a5,a5,a4
    80006c90:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006c94:	fc1ff06f          	j	80006c54 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006c98:	02100513          	li	a0,33
    80006c9c:	ffffb097          	auipc	ra,0xffffb
    80006ca0:	9b4080e7          	jalr	-1612(ra) # 80001650 <_Z4putcc>
    putc('\n');
    80006ca4:	00a00513          	li	a0,10
    80006ca8:	ffffb097          	auipc	ra,0xffffb
    80006cac:	9a8080e7          	jalr	-1624(ra) # 80001650 <_Z4putcc>
    mem_free(buffer);
    80006cb0:	0084b503          	ld	a0,8(s1)
    80006cb4:	ffffa097          	auipc	ra,0xffffa
    80006cb8:	590080e7          	jalr	1424(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006cbc:	0204b503          	ld	a0,32(s1)
    80006cc0:	ffffa097          	auipc	ra,0xffffa
    80006cc4:	7c8080e7          	jalr	1992(ra) # 80001488 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006cc8:	0184b503          	ld	a0,24(s1)
    80006ccc:	ffffa097          	auipc	ra,0xffffa
    80006cd0:	7bc080e7          	jalr	1980(ra) # 80001488 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006cd4:	0304b503          	ld	a0,48(s1)
    80006cd8:	ffffa097          	auipc	ra,0xffffa
    80006cdc:	7b0080e7          	jalr	1968(ra) # 80001488 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006ce0:	0284b503          	ld	a0,40(s1)
    80006ce4:	ffffa097          	auipc	ra,0xffffa
    80006ce8:	7a4080e7          	jalr	1956(ra) # 80001488 <_Z9sem_closeP4_sem>
}
    80006cec:	01813083          	ld	ra,24(sp)
    80006cf0:	01013403          	ld	s0,16(sp)
    80006cf4:	00813483          	ld	s1,8(sp)
    80006cf8:	02010113          	addi	sp,sp,32
    80006cfc:	00008067          	ret

0000000080006d00 <start>:
    80006d00:	ff010113          	addi	sp,sp,-16
    80006d04:	00813423          	sd	s0,8(sp)
    80006d08:	01010413          	addi	s0,sp,16
    80006d0c:	300027f3          	csrr	a5,mstatus
    80006d10:	ffffe737          	lui	a4,0xffffe
    80006d14:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff15cf>
    80006d18:	00e7f7b3          	and	a5,a5,a4
    80006d1c:	00001737          	lui	a4,0x1
    80006d20:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006d24:	00e7e7b3          	or	a5,a5,a4
    80006d28:	30079073          	csrw	mstatus,a5
    80006d2c:	00000797          	auipc	a5,0x0
    80006d30:	16078793          	addi	a5,a5,352 # 80006e8c <system_main>
    80006d34:	34179073          	csrw	mepc,a5
    80006d38:	00000793          	li	a5,0
    80006d3c:	18079073          	csrw	satp,a5
    80006d40:	000107b7          	lui	a5,0x10
    80006d44:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006d48:	30279073          	csrw	medeleg,a5
    80006d4c:	30379073          	csrw	mideleg,a5
    80006d50:	104027f3          	csrr	a5,sie
    80006d54:	2227e793          	ori	a5,a5,546
    80006d58:	10479073          	csrw	sie,a5
    80006d5c:	fff00793          	li	a5,-1
    80006d60:	00a7d793          	srli	a5,a5,0xa
    80006d64:	3b079073          	csrw	pmpaddr0,a5
    80006d68:	00f00793          	li	a5,15
    80006d6c:	3a079073          	csrw	pmpcfg0,a5
    80006d70:	f14027f3          	csrr	a5,mhartid
    80006d74:	0200c737          	lui	a4,0x200c
    80006d78:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d7c:	0007869b          	sext.w	a3,a5
    80006d80:	00269713          	slli	a4,a3,0x2
    80006d84:	000f4637          	lui	a2,0xf4
    80006d88:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d8c:	00d70733          	add	a4,a4,a3
    80006d90:	0037979b          	slliw	a5,a5,0x3
    80006d94:	020046b7          	lui	a3,0x2004
    80006d98:	00d787b3          	add	a5,a5,a3
    80006d9c:	00c585b3          	add	a1,a1,a2
    80006da0:	00371693          	slli	a3,a4,0x3
    80006da4:	00005717          	auipc	a4,0x5
    80006da8:	22c70713          	addi	a4,a4,556 # 8000bfd0 <timer_scratch>
    80006dac:	00b7b023          	sd	a1,0(a5)
    80006db0:	00d70733          	add	a4,a4,a3
    80006db4:	00f73c23          	sd	a5,24(a4)
    80006db8:	02c73023          	sd	a2,32(a4)
    80006dbc:	34071073          	csrw	mscratch,a4
    80006dc0:	00000797          	auipc	a5,0x0
    80006dc4:	6e078793          	addi	a5,a5,1760 # 800074a0 <timervec>
    80006dc8:	30579073          	csrw	mtvec,a5
    80006dcc:	300027f3          	csrr	a5,mstatus
    80006dd0:	0087e793          	ori	a5,a5,8
    80006dd4:	30079073          	csrw	mstatus,a5
    80006dd8:	304027f3          	csrr	a5,mie
    80006ddc:	0807e793          	ori	a5,a5,128
    80006de0:	30479073          	csrw	mie,a5
    80006de4:	f14027f3          	csrr	a5,mhartid
    80006de8:	0007879b          	sext.w	a5,a5
    80006dec:	00078213          	mv	tp,a5
    80006df0:	30200073          	mret
    80006df4:	00813403          	ld	s0,8(sp)
    80006df8:	01010113          	addi	sp,sp,16
    80006dfc:	00008067          	ret

0000000080006e00 <timerinit>:
    80006e00:	ff010113          	addi	sp,sp,-16
    80006e04:	00813423          	sd	s0,8(sp)
    80006e08:	01010413          	addi	s0,sp,16
    80006e0c:	f14027f3          	csrr	a5,mhartid
    80006e10:	0200c737          	lui	a4,0x200c
    80006e14:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006e18:	0007869b          	sext.w	a3,a5
    80006e1c:	00269713          	slli	a4,a3,0x2
    80006e20:	000f4637          	lui	a2,0xf4
    80006e24:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006e28:	00d70733          	add	a4,a4,a3
    80006e2c:	0037979b          	slliw	a5,a5,0x3
    80006e30:	020046b7          	lui	a3,0x2004
    80006e34:	00d787b3          	add	a5,a5,a3
    80006e38:	00c585b3          	add	a1,a1,a2
    80006e3c:	00371693          	slli	a3,a4,0x3
    80006e40:	00005717          	auipc	a4,0x5
    80006e44:	19070713          	addi	a4,a4,400 # 8000bfd0 <timer_scratch>
    80006e48:	00b7b023          	sd	a1,0(a5)
    80006e4c:	00d70733          	add	a4,a4,a3
    80006e50:	00f73c23          	sd	a5,24(a4)
    80006e54:	02c73023          	sd	a2,32(a4)
    80006e58:	34071073          	csrw	mscratch,a4
    80006e5c:	00000797          	auipc	a5,0x0
    80006e60:	64478793          	addi	a5,a5,1604 # 800074a0 <timervec>
    80006e64:	30579073          	csrw	mtvec,a5
    80006e68:	300027f3          	csrr	a5,mstatus
    80006e6c:	0087e793          	ori	a5,a5,8
    80006e70:	30079073          	csrw	mstatus,a5
    80006e74:	304027f3          	csrr	a5,mie
    80006e78:	0807e793          	ori	a5,a5,128
    80006e7c:	30479073          	csrw	mie,a5
    80006e80:	00813403          	ld	s0,8(sp)
    80006e84:	01010113          	addi	sp,sp,16
    80006e88:	00008067          	ret

0000000080006e8c <system_main>:
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00813823          	sd	s0,16(sp)
    80006e94:	00913423          	sd	s1,8(sp)
    80006e98:	00113c23          	sd	ra,24(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	00000097          	auipc	ra,0x0
    80006ea4:	0c4080e7          	jalr	196(ra) # 80006f64 <cpuid>
    80006ea8:	00005497          	auipc	s1,0x5
    80006eac:	07848493          	addi	s1,s1,120 # 8000bf20 <started>
    80006eb0:	02050263          	beqz	a0,80006ed4 <system_main+0x48>
    80006eb4:	0004a783          	lw	a5,0(s1)
    80006eb8:	0007879b          	sext.w	a5,a5
    80006ebc:	fe078ce3          	beqz	a5,80006eb4 <system_main+0x28>
    80006ec0:	0ff0000f          	fence
    80006ec4:	00003517          	auipc	a0,0x3
    80006ec8:	83450513          	addi	a0,a0,-1996 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006ecc:	00001097          	auipc	ra,0x1
    80006ed0:	a70080e7          	jalr	-1424(ra) # 8000793c <panic>
    80006ed4:	00001097          	auipc	ra,0x1
    80006ed8:	9c4080e7          	jalr	-1596(ra) # 80007898 <consoleinit>
    80006edc:	00001097          	auipc	ra,0x1
    80006ee0:	150080e7          	jalr	336(ra) # 8000802c <printfinit>
    80006ee4:	00002517          	auipc	a0,0x2
    80006ee8:	3bc50513          	addi	a0,a0,956 # 800092a0 <CONSOLE_STATUS+0x290>
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	aac080e7          	jalr	-1364(ra) # 80007998 <__printf>
    80006ef4:	00002517          	auipc	a0,0x2
    80006ef8:	7d450513          	addi	a0,a0,2004 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	a9c080e7          	jalr	-1380(ra) # 80007998 <__printf>
    80006f04:	00002517          	auipc	a0,0x2
    80006f08:	39c50513          	addi	a0,a0,924 # 800092a0 <CONSOLE_STATUS+0x290>
    80006f0c:	00001097          	auipc	ra,0x1
    80006f10:	a8c080e7          	jalr	-1396(ra) # 80007998 <__printf>
    80006f14:	00001097          	auipc	ra,0x1
    80006f18:	4a4080e7          	jalr	1188(ra) # 800083b8 <kinit>
    80006f1c:	00000097          	auipc	ra,0x0
    80006f20:	148080e7          	jalr	328(ra) # 80007064 <trapinit>
    80006f24:	00000097          	auipc	ra,0x0
    80006f28:	16c080e7          	jalr	364(ra) # 80007090 <trapinithart>
    80006f2c:	00000097          	auipc	ra,0x0
    80006f30:	5b4080e7          	jalr	1460(ra) # 800074e0 <plicinit>
    80006f34:	00000097          	auipc	ra,0x0
    80006f38:	5d4080e7          	jalr	1492(ra) # 80007508 <plicinithart>
    80006f3c:	00000097          	auipc	ra,0x0
    80006f40:	078080e7          	jalr	120(ra) # 80006fb4 <userinit>
    80006f44:	0ff0000f          	fence
    80006f48:	00100793          	li	a5,1
    80006f4c:	00002517          	auipc	a0,0x2
    80006f50:	79450513          	addi	a0,a0,1940 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006f54:	00f4a023          	sw	a5,0(s1)
    80006f58:	00001097          	auipc	ra,0x1
    80006f5c:	a40080e7          	jalr	-1472(ra) # 80007998 <__printf>
    80006f60:	0000006f          	j	80006f60 <system_main+0xd4>

0000000080006f64 <cpuid>:
    80006f64:	ff010113          	addi	sp,sp,-16
    80006f68:	00813423          	sd	s0,8(sp)
    80006f6c:	01010413          	addi	s0,sp,16
    80006f70:	00020513          	mv	a0,tp
    80006f74:	00813403          	ld	s0,8(sp)
    80006f78:	0005051b          	sext.w	a0,a0
    80006f7c:	01010113          	addi	sp,sp,16
    80006f80:	00008067          	ret

0000000080006f84 <mycpu>:
    80006f84:	ff010113          	addi	sp,sp,-16
    80006f88:	00813423          	sd	s0,8(sp)
    80006f8c:	01010413          	addi	s0,sp,16
    80006f90:	00020793          	mv	a5,tp
    80006f94:	00813403          	ld	s0,8(sp)
    80006f98:	0007879b          	sext.w	a5,a5
    80006f9c:	00779793          	slli	a5,a5,0x7
    80006fa0:	00006517          	auipc	a0,0x6
    80006fa4:	06050513          	addi	a0,a0,96 # 8000d000 <cpus>
    80006fa8:	00f50533          	add	a0,a0,a5
    80006fac:	01010113          	addi	sp,sp,16
    80006fb0:	00008067          	ret

0000000080006fb4 <userinit>:
    80006fb4:	ff010113          	addi	sp,sp,-16
    80006fb8:	00813423          	sd	s0,8(sp)
    80006fbc:	01010413          	addi	s0,sp,16
    80006fc0:	00813403          	ld	s0,8(sp)
    80006fc4:	01010113          	addi	sp,sp,16
    80006fc8:	ffffc317          	auipc	t1,0xffffc
    80006fcc:	82030067          	jr	-2016(t1) # 800027e8 <main>

0000000080006fd0 <either_copyout>:
    80006fd0:	ff010113          	addi	sp,sp,-16
    80006fd4:	00813023          	sd	s0,0(sp)
    80006fd8:	00113423          	sd	ra,8(sp)
    80006fdc:	01010413          	addi	s0,sp,16
    80006fe0:	02051663          	bnez	a0,8000700c <either_copyout+0x3c>
    80006fe4:	00058513          	mv	a0,a1
    80006fe8:	00060593          	mv	a1,a2
    80006fec:	0006861b          	sext.w	a2,a3
    80006ff0:	00002097          	auipc	ra,0x2
    80006ff4:	c54080e7          	jalr	-940(ra) # 80008c44 <__memmove>
    80006ff8:	00813083          	ld	ra,8(sp)
    80006ffc:	00013403          	ld	s0,0(sp)
    80007000:	00000513          	li	a0,0
    80007004:	01010113          	addi	sp,sp,16
    80007008:	00008067          	ret
    8000700c:	00002517          	auipc	a0,0x2
    80007010:	71450513          	addi	a0,a0,1812 # 80009720 <CONSOLE_STATUS+0x710>
    80007014:	00001097          	auipc	ra,0x1
    80007018:	928080e7          	jalr	-1752(ra) # 8000793c <panic>

000000008000701c <either_copyin>:
    8000701c:	ff010113          	addi	sp,sp,-16
    80007020:	00813023          	sd	s0,0(sp)
    80007024:	00113423          	sd	ra,8(sp)
    80007028:	01010413          	addi	s0,sp,16
    8000702c:	02059463          	bnez	a1,80007054 <either_copyin+0x38>
    80007030:	00060593          	mv	a1,a2
    80007034:	0006861b          	sext.w	a2,a3
    80007038:	00002097          	auipc	ra,0x2
    8000703c:	c0c080e7          	jalr	-1012(ra) # 80008c44 <__memmove>
    80007040:	00813083          	ld	ra,8(sp)
    80007044:	00013403          	ld	s0,0(sp)
    80007048:	00000513          	li	a0,0
    8000704c:	01010113          	addi	sp,sp,16
    80007050:	00008067          	ret
    80007054:	00002517          	auipc	a0,0x2
    80007058:	6f450513          	addi	a0,a0,1780 # 80009748 <CONSOLE_STATUS+0x738>
    8000705c:	00001097          	auipc	ra,0x1
    80007060:	8e0080e7          	jalr	-1824(ra) # 8000793c <panic>

0000000080007064 <trapinit>:
    80007064:	ff010113          	addi	sp,sp,-16
    80007068:	00813423          	sd	s0,8(sp)
    8000706c:	01010413          	addi	s0,sp,16
    80007070:	00813403          	ld	s0,8(sp)
    80007074:	00002597          	auipc	a1,0x2
    80007078:	6fc58593          	addi	a1,a1,1788 # 80009770 <CONSOLE_STATUS+0x760>
    8000707c:	00006517          	auipc	a0,0x6
    80007080:	00450513          	addi	a0,a0,4 # 8000d080 <tickslock>
    80007084:	01010113          	addi	sp,sp,16
    80007088:	00001317          	auipc	t1,0x1
    8000708c:	5c030067          	jr	1472(t1) # 80008648 <initlock>

0000000080007090 <trapinithart>:
    80007090:	ff010113          	addi	sp,sp,-16
    80007094:	00813423          	sd	s0,8(sp)
    80007098:	01010413          	addi	s0,sp,16
    8000709c:	00000797          	auipc	a5,0x0
    800070a0:	2f478793          	addi	a5,a5,756 # 80007390 <kernelvec>
    800070a4:	10579073          	csrw	stvec,a5
    800070a8:	00813403          	ld	s0,8(sp)
    800070ac:	01010113          	addi	sp,sp,16
    800070b0:	00008067          	ret

00000000800070b4 <usertrap>:
    800070b4:	ff010113          	addi	sp,sp,-16
    800070b8:	00813423          	sd	s0,8(sp)
    800070bc:	01010413          	addi	s0,sp,16
    800070c0:	00813403          	ld	s0,8(sp)
    800070c4:	01010113          	addi	sp,sp,16
    800070c8:	00008067          	ret

00000000800070cc <usertrapret>:
    800070cc:	ff010113          	addi	sp,sp,-16
    800070d0:	00813423          	sd	s0,8(sp)
    800070d4:	01010413          	addi	s0,sp,16
    800070d8:	00813403          	ld	s0,8(sp)
    800070dc:	01010113          	addi	sp,sp,16
    800070e0:	00008067          	ret

00000000800070e4 <kerneltrap>:
    800070e4:	fe010113          	addi	sp,sp,-32
    800070e8:	00813823          	sd	s0,16(sp)
    800070ec:	00113c23          	sd	ra,24(sp)
    800070f0:	00913423          	sd	s1,8(sp)
    800070f4:	02010413          	addi	s0,sp,32
    800070f8:	142025f3          	csrr	a1,scause
    800070fc:	100027f3          	csrr	a5,sstatus
    80007100:	0027f793          	andi	a5,a5,2
    80007104:	10079c63          	bnez	a5,8000721c <kerneltrap+0x138>
    80007108:	142027f3          	csrr	a5,scause
    8000710c:	0207ce63          	bltz	a5,80007148 <kerneltrap+0x64>
    80007110:	00002517          	auipc	a0,0x2
    80007114:	6a850513          	addi	a0,a0,1704 # 800097b8 <CONSOLE_STATUS+0x7a8>
    80007118:	00001097          	auipc	ra,0x1
    8000711c:	880080e7          	jalr	-1920(ra) # 80007998 <__printf>
    80007120:	141025f3          	csrr	a1,sepc
    80007124:	14302673          	csrr	a2,stval
    80007128:	00002517          	auipc	a0,0x2
    8000712c:	6a050513          	addi	a0,a0,1696 # 800097c8 <CONSOLE_STATUS+0x7b8>
    80007130:	00001097          	auipc	ra,0x1
    80007134:	868080e7          	jalr	-1944(ra) # 80007998 <__printf>
    80007138:	00002517          	auipc	a0,0x2
    8000713c:	6a850513          	addi	a0,a0,1704 # 800097e0 <CONSOLE_STATUS+0x7d0>
    80007140:	00000097          	auipc	ra,0x0
    80007144:	7fc080e7          	jalr	2044(ra) # 8000793c <panic>
    80007148:	0ff7f713          	andi	a4,a5,255
    8000714c:	00900693          	li	a3,9
    80007150:	04d70063          	beq	a4,a3,80007190 <kerneltrap+0xac>
    80007154:	fff00713          	li	a4,-1
    80007158:	03f71713          	slli	a4,a4,0x3f
    8000715c:	00170713          	addi	a4,a4,1
    80007160:	fae798e3          	bne	a5,a4,80007110 <kerneltrap+0x2c>
    80007164:	00000097          	auipc	ra,0x0
    80007168:	e00080e7          	jalr	-512(ra) # 80006f64 <cpuid>
    8000716c:	06050663          	beqz	a0,800071d8 <kerneltrap+0xf4>
    80007170:	144027f3          	csrr	a5,sip
    80007174:	ffd7f793          	andi	a5,a5,-3
    80007178:	14479073          	csrw	sip,a5
    8000717c:	01813083          	ld	ra,24(sp)
    80007180:	01013403          	ld	s0,16(sp)
    80007184:	00813483          	ld	s1,8(sp)
    80007188:	02010113          	addi	sp,sp,32
    8000718c:	00008067          	ret
    80007190:	00000097          	auipc	ra,0x0
    80007194:	3c4080e7          	jalr	964(ra) # 80007554 <plic_claim>
    80007198:	00a00793          	li	a5,10
    8000719c:	00050493          	mv	s1,a0
    800071a0:	06f50863          	beq	a0,a5,80007210 <kerneltrap+0x12c>
    800071a4:	fc050ce3          	beqz	a0,8000717c <kerneltrap+0x98>
    800071a8:	00050593          	mv	a1,a0
    800071ac:	00002517          	auipc	a0,0x2
    800071b0:	5ec50513          	addi	a0,a0,1516 # 80009798 <CONSOLE_STATUS+0x788>
    800071b4:	00000097          	auipc	ra,0x0
    800071b8:	7e4080e7          	jalr	2020(ra) # 80007998 <__printf>
    800071bc:	01013403          	ld	s0,16(sp)
    800071c0:	01813083          	ld	ra,24(sp)
    800071c4:	00048513          	mv	a0,s1
    800071c8:	00813483          	ld	s1,8(sp)
    800071cc:	02010113          	addi	sp,sp,32
    800071d0:	00000317          	auipc	t1,0x0
    800071d4:	3bc30067          	jr	956(t1) # 8000758c <plic_complete>
    800071d8:	00006517          	auipc	a0,0x6
    800071dc:	ea850513          	addi	a0,a0,-344 # 8000d080 <tickslock>
    800071e0:	00001097          	auipc	ra,0x1
    800071e4:	48c080e7          	jalr	1164(ra) # 8000866c <acquire>
    800071e8:	00005717          	auipc	a4,0x5
    800071ec:	d3c70713          	addi	a4,a4,-708 # 8000bf24 <ticks>
    800071f0:	00072783          	lw	a5,0(a4)
    800071f4:	00006517          	auipc	a0,0x6
    800071f8:	e8c50513          	addi	a0,a0,-372 # 8000d080 <tickslock>
    800071fc:	0017879b          	addiw	a5,a5,1
    80007200:	00f72023          	sw	a5,0(a4)
    80007204:	00001097          	auipc	ra,0x1
    80007208:	534080e7          	jalr	1332(ra) # 80008738 <release>
    8000720c:	f65ff06f          	j	80007170 <kerneltrap+0x8c>
    80007210:	00001097          	auipc	ra,0x1
    80007214:	090080e7          	jalr	144(ra) # 800082a0 <uartintr>
    80007218:	fa5ff06f          	j	800071bc <kerneltrap+0xd8>
    8000721c:	00002517          	auipc	a0,0x2
    80007220:	55c50513          	addi	a0,a0,1372 # 80009778 <CONSOLE_STATUS+0x768>
    80007224:	00000097          	auipc	ra,0x0
    80007228:	718080e7          	jalr	1816(ra) # 8000793c <panic>

000000008000722c <clockintr>:
    8000722c:	fe010113          	addi	sp,sp,-32
    80007230:	00813823          	sd	s0,16(sp)
    80007234:	00913423          	sd	s1,8(sp)
    80007238:	00113c23          	sd	ra,24(sp)
    8000723c:	02010413          	addi	s0,sp,32
    80007240:	00006497          	auipc	s1,0x6
    80007244:	e4048493          	addi	s1,s1,-448 # 8000d080 <tickslock>
    80007248:	00048513          	mv	a0,s1
    8000724c:	00001097          	auipc	ra,0x1
    80007250:	420080e7          	jalr	1056(ra) # 8000866c <acquire>
    80007254:	00005717          	auipc	a4,0x5
    80007258:	cd070713          	addi	a4,a4,-816 # 8000bf24 <ticks>
    8000725c:	00072783          	lw	a5,0(a4)
    80007260:	01013403          	ld	s0,16(sp)
    80007264:	01813083          	ld	ra,24(sp)
    80007268:	00048513          	mv	a0,s1
    8000726c:	0017879b          	addiw	a5,a5,1
    80007270:	00813483          	ld	s1,8(sp)
    80007274:	00f72023          	sw	a5,0(a4)
    80007278:	02010113          	addi	sp,sp,32
    8000727c:	00001317          	auipc	t1,0x1
    80007280:	4bc30067          	jr	1212(t1) # 80008738 <release>

0000000080007284 <devintr>:
    80007284:	142027f3          	csrr	a5,scause
    80007288:	00000513          	li	a0,0
    8000728c:	0007c463          	bltz	a5,80007294 <devintr+0x10>
    80007290:	00008067          	ret
    80007294:	fe010113          	addi	sp,sp,-32
    80007298:	00813823          	sd	s0,16(sp)
    8000729c:	00113c23          	sd	ra,24(sp)
    800072a0:	00913423          	sd	s1,8(sp)
    800072a4:	02010413          	addi	s0,sp,32
    800072a8:	0ff7f713          	andi	a4,a5,255
    800072ac:	00900693          	li	a3,9
    800072b0:	04d70c63          	beq	a4,a3,80007308 <devintr+0x84>
    800072b4:	fff00713          	li	a4,-1
    800072b8:	03f71713          	slli	a4,a4,0x3f
    800072bc:	00170713          	addi	a4,a4,1
    800072c0:	00e78c63          	beq	a5,a4,800072d8 <devintr+0x54>
    800072c4:	01813083          	ld	ra,24(sp)
    800072c8:	01013403          	ld	s0,16(sp)
    800072cc:	00813483          	ld	s1,8(sp)
    800072d0:	02010113          	addi	sp,sp,32
    800072d4:	00008067          	ret
    800072d8:	00000097          	auipc	ra,0x0
    800072dc:	c8c080e7          	jalr	-884(ra) # 80006f64 <cpuid>
    800072e0:	06050663          	beqz	a0,8000734c <devintr+0xc8>
    800072e4:	144027f3          	csrr	a5,sip
    800072e8:	ffd7f793          	andi	a5,a5,-3
    800072ec:	14479073          	csrw	sip,a5
    800072f0:	01813083          	ld	ra,24(sp)
    800072f4:	01013403          	ld	s0,16(sp)
    800072f8:	00813483          	ld	s1,8(sp)
    800072fc:	00200513          	li	a0,2
    80007300:	02010113          	addi	sp,sp,32
    80007304:	00008067          	ret
    80007308:	00000097          	auipc	ra,0x0
    8000730c:	24c080e7          	jalr	588(ra) # 80007554 <plic_claim>
    80007310:	00a00793          	li	a5,10
    80007314:	00050493          	mv	s1,a0
    80007318:	06f50663          	beq	a0,a5,80007384 <devintr+0x100>
    8000731c:	00100513          	li	a0,1
    80007320:	fa0482e3          	beqz	s1,800072c4 <devintr+0x40>
    80007324:	00048593          	mv	a1,s1
    80007328:	00002517          	auipc	a0,0x2
    8000732c:	47050513          	addi	a0,a0,1136 # 80009798 <CONSOLE_STATUS+0x788>
    80007330:	00000097          	auipc	ra,0x0
    80007334:	668080e7          	jalr	1640(ra) # 80007998 <__printf>
    80007338:	00048513          	mv	a0,s1
    8000733c:	00000097          	auipc	ra,0x0
    80007340:	250080e7          	jalr	592(ra) # 8000758c <plic_complete>
    80007344:	00100513          	li	a0,1
    80007348:	f7dff06f          	j	800072c4 <devintr+0x40>
    8000734c:	00006517          	auipc	a0,0x6
    80007350:	d3450513          	addi	a0,a0,-716 # 8000d080 <tickslock>
    80007354:	00001097          	auipc	ra,0x1
    80007358:	318080e7          	jalr	792(ra) # 8000866c <acquire>
    8000735c:	00005717          	auipc	a4,0x5
    80007360:	bc870713          	addi	a4,a4,-1080 # 8000bf24 <ticks>
    80007364:	00072783          	lw	a5,0(a4)
    80007368:	00006517          	auipc	a0,0x6
    8000736c:	d1850513          	addi	a0,a0,-744 # 8000d080 <tickslock>
    80007370:	0017879b          	addiw	a5,a5,1
    80007374:	00f72023          	sw	a5,0(a4)
    80007378:	00001097          	auipc	ra,0x1
    8000737c:	3c0080e7          	jalr	960(ra) # 80008738 <release>
    80007380:	f65ff06f          	j	800072e4 <devintr+0x60>
    80007384:	00001097          	auipc	ra,0x1
    80007388:	f1c080e7          	jalr	-228(ra) # 800082a0 <uartintr>
    8000738c:	fadff06f          	j	80007338 <devintr+0xb4>

0000000080007390 <kernelvec>:
    80007390:	f0010113          	addi	sp,sp,-256
    80007394:	00113023          	sd	ra,0(sp)
    80007398:	00213423          	sd	sp,8(sp)
    8000739c:	00313823          	sd	gp,16(sp)
    800073a0:	00413c23          	sd	tp,24(sp)
    800073a4:	02513023          	sd	t0,32(sp)
    800073a8:	02613423          	sd	t1,40(sp)
    800073ac:	02713823          	sd	t2,48(sp)
    800073b0:	02813c23          	sd	s0,56(sp)
    800073b4:	04913023          	sd	s1,64(sp)
    800073b8:	04a13423          	sd	a0,72(sp)
    800073bc:	04b13823          	sd	a1,80(sp)
    800073c0:	04c13c23          	sd	a2,88(sp)
    800073c4:	06d13023          	sd	a3,96(sp)
    800073c8:	06e13423          	sd	a4,104(sp)
    800073cc:	06f13823          	sd	a5,112(sp)
    800073d0:	07013c23          	sd	a6,120(sp)
    800073d4:	09113023          	sd	a7,128(sp)
    800073d8:	09213423          	sd	s2,136(sp)
    800073dc:	09313823          	sd	s3,144(sp)
    800073e0:	09413c23          	sd	s4,152(sp)
    800073e4:	0b513023          	sd	s5,160(sp)
    800073e8:	0b613423          	sd	s6,168(sp)
    800073ec:	0b713823          	sd	s7,176(sp)
    800073f0:	0b813c23          	sd	s8,184(sp)
    800073f4:	0d913023          	sd	s9,192(sp)
    800073f8:	0da13423          	sd	s10,200(sp)
    800073fc:	0db13823          	sd	s11,208(sp)
    80007400:	0dc13c23          	sd	t3,216(sp)
    80007404:	0fd13023          	sd	t4,224(sp)
    80007408:	0fe13423          	sd	t5,232(sp)
    8000740c:	0ff13823          	sd	t6,240(sp)
    80007410:	cd5ff0ef          	jal	ra,800070e4 <kerneltrap>
    80007414:	00013083          	ld	ra,0(sp)
    80007418:	00813103          	ld	sp,8(sp)
    8000741c:	01013183          	ld	gp,16(sp)
    80007420:	02013283          	ld	t0,32(sp)
    80007424:	02813303          	ld	t1,40(sp)
    80007428:	03013383          	ld	t2,48(sp)
    8000742c:	03813403          	ld	s0,56(sp)
    80007430:	04013483          	ld	s1,64(sp)
    80007434:	04813503          	ld	a0,72(sp)
    80007438:	05013583          	ld	a1,80(sp)
    8000743c:	05813603          	ld	a2,88(sp)
    80007440:	06013683          	ld	a3,96(sp)
    80007444:	06813703          	ld	a4,104(sp)
    80007448:	07013783          	ld	a5,112(sp)
    8000744c:	07813803          	ld	a6,120(sp)
    80007450:	08013883          	ld	a7,128(sp)
    80007454:	08813903          	ld	s2,136(sp)
    80007458:	09013983          	ld	s3,144(sp)
    8000745c:	09813a03          	ld	s4,152(sp)
    80007460:	0a013a83          	ld	s5,160(sp)
    80007464:	0a813b03          	ld	s6,168(sp)
    80007468:	0b013b83          	ld	s7,176(sp)
    8000746c:	0b813c03          	ld	s8,184(sp)
    80007470:	0c013c83          	ld	s9,192(sp)
    80007474:	0c813d03          	ld	s10,200(sp)
    80007478:	0d013d83          	ld	s11,208(sp)
    8000747c:	0d813e03          	ld	t3,216(sp)
    80007480:	0e013e83          	ld	t4,224(sp)
    80007484:	0e813f03          	ld	t5,232(sp)
    80007488:	0f013f83          	ld	t6,240(sp)
    8000748c:	10010113          	addi	sp,sp,256
    80007490:	10200073          	sret
    80007494:	00000013          	nop
    80007498:	00000013          	nop
    8000749c:	00000013          	nop

00000000800074a0 <timervec>:
    800074a0:	34051573          	csrrw	a0,mscratch,a0
    800074a4:	00b53023          	sd	a1,0(a0)
    800074a8:	00c53423          	sd	a2,8(a0)
    800074ac:	00d53823          	sd	a3,16(a0)
    800074b0:	01853583          	ld	a1,24(a0)
    800074b4:	02053603          	ld	a2,32(a0)
    800074b8:	0005b683          	ld	a3,0(a1)
    800074bc:	00c686b3          	add	a3,a3,a2
    800074c0:	00d5b023          	sd	a3,0(a1)
    800074c4:	00200593          	li	a1,2
    800074c8:	14459073          	csrw	sip,a1
    800074cc:	01053683          	ld	a3,16(a0)
    800074d0:	00853603          	ld	a2,8(a0)
    800074d4:	00053583          	ld	a1,0(a0)
    800074d8:	34051573          	csrrw	a0,mscratch,a0
    800074dc:	30200073          	mret

00000000800074e0 <plicinit>:
    800074e0:	ff010113          	addi	sp,sp,-16
    800074e4:	00813423          	sd	s0,8(sp)
    800074e8:	01010413          	addi	s0,sp,16
    800074ec:	00813403          	ld	s0,8(sp)
    800074f0:	0c0007b7          	lui	a5,0xc000
    800074f4:	00100713          	li	a4,1
    800074f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800074fc:	00e7a223          	sw	a4,4(a5)
    80007500:	01010113          	addi	sp,sp,16
    80007504:	00008067          	ret

0000000080007508 <plicinithart>:
    80007508:	ff010113          	addi	sp,sp,-16
    8000750c:	00813023          	sd	s0,0(sp)
    80007510:	00113423          	sd	ra,8(sp)
    80007514:	01010413          	addi	s0,sp,16
    80007518:	00000097          	auipc	ra,0x0
    8000751c:	a4c080e7          	jalr	-1460(ra) # 80006f64 <cpuid>
    80007520:	0085171b          	slliw	a4,a0,0x8
    80007524:	0c0027b7          	lui	a5,0xc002
    80007528:	00e787b3          	add	a5,a5,a4
    8000752c:	40200713          	li	a4,1026
    80007530:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007534:	00813083          	ld	ra,8(sp)
    80007538:	00013403          	ld	s0,0(sp)
    8000753c:	00d5151b          	slliw	a0,a0,0xd
    80007540:	0c2017b7          	lui	a5,0xc201
    80007544:	00a78533          	add	a0,a5,a0
    80007548:	00052023          	sw	zero,0(a0)
    8000754c:	01010113          	addi	sp,sp,16
    80007550:	00008067          	ret

0000000080007554 <plic_claim>:
    80007554:	ff010113          	addi	sp,sp,-16
    80007558:	00813023          	sd	s0,0(sp)
    8000755c:	00113423          	sd	ra,8(sp)
    80007560:	01010413          	addi	s0,sp,16
    80007564:	00000097          	auipc	ra,0x0
    80007568:	a00080e7          	jalr	-1536(ra) # 80006f64 <cpuid>
    8000756c:	00813083          	ld	ra,8(sp)
    80007570:	00013403          	ld	s0,0(sp)
    80007574:	00d5151b          	slliw	a0,a0,0xd
    80007578:	0c2017b7          	lui	a5,0xc201
    8000757c:	00a78533          	add	a0,a5,a0
    80007580:	00452503          	lw	a0,4(a0)
    80007584:	01010113          	addi	sp,sp,16
    80007588:	00008067          	ret

000000008000758c <plic_complete>:
    8000758c:	fe010113          	addi	sp,sp,-32
    80007590:	00813823          	sd	s0,16(sp)
    80007594:	00913423          	sd	s1,8(sp)
    80007598:	00113c23          	sd	ra,24(sp)
    8000759c:	02010413          	addi	s0,sp,32
    800075a0:	00050493          	mv	s1,a0
    800075a4:	00000097          	auipc	ra,0x0
    800075a8:	9c0080e7          	jalr	-1600(ra) # 80006f64 <cpuid>
    800075ac:	01813083          	ld	ra,24(sp)
    800075b0:	01013403          	ld	s0,16(sp)
    800075b4:	00d5179b          	slliw	a5,a0,0xd
    800075b8:	0c201737          	lui	a4,0xc201
    800075bc:	00f707b3          	add	a5,a4,a5
    800075c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800075c4:	00813483          	ld	s1,8(sp)
    800075c8:	02010113          	addi	sp,sp,32
    800075cc:	00008067          	ret

00000000800075d0 <consolewrite>:
    800075d0:	fb010113          	addi	sp,sp,-80
    800075d4:	04813023          	sd	s0,64(sp)
    800075d8:	04113423          	sd	ra,72(sp)
    800075dc:	02913c23          	sd	s1,56(sp)
    800075e0:	03213823          	sd	s2,48(sp)
    800075e4:	03313423          	sd	s3,40(sp)
    800075e8:	03413023          	sd	s4,32(sp)
    800075ec:	01513c23          	sd	s5,24(sp)
    800075f0:	05010413          	addi	s0,sp,80
    800075f4:	06c05c63          	blez	a2,8000766c <consolewrite+0x9c>
    800075f8:	00060993          	mv	s3,a2
    800075fc:	00050a13          	mv	s4,a0
    80007600:	00058493          	mv	s1,a1
    80007604:	00000913          	li	s2,0
    80007608:	fff00a93          	li	s5,-1
    8000760c:	01c0006f          	j	80007628 <consolewrite+0x58>
    80007610:	fbf44503          	lbu	a0,-65(s0)
    80007614:	0019091b          	addiw	s2,s2,1
    80007618:	00148493          	addi	s1,s1,1
    8000761c:	00001097          	auipc	ra,0x1
    80007620:	a9c080e7          	jalr	-1380(ra) # 800080b8 <uartputc>
    80007624:	03298063          	beq	s3,s2,80007644 <consolewrite+0x74>
    80007628:	00048613          	mv	a2,s1
    8000762c:	00100693          	li	a3,1
    80007630:	000a0593          	mv	a1,s4
    80007634:	fbf40513          	addi	a0,s0,-65
    80007638:	00000097          	auipc	ra,0x0
    8000763c:	9e4080e7          	jalr	-1564(ra) # 8000701c <either_copyin>
    80007640:	fd5518e3          	bne	a0,s5,80007610 <consolewrite+0x40>
    80007644:	04813083          	ld	ra,72(sp)
    80007648:	04013403          	ld	s0,64(sp)
    8000764c:	03813483          	ld	s1,56(sp)
    80007650:	02813983          	ld	s3,40(sp)
    80007654:	02013a03          	ld	s4,32(sp)
    80007658:	01813a83          	ld	s5,24(sp)
    8000765c:	00090513          	mv	a0,s2
    80007660:	03013903          	ld	s2,48(sp)
    80007664:	05010113          	addi	sp,sp,80
    80007668:	00008067          	ret
    8000766c:	00000913          	li	s2,0
    80007670:	fd5ff06f          	j	80007644 <consolewrite+0x74>

0000000080007674 <consoleread>:
    80007674:	f9010113          	addi	sp,sp,-112
    80007678:	06813023          	sd	s0,96(sp)
    8000767c:	04913c23          	sd	s1,88(sp)
    80007680:	05213823          	sd	s2,80(sp)
    80007684:	05313423          	sd	s3,72(sp)
    80007688:	05413023          	sd	s4,64(sp)
    8000768c:	03513c23          	sd	s5,56(sp)
    80007690:	03613823          	sd	s6,48(sp)
    80007694:	03713423          	sd	s7,40(sp)
    80007698:	03813023          	sd	s8,32(sp)
    8000769c:	06113423          	sd	ra,104(sp)
    800076a0:	01913c23          	sd	s9,24(sp)
    800076a4:	07010413          	addi	s0,sp,112
    800076a8:	00060b93          	mv	s7,a2
    800076ac:	00050913          	mv	s2,a0
    800076b0:	00058c13          	mv	s8,a1
    800076b4:	00060b1b          	sext.w	s6,a2
    800076b8:	00006497          	auipc	s1,0x6
    800076bc:	9f048493          	addi	s1,s1,-1552 # 8000d0a8 <cons>
    800076c0:	00400993          	li	s3,4
    800076c4:	fff00a13          	li	s4,-1
    800076c8:	00a00a93          	li	s5,10
    800076cc:	05705e63          	blez	s7,80007728 <consoleread+0xb4>
    800076d0:	09c4a703          	lw	a4,156(s1)
    800076d4:	0984a783          	lw	a5,152(s1)
    800076d8:	0007071b          	sext.w	a4,a4
    800076dc:	08e78463          	beq	a5,a4,80007764 <consoleread+0xf0>
    800076e0:	07f7f713          	andi	a4,a5,127
    800076e4:	00e48733          	add	a4,s1,a4
    800076e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800076ec:	0017869b          	addiw	a3,a5,1
    800076f0:	08d4ac23          	sw	a3,152(s1)
    800076f4:	00070c9b          	sext.w	s9,a4
    800076f8:	0b370663          	beq	a4,s3,800077a4 <consoleread+0x130>
    800076fc:	00100693          	li	a3,1
    80007700:	f9f40613          	addi	a2,s0,-97
    80007704:	000c0593          	mv	a1,s8
    80007708:	00090513          	mv	a0,s2
    8000770c:	f8e40fa3          	sb	a4,-97(s0)
    80007710:	00000097          	auipc	ra,0x0
    80007714:	8c0080e7          	jalr	-1856(ra) # 80006fd0 <either_copyout>
    80007718:	01450863          	beq	a0,s4,80007728 <consoleread+0xb4>
    8000771c:	001c0c13          	addi	s8,s8,1
    80007720:	fffb8b9b          	addiw	s7,s7,-1
    80007724:	fb5c94e3          	bne	s9,s5,800076cc <consoleread+0x58>
    80007728:	000b851b          	sext.w	a0,s7
    8000772c:	06813083          	ld	ra,104(sp)
    80007730:	06013403          	ld	s0,96(sp)
    80007734:	05813483          	ld	s1,88(sp)
    80007738:	05013903          	ld	s2,80(sp)
    8000773c:	04813983          	ld	s3,72(sp)
    80007740:	04013a03          	ld	s4,64(sp)
    80007744:	03813a83          	ld	s5,56(sp)
    80007748:	02813b83          	ld	s7,40(sp)
    8000774c:	02013c03          	ld	s8,32(sp)
    80007750:	01813c83          	ld	s9,24(sp)
    80007754:	40ab053b          	subw	a0,s6,a0
    80007758:	03013b03          	ld	s6,48(sp)
    8000775c:	07010113          	addi	sp,sp,112
    80007760:	00008067          	ret
    80007764:	00001097          	auipc	ra,0x1
    80007768:	1d8080e7          	jalr	472(ra) # 8000893c <push_on>
    8000776c:	0984a703          	lw	a4,152(s1)
    80007770:	09c4a783          	lw	a5,156(s1)
    80007774:	0007879b          	sext.w	a5,a5
    80007778:	fef70ce3          	beq	a4,a5,80007770 <consoleread+0xfc>
    8000777c:	00001097          	auipc	ra,0x1
    80007780:	234080e7          	jalr	564(ra) # 800089b0 <pop_on>
    80007784:	0984a783          	lw	a5,152(s1)
    80007788:	07f7f713          	andi	a4,a5,127
    8000778c:	00e48733          	add	a4,s1,a4
    80007790:	01874703          	lbu	a4,24(a4)
    80007794:	0017869b          	addiw	a3,a5,1
    80007798:	08d4ac23          	sw	a3,152(s1)
    8000779c:	00070c9b          	sext.w	s9,a4
    800077a0:	f5371ee3          	bne	a4,s3,800076fc <consoleread+0x88>
    800077a4:	000b851b          	sext.w	a0,s7
    800077a8:	f96bf2e3          	bgeu	s7,s6,8000772c <consoleread+0xb8>
    800077ac:	08f4ac23          	sw	a5,152(s1)
    800077b0:	f7dff06f          	j	8000772c <consoleread+0xb8>

00000000800077b4 <consputc>:
    800077b4:	10000793          	li	a5,256
    800077b8:	00f50663          	beq	a0,a5,800077c4 <consputc+0x10>
    800077bc:	00001317          	auipc	t1,0x1
    800077c0:	9f430067          	jr	-1548(t1) # 800081b0 <uartputc_sync>
    800077c4:	ff010113          	addi	sp,sp,-16
    800077c8:	00113423          	sd	ra,8(sp)
    800077cc:	00813023          	sd	s0,0(sp)
    800077d0:	01010413          	addi	s0,sp,16
    800077d4:	00800513          	li	a0,8
    800077d8:	00001097          	auipc	ra,0x1
    800077dc:	9d8080e7          	jalr	-1576(ra) # 800081b0 <uartputc_sync>
    800077e0:	02000513          	li	a0,32
    800077e4:	00001097          	auipc	ra,0x1
    800077e8:	9cc080e7          	jalr	-1588(ra) # 800081b0 <uartputc_sync>
    800077ec:	00013403          	ld	s0,0(sp)
    800077f0:	00813083          	ld	ra,8(sp)
    800077f4:	00800513          	li	a0,8
    800077f8:	01010113          	addi	sp,sp,16
    800077fc:	00001317          	auipc	t1,0x1
    80007800:	9b430067          	jr	-1612(t1) # 800081b0 <uartputc_sync>

0000000080007804 <consoleintr>:
    80007804:	fe010113          	addi	sp,sp,-32
    80007808:	00813823          	sd	s0,16(sp)
    8000780c:	00913423          	sd	s1,8(sp)
    80007810:	01213023          	sd	s2,0(sp)
    80007814:	00113c23          	sd	ra,24(sp)
    80007818:	02010413          	addi	s0,sp,32
    8000781c:	00006917          	auipc	s2,0x6
    80007820:	88c90913          	addi	s2,s2,-1908 # 8000d0a8 <cons>
    80007824:	00050493          	mv	s1,a0
    80007828:	00090513          	mv	a0,s2
    8000782c:	00001097          	auipc	ra,0x1
    80007830:	e40080e7          	jalr	-448(ra) # 8000866c <acquire>
    80007834:	02048c63          	beqz	s1,8000786c <consoleintr+0x68>
    80007838:	0a092783          	lw	a5,160(s2)
    8000783c:	09892703          	lw	a4,152(s2)
    80007840:	07f00693          	li	a3,127
    80007844:	40e7873b          	subw	a4,a5,a4
    80007848:	02e6e263          	bltu	a3,a4,8000786c <consoleintr+0x68>
    8000784c:	00d00713          	li	a4,13
    80007850:	04e48063          	beq	s1,a4,80007890 <consoleintr+0x8c>
    80007854:	07f7f713          	andi	a4,a5,127
    80007858:	00e90733          	add	a4,s2,a4
    8000785c:	0017879b          	addiw	a5,a5,1
    80007860:	0af92023          	sw	a5,160(s2)
    80007864:	00970c23          	sb	s1,24(a4)
    80007868:	08f92e23          	sw	a5,156(s2)
    8000786c:	01013403          	ld	s0,16(sp)
    80007870:	01813083          	ld	ra,24(sp)
    80007874:	00813483          	ld	s1,8(sp)
    80007878:	00013903          	ld	s2,0(sp)
    8000787c:	00006517          	auipc	a0,0x6
    80007880:	82c50513          	addi	a0,a0,-2004 # 8000d0a8 <cons>
    80007884:	02010113          	addi	sp,sp,32
    80007888:	00001317          	auipc	t1,0x1
    8000788c:	eb030067          	jr	-336(t1) # 80008738 <release>
    80007890:	00a00493          	li	s1,10
    80007894:	fc1ff06f          	j	80007854 <consoleintr+0x50>

0000000080007898 <consoleinit>:
    80007898:	fe010113          	addi	sp,sp,-32
    8000789c:	00113c23          	sd	ra,24(sp)
    800078a0:	00813823          	sd	s0,16(sp)
    800078a4:	00913423          	sd	s1,8(sp)
    800078a8:	02010413          	addi	s0,sp,32
    800078ac:	00005497          	auipc	s1,0x5
    800078b0:	7fc48493          	addi	s1,s1,2044 # 8000d0a8 <cons>
    800078b4:	00048513          	mv	a0,s1
    800078b8:	00002597          	auipc	a1,0x2
    800078bc:	f3858593          	addi	a1,a1,-200 # 800097f0 <CONSOLE_STATUS+0x7e0>
    800078c0:	00001097          	auipc	ra,0x1
    800078c4:	d88080e7          	jalr	-632(ra) # 80008648 <initlock>
    800078c8:	00000097          	auipc	ra,0x0
    800078cc:	7ac080e7          	jalr	1964(ra) # 80008074 <uartinit>
    800078d0:	01813083          	ld	ra,24(sp)
    800078d4:	01013403          	ld	s0,16(sp)
    800078d8:	00000797          	auipc	a5,0x0
    800078dc:	d9c78793          	addi	a5,a5,-612 # 80007674 <consoleread>
    800078e0:	0af4bc23          	sd	a5,184(s1)
    800078e4:	00000797          	auipc	a5,0x0
    800078e8:	cec78793          	addi	a5,a5,-788 # 800075d0 <consolewrite>
    800078ec:	0cf4b023          	sd	a5,192(s1)
    800078f0:	00813483          	ld	s1,8(sp)
    800078f4:	02010113          	addi	sp,sp,32
    800078f8:	00008067          	ret

00000000800078fc <console_read>:
    800078fc:	ff010113          	addi	sp,sp,-16
    80007900:	00813423          	sd	s0,8(sp)
    80007904:	01010413          	addi	s0,sp,16
    80007908:	00813403          	ld	s0,8(sp)
    8000790c:	00006317          	auipc	t1,0x6
    80007910:	85433303          	ld	t1,-1964(t1) # 8000d160 <devsw+0x10>
    80007914:	01010113          	addi	sp,sp,16
    80007918:	00030067          	jr	t1

000000008000791c <console_write>:
    8000791c:	ff010113          	addi	sp,sp,-16
    80007920:	00813423          	sd	s0,8(sp)
    80007924:	01010413          	addi	s0,sp,16
    80007928:	00813403          	ld	s0,8(sp)
    8000792c:	00006317          	auipc	t1,0x6
    80007930:	83c33303          	ld	t1,-1988(t1) # 8000d168 <devsw+0x18>
    80007934:	01010113          	addi	sp,sp,16
    80007938:	00030067          	jr	t1

000000008000793c <panic>:
    8000793c:	fe010113          	addi	sp,sp,-32
    80007940:	00113c23          	sd	ra,24(sp)
    80007944:	00813823          	sd	s0,16(sp)
    80007948:	00913423          	sd	s1,8(sp)
    8000794c:	02010413          	addi	s0,sp,32
    80007950:	00050493          	mv	s1,a0
    80007954:	00002517          	auipc	a0,0x2
    80007958:	ea450513          	addi	a0,a0,-348 # 800097f8 <CONSOLE_STATUS+0x7e8>
    8000795c:	00006797          	auipc	a5,0x6
    80007960:	8a07a623          	sw	zero,-1876(a5) # 8000d208 <pr+0x18>
    80007964:	00000097          	auipc	ra,0x0
    80007968:	034080e7          	jalr	52(ra) # 80007998 <__printf>
    8000796c:	00048513          	mv	a0,s1
    80007970:	00000097          	auipc	ra,0x0
    80007974:	028080e7          	jalr	40(ra) # 80007998 <__printf>
    80007978:	00002517          	auipc	a0,0x2
    8000797c:	92850513          	addi	a0,a0,-1752 # 800092a0 <CONSOLE_STATUS+0x290>
    80007980:	00000097          	auipc	ra,0x0
    80007984:	018080e7          	jalr	24(ra) # 80007998 <__printf>
    80007988:	00100793          	li	a5,1
    8000798c:	00004717          	auipc	a4,0x4
    80007990:	58f72e23          	sw	a5,1436(a4) # 8000bf28 <panicked>
    80007994:	0000006f          	j	80007994 <panic+0x58>

0000000080007998 <__printf>:
    80007998:	f3010113          	addi	sp,sp,-208
    8000799c:	08813023          	sd	s0,128(sp)
    800079a0:	07313423          	sd	s3,104(sp)
    800079a4:	09010413          	addi	s0,sp,144
    800079a8:	05813023          	sd	s8,64(sp)
    800079ac:	08113423          	sd	ra,136(sp)
    800079b0:	06913c23          	sd	s1,120(sp)
    800079b4:	07213823          	sd	s2,112(sp)
    800079b8:	07413023          	sd	s4,96(sp)
    800079bc:	05513c23          	sd	s5,88(sp)
    800079c0:	05613823          	sd	s6,80(sp)
    800079c4:	05713423          	sd	s7,72(sp)
    800079c8:	03913c23          	sd	s9,56(sp)
    800079cc:	03a13823          	sd	s10,48(sp)
    800079d0:	03b13423          	sd	s11,40(sp)
    800079d4:	00006317          	auipc	t1,0x6
    800079d8:	81c30313          	addi	t1,t1,-2020 # 8000d1f0 <pr>
    800079dc:	01832c03          	lw	s8,24(t1)
    800079e0:	00b43423          	sd	a1,8(s0)
    800079e4:	00c43823          	sd	a2,16(s0)
    800079e8:	00d43c23          	sd	a3,24(s0)
    800079ec:	02e43023          	sd	a4,32(s0)
    800079f0:	02f43423          	sd	a5,40(s0)
    800079f4:	03043823          	sd	a6,48(s0)
    800079f8:	03143c23          	sd	a7,56(s0)
    800079fc:	00050993          	mv	s3,a0
    80007a00:	4a0c1663          	bnez	s8,80007eac <__printf+0x514>
    80007a04:	60098c63          	beqz	s3,8000801c <__printf+0x684>
    80007a08:	0009c503          	lbu	a0,0(s3)
    80007a0c:	00840793          	addi	a5,s0,8
    80007a10:	f6f43c23          	sd	a5,-136(s0)
    80007a14:	00000493          	li	s1,0
    80007a18:	22050063          	beqz	a0,80007c38 <__printf+0x2a0>
    80007a1c:	00002a37          	lui	s4,0x2
    80007a20:	00018ab7          	lui	s5,0x18
    80007a24:	000f4b37          	lui	s6,0xf4
    80007a28:	00989bb7          	lui	s7,0x989
    80007a2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007a30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007a34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007a38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80007a3c:	00148c9b          	addiw	s9,s1,1
    80007a40:	02500793          	li	a5,37
    80007a44:	01998933          	add	s2,s3,s9
    80007a48:	38f51263          	bne	a0,a5,80007dcc <__printf+0x434>
    80007a4c:	00094783          	lbu	a5,0(s2)
    80007a50:	00078c9b          	sext.w	s9,a5
    80007a54:	1e078263          	beqz	a5,80007c38 <__printf+0x2a0>
    80007a58:	0024849b          	addiw	s1,s1,2
    80007a5c:	07000713          	li	a4,112
    80007a60:	00998933          	add	s2,s3,s1
    80007a64:	38e78a63          	beq	a5,a4,80007df8 <__printf+0x460>
    80007a68:	20f76863          	bltu	a4,a5,80007c78 <__printf+0x2e0>
    80007a6c:	42a78863          	beq	a5,a0,80007e9c <__printf+0x504>
    80007a70:	06400713          	li	a4,100
    80007a74:	40e79663          	bne	a5,a4,80007e80 <__printf+0x4e8>
    80007a78:	f7843783          	ld	a5,-136(s0)
    80007a7c:	0007a603          	lw	a2,0(a5)
    80007a80:	00878793          	addi	a5,a5,8
    80007a84:	f6f43c23          	sd	a5,-136(s0)
    80007a88:	42064a63          	bltz	a2,80007ebc <__printf+0x524>
    80007a8c:	00a00713          	li	a4,10
    80007a90:	02e677bb          	remuw	a5,a2,a4
    80007a94:	00002d97          	auipc	s11,0x2
    80007a98:	d8cd8d93          	addi	s11,s11,-628 # 80009820 <digits>
    80007a9c:	00900593          	li	a1,9
    80007aa0:	0006051b          	sext.w	a0,a2
    80007aa4:	00000c93          	li	s9,0
    80007aa8:	02079793          	slli	a5,a5,0x20
    80007aac:	0207d793          	srli	a5,a5,0x20
    80007ab0:	00fd87b3          	add	a5,s11,a5
    80007ab4:	0007c783          	lbu	a5,0(a5)
    80007ab8:	02e656bb          	divuw	a3,a2,a4
    80007abc:	f8f40023          	sb	a5,-128(s0)
    80007ac0:	14c5d863          	bge	a1,a2,80007c10 <__printf+0x278>
    80007ac4:	06300593          	li	a1,99
    80007ac8:	00100c93          	li	s9,1
    80007acc:	02e6f7bb          	remuw	a5,a3,a4
    80007ad0:	02079793          	slli	a5,a5,0x20
    80007ad4:	0207d793          	srli	a5,a5,0x20
    80007ad8:	00fd87b3          	add	a5,s11,a5
    80007adc:	0007c783          	lbu	a5,0(a5)
    80007ae0:	02e6d73b          	divuw	a4,a3,a4
    80007ae4:	f8f400a3          	sb	a5,-127(s0)
    80007ae8:	12a5f463          	bgeu	a1,a0,80007c10 <__printf+0x278>
    80007aec:	00a00693          	li	a3,10
    80007af0:	00900593          	li	a1,9
    80007af4:	02d777bb          	remuw	a5,a4,a3
    80007af8:	02079793          	slli	a5,a5,0x20
    80007afc:	0207d793          	srli	a5,a5,0x20
    80007b00:	00fd87b3          	add	a5,s11,a5
    80007b04:	0007c503          	lbu	a0,0(a5)
    80007b08:	02d757bb          	divuw	a5,a4,a3
    80007b0c:	f8a40123          	sb	a0,-126(s0)
    80007b10:	48e5f263          	bgeu	a1,a4,80007f94 <__printf+0x5fc>
    80007b14:	06300513          	li	a0,99
    80007b18:	02d7f5bb          	remuw	a1,a5,a3
    80007b1c:	02059593          	slli	a1,a1,0x20
    80007b20:	0205d593          	srli	a1,a1,0x20
    80007b24:	00bd85b3          	add	a1,s11,a1
    80007b28:	0005c583          	lbu	a1,0(a1)
    80007b2c:	02d7d7bb          	divuw	a5,a5,a3
    80007b30:	f8b401a3          	sb	a1,-125(s0)
    80007b34:	48e57263          	bgeu	a0,a4,80007fb8 <__printf+0x620>
    80007b38:	3e700513          	li	a0,999
    80007b3c:	02d7f5bb          	remuw	a1,a5,a3
    80007b40:	02059593          	slli	a1,a1,0x20
    80007b44:	0205d593          	srli	a1,a1,0x20
    80007b48:	00bd85b3          	add	a1,s11,a1
    80007b4c:	0005c583          	lbu	a1,0(a1)
    80007b50:	02d7d7bb          	divuw	a5,a5,a3
    80007b54:	f8b40223          	sb	a1,-124(s0)
    80007b58:	46e57663          	bgeu	a0,a4,80007fc4 <__printf+0x62c>
    80007b5c:	02d7f5bb          	remuw	a1,a5,a3
    80007b60:	02059593          	slli	a1,a1,0x20
    80007b64:	0205d593          	srli	a1,a1,0x20
    80007b68:	00bd85b3          	add	a1,s11,a1
    80007b6c:	0005c583          	lbu	a1,0(a1)
    80007b70:	02d7d7bb          	divuw	a5,a5,a3
    80007b74:	f8b402a3          	sb	a1,-123(s0)
    80007b78:	46ea7863          	bgeu	s4,a4,80007fe8 <__printf+0x650>
    80007b7c:	02d7f5bb          	remuw	a1,a5,a3
    80007b80:	02059593          	slli	a1,a1,0x20
    80007b84:	0205d593          	srli	a1,a1,0x20
    80007b88:	00bd85b3          	add	a1,s11,a1
    80007b8c:	0005c583          	lbu	a1,0(a1)
    80007b90:	02d7d7bb          	divuw	a5,a5,a3
    80007b94:	f8b40323          	sb	a1,-122(s0)
    80007b98:	3eeaf863          	bgeu	s5,a4,80007f88 <__printf+0x5f0>
    80007b9c:	02d7f5bb          	remuw	a1,a5,a3
    80007ba0:	02059593          	slli	a1,a1,0x20
    80007ba4:	0205d593          	srli	a1,a1,0x20
    80007ba8:	00bd85b3          	add	a1,s11,a1
    80007bac:	0005c583          	lbu	a1,0(a1)
    80007bb0:	02d7d7bb          	divuw	a5,a5,a3
    80007bb4:	f8b403a3          	sb	a1,-121(s0)
    80007bb8:	42eb7e63          	bgeu	s6,a4,80007ff4 <__printf+0x65c>
    80007bbc:	02d7f5bb          	remuw	a1,a5,a3
    80007bc0:	02059593          	slli	a1,a1,0x20
    80007bc4:	0205d593          	srli	a1,a1,0x20
    80007bc8:	00bd85b3          	add	a1,s11,a1
    80007bcc:	0005c583          	lbu	a1,0(a1)
    80007bd0:	02d7d7bb          	divuw	a5,a5,a3
    80007bd4:	f8b40423          	sb	a1,-120(s0)
    80007bd8:	42ebfc63          	bgeu	s7,a4,80008010 <__printf+0x678>
    80007bdc:	02079793          	slli	a5,a5,0x20
    80007be0:	0207d793          	srli	a5,a5,0x20
    80007be4:	00fd8db3          	add	s11,s11,a5
    80007be8:	000dc703          	lbu	a4,0(s11)
    80007bec:	00a00793          	li	a5,10
    80007bf0:	00900c93          	li	s9,9
    80007bf4:	f8e404a3          	sb	a4,-119(s0)
    80007bf8:	00065c63          	bgez	a2,80007c10 <__printf+0x278>
    80007bfc:	f9040713          	addi	a4,s0,-112
    80007c00:	00f70733          	add	a4,a4,a5
    80007c04:	02d00693          	li	a3,45
    80007c08:	fed70823          	sb	a3,-16(a4)
    80007c0c:	00078c93          	mv	s9,a5
    80007c10:	f8040793          	addi	a5,s0,-128
    80007c14:	01978cb3          	add	s9,a5,s9
    80007c18:	f7f40d13          	addi	s10,s0,-129
    80007c1c:	000cc503          	lbu	a0,0(s9)
    80007c20:	fffc8c93          	addi	s9,s9,-1
    80007c24:	00000097          	auipc	ra,0x0
    80007c28:	b90080e7          	jalr	-1136(ra) # 800077b4 <consputc>
    80007c2c:	ffac98e3          	bne	s9,s10,80007c1c <__printf+0x284>
    80007c30:	00094503          	lbu	a0,0(s2)
    80007c34:	e00514e3          	bnez	a0,80007a3c <__printf+0xa4>
    80007c38:	1a0c1663          	bnez	s8,80007de4 <__printf+0x44c>
    80007c3c:	08813083          	ld	ra,136(sp)
    80007c40:	08013403          	ld	s0,128(sp)
    80007c44:	07813483          	ld	s1,120(sp)
    80007c48:	07013903          	ld	s2,112(sp)
    80007c4c:	06813983          	ld	s3,104(sp)
    80007c50:	06013a03          	ld	s4,96(sp)
    80007c54:	05813a83          	ld	s5,88(sp)
    80007c58:	05013b03          	ld	s6,80(sp)
    80007c5c:	04813b83          	ld	s7,72(sp)
    80007c60:	04013c03          	ld	s8,64(sp)
    80007c64:	03813c83          	ld	s9,56(sp)
    80007c68:	03013d03          	ld	s10,48(sp)
    80007c6c:	02813d83          	ld	s11,40(sp)
    80007c70:	0d010113          	addi	sp,sp,208
    80007c74:	00008067          	ret
    80007c78:	07300713          	li	a4,115
    80007c7c:	1ce78a63          	beq	a5,a4,80007e50 <__printf+0x4b8>
    80007c80:	07800713          	li	a4,120
    80007c84:	1ee79e63          	bne	a5,a4,80007e80 <__printf+0x4e8>
    80007c88:	f7843783          	ld	a5,-136(s0)
    80007c8c:	0007a703          	lw	a4,0(a5)
    80007c90:	00878793          	addi	a5,a5,8
    80007c94:	f6f43c23          	sd	a5,-136(s0)
    80007c98:	28074263          	bltz	a4,80007f1c <__printf+0x584>
    80007c9c:	00002d97          	auipc	s11,0x2
    80007ca0:	b84d8d93          	addi	s11,s11,-1148 # 80009820 <digits>
    80007ca4:	00f77793          	andi	a5,a4,15
    80007ca8:	00fd87b3          	add	a5,s11,a5
    80007cac:	0007c683          	lbu	a3,0(a5)
    80007cb0:	00f00613          	li	a2,15
    80007cb4:	0007079b          	sext.w	a5,a4
    80007cb8:	f8d40023          	sb	a3,-128(s0)
    80007cbc:	0047559b          	srliw	a1,a4,0x4
    80007cc0:	0047569b          	srliw	a3,a4,0x4
    80007cc4:	00000c93          	li	s9,0
    80007cc8:	0ee65063          	bge	a2,a4,80007da8 <__printf+0x410>
    80007ccc:	00f6f693          	andi	a3,a3,15
    80007cd0:	00dd86b3          	add	a3,s11,a3
    80007cd4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007cd8:	0087d79b          	srliw	a5,a5,0x8
    80007cdc:	00100c93          	li	s9,1
    80007ce0:	f8d400a3          	sb	a3,-127(s0)
    80007ce4:	0cb67263          	bgeu	a2,a1,80007da8 <__printf+0x410>
    80007ce8:	00f7f693          	andi	a3,a5,15
    80007cec:	00dd86b3          	add	a3,s11,a3
    80007cf0:	0006c583          	lbu	a1,0(a3)
    80007cf4:	00f00613          	li	a2,15
    80007cf8:	0047d69b          	srliw	a3,a5,0x4
    80007cfc:	f8b40123          	sb	a1,-126(s0)
    80007d00:	0047d593          	srli	a1,a5,0x4
    80007d04:	28f67e63          	bgeu	a2,a5,80007fa0 <__printf+0x608>
    80007d08:	00f6f693          	andi	a3,a3,15
    80007d0c:	00dd86b3          	add	a3,s11,a3
    80007d10:	0006c503          	lbu	a0,0(a3)
    80007d14:	0087d813          	srli	a6,a5,0x8
    80007d18:	0087d69b          	srliw	a3,a5,0x8
    80007d1c:	f8a401a3          	sb	a0,-125(s0)
    80007d20:	28b67663          	bgeu	a2,a1,80007fac <__printf+0x614>
    80007d24:	00f6f693          	andi	a3,a3,15
    80007d28:	00dd86b3          	add	a3,s11,a3
    80007d2c:	0006c583          	lbu	a1,0(a3)
    80007d30:	00c7d513          	srli	a0,a5,0xc
    80007d34:	00c7d69b          	srliw	a3,a5,0xc
    80007d38:	f8b40223          	sb	a1,-124(s0)
    80007d3c:	29067a63          	bgeu	a2,a6,80007fd0 <__printf+0x638>
    80007d40:	00f6f693          	andi	a3,a3,15
    80007d44:	00dd86b3          	add	a3,s11,a3
    80007d48:	0006c583          	lbu	a1,0(a3)
    80007d4c:	0107d813          	srli	a6,a5,0x10
    80007d50:	0107d69b          	srliw	a3,a5,0x10
    80007d54:	f8b402a3          	sb	a1,-123(s0)
    80007d58:	28a67263          	bgeu	a2,a0,80007fdc <__printf+0x644>
    80007d5c:	00f6f693          	andi	a3,a3,15
    80007d60:	00dd86b3          	add	a3,s11,a3
    80007d64:	0006c683          	lbu	a3,0(a3)
    80007d68:	0147d79b          	srliw	a5,a5,0x14
    80007d6c:	f8d40323          	sb	a3,-122(s0)
    80007d70:	21067663          	bgeu	a2,a6,80007f7c <__printf+0x5e4>
    80007d74:	02079793          	slli	a5,a5,0x20
    80007d78:	0207d793          	srli	a5,a5,0x20
    80007d7c:	00fd8db3          	add	s11,s11,a5
    80007d80:	000dc683          	lbu	a3,0(s11)
    80007d84:	00800793          	li	a5,8
    80007d88:	00700c93          	li	s9,7
    80007d8c:	f8d403a3          	sb	a3,-121(s0)
    80007d90:	00075c63          	bgez	a4,80007da8 <__printf+0x410>
    80007d94:	f9040713          	addi	a4,s0,-112
    80007d98:	00f70733          	add	a4,a4,a5
    80007d9c:	02d00693          	li	a3,45
    80007da0:	fed70823          	sb	a3,-16(a4)
    80007da4:	00078c93          	mv	s9,a5
    80007da8:	f8040793          	addi	a5,s0,-128
    80007dac:	01978cb3          	add	s9,a5,s9
    80007db0:	f7f40d13          	addi	s10,s0,-129
    80007db4:	000cc503          	lbu	a0,0(s9)
    80007db8:	fffc8c93          	addi	s9,s9,-1
    80007dbc:	00000097          	auipc	ra,0x0
    80007dc0:	9f8080e7          	jalr	-1544(ra) # 800077b4 <consputc>
    80007dc4:	ff9d18e3          	bne	s10,s9,80007db4 <__printf+0x41c>
    80007dc8:	0100006f          	j	80007dd8 <__printf+0x440>
    80007dcc:	00000097          	auipc	ra,0x0
    80007dd0:	9e8080e7          	jalr	-1560(ra) # 800077b4 <consputc>
    80007dd4:	000c8493          	mv	s1,s9
    80007dd8:	00094503          	lbu	a0,0(s2)
    80007ddc:	c60510e3          	bnez	a0,80007a3c <__printf+0xa4>
    80007de0:	e40c0ee3          	beqz	s8,80007c3c <__printf+0x2a4>
    80007de4:	00005517          	auipc	a0,0x5
    80007de8:	40c50513          	addi	a0,a0,1036 # 8000d1f0 <pr>
    80007dec:	00001097          	auipc	ra,0x1
    80007df0:	94c080e7          	jalr	-1716(ra) # 80008738 <release>
    80007df4:	e49ff06f          	j	80007c3c <__printf+0x2a4>
    80007df8:	f7843783          	ld	a5,-136(s0)
    80007dfc:	03000513          	li	a0,48
    80007e00:	01000d13          	li	s10,16
    80007e04:	00878713          	addi	a4,a5,8
    80007e08:	0007bc83          	ld	s9,0(a5)
    80007e0c:	f6e43c23          	sd	a4,-136(s0)
    80007e10:	00000097          	auipc	ra,0x0
    80007e14:	9a4080e7          	jalr	-1628(ra) # 800077b4 <consputc>
    80007e18:	07800513          	li	a0,120
    80007e1c:	00000097          	auipc	ra,0x0
    80007e20:	998080e7          	jalr	-1640(ra) # 800077b4 <consputc>
    80007e24:	00002d97          	auipc	s11,0x2
    80007e28:	9fcd8d93          	addi	s11,s11,-1540 # 80009820 <digits>
    80007e2c:	03ccd793          	srli	a5,s9,0x3c
    80007e30:	00fd87b3          	add	a5,s11,a5
    80007e34:	0007c503          	lbu	a0,0(a5)
    80007e38:	fffd0d1b          	addiw	s10,s10,-1
    80007e3c:	004c9c93          	slli	s9,s9,0x4
    80007e40:	00000097          	auipc	ra,0x0
    80007e44:	974080e7          	jalr	-1676(ra) # 800077b4 <consputc>
    80007e48:	fe0d12e3          	bnez	s10,80007e2c <__printf+0x494>
    80007e4c:	f8dff06f          	j	80007dd8 <__printf+0x440>
    80007e50:	f7843783          	ld	a5,-136(s0)
    80007e54:	0007bc83          	ld	s9,0(a5)
    80007e58:	00878793          	addi	a5,a5,8
    80007e5c:	f6f43c23          	sd	a5,-136(s0)
    80007e60:	000c9a63          	bnez	s9,80007e74 <__printf+0x4dc>
    80007e64:	1080006f          	j	80007f6c <__printf+0x5d4>
    80007e68:	001c8c93          	addi	s9,s9,1
    80007e6c:	00000097          	auipc	ra,0x0
    80007e70:	948080e7          	jalr	-1720(ra) # 800077b4 <consputc>
    80007e74:	000cc503          	lbu	a0,0(s9)
    80007e78:	fe0518e3          	bnez	a0,80007e68 <__printf+0x4d0>
    80007e7c:	f5dff06f          	j	80007dd8 <__printf+0x440>
    80007e80:	02500513          	li	a0,37
    80007e84:	00000097          	auipc	ra,0x0
    80007e88:	930080e7          	jalr	-1744(ra) # 800077b4 <consputc>
    80007e8c:	000c8513          	mv	a0,s9
    80007e90:	00000097          	auipc	ra,0x0
    80007e94:	924080e7          	jalr	-1756(ra) # 800077b4 <consputc>
    80007e98:	f41ff06f          	j	80007dd8 <__printf+0x440>
    80007e9c:	02500513          	li	a0,37
    80007ea0:	00000097          	auipc	ra,0x0
    80007ea4:	914080e7          	jalr	-1772(ra) # 800077b4 <consputc>
    80007ea8:	f31ff06f          	j	80007dd8 <__printf+0x440>
    80007eac:	00030513          	mv	a0,t1
    80007eb0:	00000097          	auipc	ra,0x0
    80007eb4:	7bc080e7          	jalr	1980(ra) # 8000866c <acquire>
    80007eb8:	b4dff06f          	j	80007a04 <__printf+0x6c>
    80007ebc:	40c0053b          	negw	a0,a2
    80007ec0:	00a00713          	li	a4,10
    80007ec4:	02e576bb          	remuw	a3,a0,a4
    80007ec8:	00002d97          	auipc	s11,0x2
    80007ecc:	958d8d93          	addi	s11,s11,-1704 # 80009820 <digits>
    80007ed0:	ff700593          	li	a1,-9
    80007ed4:	02069693          	slli	a3,a3,0x20
    80007ed8:	0206d693          	srli	a3,a3,0x20
    80007edc:	00dd86b3          	add	a3,s11,a3
    80007ee0:	0006c683          	lbu	a3,0(a3)
    80007ee4:	02e557bb          	divuw	a5,a0,a4
    80007ee8:	f8d40023          	sb	a3,-128(s0)
    80007eec:	10b65e63          	bge	a2,a1,80008008 <__printf+0x670>
    80007ef0:	06300593          	li	a1,99
    80007ef4:	02e7f6bb          	remuw	a3,a5,a4
    80007ef8:	02069693          	slli	a3,a3,0x20
    80007efc:	0206d693          	srli	a3,a3,0x20
    80007f00:	00dd86b3          	add	a3,s11,a3
    80007f04:	0006c683          	lbu	a3,0(a3)
    80007f08:	02e7d73b          	divuw	a4,a5,a4
    80007f0c:	00200793          	li	a5,2
    80007f10:	f8d400a3          	sb	a3,-127(s0)
    80007f14:	bca5ece3          	bltu	a1,a0,80007aec <__printf+0x154>
    80007f18:	ce5ff06f          	j	80007bfc <__printf+0x264>
    80007f1c:	40e007bb          	negw	a5,a4
    80007f20:	00002d97          	auipc	s11,0x2
    80007f24:	900d8d93          	addi	s11,s11,-1792 # 80009820 <digits>
    80007f28:	00f7f693          	andi	a3,a5,15
    80007f2c:	00dd86b3          	add	a3,s11,a3
    80007f30:	0006c583          	lbu	a1,0(a3)
    80007f34:	ff100613          	li	a2,-15
    80007f38:	0047d69b          	srliw	a3,a5,0x4
    80007f3c:	f8b40023          	sb	a1,-128(s0)
    80007f40:	0047d59b          	srliw	a1,a5,0x4
    80007f44:	0ac75e63          	bge	a4,a2,80008000 <__printf+0x668>
    80007f48:	00f6f693          	andi	a3,a3,15
    80007f4c:	00dd86b3          	add	a3,s11,a3
    80007f50:	0006c603          	lbu	a2,0(a3)
    80007f54:	00f00693          	li	a3,15
    80007f58:	0087d79b          	srliw	a5,a5,0x8
    80007f5c:	f8c400a3          	sb	a2,-127(s0)
    80007f60:	d8b6e4e3          	bltu	a3,a1,80007ce8 <__printf+0x350>
    80007f64:	00200793          	li	a5,2
    80007f68:	e2dff06f          	j	80007d94 <__printf+0x3fc>
    80007f6c:	00002c97          	auipc	s9,0x2
    80007f70:	894c8c93          	addi	s9,s9,-1900 # 80009800 <CONSOLE_STATUS+0x7f0>
    80007f74:	02800513          	li	a0,40
    80007f78:	ef1ff06f          	j	80007e68 <__printf+0x4d0>
    80007f7c:	00700793          	li	a5,7
    80007f80:	00600c93          	li	s9,6
    80007f84:	e0dff06f          	j	80007d90 <__printf+0x3f8>
    80007f88:	00700793          	li	a5,7
    80007f8c:	00600c93          	li	s9,6
    80007f90:	c69ff06f          	j	80007bf8 <__printf+0x260>
    80007f94:	00300793          	li	a5,3
    80007f98:	00200c93          	li	s9,2
    80007f9c:	c5dff06f          	j	80007bf8 <__printf+0x260>
    80007fa0:	00300793          	li	a5,3
    80007fa4:	00200c93          	li	s9,2
    80007fa8:	de9ff06f          	j	80007d90 <__printf+0x3f8>
    80007fac:	00400793          	li	a5,4
    80007fb0:	00300c93          	li	s9,3
    80007fb4:	dddff06f          	j	80007d90 <__printf+0x3f8>
    80007fb8:	00400793          	li	a5,4
    80007fbc:	00300c93          	li	s9,3
    80007fc0:	c39ff06f          	j	80007bf8 <__printf+0x260>
    80007fc4:	00500793          	li	a5,5
    80007fc8:	00400c93          	li	s9,4
    80007fcc:	c2dff06f          	j	80007bf8 <__printf+0x260>
    80007fd0:	00500793          	li	a5,5
    80007fd4:	00400c93          	li	s9,4
    80007fd8:	db9ff06f          	j	80007d90 <__printf+0x3f8>
    80007fdc:	00600793          	li	a5,6
    80007fe0:	00500c93          	li	s9,5
    80007fe4:	dadff06f          	j	80007d90 <__printf+0x3f8>
    80007fe8:	00600793          	li	a5,6
    80007fec:	00500c93          	li	s9,5
    80007ff0:	c09ff06f          	j	80007bf8 <__printf+0x260>
    80007ff4:	00800793          	li	a5,8
    80007ff8:	00700c93          	li	s9,7
    80007ffc:	bfdff06f          	j	80007bf8 <__printf+0x260>
    80008000:	00100793          	li	a5,1
    80008004:	d91ff06f          	j	80007d94 <__printf+0x3fc>
    80008008:	00100793          	li	a5,1
    8000800c:	bf1ff06f          	j	80007bfc <__printf+0x264>
    80008010:	00900793          	li	a5,9
    80008014:	00800c93          	li	s9,8
    80008018:	be1ff06f          	j	80007bf8 <__printf+0x260>
    8000801c:	00001517          	auipc	a0,0x1
    80008020:	7ec50513          	addi	a0,a0,2028 # 80009808 <CONSOLE_STATUS+0x7f8>
    80008024:	00000097          	auipc	ra,0x0
    80008028:	918080e7          	jalr	-1768(ra) # 8000793c <panic>

000000008000802c <printfinit>:
    8000802c:	fe010113          	addi	sp,sp,-32
    80008030:	00813823          	sd	s0,16(sp)
    80008034:	00913423          	sd	s1,8(sp)
    80008038:	00113c23          	sd	ra,24(sp)
    8000803c:	02010413          	addi	s0,sp,32
    80008040:	00005497          	auipc	s1,0x5
    80008044:	1b048493          	addi	s1,s1,432 # 8000d1f0 <pr>
    80008048:	00048513          	mv	a0,s1
    8000804c:	00001597          	auipc	a1,0x1
    80008050:	7cc58593          	addi	a1,a1,1996 # 80009818 <CONSOLE_STATUS+0x808>
    80008054:	00000097          	auipc	ra,0x0
    80008058:	5f4080e7          	jalr	1524(ra) # 80008648 <initlock>
    8000805c:	01813083          	ld	ra,24(sp)
    80008060:	01013403          	ld	s0,16(sp)
    80008064:	0004ac23          	sw	zero,24(s1)
    80008068:	00813483          	ld	s1,8(sp)
    8000806c:	02010113          	addi	sp,sp,32
    80008070:	00008067          	ret

0000000080008074 <uartinit>:
    80008074:	ff010113          	addi	sp,sp,-16
    80008078:	00813423          	sd	s0,8(sp)
    8000807c:	01010413          	addi	s0,sp,16
    80008080:	100007b7          	lui	a5,0x10000
    80008084:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008088:	f8000713          	li	a4,-128
    8000808c:	00e781a3          	sb	a4,3(a5)
    80008090:	00300713          	li	a4,3
    80008094:	00e78023          	sb	a4,0(a5)
    80008098:	000780a3          	sb	zero,1(a5)
    8000809c:	00e781a3          	sb	a4,3(a5)
    800080a0:	00700693          	li	a3,7
    800080a4:	00d78123          	sb	a3,2(a5)
    800080a8:	00e780a3          	sb	a4,1(a5)
    800080ac:	00813403          	ld	s0,8(sp)
    800080b0:	01010113          	addi	sp,sp,16
    800080b4:	00008067          	ret

00000000800080b8 <uartputc>:
    800080b8:	00004797          	auipc	a5,0x4
    800080bc:	e707a783          	lw	a5,-400(a5) # 8000bf28 <panicked>
    800080c0:	00078463          	beqz	a5,800080c8 <uartputc+0x10>
    800080c4:	0000006f          	j	800080c4 <uartputc+0xc>
    800080c8:	fd010113          	addi	sp,sp,-48
    800080cc:	02813023          	sd	s0,32(sp)
    800080d0:	00913c23          	sd	s1,24(sp)
    800080d4:	01213823          	sd	s2,16(sp)
    800080d8:	01313423          	sd	s3,8(sp)
    800080dc:	02113423          	sd	ra,40(sp)
    800080e0:	03010413          	addi	s0,sp,48
    800080e4:	00004917          	auipc	s2,0x4
    800080e8:	e4c90913          	addi	s2,s2,-436 # 8000bf30 <uart_tx_r>
    800080ec:	00093783          	ld	a5,0(s2)
    800080f0:	00004497          	auipc	s1,0x4
    800080f4:	e4848493          	addi	s1,s1,-440 # 8000bf38 <uart_tx_w>
    800080f8:	0004b703          	ld	a4,0(s1)
    800080fc:	02078693          	addi	a3,a5,32
    80008100:	00050993          	mv	s3,a0
    80008104:	02e69c63          	bne	a3,a4,8000813c <uartputc+0x84>
    80008108:	00001097          	auipc	ra,0x1
    8000810c:	834080e7          	jalr	-1996(ra) # 8000893c <push_on>
    80008110:	00093783          	ld	a5,0(s2)
    80008114:	0004b703          	ld	a4,0(s1)
    80008118:	02078793          	addi	a5,a5,32
    8000811c:	00e79463          	bne	a5,a4,80008124 <uartputc+0x6c>
    80008120:	0000006f          	j	80008120 <uartputc+0x68>
    80008124:	00001097          	auipc	ra,0x1
    80008128:	88c080e7          	jalr	-1908(ra) # 800089b0 <pop_on>
    8000812c:	00093783          	ld	a5,0(s2)
    80008130:	0004b703          	ld	a4,0(s1)
    80008134:	02078693          	addi	a3,a5,32
    80008138:	fce688e3          	beq	a3,a4,80008108 <uartputc+0x50>
    8000813c:	01f77693          	andi	a3,a4,31
    80008140:	00005597          	auipc	a1,0x5
    80008144:	0d058593          	addi	a1,a1,208 # 8000d210 <uart_tx_buf>
    80008148:	00d586b3          	add	a3,a1,a3
    8000814c:	00170713          	addi	a4,a4,1
    80008150:	01368023          	sb	s3,0(a3)
    80008154:	00e4b023          	sd	a4,0(s1)
    80008158:	10000637          	lui	a2,0x10000
    8000815c:	02f71063          	bne	a4,a5,8000817c <uartputc+0xc4>
    80008160:	0340006f          	j	80008194 <uartputc+0xdc>
    80008164:	00074703          	lbu	a4,0(a4)
    80008168:	00f93023          	sd	a5,0(s2)
    8000816c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008170:	00093783          	ld	a5,0(s2)
    80008174:	0004b703          	ld	a4,0(s1)
    80008178:	00f70e63          	beq	a4,a5,80008194 <uartputc+0xdc>
    8000817c:	00564683          	lbu	a3,5(a2)
    80008180:	01f7f713          	andi	a4,a5,31
    80008184:	00e58733          	add	a4,a1,a4
    80008188:	0206f693          	andi	a3,a3,32
    8000818c:	00178793          	addi	a5,a5,1
    80008190:	fc069ae3          	bnez	a3,80008164 <uartputc+0xac>
    80008194:	02813083          	ld	ra,40(sp)
    80008198:	02013403          	ld	s0,32(sp)
    8000819c:	01813483          	ld	s1,24(sp)
    800081a0:	01013903          	ld	s2,16(sp)
    800081a4:	00813983          	ld	s3,8(sp)
    800081a8:	03010113          	addi	sp,sp,48
    800081ac:	00008067          	ret

00000000800081b0 <uartputc_sync>:
    800081b0:	ff010113          	addi	sp,sp,-16
    800081b4:	00813423          	sd	s0,8(sp)
    800081b8:	01010413          	addi	s0,sp,16
    800081bc:	00004717          	auipc	a4,0x4
    800081c0:	d6c72703          	lw	a4,-660(a4) # 8000bf28 <panicked>
    800081c4:	02071663          	bnez	a4,800081f0 <uartputc_sync+0x40>
    800081c8:	00050793          	mv	a5,a0
    800081cc:	100006b7          	lui	a3,0x10000
    800081d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800081d4:	02077713          	andi	a4,a4,32
    800081d8:	fe070ce3          	beqz	a4,800081d0 <uartputc_sync+0x20>
    800081dc:	0ff7f793          	andi	a5,a5,255
    800081e0:	00f68023          	sb	a5,0(a3)
    800081e4:	00813403          	ld	s0,8(sp)
    800081e8:	01010113          	addi	sp,sp,16
    800081ec:	00008067          	ret
    800081f0:	0000006f          	j	800081f0 <uartputc_sync+0x40>

00000000800081f4 <uartstart>:
    800081f4:	ff010113          	addi	sp,sp,-16
    800081f8:	00813423          	sd	s0,8(sp)
    800081fc:	01010413          	addi	s0,sp,16
    80008200:	00004617          	auipc	a2,0x4
    80008204:	d3060613          	addi	a2,a2,-720 # 8000bf30 <uart_tx_r>
    80008208:	00004517          	auipc	a0,0x4
    8000820c:	d3050513          	addi	a0,a0,-720 # 8000bf38 <uart_tx_w>
    80008210:	00063783          	ld	a5,0(a2)
    80008214:	00053703          	ld	a4,0(a0)
    80008218:	04f70263          	beq	a4,a5,8000825c <uartstart+0x68>
    8000821c:	100005b7          	lui	a1,0x10000
    80008220:	00005817          	auipc	a6,0x5
    80008224:	ff080813          	addi	a6,a6,-16 # 8000d210 <uart_tx_buf>
    80008228:	01c0006f          	j	80008244 <uartstart+0x50>
    8000822c:	0006c703          	lbu	a4,0(a3)
    80008230:	00f63023          	sd	a5,0(a2)
    80008234:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008238:	00063783          	ld	a5,0(a2)
    8000823c:	00053703          	ld	a4,0(a0)
    80008240:	00f70e63          	beq	a4,a5,8000825c <uartstart+0x68>
    80008244:	01f7f713          	andi	a4,a5,31
    80008248:	00e806b3          	add	a3,a6,a4
    8000824c:	0055c703          	lbu	a4,5(a1)
    80008250:	00178793          	addi	a5,a5,1
    80008254:	02077713          	andi	a4,a4,32
    80008258:	fc071ae3          	bnez	a4,8000822c <uartstart+0x38>
    8000825c:	00813403          	ld	s0,8(sp)
    80008260:	01010113          	addi	sp,sp,16
    80008264:	00008067          	ret

0000000080008268 <uartgetc>:
    80008268:	ff010113          	addi	sp,sp,-16
    8000826c:	00813423          	sd	s0,8(sp)
    80008270:	01010413          	addi	s0,sp,16
    80008274:	10000737          	lui	a4,0x10000
    80008278:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000827c:	0017f793          	andi	a5,a5,1
    80008280:	00078c63          	beqz	a5,80008298 <uartgetc+0x30>
    80008284:	00074503          	lbu	a0,0(a4)
    80008288:	0ff57513          	andi	a0,a0,255
    8000828c:	00813403          	ld	s0,8(sp)
    80008290:	01010113          	addi	sp,sp,16
    80008294:	00008067          	ret
    80008298:	fff00513          	li	a0,-1
    8000829c:	ff1ff06f          	j	8000828c <uartgetc+0x24>

00000000800082a0 <uartintr>:
    800082a0:	100007b7          	lui	a5,0x10000
    800082a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800082a8:	0017f793          	andi	a5,a5,1
    800082ac:	0a078463          	beqz	a5,80008354 <uartintr+0xb4>
    800082b0:	fe010113          	addi	sp,sp,-32
    800082b4:	00813823          	sd	s0,16(sp)
    800082b8:	00913423          	sd	s1,8(sp)
    800082bc:	00113c23          	sd	ra,24(sp)
    800082c0:	02010413          	addi	s0,sp,32
    800082c4:	100004b7          	lui	s1,0x10000
    800082c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800082cc:	0ff57513          	andi	a0,a0,255
    800082d0:	fffff097          	auipc	ra,0xfffff
    800082d4:	534080e7          	jalr	1332(ra) # 80007804 <consoleintr>
    800082d8:	0054c783          	lbu	a5,5(s1)
    800082dc:	0017f793          	andi	a5,a5,1
    800082e0:	fe0794e3          	bnez	a5,800082c8 <uartintr+0x28>
    800082e4:	00004617          	auipc	a2,0x4
    800082e8:	c4c60613          	addi	a2,a2,-948 # 8000bf30 <uart_tx_r>
    800082ec:	00004517          	auipc	a0,0x4
    800082f0:	c4c50513          	addi	a0,a0,-948 # 8000bf38 <uart_tx_w>
    800082f4:	00063783          	ld	a5,0(a2)
    800082f8:	00053703          	ld	a4,0(a0)
    800082fc:	04f70263          	beq	a4,a5,80008340 <uartintr+0xa0>
    80008300:	100005b7          	lui	a1,0x10000
    80008304:	00005817          	auipc	a6,0x5
    80008308:	f0c80813          	addi	a6,a6,-244 # 8000d210 <uart_tx_buf>
    8000830c:	01c0006f          	j	80008328 <uartintr+0x88>
    80008310:	0006c703          	lbu	a4,0(a3)
    80008314:	00f63023          	sd	a5,0(a2)
    80008318:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000831c:	00063783          	ld	a5,0(a2)
    80008320:	00053703          	ld	a4,0(a0)
    80008324:	00f70e63          	beq	a4,a5,80008340 <uartintr+0xa0>
    80008328:	01f7f713          	andi	a4,a5,31
    8000832c:	00e806b3          	add	a3,a6,a4
    80008330:	0055c703          	lbu	a4,5(a1)
    80008334:	00178793          	addi	a5,a5,1
    80008338:	02077713          	andi	a4,a4,32
    8000833c:	fc071ae3          	bnez	a4,80008310 <uartintr+0x70>
    80008340:	01813083          	ld	ra,24(sp)
    80008344:	01013403          	ld	s0,16(sp)
    80008348:	00813483          	ld	s1,8(sp)
    8000834c:	02010113          	addi	sp,sp,32
    80008350:	00008067          	ret
    80008354:	00004617          	auipc	a2,0x4
    80008358:	bdc60613          	addi	a2,a2,-1060 # 8000bf30 <uart_tx_r>
    8000835c:	00004517          	auipc	a0,0x4
    80008360:	bdc50513          	addi	a0,a0,-1060 # 8000bf38 <uart_tx_w>
    80008364:	00063783          	ld	a5,0(a2)
    80008368:	00053703          	ld	a4,0(a0)
    8000836c:	04f70263          	beq	a4,a5,800083b0 <uartintr+0x110>
    80008370:	100005b7          	lui	a1,0x10000
    80008374:	00005817          	auipc	a6,0x5
    80008378:	e9c80813          	addi	a6,a6,-356 # 8000d210 <uart_tx_buf>
    8000837c:	01c0006f          	j	80008398 <uartintr+0xf8>
    80008380:	0006c703          	lbu	a4,0(a3)
    80008384:	00f63023          	sd	a5,0(a2)
    80008388:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000838c:	00063783          	ld	a5,0(a2)
    80008390:	00053703          	ld	a4,0(a0)
    80008394:	02f70063          	beq	a4,a5,800083b4 <uartintr+0x114>
    80008398:	01f7f713          	andi	a4,a5,31
    8000839c:	00e806b3          	add	a3,a6,a4
    800083a0:	0055c703          	lbu	a4,5(a1)
    800083a4:	00178793          	addi	a5,a5,1
    800083a8:	02077713          	andi	a4,a4,32
    800083ac:	fc071ae3          	bnez	a4,80008380 <uartintr+0xe0>
    800083b0:	00008067          	ret
    800083b4:	00008067          	ret

00000000800083b8 <kinit>:
    800083b8:	fc010113          	addi	sp,sp,-64
    800083bc:	02913423          	sd	s1,40(sp)
    800083c0:	fffff7b7          	lui	a5,0xfffff
    800083c4:	00006497          	auipc	s1,0x6
    800083c8:	e6b48493          	addi	s1,s1,-405 # 8000e22f <end+0xfff>
    800083cc:	02813823          	sd	s0,48(sp)
    800083d0:	01313c23          	sd	s3,24(sp)
    800083d4:	00f4f4b3          	and	s1,s1,a5
    800083d8:	02113c23          	sd	ra,56(sp)
    800083dc:	03213023          	sd	s2,32(sp)
    800083e0:	01413823          	sd	s4,16(sp)
    800083e4:	01513423          	sd	s5,8(sp)
    800083e8:	04010413          	addi	s0,sp,64
    800083ec:	000017b7          	lui	a5,0x1
    800083f0:	01100993          	li	s3,17
    800083f4:	00f487b3          	add	a5,s1,a5
    800083f8:	01b99993          	slli	s3,s3,0x1b
    800083fc:	06f9e063          	bltu	s3,a5,8000845c <kinit+0xa4>
    80008400:	00005a97          	auipc	s5,0x5
    80008404:	e30a8a93          	addi	s5,s5,-464 # 8000d230 <end>
    80008408:	0754ec63          	bltu	s1,s5,80008480 <kinit+0xc8>
    8000840c:	0734fa63          	bgeu	s1,s3,80008480 <kinit+0xc8>
    80008410:	00088a37          	lui	s4,0x88
    80008414:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008418:	00004917          	auipc	s2,0x4
    8000841c:	b2890913          	addi	s2,s2,-1240 # 8000bf40 <kmem>
    80008420:	00ca1a13          	slli	s4,s4,0xc
    80008424:	0140006f          	j	80008438 <kinit+0x80>
    80008428:	000017b7          	lui	a5,0x1
    8000842c:	00f484b3          	add	s1,s1,a5
    80008430:	0554e863          	bltu	s1,s5,80008480 <kinit+0xc8>
    80008434:	0534f663          	bgeu	s1,s3,80008480 <kinit+0xc8>
    80008438:	00001637          	lui	a2,0x1
    8000843c:	00100593          	li	a1,1
    80008440:	00048513          	mv	a0,s1
    80008444:	00000097          	auipc	ra,0x0
    80008448:	5e4080e7          	jalr	1508(ra) # 80008a28 <__memset>
    8000844c:	00093783          	ld	a5,0(s2)
    80008450:	00f4b023          	sd	a5,0(s1)
    80008454:	00993023          	sd	s1,0(s2)
    80008458:	fd4498e3          	bne	s1,s4,80008428 <kinit+0x70>
    8000845c:	03813083          	ld	ra,56(sp)
    80008460:	03013403          	ld	s0,48(sp)
    80008464:	02813483          	ld	s1,40(sp)
    80008468:	02013903          	ld	s2,32(sp)
    8000846c:	01813983          	ld	s3,24(sp)
    80008470:	01013a03          	ld	s4,16(sp)
    80008474:	00813a83          	ld	s5,8(sp)
    80008478:	04010113          	addi	sp,sp,64
    8000847c:	00008067          	ret
    80008480:	00001517          	auipc	a0,0x1
    80008484:	3b850513          	addi	a0,a0,952 # 80009838 <digits+0x18>
    80008488:	fffff097          	auipc	ra,0xfffff
    8000848c:	4b4080e7          	jalr	1204(ra) # 8000793c <panic>

0000000080008490 <freerange>:
    80008490:	fc010113          	addi	sp,sp,-64
    80008494:	000017b7          	lui	a5,0x1
    80008498:	02913423          	sd	s1,40(sp)
    8000849c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800084a0:	009504b3          	add	s1,a0,s1
    800084a4:	fffff537          	lui	a0,0xfffff
    800084a8:	02813823          	sd	s0,48(sp)
    800084ac:	02113c23          	sd	ra,56(sp)
    800084b0:	03213023          	sd	s2,32(sp)
    800084b4:	01313c23          	sd	s3,24(sp)
    800084b8:	01413823          	sd	s4,16(sp)
    800084bc:	01513423          	sd	s5,8(sp)
    800084c0:	01613023          	sd	s6,0(sp)
    800084c4:	04010413          	addi	s0,sp,64
    800084c8:	00a4f4b3          	and	s1,s1,a0
    800084cc:	00f487b3          	add	a5,s1,a5
    800084d0:	06f5e463          	bltu	a1,a5,80008538 <freerange+0xa8>
    800084d4:	00005a97          	auipc	s5,0x5
    800084d8:	d5ca8a93          	addi	s5,s5,-676 # 8000d230 <end>
    800084dc:	0954e263          	bltu	s1,s5,80008560 <freerange+0xd0>
    800084e0:	01100993          	li	s3,17
    800084e4:	01b99993          	slli	s3,s3,0x1b
    800084e8:	0734fc63          	bgeu	s1,s3,80008560 <freerange+0xd0>
    800084ec:	00058a13          	mv	s4,a1
    800084f0:	00004917          	auipc	s2,0x4
    800084f4:	a5090913          	addi	s2,s2,-1456 # 8000bf40 <kmem>
    800084f8:	00002b37          	lui	s6,0x2
    800084fc:	0140006f          	j	80008510 <freerange+0x80>
    80008500:	000017b7          	lui	a5,0x1
    80008504:	00f484b3          	add	s1,s1,a5
    80008508:	0554ec63          	bltu	s1,s5,80008560 <freerange+0xd0>
    8000850c:	0534fa63          	bgeu	s1,s3,80008560 <freerange+0xd0>
    80008510:	00001637          	lui	a2,0x1
    80008514:	00100593          	li	a1,1
    80008518:	00048513          	mv	a0,s1
    8000851c:	00000097          	auipc	ra,0x0
    80008520:	50c080e7          	jalr	1292(ra) # 80008a28 <__memset>
    80008524:	00093703          	ld	a4,0(s2)
    80008528:	016487b3          	add	a5,s1,s6
    8000852c:	00e4b023          	sd	a4,0(s1)
    80008530:	00993023          	sd	s1,0(s2)
    80008534:	fcfa76e3          	bgeu	s4,a5,80008500 <freerange+0x70>
    80008538:	03813083          	ld	ra,56(sp)
    8000853c:	03013403          	ld	s0,48(sp)
    80008540:	02813483          	ld	s1,40(sp)
    80008544:	02013903          	ld	s2,32(sp)
    80008548:	01813983          	ld	s3,24(sp)
    8000854c:	01013a03          	ld	s4,16(sp)
    80008550:	00813a83          	ld	s5,8(sp)
    80008554:	00013b03          	ld	s6,0(sp)
    80008558:	04010113          	addi	sp,sp,64
    8000855c:	00008067          	ret
    80008560:	00001517          	auipc	a0,0x1
    80008564:	2d850513          	addi	a0,a0,728 # 80009838 <digits+0x18>
    80008568:	fffff097          	auipc	ra,0xfffff
    8000856c:	3d4080e7          	jalr	980(ra) # 8000793c <panic>

0000000080008570 <kfree>:
    80008570:	fe010113          	addi	sp,sp,-32
    80008574:	00813823          	sd	s0,16(sp)
    80008578:	00113c23          	sd	ra,24(sp)
    8000857c:	00913423          	sd	s1,8(sp)
    80008580:	02010413          	addi	s0,sp,32
    80008584:	03451793          	slli	a5,a0,0x34
    80008588:	04079c63          	bnez	a5,800085e0 <kfree+0x70>
    8000858c:	00005797          	auipc	a5,0x5
    80008590:	ca478793          	addi	a5,a5,-860 # 8000d230 <end>
    80008594:	00050493          	mv	s1,a0
    80008598:	04f56463          	bltu	a0,a5,800085e0 <kfree+0x70>
    8000859c:	01100793          	li	a5,17
    800085a0:	01b79793          	slli	a5,a5,0x1b
    800085a4:	02f57e63          	bgeu	a0,a5,800085e0 <kfree+0x70>
    800085a8:	00001637          	lui	a2,0x1
    800085ac:	00100593          	li	a1,1
    800085b0:	00000097          	auipc	ra,0x0
    800085b4:	478080e7          	jalr	1144(ra) # 80008a28 <__memset>
    800085b8:	00004797          	auipc	a5,0x4
    800085bc:	98878793          	addi	a5,a5,-1656 # 8000bf40 <kmem>
    800085c0:	0007b703          	ld	a4,0(a5)
    800085c4:	01813083          	ld	ra,24(sp)
    800085c8:	01013403          	ld	s0,16(sp)
    800085cc:	00e4b023          	sd	a4,0(s1)
    800085d0:	0097b023          	sd	s1,0(a5)
    800085d4:	00813483          	ld	s1,8(sp)
    800085d8:	02010113          	addi	sp,sp,32
    800085dc:	00008067          	ret
    800085e0:	00001517          	auipc	a0,0x1
    800085e4:	25850513          	addi	a0,a0,600 # 80009838 <digits+0x18>
    800085e8:	fffff097          	auipc	ra,0xfffff
    800085ec:	354080e7          	jalr	852(ra) # 8000793c <panic>

00000000800085f0 <kalloc>:
    800085f0:	fe010113          	addi	sp,sp,-32
    800085f4:	00813823          	sd	s0,16(sp)
    800085f8:	00913423          	sd	s1,8(sp)
    800085fc:	00113c23          	sd	ra,24(sp)
    80008600:	02010413          	addi	s0,sp,32
    80008604:	00004797          	auipc	a5,0x4
    80008608:	93c78793          	addi	a5,a5,-1732 # 8000bf40 <kmem>
    8000860c:	0007b483          	ld	s1,0(a5)
    80008610:	02048063          	beqz	s1,80008630 <kalloc+0x40>
    80008614:	0004b703          	ld	a4,0(s1)
    80008618:	00001637          	lui	a2,0x1
    8000861c:	00500593          	li	a1,5
    80008620:	00048513          	mv	a0,s1
    80008624:	00e7b023          	sd	a4,0(a5)
    80008628:	00000097          	auipc	ra,0x0
    8000862c:	400080e7          	jalr	1024(ra) # 80008a28 <__memset>
    80008630:	01813083          	ld	ra,24(sp)
    80008634:	01013403          	ld	s0,16(sp)
    80008638:	00048513          	mv	a0,s1
    8000863c:	00813483          	ld	s1,8(sp)
    80008640:	02010113          	addi	sp,sp,32
    80008644:	00008067          	ret

0000000080008648 <initlock>:
    80008648:	ff010113          	addi	sp,sp,-16
    8000864c:	00813423          	sd	s0,8(sp)
    80008650:	01010413          	addi	s0,sp,16
    80008654:	00813403          	ld	s0,8(sp)
    80008658:	00b53423          	sd	a1,8(a0)
    8000865c:	00052023          	sw	zero,0(a0)
    80008660:	00053823          	sd	zero,16(a0)
    80008664:	01010113          	addi	sp,sp,16
    80008668:	00008067          	ret

000000008000866c <acquire>:
    8000866c:	fe010113          	addi	sp,sp,-32
    80008670:	00813823          	sd	s0,16(sp)
    80008674:	00913423          	sd	s1,8(sp)
    80008678:	00113c23          	sd	ra,24(sp)
    8000867c:	01213023          	sd	s2,0(sp)
    80008680:	02010413          	addi	s0,sp,32
    80008684:	00050493          	mv	s1,a0
    80008688:	10002973          	csrr	s2,sstatus
    8000868c:	100027f3          	csrr	a5,sstatus
    80008690:	ffd7f793          	andi	a5,a5,-3
    80008694:	10079073          	csrw	sstatus,a5
    80008698:	fffff097          	auipc	ra,0xfffff
    8000869c:	8ec080e7          	jalr	-1812(ra) # 80006f84 <mycpu>
    800086a0:	07852783          	lw	a5,120(a0)
    800086a4:	06078e63          	beqz	a5,80008720 <acquire+0xb4>
    800086a8:	fffff097          	auipc	ra,0xfffff
    800086ac:	8dc080e7          	jalr	-1828(ra) # 80006f84 <mycpu>
    800086b0:	07852783          	lw	a5,120(a0)
    800086b4:	0004a703          	lw	a4,0(s1)
    800086b8:	0017879b          	addiw	a5,a5,1
    800086bc:	06f52c23          	sw	a5,120(a0)
    800086c0:	04071063          	bnez	a4,80008700 <acquire+0x94>
    800086c4:	00100713          	li	a4,1
    800086c8:	00070793          	mv	a5,a4
    800086cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800086d0:	0007879b          	sext.w	a5,a5
    800086d4:	fe079ae3          	bnez	a5,800086c8 <acquire+0x5c>
    800086d8:	0ff0000f          	fence
    800086dc:	fffff097          	auipc	ra,0xfffff
    800086e0:	8a8080e7          	jalr	-1880(ra) # 80006f84 <mycpu>
    800086e4:	01813083          	ld	ra,24(sp)
    800086e8:	01013403          	ld	s0,16(sp)
    800086ec:	00a4b823          	sd	a0,16(s1)
    800086f0:	00013903          	ld	s2,0(sp)
    800086f4:	00813483          	ld	s1,8(sp)
    800086f8:	02010113          	addi	sp,sp,32
    800086fc:	00008067          	ret
    80008700:	0104b903          	ld	s2,16(s1)
    80008704:	fffff097          	auipc	ra,0xfffff
    80008708:	880080e7          	jalr	-1920(ra) # 80006f84 <mycpu>
    8000870c:	faa91ce3          	bne	s2,a0,800086c4 <acquire+0x58>
    80008710:	00001517          	auipc	a0,0x1
    80008714:	13050513          	addi	a0,a0,304 # 80009840 <digits+0x20>
    80008718:	fffff097          	auipc	ra,0xfffff
    8000871c:	224080e7          	jalr	548(ra) # 8000793c <panic>
    80008720:	00195913          	srli	s2,s2,0x1
    80008724:	fffff097          	auipc	ra,0xfffff
    80008728:	860080e7          	jalr	-1952(ra) # 80006f84 <mycpu>
    8000872c:	00197913          	andi	s2,s2,1
    80008730:	07252e23          	sw	s2,124(a0)
    80008734:	f75ff06f          	j	800086a8 <acquire+0x3c>

0000000080008738 <release>:
    80008738:	fe010113          	addi	sp,sp,-32
    8000873c:	00813823          	sd	s0,16(sp)
    80008740:	00113c23          	sd	ra,24(sp)
    80008744:	00913423          	sd	s1,8(sp)
    80008748:	01213023          	sd	s2,0(sp)
    8000874c:	02010413          	addi	s0,sp,32
    80008750:	00052783          	lw	a5,0(a0)
    80008754:	00079a63          	bnez	a5,80008768 <release+0x30>
    80008758:	00001517          	auipc	a0,0x1
    8000875c:	0f050513          	addi	a0,a0,240 # 80009848 <digits+0x28>
    80008760:	fffff097          	auipc	ra,0xfffff
    80008764:	1dc080e7          	jalr	476(ra) # 8000793c <panic>
    80008768:	01053903          	ld	s2,16(a0)
    8000876c:	00050493          	mv	s1,a0
    80008770:	fffff097          	auipc	ra,0xfffff
    80008774:	814080e7          	jalr	-2028(ra) # 80006f84 <mycpu>
    80008778:	fea910e3          	bne	s2,a0,80008758 <release+0x20>
    8000877c:	0004b823          	sd	zero,16(s1)
    80008780:	0ff0000f          	fence
    80008784:	0f50000f          	fence	iorw,ow
    80008788:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000878c:	ffffe097          	auipc	ra,0xffffe
    80008790:	7f8080e7          	jalr	2040(ra) # 80006f84 <mycpu>
    80008794:	100027f3          	csrr	a5,sstatus
    80008798:	0027f793          	andi	a5,a5,2
    8000879c:	04079a63          	bnez	a5,800087f0 <release+0xb8>
    800087a0:	07852783          	lw	a5,120(a0)
    800087a4:	02f05e63          	blez	a5,800087e0 <release+0xa8>
    800087a8:	fff7871b          	addiw	a4,a5,-1
    800087ac:	06e52c23          	sw	a4,120(a0)
    800087b0:	00071c63          	bnez	a4,800087c8 <release+0x90>
    800087b4:	07c52783          	lw	a5,124(a0)
    800087b8:	00078863          	beqz	a5,800087c8 <release+0x90>
    800087bc:	100027f3          	csrr	a5,sstatus
    800087c0:	0027e793          	ori	a5,a5,2
    800087c4:	10079073          	csrw	sstatus,a5
    800087c8:	01813083          	ld	ra,24(sp)
    800087cc:	01013403          	ld	s0,16(sp)
    800087d0:	00813483          	ld	s1,8(sp)
    800087d4:	00013903          	ld	s2,0(sp)
    800087d8:	02010113          	addi	sp,sp,32
    800087dc:	00008067          	ret
    800087e0:	00001517          	auipc	a0,0x1
    800087e4:	08850513          	addi	a0,a0,136 # 80009868 <digits+0x48>
    800087e8:	fffff097          	auipc	ra,0xfffff
    800087ec:	154080e7          	jalr	340(ra) # 8000793c <panic>
    800087f0:	00001517          	auipc	a0,0x1
    800087f4:	06050513          	addi	a0,a0,96 # 80009850 <digits+0x30>
    800087f8:	fffff097          	auipc	ra,0xfffff
    800087fc:	144080e7          	jalr	324(ra) # 8000793c <panic>

0000000080008800 <holding>:
    80008800:	00052783          	lw	a5,0(a0)
    80008804:	00079663          	bnez	a5,80008810 <holding+0x10>
    80008808:	00000513          	li	a0,0
    8000880c:	00008067          	ret
    80008810:	fe010113          	addi	sp,sp,-32
    80008814:	00813823          	sd	s0,16(sp)
    80008818:	00913423          	sd	s1,8(sp)
    8000881c:	00113c23          	sd	ra,24(sp)
    80008820:	02010413          	addi	s0,sp,32
    80008824:	01053483          	ld	s1,16(a0)
    80008828:	ffffe097          	auipc	ra,0xffffe
    8000882c:	75c080e7          	jalr	1884(ra) # 80006f84 <mycpu>
    80008830:	01813083          	ld	ra,24(sp)
    80008834:	01013403          	ld	s0,16(sp)
    80008838:	40a48533          	sub	a0,s1,a0
    8000883c:	00153513          	seqz	a0,a0
    80008840:	00813483          	ld	s1,8(sp)
    80008844:	02010113          	addi	sp,sp,32
    80008848:	00008067          	ret

000000008000884c <push_off>:
    8000884c:	fe010113          	addi	sp,sp,-32
    80008850:	00813823          	sd	s0,16(sp)
    80008854:	00113c23          	sd	ra,24(sp)
    80008858:	00913423          	sd	s1,8(sp)
    8000885c:	02010413          	addi	s0,sp,32
    80008860:	100024f3          	csrr	s1,sstatus
    80008864:	100027f3          	csrr	a5,sstatus
    80008868:	ffd7f793          	andi	a5,a5,-3
    8000886c:	10079073          	csrw	sstatus,a5
    80008870:	ffffe097          	auipc	ra,0xffffe
    80008874:	714080e7          	jalr	1812(ra) # 80006f84 <mycpu>
    80008878:	07852783          	lw	a5,120(a0)
    8000887c:	02078663          	beqz	a5,800088a8 <push_off+0x5c>
    80008880:	ffffe097          	auipc	ra,0xffffe
    80008884:	704080e7          	jalr	1796(ra) # 80006f84 <mycpu>
    80008888:	07852783          	lw	a5,120(a0)
    8000888c:	01813083          	ld	ra,24(sp)
    80008890:	01013403          	ld	s0,16(sp)
    80008894:	0017879b          	addiw	a5,a5,1
    80008898:	06f52c23          	sw	a5,120(a0)
    8000889c:	00813483          	ld	s1,8(sp)
    800088a0:	02010113          	addi	sp,sp,32
    800088a4:	00008067          	ret
    800088a8:	0014d493          	srli	s1,s1,0x1
    800088ac:	ffffe097          	auipc	ra,0xffffe
    800088b0:	6d8080e7          	jalr	1752(ra) # 80006f84 <mycpu>
    800088b4:	0014f493          	andi	s1,s1,1
    800088b8:	06952e23          	sw	s1,124(a0)
    800088bc:	fc5ff06f          	j	80008880 <push_off+0x34>

00000000800088c0 <pop_off>:
    800088c0:	ff010113          	addi	sp,sp,-16
    800088c4:	00813023          	sd	s0,0(sp)
    800088c8:	00113423          	sd	ra,8(sp)
    800088cc:	01010413          	addi	s0,sp,16
    800088d0:	ffffe097          	auipc	ra,0xffffe
    800088d4:	6b4080e7          	jalr	1716(ra) # 80006f84 <mycpu>
    800088d8:	100027f3          	csrr	a5,sstatus
    800088dc:	0027f793          	andi	a5,a5,2
    800088e0:	04079663          	bnez	a5,8000892c <pop_off+0x6c>
    800088e4:	07852783          	lw	a5,120(a0)
    800088e8:	02f05a63          	blez	a5,8000891c <pop_off+0x5c>
    800088ec:	fff7871b          	addiw	a4,a5,-1
    800088f0:	06e52c23          	sw	a4,120(a0)
    800088f4:	00071c63          	bnez	a4,8000890c <pop_off+0x4c>
    800088f8:	07c52783          	lw	a5,124(a0)
    800088fc:	00078863          	beqz	a5,8000890c <pop_off+0x4c>
    80008900:	100027f3          	csrr	a5,sstatus
    80008904:	0027e793          	ori	a5,a5,2
    80008908:	10079073          	csrw	sstatus,a5
    8000890c:	00813083          	ld	ra,8(sp)
    80008910:	00013403          	ld	s0,0(sp)
    80008914:	01010113          	addi	sp,sp,16
    80008918:	00008067          	ret
    8000891c:	00001517          	auipc	a0,0x1
    80008920:	f4c50513          	addi	a0,a0,-180 # 80009868 <digits+0x48>
    80008924:	fffff097          	auipc	ra,0xfffff
    80008928:	018080e7          	jalr	24(ra) # 8000793c <panic>
    8000892c:	00001517          	auipc	a0,0x1
    80008930:	f2450513          	addi	a0,a0,-220 # 80009850 <digits+0x30>
    80008934:	fffff097          	auipc	ra,0xfffff
    80008938:	008080e7          	jalr	8(ra) # 8000793c <panic>

000000008000893c <push_on>:
    8000893c:	fe010113          	addi	sp,sp,-32
    80008940:	00813823          	sd	s0,16(sp)
    80008944:	00113c23          	sd	ra,24(sp)
    80008948:	00913423          	sd	s1,8(sp)
    8000894c:	02010413          	addi	s0,sp,32
    80008950:	100024f3          	csrr	s1,sstatus
    80008954:	100027f3          	csrr	a5,sstatus
    80008958:	0027e793          	ori	a5,a5,2
    8000895c:	10079073          	csrw	sstatus,a5
    80008960:	ffffe097          	auipc	ra,0xffffe
    80008964:	624080e7          	jalr	1572(ra) # 80006f84 <mycpu>
    80008968:	07852783          	lw	a5,120(a0)
    8000896c:	02078663          	beqz	a5,80008998 <push_on+0x5c>
    80008970:	ffffe097          	auipc	ra,0xffffe
    80008974:	614080e7          	jalr	1556(ra) # 80006f84 <mycpu>
    80008978:	07852783          	lw	a5,120(a0)
    8000897c:	01813083          	ld	ra,24(sp)
    80008980:	01013403          	ld	s0,16(sp)
    80008984:	0017879b          	addiw	a5,a5,1
    80008988:	06f52c23          	sw	a5,120(a0)
    8000898c:	00813483          	ld	s1,8(sp)
    80008990:	02010113          	addi	sp,sp,32
    80008994:	00008067          	ret
    80008998:	0014d493          	srli	s1,s1,0x1
    8000899c:	ffffe097          	auipc	ra,0xffffe
    800089a0:	5e8080e7          	jalr	1512(ra) # 80006f84 <mycpu>
    800089a4:	0014f493          	andi	s1,s1,1
    800089a8:	06952e23          	sw	s1,124(a0)
    800089ac:	fc5ff06f          	j	80008970 <push_on+0x34>

00000000800089b0 <pop_on>:
    800089b0:	ff010113          	addi	sp,sp,-16
    800089b4:	00813023          	sd	s0,0(sp)
    800089b8:	00113423          	sd	ra,8(sp)
    800089bc:	01010413          	addi	s0,sp,16
    800089c0:	ffffe097          	auipc	ra,0xffffe
    800089c4:	5c4080e7          	jalr	1476(ra) # 80006f84 <mycpu>
    800089c8:	100027f3          	csrr	a5,sstatus
    800089cc:	0027f793          	andi	a5,a5,2
    800089d0:	04078463          	beqz	a5,80008a18 <pop_on+0x68>
    800089d4:	07852783          	lw	a5,120(a0)
    800089d8:	02f05863          	blez	a5,80008a08 <pop_on+0x58>
    800089dc:	fff7879b          	addiw	a5,a5,-1
    800089e0:	06f52c23          	sw	a5,120(a0)
    800089e4:	07853783          	ld	a5,120(a0)
    800089e8:	00079863          	bnez	a5,800089f8 <pop_on+0x48>
    800089ec:	100027f3          	csrr	a5,sstatus
    800089f0:	ffd7f793          	andi	a5,a5,-3
    800089f4:	10079073          	csrw	sstatus,a5
    800089f8:	00813083          	ld	ra,8(sp)
    800089fc:	00013403          	ld	s0,0(sp)
    80008a00:	01010113          	addi	sp,sp,16
    80008a04:	00008067          	ret
    80008a08:	00001517          	auipc	a0,0x1
    80008a0c:	e8850513          	addi	a0,a0,-376 # 80009890 <digits+0x70>
    80008a10:	fffff097          	auipc	ra,0xfffff
    80008a14:	f2c080e7          	jalr	-212(ra) # 8000793c <panic>
    80008a18:	00001517          	auipc	a0,0x1
    80008a1c:	e5850513          	addi	a0,a0,-424 # 80009870 <digits+0x50>
    80008a20:	fffff097          	auipc	ra,0xfffff
    80008a24:	f1c080e7          	jalr	-228(ra) # 8000793c <panic>

0000000080008a28 <__memset>:
    80008a28:	ff010113          	addi	sp,sp,-16
    80008a2c:	00813423          	sd	s0,8(sp)
    80008a30:	01010413          	addi	s0,sp,16
    80008a34:	1a060e63          	beqz	a2,80008bf0 <__memset+0x1c8>
    80008a38:	40a007b3          	neg	a5,a0
    80008a3c:	0077f793          	andi	a5,a5,7
    80008a40:	00778693          	addi	a3,a5,7
    80008a44:	00b00813          	li	a6,11
    80008a48:	0ff5f593          	andi	a1,a1,255
    80008a4c:	fff6071b          	addiw	a4,a2,-1
    80008a50:	1b06e663          	bltu	a3,a6,80008bfc <__memset+0x1d4>
    80008a54:	1cd76463          	bltu	a4,a3,80008c1c <__memset+0x1f4>
    80008a58:	1a078e63          	beqz	a5,80008c14 <__memset+0x1ec>
    80008a5c:	00b50023          	sb	a1,0(a0)
    80008a60:	00100713          	li	a4,1
    80008a64:	1ae78463          	beq	a5,a4,80008c0c <__memset+0x1e4>
    80008a68:	00b500a3          	sb	a1,1(a0)
    80008a6c:	00200713          	li	a4,2
    80008a70:	1ae78a63          	beq	a5,a4,80008c24 <__memset+0x1fc>
    80008a74:	00b50123          	sb	a1,2(a0)
    80008a78:	00300713          	li	a4,3
    80008a7c:	18e78463          	beq	a5,a4,80008c04 <__memset+0x1dc>
    80008a80:	00b501a3          	sb	a1,3(a0)
    80008a84:	00400713          	li	a4,4
    80008a88:	1ae78263          	beq	a5,a4,80008c2c <__memset+0x204>
    80008a8c:	00b50223          	sb	a1,4(a0)
    80008a90:	00500713          	li	a4,5
    80008a94:	1ae78063          	beq	a5,a4,80008c34 <__memset+0x20c>
    80008a98:	00b502a3          	sb	a1,5(a0)
    80008a9c:	00700713          	li	a4,7
    80008aa0:	18e79e63          	bne	a5,a4,80008c3c <__memset+0x214>
    80008aa4:	00b50323          	sb	a1,6(a0)
    80008aa8:	00700e93          	li	t4,7
    80008aac:	00859713          	slli	a4,a1,0x8
    80008ab0:	00e5e733          	or	a4,a1,a4
    80008ab4:	01059e13          	slli	t3,a1,0x10
    80008ab8:	01c76e33          	or	t3,a4,t3
    80008abc:	01859313          	slli	t1,a1,0x18
    80008ac0:	006e6333          	or	t1,t3,t1
    80008ac4:	02059893          	slli	a7,a1,0x20
    80008ac8:	40f60e3b          	subw	t3,a2,a5
    80008acc:	011368b3          	or	a7,t1,a7
    80008ad0:	02859813          	slli	a6,a1,0x28
    80008ad4:	0108e833          	or	a6,a7,a6
    80008ad8:	03059693          	slli	a3,a1,0x30
    80008adc:	003e589b          	srliw	a7,t3,0x3
    80008ae0:	00d866b3          	or	a3,a6,a3
    80008ae4:	03859713          	slli	a4,a1,0x38
    80008ae8:	00389813          	slli	a6,a7,0x3
    80008aec:	00f507b3          	add	a5,a0,a5
    80008af0:	00e6e733          	or	a4,a3,a4
    80008af4:	000e089b          	sext.w	a7,t3
    80008af8:	00f806b3          	add	a3,a6,a5
    80008afc:	00e7b023          	sd	a4,0(a5)
    80008b00:	00878793          	addi	a5,a5,8
    80008b04:	fed79ce3          	bne	a5,a3,80008afc <__memset+0xd4>
    80008b08:	ff8e7793          	andi	a5,t3,-8
    80008b0c:	0007871b          	sext.w	a4,a5
    80008b10:	01d787bb          	addw	a5,a5,t4
    80008b14:	0ce88e63          	beq	a7,a4,80008bf0 <__memset+0x1c8>
    80008b18:	00f50733          	add	a4,a0,a5
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	0017871b          	addiw	a4,a5,1
    80008b24:	0cc77663          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	0027871b          	addiw	a4,a5,2
    80008b34:	0ac77e63          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b38:	00e50733          	add	a4,a0,a4
    80008b3c:	00b70023          	sb	a1,0(a4)
    80008b40:	0037871b          	addiw	a4,a5,3
    80008b44:	0ac77663          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b48:	00e50733          	add	a4,a0,a4
    80008b4c:	00b70023          	sb	a1,0(a4)
    80008b50:	0047871b          	addiw	a4,a5,4
    80008b54:	08c77e63          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b58:	00e50733          	add	a4,a0,a4
    80008b5c:	00b70023          	sb	a1,0(a4)
    80008b60:	0057871b          	addiw	a4,a5,5
    80008b64:	08c77663          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b68:	00e50733          	add	a4,a0,a4
    80008b6c:	00b70023          	sb	a1,0(a4)
    80008b70:	0067871b          	addiw	a4,a5,6
    80008b74:	06c77e63          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b78:	00e50733          	add	a4,a0,a4
    80008b7c:	00b70023          	sb	a1,0(a4)
    80008b80:	0077871b          	addiw	a4,a5,7
    80008b84:	06c77663          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b88:	00e50733          	add	a4,a0,a4
    80008b8c:	00b70023          	sb	a1,0(a4)
    80008b90:	0087871b          	addiw	a4,a5,8
    80008b94:	04c77e63          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008b98:	00e50733          	add	a4,a0,a4
    80008b9c:	00b70023          	sb	a1,0(a4)
    80008ba0:	0097871b          	addiw	a4,a5,9
    80008ba4:	04c77663          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008ba8:	00e50733          	add	a4,a0,a4
    80008bac:	00b70023          	sb	a1,0(a4)
    80008bb0:	00a7871b          	addiw	a4,a5,10
    80008bb4:	02c77e63          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008bb8:	00e50733          	add	a4,a0,a4
    80008bbc:	00b70023          	sb	a1,0(a4)
    80008bc0:	00b7871b          	addiw	a4,a5,11
    80008bc4:	02c77663          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008bc8:	00e50733          	add	a4,a0,a4
    80008bcc:	00b70023          	sb	a1,0(a4)
    80008bd0:	00c7871b          	addiw	a4,a5,12
    80008bd4:	00c77e63          	bgeu	a4,a2,80008bf0 <__memset+0x1c8>
    80008bd8:	00e50733          	add	a4,a0,a4
    80008bdc:	00b70023          	sb	a1,0(a4)
    80008be0:	00d7879b          	addiw	a5,a5,13
    80008be4:	00c7f663          	bgeu	a5,a2,80008bf0 <__memset+0x1c8>
    80008be8:	00f507b3          	add	a5,a0,a5
    80008bec:	00b78023          	sb	a1,0(a5)
    80008bf0:	00813403          	ld	s0,8(sp)
    80008bf4:	01010113          	addi	sp,sp,16
    80008bf8:	00008067          	ret
    80008bfc:	00b00693          	li	a3,11
    80008c00:	e55ff06f          	j	80008a54 <__memset+0x2c>
    80008c04:	00300e93          	li	t4,3
    80008c08:	ea5ff06f          	j	80008aac <__memset+0x84>
    80008c0c:	00100e93          	li	t4,1
    80008c10:	e9dff06f          	j	80008aac <__memset+0x84>
    80008c14:	00000e93          	li	t4,0
    80008c18:	e95ff06f          	j	80008aac <__memset+0x84>
    80008c1c:	00000793          	li	a5,0
    80008c20:	ef9ff06f          	j	80008b18 <__memset+0xf0>
    80008c24:	00200e93          	li	t4,2
    80008c28:	e85ff06f          	j	80008aac <__memset+0x84>
    80008c2c:	00400e93          	li	t4,4
    80008c30:	e7dff06f          	j	80008aac <__memset+0x84>
    80008c34:	00500e93          	li	t4,5
    80008c38:	e75ff06f          	j	80008aac <__memset+0x84>
    80008c3c:	00600e93          	li	t4,6
    80008c40:	e6dff06f          	j	80008aac <__memset+0x84>

0000000080008c44 <__memmove>:
    80008c44:	ff010113          	addi	sp,sp,-16
    80008c48:	00813423          	sd	s0,8(sp)
    80008c4c:	01010413          	addi	s0,sp,16
    80008c50:	0e060863          	beqz	a2,80008d40 <__memmove+0xfc>
    80008c54:	fff6069b          	addiw	a3,a2,-1
    80008c58:	0006881b          	sext.w	a6,a3
    80008c5c:	0ea5e863          	bltu	a1,a0,80008d4c <__memmove+0x108>
    80008c60:	00758713          	addi	a4,a1,7
    80008c64:	00a5e7b3          	or	a5,a1,a0
    80008c68:	40a70733          	sub	a4,a4,a0
    80008c6c:	0077f793          	andi	a5,a5,7
    80008c70:	00f73713          	sltiu	a4,a4,15
    80008c74:	00174713          	xori	a4,a4,1
    80008c78:	0017b793          	seqz	a5,a5
    80008c7c:	00e7f7b3          	and	a5,a5,a4
    80008c80:	10078863          	beqz	a5,80008d90 <__memmove+0x14c>
    80008c84:	00900793          	li	a5,9
    80008c88:	1107f463          	bgeu	a5,a6,80008d90 <__memmove+0x14c>
    80008c8c:	0036581b          	srliw	a6,a2,0x3
    80008c90:	fff8081b          	addiw	a6,a6,-1
    80008c94:	02081813          	slli	a6,a6,0x20
    80008c98:	01d85893          	srli	a7,a6,0x1d
    80008c9c:	00858813          	addi	a6,a1,8
    80008ca0:	00058793          	mv	a5,a1
    80008ca4:	00050713          	mv	a4,a0
    80008ca8:	01088833          	add	a6,a7,a6
    80008cac:	0007b883          	ld	a7,0(a5)
    80008cb0:	00878793          	addi	a5,a5,8
    80008cb4:	00870713          	addi	a4,a4,8
    80008cb8:	ff173c23          	sd	a7,-8(a4)
    80008cbc:	ff0798e3          	bne	a5,a6,80008cac <__memmove+0x68>
    80008cc0:	ff867713          	andi	a4,a2,-8
    80008cc4:	02071793          	slli	a5,a4,0x20
    80008cc8:	0207d793          	srli	a5,a5,0x20
    80008ccc:	00f585b3          	add	a1,a1,a5
    80008cd0:	40e686bb          	subw	a3,a3,a4
    80008cd4:	00f507b3          	add	a5,a0,a5
    80008cd8:	06e60463          	beq	a2,a4,80008d40 <__memmove+0xfc>
    80008cdc:	0005c703          	lbu	a4,0(a1)
    80008ce0:	00e78023          	sb	a4,0(a5)
    80008ce4:	04068e63          	beqz	a3,80008d40 <__memmove+0xfc>
    80008ce8:	0015c603          	lbu	a2,1(a1)
    80008cec:	00100713          	li	a4,1
    80008cf0:	00c780a3          	sb	a2,1(a5)
    80008cf4:	04e68663          	beq	a3,a4,80008d40 <__memmove+0xfc>
    80008cf8:	0025c603          	lbu	a2,2(a1)
    80008cfc:	00200713          	li	a4,2
    80008d00:	00c78123          	sb	a2,2(a5)
    80008d04:	02e68e63          	beq	a3,a4,80008d40 <__memmove+0xfc>
    80008d08:	0035c603          	lbu	a2,3(a1)
    80008d0c:	00300713          	li	a4,3
    80008d10:	00c781a3          	sb	a2,3(a5)
    80008d14:	02e68663          	beq	a3,a4,80008d40 <__memmove+0xfc>
    80008d18:	0045c603          	lbu	a2,4(a1)
    80008d1c:	00400713          	li	a4,4
    80008d20:	00c78223          	sb	a2,4(a5)
    80008d24:	00e68e63          	beq	a3,a4,80008d40 <__memmove+0xfc>
    80008d28:	0055c603          	lbu	a2,5(a1)
    80008d2c:	00500713          	li	a4,5
    80008d30:	00c782a3          	sb	a2,5(a5)
    80008d34:	00e68663          	beq	a3,a4,80008d40 <__memmove+0xfc>
    80008d38:	0065c703          	lbu	a4,6(a1)
    80008d3c:	00e78323          	sb	a4,6(a5)
    80008d40:	00813403          	ld	s0,8(sp)
    80008d44:	01010113          	addi	sp,sp,16
    80008d48:	00008067          	ret
    80008d4c:	02061713          	slli	a4,a2,0x20
    80008d50:	02075713          	srli	a4,a4,0x20
    80008d54:	00e587b3          	add	a5,a1,a4
    80008d58:	f0f574e3          	bgeu	a0,a5,80008c60 <__memmove+0x1c>
    80008d5c:	02069613          	slli	a2,a3,0x20
    80008d60:	02065613          	srli	a2,a2,0x20
    80008d64:	fff64613          	not	a2,a2
    80008d68:	00e50733          	add	a4,a0,a4
    80008d6c:	00c78633          	add	a2,a5,a2
    80008d70:	fff7c683          	lbu	a3,-1(a5)
    80008d74:	fff78793          	addi	a5,a5,-1
    80008d78:	fff70713          	addi	a4,a4,-1
    80008d7c:	00d70023          	sb	a3,0(a4)
    80008d80:	fec798e3          	bne	a5,a2,80008d70 <__memmove+0x12c>
    80008d84:	00813403          	ld	s0,8(sp)
    80008d88:	01010113          	addi	sp,sp,16
    80008d8c:	00008067          	ret
    80008d90:	02069713          	slli	a4,a3,0x20
    80008d94:	02075713          	srli	a4,a4,0x20
    80008d98:	00170713          	addi	a4,a4,1
    80008d9c:	00e50733          	add	a4,a0,a4
    80008da0:	00050793          	mv	a5,a0
    80008da4:	0005c683          	lbu	a3,0(a1)
    80008da8:	00178793          	addi	a5,a5,1
    80008dac:	00158593          	addi	a1,a1,1
    80008db0:	fed78fa3          	sb	a3,-1(a5)
    80008db4:	fee798e3          	bne	a5,a4,80008da4 <__memmove+0x160>
    80008db8:	f89ff06f          	j	80008d40 <__memmove+0xfc>

0000000080008dbc <__putc>:
    80008dbc:	fe010113          	addi	sp,sp,-32
    80008dc0:	00813823          	sd	s0,16(sp)
    80008dc4:	00113c23          	sd	ra,24(sp)
    80008dc8:	02010413          	addi	s0,sp,32
    80008dcc:	00050793          	mv	a5,a0
    80008dd0:	fef40593          	addi	a1,s0,-17
    80008dd4:	00100613          	li	a2,1
    80008dd8:	00000513          	li	a0,0
    80008ddc:	fef407a3          	sb	a5,-17(s0)
    80008de0:	fffff097          	auipc	ra,0xfffff
    80008de4:	b3c080e7          	jalr	-1220(ra) # 8000791c <console_write>
    80008de8:	01813083          	ld	ra,24(sp)
    80008dec:	01013403          	ld	s0,16(sp)
    80008df0:	02010113          	addi	sp,sp,32
    80008df4:	00008067          	ret

0000000080008df8 <__getc>:
    80008df8:	fe010113          	addi	sp,sp,-32
    80008dfc:	00813823          	sd	s0,16(sp)
    80008e00:	00113c23          	sd	ra,24(sp)
    80008e04:	02010413          	addi	s0,sp,32
    80008e08:	fe840593          	addi	a1,s0,-24
    80008e0c:	00100613          	li	a2,1
    80008e10:	00000513          	li	a0,0
    80008e14:	fffff097          	auipc	ra,0xfffff
    80008e18:	ae8080e7          	jalr	-1304(ra) # 800078fc <console_read>
    80008e1c:	fe844503          	lbu	a0,-24(s0)
    80008e20:	01813083          	ld	ra,24(sp)
    80008e24:	01013403          	ld	s0,16(sp)
    80008e28:	02010113          	addi	sp,sp,32
    80008e2c:	00008067          	ret

0000000080008e30 <console_handler>:
    80008e30:	fe010113          	addi	sp,sp,-32
    80008e34:	00813823          	sd	s0,16(sp)
    80008e38:	00113c23          	sd	ra,24(sp)
    80008e3c:	00913423          	sd	s1,8(sp)
    80008e40:	02010413          	addi	s0,sp,32
    80008e44:	14202773          	csrr	a4,scause
    80008e48:	100027f3          	csrr	a5,sstatus
    80008e4c:	0027f793          	andi	a5,a5,2
    80008e50:	06079e63          	bnez	a5,80008ecc <console_handler+0x9c>
    80008e54:	00074c63          	bltz	a4,80008e6c <console_handler+0x3c>
    80008e58:	01813083          	ld	ra,24(sp)
    80008e5c:	01013403          	ld	s0,16(sp)
    80008e60:	00813483          	ld	s1,8(sp)
    80008e64:	02010113          	addi	sp,sp,32
    80008e68:	00008067          	ret
    80008e6c:	0ff77713          	andi	a4,a4,255
    80008e70:	00900793          	li	a5,9
    80008e74:	fef712e3          	bne	a4,a5,80008e58 <console_handler+0x28>
    80008e78:	ffffe097          	auipc	ra,0xffffe
    80008e7c:	6dc080e7          	jalr	1756(ra) # 80007554 <plic_claim>
    80008e80:	00a00793          	li	a5,10
    80008e84:	00050493          	mv	s1,a0
    80008e88:	02f50c63          	beq	a0,a5,80008ec0 <console_handler+0x90>
    80008e8c:	fc0506e3          	beqz	a0,80008e58 <console_handler+0x28>
    80008e90:	00050593          	mv	a1,a0
    80008e94:	00001517          	auipc	a0,0x1
    80008e98:	90450513          	addi	a0,a0,-1788 # 80009798 <CONSOLE_STATUS+0x788>
    80008e9c:	fffff097          	auipc	ra,0xfffff
    80008ea0:	afc080e7          	jalr	-1284(ra) # 80007998 <__printf>
    80008ea4:	01013403          	ld	s0,16(sp)
    80008ea8:	01813083          	ld	ra,24(sp)
    80008eac:	00048513          	mv	a0,s1
    80008eb0:	00813483          	ld	s1,8(sp)
    80008eb4:	02010113          	addi	sp,sp,32
    80008eb8:	ffffe317          	auipc	t1,0xffffe
    80008ebc:	6d430067          	jr	1748(t1) # 8000758c <plic_complete>
    80008ec0:	fffff097          	auipc	ra,0xfffff
    80008ec4:	3e0080e7          	jalr	992(ra) # 800082a0 <uartintr>
    80008ec8:	fddff06f          	j	80008ea4 <console_handler+0x74>
    80008ecc:	00001517          	auipc	a0,0x1
    80008ed0:	9cc50513          	addi	a0,a0,-1588 # 80009898 <digits+0x78>
    80008ed4:	fffff097          	auipc	ra,0xfffff
    80008ed8:	a68080e7          	jalr	-1432(ra) # 8000793c <panic>
	...
