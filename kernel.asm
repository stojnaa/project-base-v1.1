
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	f5013103          	ld	sp,-176(sp) # 8000bf50 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	42d060ef          	jal	ra,80006c48 <start>

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
    80001090:	265000ef          	jal	ra,80001af4 <handleSupervisorTrap>

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

00000000800013c4 <_Z4sendP7_threadPc>:
void send(thread_t handle, char* message) {
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    800013d4:	00058613          	mv	a2,a1
    doSyscall(0x18, (uint64)handle, (uint64)message);
    800013d8:	00000713          	li	a4,0
    800013dc:	00000693          	li	a3,0
    800013e0:	00050593          	mv	a1,a0
    800013e4:	01800513          	li	a0,24
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	ddc080e7          	jalr	-548(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800013f0:	00813083          	ld	ra,8(sp)
    800013f4:	00013403          	ld	s0,0(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_Z7receivev>:

char* receive() {
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00113423          	sd	ra,8(sp)
    80001408:	00813023          	sd	s0,0(sp)
    8000140c:	01010413          	addi	s0,sp,16
    return (char*)doSyscall(0x19);
    80001410:	00000713          	li	a4,0
    80001414:	00000693          	li	a3,0
    80001418:	00000613          	li	a2,0
    8000141c:	00000593          	li	a1,0
    80001420:	01900513          	li	a0,25
    80001424:	00000097          	auipc	ra,0x0
    80001428:	da0080e7          	jalr	-608(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000142c:	00813083          	ld	ra,8(sp)
    80001430:	00013403          	ld	s0,0(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned init) {
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00113423          	sd	ra,8(sp)
    80001444:	00813023          	sd	s0,0(sp)
    80001448:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    8000144c:	00000713          	li	a4,0
    80001450:	00000693          	li	a3,0
    80001454:	02059613          	slli	a2,a1,0x20
    80001458:	02065613          	srli	a2,a2,0x20
    8000145c:	00050593          	mv	a1,a0
    80001460:	02100513          	li	a0,33
    80001464:	00000097          	auipc	ra,0x0
    80001468:	d60080e7          	jalr	-672(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000146c:	0005051b          	sext.w	a0,a0
    80001470:	00813083          	ld	ra,8(sp)
    80001474:	00013403          	ld	s0,0(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    80001480:	ff010113          	addi	sp,sp,-16
    80001484:	00113423          	sd	ra,8(sp)
    80001488:	00813023          	sd	s0,0(sp)
    8000148c:	01010413          	addi	s0,sp,16
    80001490:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    80001494:	00000713          	li	a4,0
    80001498:	00000693          	li	a3,0
    8000149c:	00000613          	li	a2,0
    800014a0:	02200513          	li	a0,34
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	d20080e7          	jalr	-736(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014ac:	0005051b          	sext.w	a0,a0
    800014b0:	00813083          	ld	ra,8(sp)
    800014b4:	00013403          	ld	s0,0(sp)
    800014b8:	01010113          	addi	sp,sp,16
    800014bc:	00008067          	ret

00000000800014c0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800014c0:	ff010113          	addi	sp,sp,-16
    800014c4:	00113423          	sd	ra,8(sp)
    800014c8:	00813023          	sd	s0,0(sp)
    800014cc:	01010413          	addi	s0,sp,16
    800014d0:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    800014d4:	00000713          	li	a4,0
    800014d8:	00000693          	li	a3,0
    800014dc:	00000613          	li	a2,0
    800014e0:	02300513          	li	a0,35
    800014e4:	00000097          	auipc	ra,0x0
    800014e8:	ce0080e7          	jalr	-800(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800014ec:	0005051b          	sext.w	a0,a0
    800014f0:	00813083          	ld	ra,8(sp)
    800014f4:	00013403          	ld	s0,0(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00113423          	sd	ra,8(sp)
    80001508:	00813023          	sd	s0,0(sp)
    8000150c:	01010413          	addi	s0,sp,16
    80001510:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    80001514:	00000713          	li	a4,0
    80001518:	00000693          	li	a3,0
    8000151c:	00000613          	li	a2,0
    80001520:	02400513          	li	a0,36
    80001524:	00000097          	auipc	ra,0x0
    80001528:	ca0080e7          	jalr	-864(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    8000152c:	0005051b          	sext.w	a0,a0
    80001530:	00813083          	ld	ra,8(sp)
    80001534:	00013403          	ld	s0,0(sp)
    80001538:	01010113          	addi	sp,sp,16
    8000153c:	00008067          	ret

0000000080001540 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001540:	ff010113          	addi	sp,sp,-16
    80001544:	00113423          	sd	ra,8(sp)
    80001548:	00813023          	sd	s0,0(sp)
    8000154c:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001550:	00000713          	li	a4,0
    80001554:	00000693          	li	a3,0
    80001558:	02059613          	slli	a2,a1,0x20
    8000155c:	02065613          	srli	a2,a2,0x20
    80001560:	00050593          	mv	a1,a0
    80001564:	02500513          	li	a0,37
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	c5c080e7          	jalr	-932(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001570:	0005051b          	sext.w	a0,a0
    80001574:	00813083          	ld	ra,8(sp)
    80001578:	00013403          	ld	s0,0(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret

0000000080001584 <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    80001584:	ff010113          	addi	sp,sp,-16
    80001588:	00113423          	sd	ra,8(sp)
    8000158c:	00813023          	sd	s0,0(sp)
    80001590:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    80001594:	00000713          	li	a4,0
    80001598:	00000693          	li	a3,0
    8000159c:	02059613          	slli	a2,a1,0x20
    800015a0:	02065613          	srli	a2,a2,0x20
    800015a4:	00050593          	mv	a1,a0
    800015a8:	02600513          	li	a0,38
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	c18080e7          	jalr	-1000(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015b4:	0005051b          	sext.w	a0,a0
    800015b8:	00813083          	ld	ra,8(sp)
    800015bc:	00013403          	ld	s0,0(sp)
    800015c0:	01010113          	addi	sp,sp,16
    800015c4:	00008067          	ret

00000000800015c8 <_Z10time_sleepm>:
int time_sleep(time_t time) {
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00113423          	sd	ra,8(sp)
    800015d0:	00813023          	sd	s0,0(sp)
    800015d4:	01010413          	addi	s0,sp,16
    800015d8:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    800015dc:	00000713          	li	a4,0
    800015e0:	00000693          	li	a3,0
    800015e4:	00000613          	li	a2,0
    800015e8:	03100513          	li	a0,49
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	bd8080e7          	jalr	-1064(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    800015f4:	0005051b          	sext.w	a0,a0
    800015f8:	00813083          	ld	ra,8(sp)
    800015fc:	00013403          	ld	s0,0(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_Z4getcv>:

char getc() {
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00113423          	sd	ra,8(sp)
    80001610:	00813023          	sd	s0,0(sp)
    80001614:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    80001618:	00000713          	li	a4,0
    8000161c:	00000693          	li	a3,0
    80001620:	00000613          	li	a2,0
    80001624:	00000593          	li	a1,0
    80001628:	04100513          	li	a0,65
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	b98080e7          	jalr	-1128(ra) # 800011c4 <_ZL9doSyscallmmmmm>
}
    80001634:	0ff57513          	andi	a0,a0,255
    80001638:	00813083          	ld	ra,8(sp)
    8000163c:	00013403          	ld	s0,0(sp)
    80001640:	01010113          	addi	sp,sp,16
    80001644:	00008067          	ret

0000000080001648 <_Z4putcc>:

void putc(char c) {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00113423          	sd	ra,8(sp)
    80001650:	00813023          	sd	s0,0(sp)
    80001654:	01010413          	addi	s0,sp,16
    80001658:	00050593          	mv	a1,a0
    doSyscall(0x42, (uint64)c);
    8000165c:	00000713          	li	a4,0
    80001660:	00000693          	li	a3,0
    80001664:	00000613          	li	a2,0
    80001668:	04200513          	li	a0,66
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	b58080e7          	jalr	-1192(ra) # 800011c4 <_ZL9doSyscallmmmmm>
    80001674:	00813083          	ld	ra,8(sp)
    80001678:	00013403          	ld	s0,0(sp)
    8000167c:	01010113          	addi	sp,sp,16
    80001680:	00008067          	ret

0000000080001684 <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00813423          	sd	s0,8(sp)
    8000168c:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001690:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    80001694:	00655513          	srli	a0,a0,0x6
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    800016a4:	fe010113          	addi	sp,sp,-32
    800016a8:	00113c23          	sd	ra,24(sp)
    800016ac:	00813823          	sd	s0,16(sp)
    800016b0:	00913423          	sd	s1,8(sp)
    800016b4:	01213023          	sd	s2,0(sp)
    800016b8:	02010413          	addi	s0,sp,32
    800016bc:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	5ac080e7          	jalr	1452(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    800016c8:	00050493          	mv	s1,a0
    800016cc:	00090513          	mv	a0,s2
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	fb4080e7          	jalr	-76(ra) # 80001684 <_ZL23blocksForBytesSemaphorem>
    800016d8:	00050593          	mv	a1,a0
    800016dc:	00048513          	mv	a0,s1
    800016e0:	00001097          	auipc	ra,0x1
    800016e4:	60c080e7          	jalr	1548(ra) # 80002cec <_ZN15MemoryAllocator6mallocEm>
}
    800016e8:	01813083          	ld	ra,24(sp)
    800016ec:	01013403          	ld	s0,16(sp)
    800016f0:	00813483          	ld	s1,8(sp)
    800016f4:	00013903          	ld	s2,0(sp)
    800016f8:	02010113          	addi	sp,sp,32
    800016fc:	00008067          	ret

0000000080001700 <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001700:	04050263          	beqz	a0,80001744 <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    80001704:	fe010113          	addi	sp,sp,-32
    80001708:	00113c23          	sd	ra,24(sp)
    8000170c:	00813823          	sd	s0,16(sp)
    80001710:	00913423          	sd	s1,8(sp)
    80001714:	02010413          	addi	s0,sp,32
    80001718:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    8000171c:	00001097          	auipc	ra,0x1
    80001720:	550080e7          	jalr	1360(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    80001724:	00048593          	mv	a1,s1
    80001728:	00001097          	auipc	ra,0x1
    8000172c:	720080e7          	jalr	1824(ra) # 80002e48 <_ZN15MemoryAllocator4freeEPv>
}
    80001730:	01813083          	ld	ra,24(sp)
    80001734:	01013403          	ld	s0,16(sp)
    80001738:	00813483          	ld	s1,8(sp)
    8000173c:	02010113          	addi	sp,sp,32
    80001740:	00008067          	ret
    80001744:	00008067          	ret

0000000080001748 <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00813423          	sd	s0,8(sp)
    80001750:	01010413          	addi	s0,sp,16
    val = (int)init;
    80001754:	00b52023          	sw	a1,0(a0)
    closed = false;
    80001758:	00050223          	sb	zero,4(a0)
    head = nullptr;
    8000175c:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    80001760:	00053823          	sd	zero,16(a0)
}
    80001764:	00813403          	ld	s0,8(sp)
    80001768:	01010113          	addi	sp,sp,16
    8000176c:	00008067          	ret

0000000080001770 <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    80001770:	fe010113          	addi	sp,sp,-32
    80001774:	00113c23          	sd	ra,24(sp)
    80001778:	00813823          	sd	s0,16(sp)
    8000177c:	00913423          	sd	s1,8(sp)
    80001780:	01213023          	sd	s2,0(sp)
    80001784:	02010413          	addi	s0,sp,32
    80001788:	00050913          	mv	s2,a0
    return new _sem(init);
    8000178c:	01800513          	li	a0,24
    80001790:	00000097          	auipc	ra,0x0
    80001794:	f14080e7          	jalr	-236(ra) # 800016a4 <_ZN4_semnwEm>
    80001798:	00050493          	mv	s1,a0
    8000179c:	00090593          	mv	a1,s2
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	fa8080e7          	jalr	-88(ra) # 80001748 <_ZN4_semC1Ej>
}
    800017a8:	00048513          	mv	a0,s1
    800017ac:	01813083          	ld	ra,24(sp)
    800017b0:	01013403          	ld	s0,16(sp)
    800017b4:	00813483          	ld	s1,8(sp)
    800017b8:	00013903          	ld	s2,0(sp)
    800017bc:	02010113          	addi	sp,sp,32
    800017c0:	00008067          	ret

00000000800017c4 <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    800017c4:	02050863          	beqz	a0,800017f4 <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00113423          	sd	ra,8(sp)
    800017d0:	00813023          	sd	s0,0(sp)
    800017d4:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	f28080e7          	jalr	-216(ra) # 80001700 <_ZN4_semdlEPv>
    return 0;
    800017e0:	00000513          	li	a0,0
}
    800017e4:	00813083          	ld	ra,8(sp)
    800017e8:	00013403          	ld	s0,0(sp)
    800017ec:	01010113          	addi	sp,sp,16
    800017f0:	00008067          	ret
        return -1;
    800017f4:	fff00513          	li	a0,-1
}
    800017f8:	00008067          	ret

00000000800017fc <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    800017fc:	ff010113          	addi	sp,sp,-16
    80001800:	00813423          	sd	s0,8(sp)
    80001804:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    80001808:	00058e63          	beqz	a1,80001824 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    8000180c:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    80001810:	00853783          	ld	a5,8(a0)
    80001814:	00078e63          	beqz	a5,80001830 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    80001818:	01053783          	ld	a5,16(a0)
    8000181c:	00b7b823          	sd	a1,16(a5)
        tail = node;
    80001820:	00b53823          	sd	a1,16(a0)
    }
}
    80001824:	00813403          	ld	s0,8(sp)
    80001828:	01010113          	addi	sp,sp,16
    8000182c:	00008067          	ret
        head = node;
    80001830:	00b53423          	sd	a1,8(a0)
        tail = node;
    80001834:	00b53823          	sd	a1,16(a0)
    80001838:	fedff06f          	j	80001824 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

000000008000183c <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    8000183c:	0000a797          	auipc	a5,0xa
    80001840:	7047b783          	ld	a5,1796(a5) # 8000bf40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001844:	0007b783          	ld	a5,0(a5)
    80001848:	08078a63          	beqz	a5,800018dc <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    8000184c:	00454703          	lbu	a4,4(a0)
    80001850:	08071a63          	bnez	a4,800018e4 <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    80001854:	08058c63          	beqz	a1,800018ec <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    80001858:	00853703          	ld	a4,8(a0)
    8000185c:	06070263          	beqz	a4,800018c0 <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    80001860:	fd010113          	addi	sp,sp,-48
    80001864:	02113423          	sd	ra,40(sp)
    80001868:	02813023          	sd	s0,32(sp)
    8000186c:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    80001870:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    80001874:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    80001878:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    8000187c:	fe043423          	sd	zero,-24(s0)
    block(&node);
    80001880:	fd840593          	addi	a1,s0,-40
    80001884:	00000097          	auipc	ra,0x0
    80001888:	f78080e7          	jalr	-136(ra) # 800017fc <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    8000188c:	00300593          	li	a1,3
    80001890:	0000a797          	auipc	a5,0xa
    80001894:	6b07b783          	ld	a5,1712(a5) # 8000bf40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001898:	0007b503          	ld	a0,0(a5)
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	a54080e7          	jalr	-1452(ra) # 800022f0 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	88c080e7          	jalr	-1908(ra) # 80002130 <_ZN7_thread8dispatchEv>
    return node.status;
    800018ac:	fe442503          	lw	a0,-28(s0)
}
    800018b0:	02813083          	ld	ra,40(sp)
    800018b4:	02013403          	ld	s0,32(sp)
    800018b8:	03010113          	addi	sp,sp,48
    800018bc:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800018c0:	00052703          	lw	a4,0(a0)
    800018c4:	0005869b          	sext.w	a3,a1
    800018c8:	f8d74ce3          	blt	a4,a3,80001860 <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    800018cc:	40d7073b          	subw	a4,a4,a3
    800018d0:	00e52023          	sw	a4,0(a0)
        return 0;
    800018d4:	00000513          	li	a0,0
    800018d8:	00008067          	ret
        return -1;
    800018dc:	fff00513          	li	a0,-1
    800018e0:	00008067          	ret
        return -1;
    800018e4:	fff00513          	li	a0,-1
    800018e8:	00008067          	ret
        return 0;
    800018ec:	00000513          	li	a0,0
}
    800018f0:	00008067          	ret

00000000800018f4 <_ZN4_sem4waitEv>:
int _sem::wait() {
    800018f4:	ff010113          	addi	sp,sp,-16
    800018f8:	00113423          	sd	ra,8(sp)
    800018fc:	00813023          	sd	s0,0(sp)
    80001900:	01010413          	addi	s0,sp,16
    return waitN(1);
    80001904:	00100593          	li	a1,1
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	f34080e7          	jalr	-204(ra) # 8000183c <_ZN4_sem5waitNEj>
}
    80001910:	00813083          	ld	ra,8(sp)
    80001914:	00013403          	ld	s0,0(sp)
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret

0000000080001920 <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	01213023          	sd	s2,0(sp)
    80001934:	02010413          	addi	s0,sp,32
    80001938:	00050913          	mv	s2,a0
    8000193c:	0240006f          	j	80001960 <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    80001940:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    80001944:	0084a703          	lw	a4,8(s1)
    80001948:	40e787bb          	subw	a5,a5,a4
    8000194c:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    80001950:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    80001954:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001958:	0004b503          	ld	a0,0(s1)
    8000195c:	02051463          	bnez	a0,80001984 <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    80001960:	00893483          	ld	s1,8(s2)
    80001964:	02048e63          	beqz	s1,800019a0 <_ZN4_sem12unblockReadyEv+0x80>
    80001968:	00092783          	lw	a5,0(s2)
    8000196c:	0084a703          	lw	a4,8(s1)
    80001970:	02e7c863          	blt	a5,a4,800019a0 <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    80001974:	0104b703          	ld	a4,16(s1)
    80001978:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    8000197c:	fc0714e3          	bnez	a4,80001944 <_ZN4_sem12unblockReadyEv+0x24>
    80001980:	fc1ff06f          	j	80001940 <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    80001984:	00100593          	li	a1,1
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	968080e7          	jalr	-1688(ra) # 800022f0 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001990:	0004b503          	ld	a0,0(s1)
    80001994:	00001097          	auipc	ra,0x1
    80001998:	bc8080e7          	jalr	-1080(ra) # 8000255c <_ZN9Scheduler3putEP7_thread>
    8000199c:	fc5ff06f          	j	80001960 <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800019a0:	01813083          	ld	ra,24(sp)
    800019a4:	01013403          	ld	s0,16(sp)
    800019a8:	00813483          	ld	s1,8(sp)
    800019ac:	00013903          	ld	s2,0(sp)
    800019b0:	02010113          	addi	sp,sp,32
    800019b4:	00008067          	ret

00000000800019b8 <_ZN4_sem7signalNEj>:
    if (closed) {
    800019b8:	00454783          	lbu	a5,4(a0)
    800019bc:	04079463          	bnez	a5,80001a04 <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    800019c0:	00059663          	bnez	a1,800019cc <_ZN4_sem7signalNEj+0x14>
        return 0;
    800019c4:	00000513          	li	a0,0
}
    800019c8:	00008067          	ret
int _sem::signalN(unsigned n) {
    800019cc:	ff010113          	addi	sp,sp,-16
    800019d0:	00113423          	sd	ra,8(sp)
    800019d4:	00813023          	sd	s0,0(sp)
    800019d8:	01010413          	addi	s0,sp,16
    val += (int)n;
    800019dc:	00052783          	lw	a5,0(a0)
    800019e0:	00b785bb          	addw	a1,a5,a1
    800019e4:	00b52023          	sw	a1,0(a0)
    unblockReady();
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	f38080e7          	jalr	-200(ra) # 80001920 <_ZN4_sem12unblockReadyEv>
    return 0;
    800019f0:	00000513          	li	a0,0
}
    800019f4:	00813083          	ld	ra,8(sp)
    800019f8:	00013403          	ld	s0,0(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
        return -1;
    80001a04:	fff00513          	li	a0,-1
    80001a08:	00008067          	ret

0000000080001a0c <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00113423          	sd	ra,8(sp)
    80001a14:	00813023          	sd	s0,0(sp)
    80001a18:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001a1c:	00100593          	li	a1,1
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	f98080e7          	jalr	-104(ra) # 800019b8 <_ZN4_sem7signalNEj>
}
    80001a28:	00813083          	ld	ra,8(sp)
    80001a2c:	00013403          	ld	s0,0(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001a38:	fe010113          	addi	sp,sp,-32
    80001a3c:	00113c23          	sd	ra,24(sp)
    80001a40:	00813823          	sd	s0,16(sp)
    80001a44:	00913423          	sd	s1,8(sp)
    80001a48:	01213023          	sd	s2,0(sp)
    80001a4c:	02010413          	addi	s0,sp,32
    80001a50:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001a54:	00893483          	ld	s1,8(s2)
    80001a58:	02048e63          	beqz	s1,80001a94 <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001a5c:	0104b783          	ld	a5,16(s1)
    80001a60:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001a64:	fff00793          	li	a5,-1
    80001a68:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001a6c:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001a70:	0004b503          	ld	a0,0(s1)
    80001a74:	fe0500e3          	beqz	a0,80001a54 <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001a78:	00100593          	li	a1,1
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	874080e7          	jalr	-1932(ra) # 800022f0 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001a84:	0004b503          	ld	a0,0(s1)
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	ad4080e7          	jalr	-1324(ra) # 8000255c <_ZN9Scheduler3putEP7_thread>
    80001a90:	fc5ff06f          	j	80001a54 <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001a94:	00093823          	sd	zero,16(s2)
    80001a98:	01813083          	ld	ra,24(sp)
    80001a9c:	01013403          	ld	s0,16(sp)
    80001aa0:	00813483          	ld	s1,8(sp)
    80001aa4:	00013903          	ld	s2,0(sp)
    80001aa8:	02010113          	addi	sp,sp,32
    80001aac:	00008067          	ret

0000000080001ab0 <_ZN4_sem5closeEv>:
    if (closed) {
    80001ab0:	00454783          	lbu	a5,4(a0)
    80001ab4:	02079c63          	bnez	a5,80001aec <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    closed = true;
    80001ac8:	00100793          	li	a5,1
    80001acc:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	f68080e7          	jalr	-152(ra) # 80001a38 <_ZN4_sem10unblockAllEv>
    return 0;
    80001ad8:	00000513          	li	a0,0
}
    80001adc:	00813083          	ld	ra,8(sp)
    80001ae0:	00013403          	ld	s0,0(sp)
    80001ae4:	01010113          	addi	sp,sp,16
    80001ae8:	00008067          	ret
        return -1;
    80001aec:	fff00513          	li	a0,-1
}
    80001af0:	00008067          	ret

0000000080001af4 <handleSupervisorTrap>:
#include "../h/Semaphore.hpp"
#include "../lib/console.h"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001af4:	fd010113          	addi	sp,sp,-48
    80001af8:	02113423          	sd	ra,40(sp)
    80001afc:	02813023          	sd	s0,32(sp)
    80001b00:	00913c23          	sd	s1,24(sp)
    80001b04:	01213823          	sd	s2,16(sp)
    80001b08:	01313423          	sd	s3,8(sp)
    80001b0c:	03010413          	addi	s0,sp,48
    static const uint64 SSTATUS_SIE = (1UL << 1);
    static const uint64 SIP_SSIP = (1UL << 1);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001b10:	14202773          	csrr	a4,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001b14:	ff870693          	addi	a3,a4,-8 # ff8 <_entry-0x7ffff008>
    80001b18:	00100793          	li	a5,1
    80001b1c:	02d7f463          	bgeu	a5,a3,80001b44 <handleSupervisorTrap+0x50>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001b20:	fff00793          	li	a5,-1
    80001b24:	03f79793          	slli	a5,a5,0x3f
    80001b28:	00178793          	addi	a5,a5,1
    80001b2c:	2cf70463          	beq	a4,a5,80001df4 <handleSupervisorTrap+0x300>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b30:	fff00793          	li	a5,-1
    80001b34:	03f79793          	slli	a5,a5,0x3f
    80001b38:	00978793          	addi	a5,a5,9
    80001b3c:	2cf70263          	beq	a4,a5,80001e00 <handleSupervisorTrap+0x30c>
        console_handler();
        return;
    }

    while (true) {}
    80001b40:	0000006f          	j	80001b40 <handleSupervisorTrap+0x4c>
    80001b44:	00050493          	mv	s1,a0
        uint64 syscallCode = frame->a0;
    80001b48:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b4c:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b50:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001b54:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001b58:	0604b603          	ld	a2,96(s1)
        switch (syscallCode) {
    80001b5c:	04200713          	li	a4,66
    80001b60:	28f76463          	bltu	a4,a5,80001de8 <handleSupervisorTrap+0x2f4>
    80001b64:	00279793          	slli	a5,a5,0x2
    80001b68:	00007717          	auipc	a4,0x7
    80001b6c:	4b870713          	addi	a4,a4,1208 # 80009020 <CONSOLE_STATUS+0x10>
    80001b70:	00e787b3          	add	a5,a5,a4
    80001b74:	0007a783          	lw	a5,0(a5)
    80001b78:	00e787b3          	add	a5,a5,a4
    80001b7c:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001b80:	00001097          	auipc	ra,0x1
    80001b84:	0ec080e7          	jalr	236(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    80001b88:	00090593          	mv	a1,s2
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	160080e7          	jalr	352(ra) # 80002cec <_ZN15MemoryAllocator6mallocEm>
    80001b94:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001b98:	0f04b783          	ld	a5,240(s1)
    80001b9c:	00478793          	addi	a5,a5,4
    80001ba0:	0ef4b823          	sd	a5,240(s1)
    80001ba4:	02813083          	ld	ra,40(sp)
    80001ba8:	02013403          	ld	s0,32(sp)
    80001bac:	01813483          	ld	s1,24(sp)
    80001bb0:	01013903          	ld	s2,16(sp)
    80001bb4:	00813983          	ld	s3,8(sp)
    80001bb8:	03010113          	addi	sp,sp,48
    80001bbc:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001bc0:	00001097          	auipc	ra,0x1
    80001bc4:	0ac080e7          	jalr	172(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    80001bc8:	00090593          	mv	a1,s2
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	27c080e7          	jalr	636(ra) # 80002e48 <_ZN15MemoryAllocator4freeEPv>
    80001bd4:	04a4b023          	sd	a0,64(s1)
                break;
    80001bd8:	fc1ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001bdc:	00090663          	beqz	s2,80001be8 <handleSupervisorTrap+0xf4>
    80001be0:	00050463          	beqz	a0,80001be8 <handleSupervisorTrap+0xf4>
    80001be4:	00061863          	bnez	a2,80001bf4 <handleSupervisorTrap+0x100>
                    frame->a0 = (uint64)-1;
    80001be8:	fff00793          	li	a5,-1
    80001bec:	04f4b023          	sd	a5,64(s1)
                    break;
    80001bf0:	fa9ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                _thread* thread = _thread::createThread(body, arg, stackSpace);
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	444080e7          	jalr	1092(ra) # 80002038 <_ZN7_thread12createThreadEPFvPvES0_S0_>
                if (thread == nullptr) {
    80001bfc:	00050c63          	beqz	a0,80001c14 <handleSupervisorTrap+0x120>
                *handle = thread;//korisnik dobija rucku nove niti
    80001c00:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	958080e7          	jalr	-1704(ra) # 8000255c <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001c0c:	0404b023          	sd	zero,64(s1)
                break;
    80001c10:	f89ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001c14:	fff00793          	li	a5,-1
    80001c18:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c1c:	f7dff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001c20:	0f04b783          	ld	a5,240(s1)
    80001c24:	00478793          	addi	a5,a5,4
    80001c28:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	5ac080e7          	jalr	1452(ra) # 800021d8 <_ZN7_thread4exitEv>
    80001c34:	04a4b023          	sd	a0,64(s1)
                return;
    80001c38:	f6dff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001c3c:	0f04b783          	ld	a5,240(s1)
    80001c40:	00478793          	addi	a5,a5,4
    80001c44:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	4e8080e7          	jalr	1256(ra) # 80002130 <_ZN7_thread8dispatchEv>
                return;
    80001c50:	f55ff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001c54:	0f04b783          	ld	a5,240(s1)
    80001c58:	00478793          	addi	a5,a5,4
    80001c5c:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::send(handle, message);
    80001c60:	00050593          	mv	a1,a0
    80001c64:	00090513          	mv	a0,s2
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	6c0080e7          	jalr	1728(ra) # 80002328 <_ZN7_thread4sendEPS_Pc>
    80001c70:	04a4b023          	sd	a0,64(s1)
                return;
    80001c74:	f31ff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>
                frame->sepc += 4;
    80001c78:	0f04b783          	ld	a5,240(s1)
    80001c7c:	00478793          	addi	a5,a5,4
    80001c80:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::receive();
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	714080e7          	jalr	1812(ra) # 80002398 <_ZN7_thread7receiveEv>
    80001c8c:	04a4b023          	sd	a0,64(s1)
                return;
    80001c90:	f15ff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>
                unsigned init = (unsigned)arg2;
    80001c94:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001c98:	00091863          	bnez	s2,80001ca8 <handleSupervisorTrap+0x1b4>
                    frame->a0 = (uint64)-1;
    80001c9c:	fff00793          	li	a5,-1
    80001ca0:	04f4b023          	sd	a5,64(s1)
                    break;
    80001ca4:	ef5ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                _sem* sem = _sem::createSemaphore(init);
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	ac8080e7          	jalr	-1336(ra) # 80001770 <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001cb0:	00050863          	beqz	a0,80001cc0 <handleSupervisorTrap+0x1cc>
                *handle = sem;
    80001cb4:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001cb8:	0404b023          	sd	zero,64(s1)
                break;
    80001cbc:	eddff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                    frame->a0 = (uint64)-1;
    80001cc0:	fff00793          	li	a5,-1
    80001cc4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cc8:	ed1ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                if (sem == nullptr) {
    80001ccc:	00091863          	bnez	s2,80001cdc <handleSupervisorTrap+0x1e8>
                    frame->a0 = (uint64)-1;
    80001cd0:	fff00793          	li	a5,-1
    80001cd4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cd8:	ec1ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                int ret = sem->close();
    80001cdc:	00090513          	mv	a0,s2
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	dd0080e7          	jalr	-560(ra) # 80001ab0 <_ZN4_sem5closeEv>
    80001ce8:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001cec:	00050663          	beqz	a0,80001cf8 <handleSupervisorTrap+0x204>
                frame->a0 = (uint64)ret;
    80001cf0:	0534b023          	sd	s3,64(s1)
                break;
    80001cf4:	ea5ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                    _sem::destroySemaphore(sem);
    80001cf8:	00090513          	mv	a0,s2
    80001cfc:	00000097          	auipc	ra,0x0
    80001d00:	ac8080e7          	jalr	-1336(ra) # 800017c4 <_ZN4_sem16destroySemaphoreEPS_>
    80001d04:	fedff06f          	j	80001cf0 <handleSupervisorTrap+0x1fc>
                if (sem == nullptr) {
    80001d08:	00091863          	bnez	s2,80001d18 <handleSupervisorTrap+0x224>
                    frame->a0 = (uint64)-1;
    80001d0c:	fff00793          	li	a5,-1
    80001d10:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d14:	e85ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001d18:	0f04b783          	ld	a5,240(s1)
    80001d1c:	00478793          	addi	a5,a5,4
    80001d20:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d24:	00090513          	mv	a0,s2
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	bcc080e7          	jalr	-1076(ra) # 800018f4 <_ZN4_sem4waitEv>
    80001d30:	04a4b023          	sd	a0,64(s1)
                return;
    80001d34:	e71ff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>
                if (sem == nullptr) {
    80001d38:	00091863          	bnez	s2,80001d48 <handleSupervisorTrap+0x254>
                    frame->a0 = (uint64)-1;
    80001d3c:	fff00793          	li	a5,-1
    80001d40:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d44:	e55ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signal();
    80001d48:	00090513          	mv	a0,s2
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	cc0080e7          	jalr	-832(ra) # 80001a0c <_ZN4_sem6signalEv>
    80001d54:	04a4b023          	sd	a0,64(s1)
                break;
    80001d58:	e41ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                unsigned n = (unsigned)arg2;
    80001d5c:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d60:	00091863          	bnez	s2,80001d70 <handleSupervisorTrap+0x27c>
                    frame->a0 = (uint64)-1;
    80001d64:	fff00793          	li	a5,-1
    80001d68:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d6c:	e2dff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->sepc += 4;
    80001d70:	0f04b783          	ld	a5,240(s1)
    80001d74:	00478793          	addi	a5,a5,4
    80001d78:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001d7c:	00090513          	mv	a0,s2
    80001d80:	00000097          	auipc	ra,0x0
    80001d84:	abc080e7          	jalr	-1348(ra) # 8000183c <_ZN4_sem5waitNEj>
    80001d88:	04a4b023          	sd	a0,64(s1)
                return;
    80001d8c:	e19ff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>
                unsigned n = (unsigned)arg2;
    80001d90:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001d94:	00091863          	bnez	s2,80001da4 <handleSupervisorTrap+0x2b0>
                    frame->a0 = (uint64)-1;
    80001d98:	fff00793          	li	a5,-1
    80001d9c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001da0:	df9ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)sem->signalN(n);
    80001da4:	00090513          	mv	a0,s2
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	c10080e7          	jalr	-1008(ra) # 800019b8 <_ZN4_sem7signalNEj>
    80001db0:	04a4b023          	sd	a0,64(s1)
                break;
    80001db4:	de5ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001db8:	fff00793          	li	a5,-1
    80001dbc:	04f4b023          	sd	a5,64(s1)
                break;
    80001dc0:	dd9ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)__getc();
    80001dc4:	00007097          	auipc	ra,0x7
    80001dc8:	f84080e7          	jalr	-124(ra) # 80008d48 <__getc>
    80001dcc:	04a4b023          	sd	a0,64(s1)
                break;
    80001dd0:	dc9ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                __putc((char)arg1);
    80001dd4:	0ff97513          	andi	a0,s2,255
    80001dd8:	00007097          	auipc	ra,0x7
    80001ddc:	f34080e7          	jalr	-204(ra) # 80008d0c <__putc>
                frame->a0 = 0;
    80001de0:	0404b023          	sd	zero,64(s1)
                break;
    80001de4:	db5ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>
                frame->a0 = (uint64)-1;
    80001de8:	fff00793          	li	a5,-1
    80001dec:	04f4b023          	sd	a5,64(s1)
                break;
    80001df0:	da9ff06f          	j	80001b98 <handleSupervisorTrap+0xa4>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001df4:	00200793          	li	a5,2
    80001df8:	1447b073          	csrc	sip,a5
        return;
    80001dfc:	da9ff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>
        console_handler();
    80001e00:	00007097          	auipc	ra,0x7
    80001e04:	f80080e7          	jalr	-128(ra) # 80008d80 <console_handler>
        return;
    80001e08:	d9dff06f          	j	80001ba4 <handleSupervisorTrap+0xb0>

0000000080001e0c <_ZL14blocksForBytesm>:
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Semaphore.hpp"
_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00813423          	sd	s0,8(sp)
    80001e14:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e18:	03f50513          	addi	a0,a0,63
}
    80001e1c:	00655513          	srli	a0,a0,0x6
    80001e20:	00813403          	ld	s0,8(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret

0000000080001e2c <_ZN7_threadnwEm>:

void* _thread::operator new(size_t size) {
    80001e2c:	fe010113          	addi	sp,sp,-32
    80001e30:	00113c23          	sd	ra,24(sp)
    80001e34:	00813823          	sd	s0,16(sp)
    80001e38:	00913423          	sd	s1,8(sp)
    80001e3c:	01213023          	sd	s2,0(sp)
    80001e40:	02010413          	addi	s0,sp,32
    80001e44:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	e24080e7          	jalr	-476(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    80001e50:	00050493          	mv	s1,a0
    80001e54:	00090513          	mv	a0,s2
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	fb4080e7          	jalr	-76(ra) # 80001e0c <_ZL14blocksForBytesm>
    80001e60:	00050593          	mv	a1,a0
    80001e64:	00048513          	mv	a0,s1
    80001e68:	00001097          	auipc	ra,0x1
    80001e6c:	e84080e7          	jalr	-380(ra) # 80002cec <_ZN15MemoryAllocator6mallocEm>
}
    80001e70:	01813083          	ld	ra,24(sp)
    80001e74:	01013403          	ld	s0,16(sp)
    80001e78:	00813483          	ld	s1,8(sp)
    80001e7c:	00013903          	ld	s2,0(sp)
    80001e80:	02010113          	addi	sp,sp,32
    80001e84:	00008067          	ret

0000000080001e88 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t size) {
    80001e88:	fe010113          	addi	sp,sp,-32
    80001e8c:	00113c23          	sd	ra,24(sp)
    80001e90:	00813823          	sd	s0,16(sp)
    80001e94:	00913423          	sd	s1,8(sp)
    80001e98:	01213023          	sd	s2,0(sp)
    80001e9c:	02010413          	addi	s0,sp,32
    80001ea0:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	dc8080e7          	jalr	-568(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    80001eac:	00050493          	mv	s1,a0
    80001eb0:	00090513          	mv	a0,s2
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	f58080e7          	jalr	-168(ra) # 80001e0c <_ZL14blocksForBytesm>
    80001ebc:	00050593          	mv	a1,a0
    80001ec0:	00048513          	mv	a0,s1
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	e28080e7          	jalr	-472(ra) # 80002cec <_ZN15MemoryAllocator6mallocEm>
}
    80001ecc:	01813083          	ld	ra,24(sp)
    80001ed0:	01013403          	ld	s0,16(sp)
    80001ed4:	00813483          	ld	s1,8(sp)
    80001ed8:	00013903          	ld	s2,0(sp)
    80001edc:	02010113          	addi	sp,sp,32
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZN7_threaddlEPv>:

void _thread::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001ee4:	04050263          	beqz	a0,80001f28 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001ee8:	fe010113          	addi	sp,sp,-32
    80001eec:	00113c23          	sd	ra,24(sp)
    80001ef0:	00813823          	sd	s0,16(sp)
    80001ef4:	00913423          	sd	s1,8(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    80001efc:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	d6c080e7          	jalr	-660(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    80001f08:	00048593          	mv	a1,s1
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	f3c080e7          	jalr	-196(ra) # 80002e48 <_ZN15MemoryAllocator4freeEPv>
}
    80001f14:	01813083          	ld	ra,24(sp)
    80001f18:	01013403          	ld	s0,16(sp)
    80001f1c:	00813483          	ld	s1,8(sp)
    80001f20:	02010113          	addi	sp,sp,32
    80001f24:	00008067          	ret
    80001f28:	00008067          	ret

0000000080001f2c <_ZN7_threaddaEPv>:

void _thread::operator delete[](void* ptr) {
    if (ptr == nullptr) {
    80001f2c:	04050263          	beqz	a0,80001f70 <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001f30:	fe010113          	addi	sp,sp,-32
    80001f34:	00113c23          	sd	ra,24(sp)
    80001f38:	00813823          	sd	s0,16(sp)
    80001f3c:	00913423          	sd	s1,8(sp)
    80001f40:	02010413          	addi	s0,sp,32
    80001f44:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001f48:	00001097          	auipc	ra,0x1
    80001f4c:	d24080e7          	jalr	-732(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    80001f50:	00048593          	mv	a1,s1
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	ef4080e7          	jalr	-268(ra) # 80002e48 <_ZN15MemoryAllocator4freeEPv>
}
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret
    80001f70:	00008067          	ret

0000000080001f74 <_ZN7_threadC1EPFvPvES0_S0_>:

_thread::_thread(Body body, void* arg, void* stackSpace) {
    80001f74:	fe010113          	addi	sp,sp,-32
    80001f78:	00113c23          	sd	ra,24(sp)
    80001f7c:	00813823          	sd	s0,16(sp)
    80001f80:	00913423          	sd	s1,8(sp)
    80001f84:	02010413          	addi	s0,sp,32
    80001f88:	00050493          	mv	s1,a0
    this->body = body;
    80001f8c:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80001f90:	00c53423          	sd	a2,8(a0)

    if (stackSpace != nullptr) {
    80001f94:	08068c63          	beqz	a3,8000202c <_ZN7_threadC1EPFvPvES0_S0_+0xb8>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80001f98:	fffff7b7          	lui	a5,0xfffff
    80001f9c:	00f687b3          	add	a5,a3,a5
    80001fa0:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80001fa4:	02d53023          	sd	a3,32(a0)
    } else {
        this->stack = nullptr;
        this->context.sp = 0;
    }
    this->context.s0 = 0;
    80001fa8:	0204b423          	sd	zero,40(s1)
    this->context.s1 = 0;
    80001fac:	0204b823          	sd	zero,48(s1)
    this->context.s2 = 0;
    80001fb0:	0204bc23          	sd	zero,56(s1)
    this->context.s3 = 0;
    80001fb4:	0404b023          	sd	zero,64(s1)
    this->context.s4 = 0;
    80001fb8:	0404b423          	sd	zero,72(s1)
    this->context.s5 = 0;
    80001fbc:	0404b823          	sd	zero,80(s1)
    this->context.s6 = 0;
    80001fc0:	0404bc23          	sd	zero,88(s1)
    this->context.s7 = 0;
    80001fc4:	0604b023          	sd	zero,96(s1)
    this->context.s8 = 0;
    80001fc8:	0604b423          	sd	zero,104(s1)
    this->context.s9 = 0;
    80001fcc:	0604b823          	sd	zero,112(s1)
    this->context.s10 = 0;
    80001fd0:	0604bc23          	sd	zero,120(s1)
    this->context.s11 = 0;
    80001fd4:	0804b023          	sd	zero,128(s1)

    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    80001fd8:	00000797          	auipc	a5,0x0
    80001fdc:	24878793          	addi	a5,a5,584 # 80002220 <_ZN7_thread13threadWrapperEv>
    80001fe0:	00f4bc23          	sd	a5,24(s1)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80001fe4:	00200793          	li	a5,2
    80001fe8:	08f4b423          	sd	a5,136(s1)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    80001fec:	0804a823          	sw	zero,144(s1)
    this->next = nullptr;
    80001ff0:	0804bc23          	sd	zero,152(s1)
    this->message = nullptr;
    80001ff4:	0a04b023          	sd	zero,160(s1)
    this->itemAvailable = _sem::createSemaphore(0);
    80001ff8:	00000513          	li	a0,0
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	774080e7          	jalr	1908(ra) # 80001770 <_ZN4_sem15createSemaphoreEj>
    80002004:	0aa4b423          	sd	a0,168(s1)
    this->spaceAvailable = _sem::createSemaphore(1);
    80002008:	00100513          	li	a0,1
    8000200c:	fffff097          	auipc	ra,0xfffff
    80002010:	764080e7          	jalr	1892(ra) # 80001770 <_ZN4_sem15createSemaphoreEj>
    80002014:	0aa4b823          	sd	a0,176(s1)
}
    80002018:	01813083          	ld	ra,24(sp)
    8000201c:	01013403          	ld	s0,16(sp)
    80002020:	00813483          	ld	s1,8(sp)
    80002024:	02010113          	addi	sp,sp,32
    80002028:	00008067          	ret
        this->stack = nullptr;
    8000202c:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80002030:	02053023          	sd	zero,32(a0)
    80002034:	f75ff06f          	j	80001fa8 <_ZN7_threadC1EPFvPvES0_S0_+0x34>

0000000080002038 <_ZN7_thread12createThreadEPFvPvES0_S0_>:

_thread* _thread::createThread(Body body, void* arg, void* stackSpace) {
    80002038:	fd010113          	addi	sp,sp,-48
    8000203c:	02113423          	sd	ra,40(sp)
    80002040:	02813023          	sd	s0,32(sp)
    80002044:	00913c23          	sd	s1,24(sp)
    80002048:	01213823          	sd	s2,16(sp)
    8000204c:	01313423          	sd	s3,8(sp)
    80002050:	01413023          	sd	s4,0(sp)
    80002054:	03010413          	addi	s0,sp,48
    80002058:	00050913          	mv	s2,a0
    8000205c:	00058993          	mv	s3,a1
    80002060:	00060a13          	mv	s4,a2
    return new _thread(body, arg, stackSpace);
    80002064:	0b800513          	li	a0,184
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	dc4080e7          	jalr	-572(ra) # 80001e2c <_ZN7_threadnwEm>
    80002070:	00050493          	mv	s1,a0
    80002074:	000a0693          	mv	a3,s4
    80002078:	00098613          	mv	a2,s3
    8000207c:	00090593          	mv	a1,s2
    80002080:	00000097          	auipc	ra,0x0
    80002084:	ef4080e7          	jalr	-268(ra) # 80001f74 <_ZN7_threadC1EPFvPvES0_S0_>
    80002088:	0200006f          	j	800020a8 <_ZN7_thread12createThreadEPFvPvES0_S0_+0x70>
    8000208c:	00050913          	mv	s2,a0
    80002090:	00048513          	mv	a0,s1
    80002094:	00000097          	auipc	ra,0x0
    80002098:	e50080e7          	jalr	-432(ra) # 80001ee4 <_ZN7_threaddlEPv>
    8000209c:	00090513          	mv	a0,s2
    800020a0:	0000b097          	auipc	ra,0xb
    800020a4:	088080e7          	jalr	136(ra) # 8000d128 <_Unwind_Resume>
}
    800020a8:	00048513          	mv	a0,s1
    800020ac:	02813083          	ld	ra,40(sp)
    800020b0:	02013403          	ld	s0,32(sp)
    800020b4:	01813483          	ld	s1,24(sp)
    800020b8:	01013903          	ld	s2,16(sp)
    800020bc:	00813983          	ld	s3,8(sp)
    800020c0:	00013a03          	ld	s4,0(sp)
    800020c4:	03010113          	addi	sp,sp,48
    800020c8:	00008067          	ret

00000000800020cc <_ZN7_thread13destroyThreadEPS_>:

int _thread::destroyThread(_thread* thread) {
    if (thread == nullptr) {
    800020cc:	04050e63          	beqz	a0,80002128 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    800020d0:	fe010113          	addi	sp,sp,-32
    800020d4:	00113c23          	sd	ra,24(sp)
    800020d8:	00813823          	sd	s0,16(sp)
    800020dc:	00913423          	sd	s1,8(sp)
    800020e0:	02010413          	addi	s0,sp,32
    800020e4:	00050493          	mv	s1,a0
        return -1;
    }

    if (thread->stack != nullptr) {
    800020e8:	01053783          	ld	a5,16(a0)
    800020ec:	00078c63          	beqz	a5,80002104 <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    800020f0:	00001097          	auipc	ra,0x1
    800020f4:	b7c080e7          	jalr	-1156(ra) # 80002c6c <_ZN15MemoryAllocator11getInstanceEv>
    800020f8:	0104b583          	ld	a1,16(s1)
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	d4c080e7          	jalr	-692(ra) # 80002e48 <_ZN15MemoryAllocator4freeEPv>
        thread->stack = nullptr;
    }

    delete thread;
    80002104:	00048513          	mv	a0,s1
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	ddc080e7          	jalr	-548(ra) # 80001ee4 <_ZN7_threaddlEPv>
    return 0;
    80002110:	00000513          	li	a0,0
}
    80002114:	01813083          	ld	ra,24(sp)
    80002118:	01013403          	ld	s0,16(sp)
    8000211c:	00813483          	ld	s1,8(sp)
    80002120:	02010113          	addi	sp,sp,32
    80002124:	00008067          	ret
        return -1;
    80002128:	fff00513          	li	a0,-1
}
    8000212c:	00008067          	ret

0000000080002130 <_ZN7_thread8dispatchEv>:

void _thread::dispatch() {
    80002130:	fe010113          	addi	sp,sp,-32
    80002134:	00113c23          	sd	ra,24(sp)
    80002138:	00813823          	sd	s0,16(sp)
    8000213c:	00913423          	sd	s1,8(sp)
    80002140:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80002144:	0000a497          	auipc	s1,0xa
    80002148:	e6c4b483          	ld	s1,-404(s1) # 8000bfb0 <_ZN7_thread7runningE>

    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    8000214c:	00048c63          	beqz	s1,80002164 <_ZN7_thread8dispatchEv+0x34>
    80002150:	0904a783          	lw	a5,144(s1)
    80002154:	00400713          	li	a4,4
    80002158:	00e78663          	beq	a5,a4,80002164 <_ZN7_thread8dispatchEv+0x34>
    8000215c:	00300713          	li	a4,3
    80002160:	04e79663          	bne	a5,a4,800021ac <_ZN7_thread8dispatchEv+0x7c>
        Scheduler::put(old);
    }

    _thread* next = Scheduler::get();
    80002164:	00000097          	auipc	ra,0x0
    80002168:	464080e7          	jalr	1124(ra) # 800025c8 <_ZN9Scheduler3getEv>

    if (next == nullptr) {
    8000216c:	04050863          	beqz	a0,800021bc <_ZN7_thread8dispatchEv+0x8c>
            running = old;
        }
        return;
    }

    running = next;
    80002170:	0000a797          	auipc	a5,0xa
    80002174:	e4a7b023          	sd	a0,-448(a5) # 8000bfb0 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002178:	00200793          	li	a5,2
    8000217c:	08f52823          	sw	a5,144(a0)

    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    80002180:	00048c63          	beqz	s1,80002198 <_ZN7_thread8dispatchEv+0x68>
    80002184:	00a48a63          	beq	s1,a0,80002198 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    80002188:	01850593          	addi	a1,a0,24
    8000218c:	01848513          	addi	a0,s1,24
    80002190:	fffff097          	auipc	ra,0xfffff
    80002194:	fa0080e7          	jalr	-96(ra) # 80001130 <contextSwitch>
    }
}
    80002198:	01813083          	ld	ra,24(sp)
    8000219c:	01013403          	ld	s0,16(sp)
    800021a0:	00813483          	ld	s1,8(sp)
    800021a4:	02010113          	addi	sp,sp,32
    800021a8:	00008067          	ret
        Scheduler::put(old);
    800021ac:	00048513          	mv	a0,s1
    800021b0:	00000097          	auipc	ra,0x0
    800021b4:	3ac080e7          	jalr	940(ra) # 8000255c <_ZN9Scheduler3putEP7_thread>
    800021b8:	fadff06f          	j	80002164 <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    800021bc:	fc048ee3          	beqz	s1,80002198 <_ZN7_thread8dispatchEv+0x68>
    800021c0:	0904a703          	lw	a4,144(s1)
    800021c4:	00200793          	li	a5,2
    800021c8:	fcf718e3          	bne	a4,a5,80002198 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    800021cc:	0000a797          	auipc	a5,0xa
    800021d0:	de97b223          	sd	s1,-540(a5) # 8000bfb0 <_ZN7_thread7runningE>
        return;
    800021d4:	fc5ff06f          	j	80002198 <_ZN7_thread8dispatchEv+0x68>

00000000800021d8 <_ZN7_thread4exitEv>:
int _thread::exit() {
    if (running == nullptr) {
    800021d8:	0000a797          	auipc	a5,0xa
    800021dc:	dd87b783          	ld	a5,-552(a5) # 8000bfb0 <_ZN7_thread7runningE>
    800021e0:	02078c63          	beqz	a5,80002218 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    800021e4:	ff010113          	addi	sp,sp,-16
    800021e8:	00113423          	sd	ra,8(sp)
    800021ec:	00813023          	sd	s0,0(sp)
    800021f0:	01010413          	addi	s0,sp,16
        return -1;
    }

    running->state = FINISHED;
    800021f4:	00400713          	li	a4,4
    800021f8:	08e7a823          	sw	a4,144(a5)

    dispatch();
    800021fc:	00000097          	auipc	ra,0x0
    80002200:	f34080e7          	jalr	-204(ra) # 80002130 <_ZN7_thread8dispatchEv>

    return 0;
    80002204:	00000513          	li	a0,0
}
    80002208:	00813083          	ld	ra,8(sp)
    8000220c:	00013403          	ld	s0,0(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret
        return -1;
    80002218:	fff00513          	li	a0,-1
}
    8000221c:	00008067          	ret

0000000080002220 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {//
    80002220:	ff010113          	addi	sp,sp,-16
    80002224:	00113423          	sd	ra,8(sp)
    80002228:	00813023          	sd	s0,0(sp)
    8000222c:	01010413          	addi	s0,sp,16
    if (running != nullptr && running->body != nullptr) {
    80002230:	0000a797          	auipc	a5,0xa
    80002234:	d807b783          	ld	a5,-640(a5) # 8000bfb0 <_ZN7_thread7runningE>
    80002238:	00078a63          	beqz	a5,8000224c <_ZN7_thread13threadWrapperEv+0x2c>
    8000223c:	0007b703          	ld	a4,0(a5)
    80002240:	00070663          	beqz	a4,8000224c <_ZN7_thread13threadWrapperEv+0x2c>
        running->body(running->arg);
    80002244:	0087b503          	ld	a0,8(a5)
    80002248:	000700e7          	jalr	a4
    }

    _thread::exit();
    8000224c:	00000097          	auipc	ra,0x0
    80002250:	f8c080e7          	jalr	-116(ra) # 800021d8 <_ZN7_thread4exitEv>
}
    80002254:	00813083          	ld	ra,8(sp)
    80002258:	00013403          	ld	s0,0(sp)
    8000225c:	01010113          	addi	sp,sp,16
    80002260:	00008067          	ret

0000000080002264 <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    80002264:	ff010113          	addi	sp,sp,-16
    80002268:	00813423          	sd	s0,8(sp)
    8000226c:	01010413          	addi	s0,sp,16
}
    80002270:	00053503          	ld	a0,0(a0)
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
}
    8000228c:	00853503          	ld	a0,8(a0)
    80002290:	00813403          	ld	s0,8(sp)
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00008067          	ret

000000008000229c <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
}
    800022a8:	01053503          	ld	a0,16(a0)
    800022ac:	00813403          	ld	s0,8(sp)
    800022b0:	01010113          	addi	sp,sp,16
    800022b4:	00008067          	ret

00000000800022b8 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    800022b8:	ff010113          	addi	sp,sp,-16
    800022bc:	00813423          	sd	s0,8(sp)
    800022c0:	01010413          	addi	s0,sp,16
}
    800022c4:	01850513          	addi	a0,a0,24
    800022c8:	00813403          	ld	s0,8(sp)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813423          	sd	s0,8(sp)
    800022dc:	01010413          	addi	s0,sp,16
}
    800022e0:	09052503          	lw	a0,144(a0)
    800022e4:	00813403          	ld	s0,8(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN7_thread8setStateENS_5StateE>:
void _thread::setState(State state) {
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00813423          	sd	s0,8(sp)
    800022f8:	01010413          	addi	s0,sp,16
    this->state = state;
    800022fc:	08b52823          	sw	a1,144(a0)
}
    80002300:	00813403          	ld	s0,8(sp)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00008067          	ret

000000008000230c <_ZNK7_thread12getTimeSliceEv>:
uint64 _thread::getTimeSlice() const {
    8000230c:	ff010113          	addi	sp,sp,-16
    80002310:	00813423          	sd	s0,8(sp)
    80002314:	01010413          	addi	s0,sp,16
}
    80002318:	08853503          	ld	a0,136(a0)
    8000231c:	00813403          	ld	s0,8(sp)
    80002320:	01010113          	addi	sp,sp,16
    80002324:	00008067          	ret

0000000080002328 <_ZN7_thread4sendEPS_Pc>:

int _thread::send(_thread *handle, char *message) {
    if (handle == nullptr || message== nullptr) {
    80002328:	06050063          	beqz	a0,80002388 <_ZN7_thread4sendEPS_Pc+0x60>
int _thread::send(_thread *handle, char *message) {
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	01213023          	sd	s2,0(sp)
    80002340:	02010413          	addi	s0,sp,32
    80002344:	00050493          	mv	s1,a0
    80002348:	00058913          	mv	s2,a1
    if (handle == nullptr || message== nullptr) {
    8000234c:	04058263          	beqz	a1,80002390 <_ZN7_thread4sendEPS_Pc+0x68>
        return -1;
    }
    handle->spaceAvailable->wait();
    80002350:	0b053503          	ld	a0,176(a0)
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	5a0080e7          	jalr	1440(ra) # 800018f4 <_ZN4_sem4waitEv>
    handle->message = message;
    8000235c:	0b24b023          	sd	s2,160(s1)
    handle->itemAvailable->signal();
    80002360:	0a84b503          	ld	a0,168(s1)
    80002364:	fffff097          	auipc	ra,0xfffff
    80002368:	6a8080e7          	jalr	1704(ra) # 80001a0c <_ZN4_sem6signalEv>
    return 0;
    8000236c:	00000513          	li	a0,0
}
    80002370:	01813083          	ld	ra,24(sp)
    80002374:	01013403          	ld	s0,16(sp)
    80002378:	00813483          	ld	s1,8(sp)
    8000237c:	00013903          	ld	s2,0(sp)
    80002380:	02010113          	addi	sp,sp,32
    80002384:	00008067          	ret
        return -1;
    80002388:	fff00513          	li	a0,-1
}
    8000238c:	00008067          	ret
        return -1;
    80002390:	fff00513          	li	a0,-1
    80002394:	fddff06f          	j	80002370 <_ZN7_thread4sendEPS_Pc+0x48>

0000000080002398 <_ZN7_thread7receiveEv>:
char* _thread::receive() {
    80002398:	fe010113          	addi	sp,sp,-32
    8000239c:	00113c23          	sd	ra,24(sp)
    800023a0:	00813823          	sd	s0,16(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	02010413          	addi	s0,sp,32
    if (running == nullptr) {
    800023ac:	0000a497          	auipc	s1,0xa
    800023b0:	c044b483          	ld	s1,-1020(s1) # 8000bfb0 <_ZN7_thread7runningE>
    800023b4:	02048663          	beqz	s1,800023e0 <_ZN7_thread7receiveEv+0x48>
        return nullptr;
    }

    running->itemAvailable->wait();
    800023b8:	0a84b503          	ld	a0,168(s1)
    800023bc:	fffff097          	auipc	ra,0xfffff
    800023c0:	538080e7          	jalr	1336(ra) # 800018f4 <_ZN4_sem4waitEv>

    char* message = running->message;
    800023c4:	0000a797          	auipc	a5,0xa
    800023c8:	bec7b783          	ld	a5,-1044(a5) # 8000bfb0 <_ZN7_thread7runningE>
    800023cc:	0a07b483          	ld	s1,160(a5)
    running->message = nullptr;
    800023d0:	0a07b023          	sd	zero,160(a5)

    running->spaceAvailable->signal();
    800023d4:	0b07b503          	ld	a0,176(a5)
    800023d8:	fffff097          	auipc	ra,0xfffff
    800023dc:	634080e7          	jalr	1588(ra) # 80001a0c <_ZN4_sem6signalEv>

    return message;
    800023e0:	00048513          	mv	a0,s1
    800023e4:	01813083          	ld	ra,24(sp)
    800023e8:	01013403          	ld	s0,16(sp)
    800023ec:	00813483          	ld	s1,8(sp)
    800023f0:	02010113          	addi	sp,sp,32
    800023f4:	00008067          	ret

00000000800023f8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800023f8:	fe010113          	addi	sp,sp,-32
    800023fc:	00113c23          	sd	ra,24(sp)
    80002400:	00813823          	sd	s0,16(sp)
    80002404:	00913423          	sd	s1,8(sp)
    80002408:	01213023          	sd	s2,0(sp)
    8000240c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80002410:	00007517          	auipc	a0,0x7
    80002414:	d2050513          	addi	a0,a0,-736 # 80009130 <CONSOLE_STATUS+0x120>
    80002418:	00003097          	auipc	ra,0x3
    8000241c:	734080e7          	jalr	1844(ra) # 80005b4c <_Z11printStringPKc>
    int test = getc() - '0';
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	1e8080e7          	jalr	488(ra) # 80001608 <_Z4getcv>
    80002428:	00050913          	mv	s2,a0
    8000242c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80002430:	fffff097          	auipc	ra,0xfffff
    80002434:	1d8080e7          	jalr	472(ra) # 80001608 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80002438:	fcb9091b          	addiw	s2,s2,-53
    8000243c:	00100793          	li	a5,1
    80002440:	0327f463          	bgeu	a5,s2,80002468 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80002444:	00800793          	li	a5,8
    80002448:	1097e063          	bltu	a5,s1,80002548 <_Z8userMainv+0x150>
    8000244c:	00249493          	slli	s1,s1,0x2
    80002450:	00007717          	auipc	a4,0x7
    80002454:	ef870713          	addi	a4,a4,-264 # 80009348 <CONSOLE_STATUS+0x338>
    80002458:	00e484b3          	add	s1,s1,a4
    8000245c:	0004a783          	lw	a5,0(s1)
    80002460:	00e787b3          	add	a5,a5,a4
    80002464:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80002468:	00007517          	auipc	a0,0x7
    8000246c:	ce850513          	addi	a0,a0,-792 # 80009150 <CONSOLE_STATUS+0x140>
    80002470:	00003097          	auipc	ra,0x3
    80002474:	6dc080e7          	jalr	1756(ra) # 80005b4c <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80002478:	01813083          	ld	ra,24(sp)
    8000247c:	01013403          	ld	s0,16(sp)
    80002480:	00813483          	ld	s1,8(sp)
    80002484:	00013903          	ld	s2,0(sp)
    80002488:	02010113          	addi	sp,sp,32
    8000248c:	00008067          	ret
            Threads_C_API_test();
    80002490:	00003097          	auipc	ra,0x3
    80002494:	d34080e7          	jalr	-716(ra) # 800051c4 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80002498:	00007517          	auipc	a0,0x7
    8000249c:	ce850513          	addi	a0,a0,-792 # 80009180 <CONSOLE_STATUS+0x170>
    800024a0:	00003097          	auipc	ra,0x3
    800024a4:	6ac080e7          	jalr	1708(ra) # 80005b4c <_Z11printStringPKc>
            break;
    800024a8:	fd1ff06f          	j	80002478 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    800024ac:	00002097          	auipc	ra,0x2
    800024b0:	bf8080e7          	jalr	-1032(ra) # 800040a4 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800024b4:	00007517          	auipc	a0,0x7
    800024b8:	d0c50513          	addi	a0,a0,-756 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800024bc:	00003097          	auipc	ra,0x3
    800024c0:	690080e7          	jalr	1680(ra) # 80005b4c <_Z11printStringPKc>
            break;
    800024c4:	fb5ff06f          	j	80002478 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800024c8:	00001097          	auipc	ra,0x1
    800024cc:	430080e7          	jalr	1072(ra) # 800038f8 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800024d0:	00007517          	auipc	a0,0x7
    800024d4:	d3050513          	addi	a0,a0,-720 # 80009200 <CONSOLE_STATUS+0x1f0>
    800024d8:	00003097          	auipc	ra,0x3
    800024dc:	674080e7          	jalr	1652(ra) # 80005b4c <_Z11printStringPKc>
            break;
    800024e0:	f99ff06f          	j	80002478 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800024e4:	00003097          	auipc	ra,0x3
    800024e8:	024080e7          	jalr	36(ra) # 80005508 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800024ec:	00007517          	auipc	a0,0x7
    800024f0:	d6450513          	addi	a0,a0,-668 # 80009250 <CONSOLE_STATUS+0x240>
    800024f4:	00003097          	auipc	ra,0x3
    800024f8:	658080e7          	jalr	1624(ra) # 80005b4c <_Z11printStringPKc>
            break;
    800024fc:	f7dff06f          	j	80002478 <_Z8userMainv+0x80>
            System_Mode_test();
    80002500:	00004097          	auipc	ra,0x4
    80002504:	32c080e7          	jalr	812(ra) # 8000682c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80002508:	00007517          	auipc	a0,0x7
    8000250c:	da050513          	addi	a0,a0,-608 # 800092a8 <CONSOLE_STATUS+0x298>
    80002510:	00003097          	auipc	ra,0x3
    80002514:	63c080e7          	jalr	1596(ra) # 80005b4c <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002518:	00007517          	auipc	a0,0x7
    8000251c:	db050513          	addi	a0,a0,-592 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80002520:	00003097          	auipc	ra,0x3
    80002524:	62c080e7          	jalr	1580(ra) # 80005b4c <_Z11printStringPKc>
            break;
    80002528:	f51ff06f          	j	80002478 <_Z8userMainv+0x80>
            MessageTest();
    8000252c:	00001097          	auipc	ra,0x1
    80002530:	ba4080e7          	jalr	-1116(ra) # 800030d0 <_Z11MessageTestv>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002534:	00007517          	auipc	a0,0x7
    80002538:	d9450513          	addi	a0,a0,-620 # 800092c8 <CONSOLE_STATUS+0x2b8>
    8000253c:	00003097          	auipc	ra,0x3
    80002540:	610080e7          	jalr	1552(ra) # 80005b4c <_Z11printStringPKc>
            break;
    80002544:	f35ff06f          	j	80002478 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80002548:	00007517          	auipc	a0,0x7
    8000254c:	dd850513          	addi	a0,a0,-552 # 80009320 <CONSOLE_STATUS+0x310>
    80002550:	00003097          	auipc	ra,0x3
    80002554:	5fc080e7          	jalr	1532(ra) # 80005b4c <_Z11printStringPKc>
    80002558:	f21ff06f          	j	80002478 <_Z8userMainv+0x80>

000000008000255c <_ZN9Scheduler3putEP7_thread>:
#include "../h/Thread.hpp"

_thread* Scheduler::head = nullptr;
_thread* Scheduler::tail = nullptr;

void Scheduler::put(_thread* thread) {
    8000255c:	ff010113          	addi	sp,sp,-16
    80002560:	00813423          	sd	s0,8(sp)
    80002564:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    80002568:	04050063          	beqz	a0,800025a8 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    8000256c:	09052783          	lw	a5,144(a0)
    80002570:	ffd7879b          	addiw	a5,a5,-3
    80002574:	00100713          	li	a4,1
    80002578:	02f77863          	bgeu	a4,a5,800025a8 <_ZN9Scheduler3putEP7_thread+0x4c>
        return;
    }

    thread->state = _thread::READY;
    8000257c:	00100793          	li	a5,1
    80002580:	08f52823          	sw	a5,144(a0)
    thread->next = nullptr;
    80002584:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    80002588:	0000a797          	auipc	a5,0xa
    8000258c:	a307b783          	ld	a5,-1488(a5) # 8000bfb8 <_ZN9Scheduler4headE>
    80002590:	02078263          	beqz	a5,800025b4 <_ZN9Scheduler3putEP7_thread+0x58>
        head = thread;
        tail = thread;
    } else {
        tail->next = thread;
    80002594:	0000a797          	auipc	a5,0xa
    80002598:	a2478793          	addi	a5,a5,-1500 # 8000bfb8 <_ZN9Scheduler4headE>
    8000259c:	0087b703          	ld	a4,8(a5)
    800025a0:	08a73c23          	sd	a0,152(a4)
        tail = thread;
    800025a4:	00a7b423          	sd	a0,8(a5)
    }
}
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret
        head = thread;
    800025b4:	0000a797          	auipc	a5,0xa
    800025b8:	a0478793          	addi	a5,a5,-1532 # 8000bfb8 <_ZN9Scheduler4headE>
    800025bc:	00a7b023          	sd	a0,0(a5)
        tail = thread;
    800025c0:	00a7b423          	sd	a0,8(a5)
    800025c4:	fe5ff06f          	j	800025a8 <_ZN9Scheduler3putEP7_thread+0x4c>

00000000800025c8 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    if (head == nullptr) {
    800025d4:	0000a517          	auipc	a0,0xa
    800025d8:	9e453503          	ld	a0,-1564(a0) # 8000bfb8 <_ZN9Scheduler4headE>
    800025dc:	00050c63          	beqz	a0,800025f4 <_ZN9Scheduler3getEv+0x2c>
        return nullptr;
    }

    _thread* thread = head;

    head = head->next;
    800025e0:	09853783          	ld	a5,152(a0)
    800025e4:	0000a717          	auipc	a4,0xa
    800025e8:	9cf73a23          	sd	a5,-1580(a4) # 8000bfb8 <_ZN9Scheduler4headE>

    if (head == nullptr) {
    800025ec:	00078a63          	beqz	a5,80002600 <_ZN9Scheduler3getEv+0x38>
        tail = nullptr;
    }

    thread->next = nullptr;
    800025f0:	08053c23          	sd	zero,152(a0)

    return thread;
}
    800025f4:	00813403          	ld	s0,8(sp)
    800025f8:	01010113          	addi	sp,sp,16
    800025fc:	00008067          	ret
        tail = nullptr;
    80002600:	0000a797          	auipc	a5,0xa
    80002604:	9c07b023          	sd	zero,-1600(a5) # 8000bfc0 <_ZN9Scheduler4tailE>
    80002608:	fe9ff06f          	j	800025f0 <_ZN9Scheduler3getEv+0x28>

000000008000260c <_ZN9Scheduler7isEmptyEv>:

bool Scheduler::isEmpty() {
    8000260c:	ff010113          	addi	sp,sp,-16
    80002610:	00813423          	sd	s0,8(sp)
    80002614:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80002618:	0000a517          	auipc	a0,0xa
    8000261c:	9a053503          	ld	a0,-1632(a0) # 8000bfb8 <_ZN9Scheduler4headE>
    80002620:	00153513          	seqz	a0,a0
    80002624:	00813403          	ld	s0,8(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00113423          	sd	ra,8(sp)
    80002638:	00813023          	sd	s0,0(sp)
    8000263c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002640:	fffff097          	auipc	ra,0xfffff
    80002644:	bb8080e7          	jalr	-1096(ra) # 800011f8 <_Z9mem_allocm>
}
    80002648:	00813083          	ld	ra,8(sp)
    8000264c:	00013403          	ld	s0,0(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret

0000000080002658 <_Znam>:

void* operator new[](size_t size) {
    80002658:	ff010113          	addi	sp,sp,-16
    8000265c:	00113423          	sd	ra,8(sp)
    80002660:	00813023          	sd	s0,0(sp)
    80002664:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002668:	fffff097          	auipc	ra,0xfffff
    8000266c:	b90080e7          	jalr	-1136(ra) # 800011f8 <_Z9mem_allocm>
}
    80002670:	00813083          	ld	ra,8(sp)
    80002674:	00013403          	ld	s0,0(sp)
    80002678:	01010113          	addi	sp,sp,16
    8000267c:	00008067          	ret

0000000080002680 <_ZdlPv>:

void operator delete(void* ptr) {
    80002680:	ff010113          	addi	sp,sp,-16
    80002684:	00113423          	sd	ra,8(sp)
    80002688:	00813023          	sd	s0,0(sp)
    8000268c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002690:	fffff097          	auipc	ra,0xfffff
    80002694:	bb4080e7          	jalr	-1100(ra) # 80001244 <_Z8mem_freePv>
}
    80002698:	00813083          	ld	ra,8(sp)
    8000269c:	00013403          	ld	s0,0(sp)
    800026a0:	01010113          	addi	sp,sp,16
    800026a4:	00008067          	ret

00000000800026a8 <_ZdaPv>:

void operator delete[](void* ptr) {
    800026a8:	ff010113          	addi	sp,sp,-16
    800026ac:	00113423          	sd	ra,8(sp)
    800026b0:	00813023          	sd	s0,0(sp)
    800026b4:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800026b8:	fffff097          	auipc	ra,0xfffff
    800026bc:	b8c080e7          	jalr	-1140(ra) # 80001244 <_Z8mem_freePv>
    800026c0:	00813083          	ld	ra,8(sp)
    800026c4:	00013403          	ld	s0,0(sp)
    800026c8:	01010113          	addi	sp,sp,16
    800026cc:	00008067          	ret

00000000800026d0 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    800026d0:	ff010113          	addi	sp,sp,-16
    800026d4:	00113423          	sd	ra,8(sp)
    800026d8:	00813023          	sd	s0,0(sp)
    800026dc:	01010413          	addi	s0,sp,16
    userMain();
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	d18080e7          	jalr	-744(ra) # 800023f8 <_Z8userMainv>
    userMainFinished = true;
    800026e8:	00100793          	li	a5,1
    800026ec:	0000a717          	auipc	a4,0xa
    800026f0:	8cf70e23          	sb	a5,-1828(a4) # 8000bfc8 <_ZL16userMainFinished>
    thread_exit();
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	c54080e7          	jalr	-940(ra) # 80001348 <_Z11thread_exitv>
}
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <main>:

int main() {
    8000270c:	f2010113          	addi	sp,sp,-224
    80002710:	0c113c23          	sd	ra,216(sp)
    80002714:	0c813823          	sd	s0,208(sp)
    80002718:	0c913423          	sd	s1,200(sp)
    8000271c:	0e010413          	addi	s0,sp,224
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002720:	0000a797          	auipc	a5,0xa
    80002724:	8287b783          	ld	a5,-2008(a5) # 8000bf48 <_GLOBAL_OFFSET_TABLE_+0x18>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    80002728:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    8000272c:	00200793          	li	a5,2
    80002730:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    80002734:	00000693          	li	a3,0
    80002738:	00000613          	li	a2,0
    8000273c:	00000593          	li	a1,0
    80002740:	f2840493          	addi	s1,s0,-216
    80002744:	00048513          	mv	a0,s1
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	82c080e7          	jalr	-2004(ra) # 80001f74 <_ZN7_threadC1EPFvPvES0_S0_>
    mainThread.setState(_thread::RUNNING);
    80002750:	00200593          	li	a1,2
    80002754:	00048513          	mv	a0,s1
    80002758:	00000097          	auipc	ra,0x0
    8000275c:	b98080e7          	jalr	-1128(ra) # 800022f0 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    80002760:	00009797          	auipc	a5,0x9
    80002764:	7e07b783          	ld	a5,2016(a5) # 8000bf40 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002768:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    8000276c:	f2043023          	sd	zero,-224(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    80002770:	00000613          	li	a2,0
    80002774:	00000597          	auipc	a1,0x0
    80002778:	f5c58593          	addi	a1,a1,-164 # 800026d0 <_ZL15userMainWrapperPv>
    8000277c:	f2040513          	addi	a0,s0,-224
    80002780:	fffff097          	auipc	ra,0xfffff
    80002784:	b04080e7          	jalr	-1276(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    80002788:	00054663          	bltz	a0,80002794 <main+0x88>
    8000278c:	f2043783          	ld	a5,-224(s0)
    80002790:	02079063          	bnez	a5,800027b0 <main+0xa4>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    80002794:	00100737          	lui	a4,0x100
    80002798:	000057b7          	lui	a5,0x5
    8000279c:	5557879b          	addiw	a5,a5,1365
    800027a0:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    800027a4:	02c0006f          	j	800027d0 <main+0xc4>
    }

    while (!userMainFinished) {
        thread_dispatch();
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	be0080e7          	jalr	-1056(ra) # 80001388 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    800027b0:	0000a797          	auipc	a5,0xa
    800027b4:	8187c783          	lbu	a5,-2024(a5) # 8000bfc8 <_ZL16userMainFinished>
    800027b8:	fe0788e3          	beqz	a5,800027a8 <main+0x9c>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    800027bc:	00100737          	lui	a4,0x100
    800027c0:	000057b7          	lui	a5,0x5
    800027c4:	5557879b          	addiw	a5,a5,1365
    800027c8:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    800027cc:	00000513          	li	a0,0
    800027d0:	0d813083          	ld	ra,216(sp)
    800027d4:	0d013403          	ld	s0,208(sp)
    800027d8:	0c813483          	ld	s1,200(sp)
    800027dc:	0e010113          	addi	sp,sp,224
    800027e0:	00008067          	ret

00000000800027e4 <_ZN6ThreadD1Ev>:
    this->myHandle = nullptr;
    this->body = nullptr;
    this->arg = nullptr;
}

Thread::~Thread() {
    800027e4:	ff010113          	addi	sp,sp,-16
    800027e8:	00813423          	sd	s0,8(sp)
    800027ec:	01010413          	addi	s0,sp,16
}
    800027f0:	00813403          	ld	s0,8(sp)
    800027f4:	01010113          	addi	sp,sp,16
    800027f8:	00008067          	ret

00000000800027fc <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    800027fc:	02050863          	beqz	a0,8000282c <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00113423          	sd	ra,8(sp)
    80002808:	00813023          	sd	s0,0(sp)
    8000280c:	01010413          	addi	s0,sp,16
        t->run();
    80002810:	00053783          	ld	a5,0(a0)
    80002814:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002818:	000780e7          	jalr	a5
    }
}
    8000281c:	00813083          	ld	ra,8(sp)
    80002820:	00013403          	ld	s0,0(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret
    8000282c:	00008067          	ret

0000000080002830 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00113423          	sd	ra,8(sp)
    80002838:	00813023          	sd	s0,0(sp)
    8000283c:	01010413          	addi	s0,sp,16
}
    80002840:	00000097          	auipc	ra,0x0
    80002844:	e40080e7          	jalr	-448(ra) # 80002680 <_ZdlPv>
    80002848:	00813083          	ld	ra,8(sp)
    8000284c:	00013403          	ld	s0,0(sp)
    80002850:	01010113          	addi	sp,sp,16
    80002854:	00008067          	ret

0000000080002858 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002858:	00009797          	auipc	a5,0x9
    8000285c:	4a878793          	addi	a5,a5,1192 # 8000bd00 <_ZTV9Semaphore+0x10>
    80002860:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    80002864:	00853503          	ld	a0,8(a0)
    80002868:	02050663          	beqz	a0,80002894 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    8000286c:	ff010113          	addi	sp,sp,-16
    80002870:	00113423          	sd	ra,8(sp)
    80002874:	00813023          	sd	s0,0(sp)
    80002878:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	c04080e7          	jalr	-1020(ra) # 80001480 <_Z9sem_closeP4_sem>
    }
}
    80002884:	00813083          	ld	ra,8(sp)
    80002888:	00013403          	ld	s0,0(sp)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret
    80002894:	00008067          	ret

0000000080002898 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002898:	fe010113          	addi	sp,sp,-32
    8000289c:	00113c23          	sd	ra,24(sp)
    800028a0:	00813823          	sd	s0,16(sp)
    800028a4:	00913423          	sd	s1,8(sp)
    800028a8:	02010413          	addi	s0,sp,32
    800028ac:	00050493          	mv	s1,a0
}
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	fa8080e7          	jalr	-88(ra) # 80002858 <_ZN9SemaphoreD1Ev>
    800028b8:	00048513          	mv	a0,s1
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	dc4080e7          	jalr	-572(ra) # 80002680 <_ZdlPv>
    800028c4:	01813083          	ld	ra,24(sp)
    800028c8:	01013403          	ld	s0,16(sp)
    800028cc:	00813483          	ld	s1,8(sp)
    800028d0:	02010113          	addi	sp,sp,32
    800028d4:	00008067          	ret

00000000800028d8 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    800028d8:	ff010113          	addi	sp,sp,-16
    800028dc:	00813423          	sd	s0,8(sp)
    800028e0:	01010413          	addi	s0,sp,16
    800028e4:	00009797          	auipc	a5,0x9
    800028e8:	3f478793          	addi	a5,a5,1012 # 8000bcd8 <_ZTV6Thread+0x10>
    800028ec:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800028f0:	00053423          	sd	zero,8(a0)
    this->body = body;
    800028f4:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    800028f8:	00c53c23          	sd	a2,24(a0)
}
    800028fc:	00813403          	ld	s0,8(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret

0000000080002908 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00813423          	sd	s0,8(sp)
    80002910:	01010413          	addi	s0,sp,16
    80002914:	00009797          	auipc	a5,0x9
    80002918:	3c478793          	addi	a5,a5,964 # 8000bcd8 <_ZTV6Thread+0x10>
    8000291c:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002920:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    80002924:	00053823          	sd	zero,16(a0)
    this->arg = nullptr;
    80002928:	00053c23          	sd	zero,24(a0)
}
    8000292c:	00813403          	ld	s0,8(sp)
    80002930:	01010113          	addi	sp,sp,16
    80002934:	00008067          	ret

0000000080002938 <_ZN6Thread5startEv>:
int Thread::start() {
    80002938:	ff010113          	addi	sp,sp,-16
    8000293c:	00113423          	sd	ra,8(sp)
    80002940:	00813023          	sd	s0,0(sp)
    80002944:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80002948:	01053583          	ld	a1,16(a0)
    8000294c:	02058263          	beqz	a1,80002970 <_ZN6Thread5startEv+0x38>
        return thread_create(&myHandle, body, arg);
    80002950:	01853603          	ld	a2,24(a0)
    80002954:	00850513          	addi	a0,a0,8
    80002958:	fffff097          	auipc	ra,0xfffff
    8000295c:	92c080e7          	jalr	-1748(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
}
    80002960:	00813083          	ld	ra,8(sp)
    80002964:	00013403          	ld	s0,0(sp)
    80002968:	01010113          	addi	sp,sp,16
    8000296c:	00008067          	ret
    return thread_create(&myHandle, Thread::threadWrapper, this);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    80002970:	00050613          	mv	a2,a0
    80002974:	00000597          	auipc	a1,0x0
    80002978:	e8858593          	addi	a1,a1,-376 # 800027fc <_ZN6Thread13threadWrapperEPv>
    8000297c:	00850513          	addi	a0,a0,8
    80002980:	fffff097          	auipc	ra,0xfffff
    80002984:	904080e7          	jalr	-1788(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    80002988:	fd9ff06f          	j	80002960 <_ZN6Thread5startEv+0x28>

000000008000298c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000298c:	ff010113          	addi	sp,sp,-16
    80002990:	00113423          	sd	ra,8(sp)
    80002994:	00813023          	sd	s0,0(sp)
    80002998:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000299c:	fffff097          	auipc	ra,0xfffff
    800029a0:	9ec080e7          	jalr	-1556(ra) # 80001388 <_Z15thread_dispatchv>
}
    800029a4:	00813083          	ld	ra,8(sp)
    800029a8:	00013403          	ld	s0,0(sp)
    800029ac:	01010113          	addi	sp,sp,16
    800029b0:	00008067          	ret

00000000800029b4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800029b4:	ff010113          	addi	sp,sp,-16
    800029b8:	00113423          	sd	ra,8(sp)
    800029bc:	00813023          	sd	s0,0(sp)
    800029c0:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	c04080e7          	jalr	-1020(ra) # 800015c8 <_Z10time_sleepm>
}
    800029cc:	00813083          	ld	ra,8(sp)
    800029d0:	00013403          	ld	s0,0(sp)
    800029d4:	01010113          	addi	sp,sp,16
    800029d8:	00008067          	ret

00000000800029dc <_ZN6Thread4sendEPc>:
void Thread::send(char* message) {
    800029dc:	ff010113          	addi	sp,sp,-16
    800029e0:	00113423          	sd	ra,8(sp)
    800029e4:	00813023          	sd	s0,0(sp)
    800029e8:	01010413          	addi	s0,sp,16
    ::send(myHandle, message);
    800029ec:	00853503          	ld	a0,8(a0)
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	9d4080e7          	jalr	-1580(ra) # 800013c4 <_Z4sendP7_threadPc>
}
    800029f8:	00813083          	ld	ra,8(sp)
    800029fc:	00013403          	ld	s0,0(sp)
    80002a00:	01010113          	addi	sp,sp,16
    80002a04:	00008067          	ret

0000000080002a08 <_ZN6Thread7receiveEv>:
char* Thread::receive() {
    80002a08:	ff010113          	addi	sp,sp,-16
    80002a0c:	00113423          	sd	ra,8(sp)
    80002a10:	00813023          	sd	s0,0(sp)
    80002a14:	01010413          	addi	s0,sp,16
    return ::receive();
    80002a18:	fffff097          	auipc	ra,0xfffff
    80002a1c:	9e8080e7          	jalr	-1560(ra) # 80001400 <_Z7receivev>
}
    80002a20:	00813083          	ld	ra,8(sp)
    80002a24:	00013403          	ld	s0,0(sp)
    80002a28:	01010113          	addi	sp,sp,16
    80002a2c:	00008067          	ret

0000000080002a30 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002a30:	ff010113          	addi	sp,sp,-16
    80002a34:	00113423          	sd	ra,8(sp)
    80002a38:	00813023          	sd	s0,0(sp)
    80002a3c:	01010413          	addi	s0,sp,16
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	2c078793          	addi	a5,a5,704 # 8000bd00 <_ZTV9Semaphore+0x10>
    80002a48:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002a4c:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002a50:	00850513          	addi	a0,a0,8
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	9e8080e7          	jalr	-1560(ra) # 8000143c <_Z8sem_openPP4_semj>
}
    80002a5c:	00813083          	ld	ra,8(sp)
    80002a60:	00013403          	ld	s0,0(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret

0000000080002a6c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00113423          	sd	ra,8(sp)
    80002a74:	00813023          	sd	s0,0(sp)
    80002a78:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002a7c:	00853503          	ld	a0,8(a0)
    80002a80:	fffff097          	auipc	ra,0xfffff
    80002a84:	a40080e7          	jalr	-1472(ra) # 800014c0 <_Z8sem_waitP4_sem>
}
    80002a88:	00813083          	ld	ra,8(sp)
    80002a8c:	00013403          	ld	s0,0(sp)
    80002a90:	01010113          	addi	sp,sp,16
    80002a94:	00008067          	ret

0000000080002a98 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002a98:	ff010113          	addi	sp,sp,-16
    80002a9c:	00113423          	sd	ra,8(sp)
    80002aa0:	00813023          	sd	s0,0(sp)
    80002aa4:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002aa8:	00853503          	ld	a0,8(a0)
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	a54080e7          	jalr	-1452(ra) # 80001500 <_Z10sem_signalP4_sem>
}
    80002ab4:	00813083          	ld	ra,8(sp)
    80002ab8:	00013403          	ld	s0,0(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	01213023          	sd	s2,0(sp)
    80002ad8:	02010413          	addi	s0,sp,32
    80002adc:	00050493          	mv	s1,a0
    80002ae0:	00058913          	mv	s2,a1
    80002ae4:	00000097          	auipc	ra,0x0
    80002ae8:	e24080e7          	jalr	-476(ra) # 80002908 <_ZN6ThreadC1Ev>
    80002aec:	00009797          	auipc	a5,0x9
    80002af0:	1bc78793          	addi	a5,a5,444 # 8000bca8 <_ZTV14PeriodicThread+0x10>
    80002af4:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002af8:	0324b023          	sd	s2,32(s1)
}
    80002afc:	01813083          	ld	ra,24(sp)
    80002b00:	01013403          	ld	s0,16(sp)
    80002b04:	00813483          	ld	s1,8(sp)
    80002b08:	00013903          	ld	s2,0(sp)
    80002b0c:	02010113          	addi	sp,sp,32
    80002b10:	00008067          	ret

0000000080002b14 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002b14:	ff010113          	addi	sp,sp,-16
    80002b18:	00813423          	sd	s0,8(sp)
    80002b1c:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002b20:	00813403          	ld	s0,8(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN7Console4getcEv>:

char Console::getc() {
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
    return ::getc();
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	acc080e7          	jalr	-1332(ra) # 80001608 <_Z4getcv>
}
    80002b44:	00813083          	ld	ra,8(sp)
    80002b48:	00013403          	ld	s0,0(sp)
    80002b4c:	01010113          	addi	sp,sp,16
    80002b50:	00008067          	ret

0000000080002b54 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00113423          	sd	ra,8(sp)
    80002b5c:	00813023          	sd	s0,0(sp)
    80002b60:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002b64:	fffff097          	auipc	ra,0xfffff
    80002b68:	ae4080e7          	jalr	-1308(ra) # 80001648 <_Z4putcc>
    80002b6c:	00813083          	ld	ra,8(sp)
    80002b70:	00013403          	ld	s0,0(sp)
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00008067          	ret

0000000080002b7c <_ZN6Thread3runEv>:
    char* receive();

protected:
    Thread();

    virtual void run() {}
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00813423          	sd	s0,8(sp)
    80002b84:	01010413          	addi	s0,sp,16
    80002b88:	00813403          	ld	s0,8(sp)
    80002b8c:	01010113          	addi	sp,sp,16
    80002b90:	00008067          	ret

0000000080002b94 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00813423          	sd	s0,8(sp)
    80002b9c:	01010413          	addi	s0,sp,16
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret

0000000080002bac <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002bac:	ff010113          	addi	sp,sp,-16
    80002bb0:	00813423          	sd	s0,8(sp)
    80002bb4:	01010413          	addi	s0,sp,16
    80002bb8:	00009797          	auipc	a5,0x9
    80002bbc:	0f078793          	addi	a5,a5,240 # 8000bca8 <_ZTV14PeriodicThread+0x10>
    80002bc0:	00f53023          	sd	a5,0(a0)
    80002bc4:	00813403          	ld	s0,8(sp)
    80002bc8:	01010113          	addi	sp,sp,16
    80002bcc:	00008067          	ret

0000000080002bd0 <_ZN14PeriodicThreadD0Ev>:
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00113423          	sd	ra,8(sp)
    80002bd8:	00813023          	sd	s0,0(sp)
    80002bdc:	01010413          	addi	s0,sp,16
    80002be0:	00009797          	auipc	a5,0x9
    80002be4:	0c878793          	addi	a5,a5,200 # 8000bca8 <_ZTV14PeriodicThread+0x10>
    80002be8:	00f53023          	sd	a5,0(a0)
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	a94080e7          	jalr	-1388(ra) # 80002680 <_ZdlPv>
    80002bf4:	00813083          	ld	ra,8(sp)
    80002bf8:	00013403          	ld	s0,0(sp)
    80002bfc:	01010113          	addi	sp,sp,16
    80002c00:	00008067          	ret

0000000080002c04 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002c04:	ff010113          	addi	sp,sp,-16
    80002c08:	00813423          	sd	s0,8(sp)
    80002c0c:	01010413          	addi	s0,sp,16
    80002c10:	00053023          	sd	zero,0(a0)
    80002c14:	00050423          	sb	zero,8(a0)
    80002c18:	00813403          	ld	s0,8(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002c24:	00100793          	li	a5,1
    80002c28:	00f50463          	beq	a0,a5,80002c30 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002c2c:	00008067          	ret
    80002c30:	000107b7          	lui	a5,0x10
    80002c34:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002c38:	fef59ae3          	bne	a1,a5,80002c2c <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002c3c:	ff010113          	addi	sp,sp,-16
    80002c40:	00113423          	sd	ra,8(sp)
    80002c44:	00813023          	sd	s0,0(sp)
    80002c48:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002c4c:	00009517          	auipc	a0,0x9
    80002c50:	38450513          	addi	a0,a0,900 # 8000bfd0 <_ZN15MemoryAllocator8instanceE>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	fb0080e7          	jalr	-80(ra) # 80002c04 <_ZN15MemoryAllocatorC1Ev>
    80002c5c:	00813083          	ld	ra,8(sp)
    80002c60:	00013403          	ld	s0,0(sp)
    80002c64:	01010113          	addi	sp,sp,16
    80002c68:	00008067          	ret

0000000080002c6c <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002c6c:	ff010113          	addi	sp,sp,-16
    80002c70:	00813423          	sd	s0,8(sp)
    80002c74:	01010413          	addi	s0,sp,16
}
    80002c78:	00009517          	auipc	a0,0x9
    80002c7c:	35850513          	addi	a0,a0,856 # 8000bfd0 <_ZN15MemoryAllocator8instanceE>
    80002c80:	00813403          	ld	s0,8(sp)
    80002c84:	01010113          	addi	sp,sp,16
    80002c88:	00008067          	ret

0000000080002c8c <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002c8c:	ff010113          	addi	sp,sp,-16
    80002c90:	00813423          	sd	s0,8(sp)
    80002c94:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002c98:	00854783          	lbu	a5,8(a0)
    80002c9c:	04079263          	bnez	a5,80002ce0 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002ca0:	00009797          	auipc	a5,0x9
    80002ca4:	2987b783          	ld	a5,664(a5) # 8000bf38 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ca8:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002cac:	00009797          	auipc	a5,0x9
    80002cb0:	2ac7b783          	ld	a5,684(a5) # 8000bf58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002cb4:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002cb8:	40e787b3          	sub	a5,a5,a4
    80002cbc:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002cc0:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002cc4:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002cc8:	00053783          	ld	a5,0(a0)
    80002ccc:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002cd0:	00053783          	ld	a5,0(a0)
    80002cd4:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002cd8:	00100793          	li	a5,1
    80002cdc:	00f50423          	sb	a5,8(a0)
}
    80002ce0:	00813403          	ld	s0,8(sp)
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00008067          	ret

0000000080002cec <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002cec:	fe010113          	addi	sp,sp,-32
    80002cf0:	00113c23          	sd	ra,24(sp)
    80002cf4:	00813823          	sd	s0,16(sp)
    80002cf8:	00913423          	sd	s1,8(sp)
    80002cfc:	01213023          	sd	s2,0(sp)
    80002d00:	02010413          	addi	s0,sp,32
    80002d04:	00050913          	mv	s2,a0
    80002d08:	00058493          	mv	s1,a1
    init();
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	f80080e7          	jalr	-128(ra) # 80002c8c <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002d14:	0c048863          	beqz	s1,80002de4 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002d18:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002d1c:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002d20:	00050a63          	beqz	a0,80002d34 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002d24:	00053783          	ld	a5,0(a0)
    80002d28:	00b7f663          	bgeu	a5,a1,80002d34 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002d2c:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002d30:	ff1ff06f          	j	80002d20 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002d34:	04050063          	beqz	a0,80002d74 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002d38:	00053783          	ld	a5,0(a0)
    80002d3c:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002d40:	00100713          	li	a4,1
    80002d44:	04f76463          	bltu	a4,a5,80002d8c <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002d48:	01053783          	ld	a5,16(a0)
    80002d4c:	08078663          	beqz	a5,80002dd8 <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002d50:	00853703          	ld	a4,8(a0)
    80002d54:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002d58:	00853783          	ld	a5,8(a0)
    80002d5c:	00078663          	beqz	a5,80002d68 <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002d60:	01053703          	ld	a4,16(a0)
    80002d64:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002d68:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002d6c:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002d70:	04050513          	addi	a0,a0,64
}
    80002d74:	01813083          	ld	ra,24(sp)
    80002d78:	01013403          	ld	s0,16(sp)
    80002d7c:	00813483          	ld	s1,8(sp)
    80002d80:	00013903          	ld	s2,0(sp)
    80002d84:	02010113          	addi	sp,sp,32
    80002d88:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002d8c:	00659713          	slli	a4,a1,0x6
    80002d90:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002d94:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002d98:	00853783          	ld	a5,8(a0)
    80002d9c:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002da0:	01053783          	ld	a5,16(a0)
    80002da4:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002da8:	02078463          	beqz	a5,80002dd0 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002dac:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002db0:	00853783          	ld	a5,8(a0)
    80002db4:	00078463          	beqz	a5,80002dbc <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002db8:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002dbc:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002dc0:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002dc4:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002dc8:	04050513          	addi	a0,a0,64
    80002dcc:	fa9ff06f          	j	80002d74 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002dd0:	00e93023          	sd	a4,0(s2)
    80002dd4:	fddff06f          	j	80002db0 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002dd8:	00853783          	ld	a5,8(a0)
    80002ddc:	00f93023          	sd	a5,0(s2)
    80002de0:	f79ff06f          	j	80002d58 <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002de4:	00000513          	li	a0,0
    80002de8:	f8dff06f          	j	80002d74 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002dec <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00813423          	sd	s0,8(sp)
    80002df4:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002df8:	00058e63          	beqz	a1,80002e14 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002dfc:	0085b783          	ld	a5,8(a1)
    80002e00:	00078a63          	beqz	a5,80002e14 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002e04:	0005b683          	ld	a3,0(a1)
    80002e08:	00669713          	slli	a4,a3,0x6
    80002e0c:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002e10:	00e78863          	beq	a5,a4,80002e20 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002e14:	00813403          	ld	s0,8(sp)
    80002e18:	01010113          	addi	sp,sp,16
    80002e1c:	00008067          	ret
        block->size += nextBlock->size;
    80002e20:	0007b703          	ld	a4,0(a5)
    80002e24:	00e686b3          	add	a3,a3,a4
    80002e28:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002e2c:	0087b703          	ld	a4,8(a5)
    80002e30:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002e34:	00070463          	beqz	a4,80002e3c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002e38:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002e3c:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002e40:	0007b823          	sd	zero,16(a5)
    80002e44:	fd1ff06f          	j	80002e14 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002e48 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002e48:	fd010113          	addi	sp,sp,-48
    80002e4c:	02113423          	sd	ra,40(sp)
    80002e50:	02813023          	sd	s0,32(sp)
    80002e54:	00913c23          	sd	s1,24(sp)
    80002e58:	01213823          	sd	s2,16(sp)
    80002e5c:	01313423          	sd	s3,8(sp)
    80002e60:	03010413          	addi	s0,sp,48
    80002e64:	00050993          	mv	s3,a0
    80002e68:	00058913          	mv	s2,a1
    init();
    80002e6c:	00000097          	auipc	ra,0x0
    80002e70:	e20080e7          	jalr	-480(ra) # 80002c8c <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002e74:	0e090863          	beqz	s2,80002f64 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002e78:	00009797          	auipc	a5,0x9
    80002e7c:	0c07b783          	ld	a5,192(a5) # 8000bf38 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e80:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002e84:	00009797          	auipc	a5,0x9
    80002e88:	0d47b783          	ld	a5,212(a5) # 8000bf58 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002e8c:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002e90:	04068793          	addi	a5,a3,64
    80002e94:	0cf96c63          	bltu	s2,a5,80002f6c <_ZN15MemoryAllocator4freeEPv+0x124>
    80002e98:	0cc97e63          	bgeu	s2,a2,80002f74 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002e9c:	40d907b3          	sub	a5,s2,a3
    80002ea0:	03f7f793          	andi	a5,a5,63
    80002ea4:	0c079c63          	bnez	a5,80002f7c <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002ea8:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002eac:	fc093783          	ld	a5,-64(s2)
    80002eb0:	00100713          	li	a4,1
    80002eb4:	0cf77863          	bgeu	a4,a5,80002f84 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002eb8:	00058713          	mv	a4,a1
    80002ebc:	0cd5e863          	bltu	a1,a3,80002f8c <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002ec0:	00679793          	slli	a5,a5,0x6
    80002ec4:	00f586b3          	add	a3,a1,a5
    80002ec8:	0cd66663          	bltu	a2,a3,80002f94 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002ecc:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002ed0:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002ed4:	00078a63          	beqz	a5,80002ee8 <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002ed8:	00e7f863          	bgeu	a5,a4,80002ee8 <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002edc:	00078493          	mv	s1,a5
        current = current->next;
    80002ee0:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002ee4:	ff1ff06f          	j	80002ed4 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002ee8:	00048a63          	beqz	s1,80002efc <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002eec:	0004b603          	ld	a2,0(s1)
    80002ef0:	00661613          	slli	a2,a2,0x6
    80002ef4:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002ef8:	0ac76263          	bltu	a4,a2,80002f9c <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002efc:	00078463          	beqz	a5,80002f04 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002f00:	0ad7e263          	bltu	a5,a3,80002fa4 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002f04:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002f08:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002f0c:	04048863          	beqz	s1,80002f5c <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002f10:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002f14:	00078463          	beqz	a5,80002f1c <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002f18:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002f1c:	00098513          	mv	a0,s3
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	ecc080e7          	jalr	-308(ra) # 80002dec <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002f28:	08048263          	beqz	s1,80002fac <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002f2c:	00048593          	mv	a1,s1
    80002f30:	00098513          	mv	a0,s3
    80002f34:	00000097          	auipc	ra,0x0
    80002f38:	eb8080e7          	jalr	-328(ra) # 80002dec <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002f3c:	00000513          	li	a0,0
}
    80002f40:	02813083          	ld	ra,40(sp)
    80002f44:	02013403          	ld	s0,32(sp)
    80002f48:	01813483          	ld	s1,24(sp)
    80002f4c:	01013903          	ld	s2,16(sp)
    80002f50:	00813983          	ld	s3,8(sp)
    80002f54:	03010113          	addi	sp,sp,48
    80002f58:	00008067          	ret
        freeHead = block;
    80002f5c:	00b9b023          	sd	a1,0(s3)
    80002f60:	fb5ff06f          	j	80002f14 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002f64:	fff00513          	li	a0,-1
    80002f68:	fd9ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f6c:	fff00513          	li	a0,-1
    80002f70:	fd1ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80002f74:	fff00513          	li	a0,-1
    80002f78:	fc9ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f7c:	fff00513          	li	a0,-1
    80002f80:	fc1ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f84:	fff00513          	li	a0,-1
    80002f88:	fb9ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f8c:	fff00513          	li	a0,-1
    80002f90:	fb1ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f94:	fff00513          	li	a0,-1
    80002f98:	fa9ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002f9c:	fff00513          	li	a0,-1
    80002fa0:	fa1ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80002fa4:	fff00513          	li	a0,-1
    80002fa8:	f99ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80002fac:	00000513          	li	a0,0
    80002fb0:	f91ff06f          	j	80002f40 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080002fb4 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00113423          	sd	ra,8(sp)
    80002fbc:	00813023          	sd	s0,0(sp)
    80002fc0:	01010413          	addi	s0,sp,16
    80002fc4:	000105b7          	lui	a1,0x10
    80002fc8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002fcc:	00100513          	li	a0,1
    80002fd0:	00000097          	auipc	ra,0x0
    80002fd4:	c54080e7          	jalr	-940(ra) # 80002c24 <_Z41__static_initialization_and_destruction_0ii>
    80002fd8:	00813083          	ld	ra,8(sp)
    80002fdc:	00013403          	ld	s0,0(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret

0000000080002fe8 <_ZL9safePrintPKc>:

static Thread* threadA;
static Thread* threadB;
static Thread* threadC;

static void safePrint(const char* text) {
    80002fe8:	fe010113          	addi	sp,sp,-32
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	01213023          	sd	s2,0(sp)
    80002ffc:	02010413          	addi	s0,sp,32
    80003000:	00050493          	mv	s1,a0
    sem_wait(printSem);
    80003004:	00009917          	auipc	s2,0x9
    80003008:	fdc90913          	addi	s2,s2,-36 # 8000bfe0 <_ZL8printSem>
    8000300c:	00093503          	ld	a0,0(s2)
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	4b0080e7          	jalr	1200(ra) # 800014c0 <_Z8sem_waitP4_sem>
    printString(text);
    80003018:	00048513          	mv	a0,s1
    8000301c:	00003097          	auipc	ra,0x3
    80003020:	b30080e7          	jalr	-1232(ra) # 80005b4c <_Z11printStringPKc>
    sem_signal(printSem);
    80003024:	00093503          	ld	a0,0(s2)
    80003028:	ffffe097          	auipc	ra,0xffffe
    8000302c:	4d8080e7          	jalr	1240(ra) # 80001500 <_Z10sem_signalP4_sem>
}
    80003030:	01813083          	ld	ra,24(sp)
    80003034:	01013403          	ld	s0,16(sp)
    80003038:	00813483          	ld	s1,8(sp)
    8000303c:	00013903          	ld	s2,0(sp)
    80003040:	02010113          	addi	sp,sp,32
    80003044:	00008067          	ret

0000000080003048 <_ZL16safePrintMessagePKcPc>:

static void safePrintMessage(const char* who, char* msg) {
    80003048:	fd010113          	addi	sp,sp,-48
    8000304c:	02113423          	sd	ra,40(sp)
    80003050:	02813023          	sd	s0,32(sp)
    80003054:	00913c23          	sd	s1,24(sp)
    80003058:	01213823          	sd	s2,16(sp)
    8000305c:	01313423          	sd	s3,8(sp)
    80003060:	03010413          	addi	s0,sp,48
    80003064:	00050913          	mv	s2,a0
    80003068:	00058493          	mv	s1,a1
    sem_wait(printSem);
    8000306c:	00009997          	auipc	s3,0x9
    80003070:	f7498993          	addi	s3,s3,-140 # 8000bfe0 <_ZL8printSem>
    80003074:	0009b503          	ld	a0,0(s3)
    80003078:	ffffe097          	auipc	ra,0xffffe
    8000307c:	448080e7          	jalr	1096(ra) # 800014c0 <_Z8sem_waitP4_sem>

    printString(who);
    80003080:	00090513          	mv	a0,s2
    80003084:	00003097          	auipc	ra,0x3
    80003088:	ac8080e7          	jalr	-1336(ra) # 80005b4c <_Z11printStringPKc>
    printString(msg);
    8000308c:	00048513          	mv	a0,s1
    80003090:	00003097          	auipc	ra,0x3
    80003094:	abc080e7          	jalr	-1348(ra) # 80005b4c <_Z11printStringPKc>
    printString("\n");
    80003098:	00006517          	auipc	a0,0x6
    8000309c:	20850513          	addi	a0,a0,520 # 800092a0 <CONSOLE_STATUS+0x290>
    800030a0:	00003097          	auipc	ra,0x3
    800030a4:	aac080e7          	jalr	-1364(ra) # 80005b4c <_Z11printStringPKc>

    sem_signal(printSem);
    800030a8:	0009b503          	ld	a0,0(s3)
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	454080e7          	jalr	1108(ra) # 80001500 <_Z10sem_signalP4_sem>
}
    800030b4:	02813083          	ld	ra,40(sp)
    800030b8:	02013403          	ld	s0,32(sp)
    800030bc:	01813483          	ld	s1,24(sp)
    800030c0:	01013903          	ld	s2,16(sp)
    800030c4:	00813983          	ld	s3,8(sp)
    800030c8:	03010113          	addi	sp,sp,48
    800030cc:	00008067          	ret

00000000800030d0 <_Z11MessageTestv>:

        sem_signal(doneSem);
    }
};

void MessageTest() {
    800030d0:	fe010113          	addi	sp,sp,-32
    800030d4:	00113c23          	sd	ra,24(sp)
    800030d8:	00813823          	sd	s0,16(sp)
    800030dc:	00913423          	sd	s1,8(sp)
    800030e0:	01213023          	sd	s2,0(sp)
    800030e4:	02010413          	addi	s0,sp,32
    sem_open(&doneSem, 0);
    800030e8:	00000593          	li	a1,0
    800030ec:	00009517          	auipc	a0,0x9
    800030f0:	f0c50513          	addi	a0,a0,-244 # 8000bff8 <_ZL7doneSem>
    800030f4:	ffffe097          	auipc	ra,0xffffe
    800030f8:	348080e7          	jalr	840(ra) # 8000143c <_Z8sem_openPP4_semj>
    sem_open(&printSem, 1);
    800030fc:	00100593          	li	a1,1
    80003100:	00009517          	auipc	a0,0x9
    80003104:	ee050513          	addi	a0,a0,-288 # 8000bfe0 <_ZL8printSem>
    80003108:	ffffe097          	auipc	ra,0xffffe
    8000310c:	334080e7          	jalr	820(ra) # 8000143c <_Z8sem_openPP4_semj>

    threadA = new ThreadA();
    80003110:	02000513          	li	a0,32
    80003114:	fffff097          	auipc	ra,0xfffff
    80003118:	51c080e7          	jalr	1308(ra) # 80002630 <_Znwm>
    8000311c:	00050493          	mv	s1,a0
    80003120:	00053023          	sd	zero,0(a0)
    80003124:	00053423          	sd	zero,8(a0)
    80003128:	00053823          	sd	zero,16(a0)
    8000312c:	00053c23          	sd	zero,24(a0)
class ThreadA : public Thread {
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	7d8080e7          	jalr	2008(ra) # 80002908 <_ZN6ThreadC1Ev>
    80003138:	00009797          	auipc	a5,0x9
    8000313c:	be878793          	addi	a5,a5,-1048 # 8000bd20 <_ZTV7ThreadA+0x10>
    80003140:	00f4b023          	sd	a5,0(s1)
    threadA = new ThreadA();
    80003144:	00009797          	auipc	a5,0x9
    80003148:	ea97be23          	sd	s1,-324(a5) # 8000c000 <_ZL7threadA>
    threadB = new ThreadB();
    8000314c:	02000513          	li	a0,32
    80003150:	fffff097          	auipc	ra,0xfffff
    80003154:	4e0080e7          	jalr	1248(ra) # 80002630 <_Znwm>
    80003158:	00050493          	mv	s1,a0
    8000315c:	00053023          	sd	zero,0(a0)
    80003160:	00053423          	sd	zero,8(a0)
    80003164:	00053823          	sd	zero,16(a0)
    80003168:	00053c23          	sd	zero,24(a0)
class ThreadB : public Thread {
    8000316c:	fffff097          	auipc	ra,0xfffff
    80003170:	79c080e7          	jalr	1948(ra) # 80002908 <_ZN6ThreadC1Ev>
    80003174:	00009797          	auipc	a5,0x9
    80003178:	bd478793          	addi	a5,a5,-1068 # 8000bd48 <_ZTV7ThreadB+0x10>
    8000317c:	00f4b023          	sd	a5,0(s1)
    threadB = new ThreadB();
    80003180:	00009797          	auipc	a5,0x9
    80003184:	e697b423          	sd	s1,-408(a5) # 8000bfe8 <_ZL7threadB>
    threadC = new ThreadC();
    80003188:	02000513          	li	a0,32
    8000318c:	fffff097          	auipc	ra,0xfffff
    80003190:	4a4080e7          	jalr	1188(ra) # 80002630 <_Znwm>
    80003194:	00050493          	mv	s1,a0
    80003198:	00053023          	sd	zero,0(a0)
    8000319c:	00053423          	sd	zero,8(a0)
    800031a0:	00053823          	sd	zero,16(a0)
    800031a4:	00053c23          	sd	zero,24(a0)
class ThreadC : public Thread {
    800031a8:	fffff097          	auipc	ra,0xfffff
    800031ac:	760080e7          	jalr	1888(ra) # 80002908 <_ZN6ThreadC1Ev>
    800031b0:	00009797          	auipc	a5,0x9
    800031b4:	bc078793          	addi	a5,a5,-1088 # 8000bd70 <_ZTV7ThreadC+0x10>
    800031b8:	00f4b023          	sd	a5,0(s1)
    threadC = new ThreadC();
    800031bc:	00009917          	auipc	s2,0x9
    800031c0:	e2490913          	addi	s2,s2,-476 # 8000bfe0 <_ZL8printSem>
    800031c4:	00993823          	sd	s1,16(s2)

    threadA->start();
    800031c8:	02093503          	ld	a0,32(s2)
    800031cc:	fffff097          	auipc	ra,0xfffff
    800031d0:	76c080e7          	jalr	1900(ra) # 80002938 <_ZN6Thread5startEv>
    threadB->start();
    800031d4:	00893503          	ld	a0,8(s2)
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	760080e7          	jalr	1888(ra) # 80002938 <_ZN6Thread5startEv>
    threadC->start();
    800031e0:	01093503          	ld	a0,16(s2)
    800031e4:	fffff097          	auipc	ra,0xfffff
    800031e8:	754080e7          	jalr	1876(ra) # 80002938 <_ZN6Thread5startEv>

    sem_wait(doneSem);
    800031ec:	01893503          	ld	a0,24(s2)
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	2d0080e7          	jalr	720(ra) # 800014c0 <_Z8sem_waitP4_sem>
    sem_wait(doneSem);
    800031f8:	01893503          	ld	a0,24(s2)
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	2c4080e7          	jalr	708(ra) # 800014c0 <_Z8sem_waitP4_sem>
    sem_wait(doneSem);
    80003204:	01893503          	ld	a0,24(s2)
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	2b8080e7          	jalr	696(ra) # 800014c0 <_Z8sem_waitP4_sem>

    delete threadA;
    80003210:	02093503          	ld	a0,32(s2)
    80003214:	00050863          	beqz	a0,80003224 <_Z11MessageTestv+0x154>
    80003218:	00053783          	ld	a5,0(a0)
    8000321c:	0087b783          	ld	a5,8(a5)
    80003220:	000780e7          	jalr	a5
    delete threadB;
    80003224:	00009517          	auipc	a0,0x9
    80003228:	dc453503          	ld	a0,-572(a0) # 8000bfe8 <_ZL7threadB>
    8000322c:	00050863          	beqz	a0,8000323c <_Z11MessageTestv+0x16c>
    80003230:	00053783          	ld	a5,0(a0)
    80003234:	0087b783          	ld	a5,8(a5)
    80003238:	000780e7          	jalr	a5
    delete threadC;
    8000323c:	00009517          	auipc	a0,0x9
    80003240:	db453503          	ld	a0,-588(a0) # 8000bff0 <_ZL7threadC>
    80003244:	00050863          	beqz	a0,80003254 <_Z11MessageTestv+0x184>
    80003248:	00053783          	ld	a5,0(a0)
    8000324c:	0087b783          	ld	a5,8(a5)
    80003250:	000780e7          	jalr	a5

    sem_close(printSem);
    80003254:	00009497          	auipc	s1,0x9
    80003258:	d8c48493          	addi	s1,s1,-628 # 8000bfe0 <_ZL8printSem>
    8000325c:	0004b503          	ld	a0,0(s1)
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	220080e7          	jalr	544(ra) # 80001480 <_Z9sem_closeP4_sem>
    sem_close(doneSem);
    80003268:	0184b503          	ld	a0,24(s1)
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	214080e7          	jalr	532(ra) # 80001480 <_Z9sem_closeP4_sem>

    printString("MESSAGE TEST FINISHED\n");
    80003274:	00006517          	auipc	a0,0x6
    80003278:	0fc50513          	addi	a0,a0,252 # 80009370 <CONSOLE_STATUS+0x360>
    8000327c:	00003097          	auipc	ra,0x3
    80003280:	8d0080e7          	jalr	-1840(ra) # 80005b4c <_Z11printStringPKc>
    80003284:	01813083          	ld	ra,24(sp)
    80003288:	01013403          	ld	s0,16(sp)
    8000328c:	00813483          	ld	s1,8(sp)
    80003290:	00013903          	ld	s2,0(sp)
    80003294:	02010113          	addi	sp,sp,32
    80003298:	00008067          	ret
    8000329c:	00050913          	mv	s2,a0
    threadA = new ThreadA();
    800032a0:	00048513          	mv	a0,s1
    800032a4:	fffff097          	auipc	ra,0xfffff
    800032a8:	3dc080e7          	jalr	988(ra) # 80002680 <_ZdlPv>
    800032ac:	00090513          	mv	a0,s2
    800032b0:	0000a097          	auipc	ra,0xa
    800032b4:	e78080e7          	jalr	-392(ra) # 8000d128 <_Unwind_Resume>
    800032b8:	00050913          	mv	s2,a0
    threadB = new ThreadB();
    800032bc:	00048513          	mv	a0,s1
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	3c0080e7          	jalr	960(ra) # 80002680 <_ZdlPv>
    800032c8:	00090513          	mv	a0,s2
    800032cc:	0000a097          	auipc	ra,0xa
    800032d0:	e5c080e7          	jalr	-420(ra) # 8000d128 <_Unwind_Resume>
    800032d4:	00050913          	mv	s2,a0
    threadC = new ThreadC();
    800032d8:	00048513          	mv	a0,s1
    800032dc:	fffff097          	auipc	ra,0xfffff
    800032e0:	3a4080e7          	jalr	932(ra) # 80002680 <_ZdlPv>
    800032e4:	00090513          	mv	a0,s2
    800032e8:	0000a097          	auipc	ra,0xa
    800032ec:	e40080e7          	jalr	-448(ra) # 8000d128 <_Unwind_Resume>

00000000800032f0 <_ZN7ThreadA3runEv>:
    void run() override {
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	01213023          	sd	s2,0(sp)
    80003304:	02010413          	addi	s0,sp,32
    80003308:	00050913          	mv	s2,a0
        threadB->send((char*)"A -> B: prva poruka od A");
    8000330c:	00009497          	auipc	s1,0x9
    80003310:	cd448493          	addi	s1,s1,-812 # 8000bfe0 <_ZL8printSem>
    80003314:	00006597          	auipc	a1,0x6
    80003318:	07458593          	addi	a1,a1,116 # 80009388 <CONSOLE_STATUS+0x378>
    8000331c:	0084b503          	ld	a0,8(s1)
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	6bc080e7          	jalr	1724(ra) # 800029dc <_ZN6Thread4sendEPc>
        safePrint("A sent message to B\n");
    80003328:	00006517          	auipc	a0,0x6
    8000332c:	08050513          	addi	a0,a0,128 # 800093a8 <CONSOLE_STATUS+0x398>
    80003330:	00000097          	auipc	ra,0x0
    80003334:	cb8080e7          	jalr	-840(ra) # 80002fe8 <_ZL9safePrintPKc>
        threadC->send((char*)"A -> C: druga poruka od A");
    80003338:	00006597          	auipc	a1,0x6
    8000333c:	08858593          	addi	a1,a1,136 # 800093c0 <CONSOLE_STATUS+0x3b0>
    80003340:	0104b503          	ld	a0,16(s1)
    80003344:	fffff097          	auipc	ra,0xfffff
    80003348:	698080e7          	jalr	1688(ra) # 800029dc <_ZN6Thread4sendEPc>
        safePrint("A sent message to C\n");
    8000334c:	00006517          	auipc	a0,0x6
    80003350:	09450513          	addi	a0,a0,148 # 800093e0 <CONSOLE_STATUS+0x3d0>
    80003354:	00000097          	auipc	ra,0x0
    80003358:	c94080e7          	jalr	-876(ra) # 80002fe8 <_ZL9safePrintPKc>
        char* msg = receive();
    8000335c:	00090513          	mv	a0,s2
    80003360:	fffff097          	auipc	ra,0xfffff
    80003364:	6a8080e7          	jalr	1704(ra) # 80002a08 <_ZN6Thread7receiveEv>
    80003368:	00050593          	mv	a1,a0
        safePrintMessage("A received: ", msg);
    8000336c:	00006517          	auipc	a0,0x6
    80003370:	08c50513          	addi	a0,a0,140 # 800093f8 <CONSOLE_STATUS+0x3e8>
    80003374:	00000097          	auipc	ra,0x0
    80003378:	cd4080e7          	jalr	-812(ra) # 80003048 <_ZL16safePrintMessagePKcPc>
        sem_signal(doneSem);
    8000337c:	0184b503          	ld	a0,24(s1)
    80003380:	ffffe097          	auipc	ra,0xffffe
    80003384:	180080e7          	jalr	384(ra) # 80001500 <_Z10sem_signalP4_sem>
    }
    80003388:	01813083          	ld	ra,24(sp)
    8000338c:	01013403          	ld	s0,16(sp)
    80003390:	00813483          	ld	s1,8(sp)
    80003394:	00013903          	ld	s2,0(sp)
    80003398:	02010113          	addi	sp,sp,32
    8000339c:	00008067          	ret

00000000800033a0 <_ZN7ThreadB3runEv>:
    void run() override {
    800033a0:	fe010113          	addi	sp,sp,-32
    800033a4:	00113c23          	sd	ra,24(sp)
    800033a8:	00813823          	sd	s0,16(sp)
    800033ac:	00913423          	sd	s1,8(sp)
    800033b0:	01213023          	sd	s2,0(sp)
    800033b4:	02010413          	addi	s0,sp,32
    800033b8:	00050493          	mv	s1,a0
        threadC->send((char*)"B -> C: prva poruka od B");
    800033bc:	00009917          	auipc	s2,0x9
    800033c0:	c2490913          	addi	s2,s2,-988 # 8000bfe0 <_ZL8printSem>
    800033c4:	00006597          	auipc	a1,0x6
    800033c8:	04458593          	addi	a1,a1,68 # 80009408 <CONSOLE_STATUS+0x3f8>
    800033cc:	01093503          	ld	a0,16(s2)
    800033d0:	fffff097          	auipc	ra,0xfffff
    800033d4:	60c080e7          	jalr	1548(ra) # 800029dc <_ZN6Thread4sendEPc>
        safePrint("B sent first message to C\n");
    800033d8:	00006517          	auipc	a0,0x6
    800033dc:	05050513          	addi	a0,a0,80 # 80009428 <CONSOLE_STATUS+0x418>
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	c08080e7          	jalr	-1016(ra) # 80002fe8 <_ZL9safePrintPKc>
        threadC->send((char*)"B -> C: druga poruka od B");
    800033e8:	00006597          	auipc	a1,0x6
    800033ec:	06058593          	addi	a1,a1,96 # 80009448 <CONSOLE_STATUS+0x438>
    800033f0:	01093503          	ld	a0,16(s2)
    800033f4:	fffff097          	auipc	ra,0xfffff
    800033f8:	5e8080e7          	jalr	1512(ra) # 800029dc <_ZN6Thread4sendEPc>
        safePrint("B sent second message to C\n");
    800033fc:	00006517          	auipc	a0,0x6
    80003400:	06c50513          	addi	a0,a0,108 # 80009468 <CONSOLE_STATUS+0x458>
    80003404:	00000097          	auipc	ra,0x0
    80003408:	be4080e7          	jalr	-1052(ra) # 80002fe8 <_ZL9safePrintPKc>
        char* msg1 = receive();
    8000340c:	00048513          	mv	a0,s1
    80003410:	fffff097          	auipc	ra,0xfffff
    80003414:	5f8080e7          	jalr	1528(ra) # 80002a08 <_ZN6Thread7receiveEv>
    80003418:	00050593          	mv	a1,a0
        safePrintMessage("B received first: ", msg1);
    8000341c:	00006517          	auipc	a0,0x6
    80003420:	06c50513          	addi	a0,a0,108 # 80009488 <CONSOLE_STATUS+0x478>
    80003424:	00000097          	auipc	ra,0x0
    80003428:	c24080e7          	jalr	-988(ra) # 80003048 <_ZL16safePrintMessagePKcPc>
        char* msg2 = receive();
    8000342c:	00048513          	mv	a0,s1
    80003430:	fffff097          	auipc	ra,0xfffff
    80003434:	5d8080e7          	jalr	1496(ra) # 80002a08 <_ZN6Thread7receiveEv>
    80003438:	00050593          	mv	a1,a0
        safePrintMessage("B received second: ", msg2);
    8000343c:	00006517          	auipc	a0,0x6
    80003440:	06450513          	addi	a0,a0,100 # 800094a0 <CONSOLE_STATUS+0x490>
    80003444:	00000097          	auipc	ra,0x0
    80003448:	c04080e7          	jalr	-1020(ra) # 80003048 <_ZL16safePrintMessagePKcPc>
        sem_signal(doneSem);
    8000344c:	01893503          	ld	a0,24(s2)
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	0b0080e7          	jalr	176(ra) # 80001500 <_Z10sem_signalP4_sem>
    }
    80003458:	01813083          	ld	ra,24(sp)
    8000345c:	01013403          	ld	s0,16(sp)
    80003460:	00813483          	ld	s1,8(sp)
    80003464:	00013903          	ld	s2,0(sp)
    80003468:	02010113          	addi	sp,sp,32
    8000346c:	00008067          	ret

0000000080003470 <_ZN7ThreadC3runEv>:
    void run() override {
    80003470:	fe010113          	addi	sp,sp,-32
    80003474:	00113c23          	sd	ra,24(sp)
    80003478:	00813823          	sd	s0,16(sp)
    8000347c:	00913423          	sd	s1,8(sp)
    80003480:	02010413          	addi	s0,sp,32
    80003484:	00050493          	mv	s1,a0
        char* msg1 = receive();
    80003488:	fffff097          	auipc	ra,0xfffff
    8000348c:	580080e7          	jalr	1408(ra) # 80002a08 <_ZN6Thread7receiveEv>
    80003490:	00050593          	mv	a1,a0
        safePrintMessage("C received first: ", msg1);
    80003494:	00006517          	auipc	a0,0x6
    80003498:	02450513          	addi	a0,a0,36 # 800094b8 <CONSOLE_STATUS+0x4a8>
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	bac080e7          	jalr	-1108(ra) # 80003048 <_ZL16safePrintMessagePKcPc>
        char* msg2 = receive();
    800034a4:	00048513          	mv	a0,s1
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	560080e7          	jalr	1376(ra) # 80002a08 <_ZN6Thread7receiveEv>
    800034b0:	00050593          	mv	a1,a0
        safePrintMessage("C received second: ", msg2);
    800034b4:	00006517          	auipc	a0,0x6
    800034b8:	01c50513          	addi	a0,a0,28 # 800094d0 <CONSOLE_STATUS+0x4c0>
    800034bc:	00000097          	auipc	ra,0x0
    800034c0:	b8c080e7          	jalr	-1140(ra) # 80003048 <_ZL16safePrintMessagePKcPc>
        char* msg3 = receive();
    800034c4:	00048513          	mv	a0,s1
    800034c8:	fffff097          	auipc	ra,0xfffff
    800034cc:	540080e7          	jalr	1344(ra) # 80002a08 <_ZN6Thread7receiveEv>
    800034d0:	00050593          	mv	a1,a0
        safePrintMessage("C received third: ", msg3);
    800034d4:	00006517          	auipc	a0,0x6
    800034d8:	01450513          	addi	a0,a0,20 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800034dc:	00000097          	auipc	ra,0x0
    800034e0:	b6c080e7          	jalr	-1172(ra) # 80003048 <_ZL16safePrintMessagePKcPc>
        threadB->send((char*)"C -> B: odgovor od C");
    800034e4:	00009497          	auipc	s1,0x9
    800034e8:	afc48493          	addi	s1,s1,-1284 # 8000bfe0 <_ZL8printSem>
    800034ec:	00006597          	auipc	a1,0x6
    800034f0:	01458593          	addi	a1,a1,20 # 80009500 <CONSOLE_STATUS+0x4f0>
    800034f4:	0084b503          	ld	a0,8(s1)
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	4e4080e7          	jalr	1252(ra) # 800029dc <_ZN6Thread4sendEPc>
        safePrint("C sent message to B\n");
    80003500:	00006517          	auipc	a0,0x6
    80003504:	01850513          	addi	a0,a0,24 # 80009518 <CONSOLE_STATUS+0x508>
    80003508:	00000097          	auipc	ra,0x0
    8000350c:	ae0080e7          	jalr	-1312(ra) # 80002fe8 <_ZL9safePrintPKc>
        threadA->send((char*)"C -> A: odgovor od C");
    80003510:	00006597          	auipc	a1,0x6
    80003514:	02058593          	addi	a1,a1,32 # 80009530 <CONSOLE_STATUS+0x520>
    80003518:	0204b503          	ld	a0,32(s1)
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	4c0080e7          	jalr	1216(ra) # 800029dc <_ZN6Thread4sendEPc>
        safePrint("C sent message to A\n");
    80003524:	00006517          	auipc	a0,0x6
    80003528:	02450513          	addi	a0,a0,36 # 80009548 <CONSOLE_STATUS+0x538>
    8000352c:	00000097          	auipc	ra,0x0
    80003530:	abc080e7          	jalr	-1348(ra) # 80002fe8 <_ZL9safePrintPKc>
        sem_signal(doneSem);
    80003534:	0184b503          	ld	a0,24(s1)
    80003538:	ffffe097          	auipc	ra,0xffffe
    8000353c:	fc8080e7          	jalr	-56(ra) # 80001500 <_Z10sem_signalP4_sem>
    }
    80003540:	01813083          	ld	ra,24(sp)
    80003544:	01013403          	ld	s0,16(sp)
    80003548:	00813483          	ld	s1,8(sp)
    8000354c:	02010113          	addi	sp,sp,32
    80003550:	00008067          	ret

0000000080003554 <_ZN7ThreadAD1Ev>:
class ThreadA : public Thread {
    80003554:	ff010113          	addi	sp,sp,-16
    80003558:	00113423          	sd	ra,8(sp)
    8000355c:	00813023          	sd	s0,0(sp)
    80003560:	01010413          	addi	s0,sp,16
    80003564:	00008797          	auipc	a5,0x8
    80003568:	7bc78793          	addi	a5,a5,1980 # 8000bd20 <_ZTV7ThreadA+0x10>
    8000356c:	00f53023          	sd	a5,0(a0)
    80003570:	fffff097          	auipc	ra,0xfffff
    80003574:	274080e7          	jalr	628(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80003578:	00813083          	ld	ra,8(sp)
    8000357c:	00013403          	ld	s0,0(sp)
    80003580:	01010113          	addi	sp,sp,16
    80003584:	00008067          	ret

0000000080003588 <_ZN7ThreadAD0Ev>:
    80003588:	fe010113          	addi	sp,sp,-32
    8000358c:	00113c23          	sd	ra,24(sp)
    80003590:	00813823          	sd	s0,16(sp)
    80003594:	00913423          	sd	s1,8(sp)
    80003598:	02010413          	addi	s0,sp,32
    8000359c:	00050493          	mv	s1,a0
    800035a0:	00008797          	auipc	a5,0x8
    800035a4:	78078793          	addi	a5,a5,1920 # 8000bd20 <_ZTV7ThreadA+0x10>
    800035a8:	00f53023          	sd	a5,0(a0)
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	238080e7          	jalr	568(ra) # 800027e4 <_ZN6ThreadD1Ev>
    800035b4:	00048513          	mv	a0,s1
    800035b8:	fffff097          	auipc	ra,0xfffff
    800035bc:	0c8080e7          	jalr	200(ra) # 80002680 <_ZdlPv>
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00813483          	ld	s1,8(sp)
    800035cc:	02010113          	addi	sp,sp,32
    800035d0:	00008067          	ret

00000000800035d4 <_ZN7ThreadBD1Ev>:
class ThreadB : public Thread {
    800035d4:	ff010113          	addi	sp,sp,-16
    800035d8:	00113423          	sd	ra,8(sp)
    800035dc:	00813023          	sd	s0,0(sp)
    800035e0:	01010413          	addi	s0,sp,16
    800035e4:	00008797          	auipc	a5,0x8
    800035e8:	76478793          	addi	a5,a5,1892 # 8000bd48 <_ZTV7ThreadB+0x10>
    800035ec:	00f53023          	sd	a5,0(a0)
    800035f0:	fffff097          	auipc	ra,0xfffff
    800035f4:	1f4080e7          	jalr	500(ra) # 800027e4 <_ZN6ThreadD1Ev>
    800035f8:	00813083          	ld	ra,8(sp)
    800035fc:	00013403          	ld	s0,0(sp)
    80003600:	01010113          	addi	sp,sp,16
    80003604:	00008067          	ret

0000000080003608 <_ZN7ThreadBD0Ev>:
    80003608:	fe010113          	addi	sp,sp,-32
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	00813823          	sd	s0,16(sp)
    80003614:	00913423          	sd	s1,8(sp)
    80003618:	02010413          	addi	s0,sp,32
    8000361c:	00050493          	mv	s1,a0
    80003620:	00008797          	auipc	a5,0x8
    80003624:	72878793          	addi	a5,a5,1832 # 8000bd48 <_ZTV7ThreadB+0x10>
    80003628:	00f53023          	sd	a5,0(a0)
    8000362c:	fffff097          	auipc	ra,0xfffff
    80003630:	1b8080e7          	jalr	440(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80003634:	00048513          	mv	a0,s1
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	048080e7          	jalr	72(ra) # 80002680 <_ZdlPv>
    80003640:	01813083          	ld	ra,24(sp)
    80003644:	01013403          	ld	s0,16(sp)
    80003648:	00813483          	ld	s1,8(sp)
    8000364c:	02010113          	addi	sp,sp,32
    80003650:	00008067          	ret

0000000080003654 <_ZN7ThreadCD1Ev>:
class ThreadC : public Thread {
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00113423          	sd	ra,8(sp)
    8000365c:	00813023          	sd	s0,0(sp)
    80003660:	01010413          	addi	s0,sp,16
    80003664:	00008797          	auipc	a5,0x8
    80003668:	70c78793          	addi	a5,a5,1804 # 8000bd70 <_ZTV7ThreadC+0x10>
    8000366c:	00f53023          	sd	a5,0(a0)
    80003670:	fffff097          	auipc	ra,0xfffff
    80003674:	174080e7          	jalr	372(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80003678:	00813083          	ld	ra,8(sp)
    8000367c:	00013403          	ld	s0,0(sp)
    80003680:	01010113          	addi	sp,sp,16
    80003684:	00008067          	ret

0000000080003688 <_ZN7ThreadCD0Ev>:
    80003688:	fe010113          	addi	sp,sp,-32
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00913423          	sd	s1,8(sp)
    80003698:	02010413          	addi	s0,sp,32
    8000369c:	00050493          	mv	s1,a0
    800036a0:	00008797          	auipc	a5,0x8
    800036a4:	6d078793          	addi	a5,a5,1744 # 8000bd70 <_ZTV7ThreadC+0x10>
    800036a8:	00f53023          	sd	a5,0(a0)
    800036ac:	fffff097          	auipc	ra,0xfffff
    800036b0:	138080e7          	jalr	312(ra) # 800027e4 <_ZN6ThreadD1Ev>
    800036b4:	00048513          	mv	a0,s1
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	fc8080e7          	jalr	-56(ra) # 80002680 <_ZdlPv>
    800036c0:	01813083          	ld	ra,24(sp)
    800036c4:	01013403          	ld	s0,16(sp)
    800036c8:	00813483          	ld	s1,8(sp)
    800036cc:	02010113          	addi	sp,sp,32
    800036d0:	00008067          	ret

00000000800036d4 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800036d4:	fe010113          	addi	sp,sp,-32
    800036d8:	00113c23          	sd	ra,24(sp)
    800036dc:	00813823          	sd	s0,16(sp)
    800036e0:	00913423          	sd	s1,8(sp)
    800036e4:	01213023          	sd	s2,0(sp)
    800036e8:	02010413          	addi	s0,sp,32
    800036ec:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800036f0:	00000913          	li	s2,0
    800036f4:	00c0006f          	j	80003700 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	c90080e7          	jalr	-880(ra) # 80001388 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	f08080e7          	jalr	-248(ra) # 80001608 <_Z4getcv>
    80003708:	0005059b          	sext.w	a1,a0
    8000370c:	01b00793          	li	a5,27
    80003710:	02f58a63          	beq	a1,a5,80003744 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003714:	0084b503          	ld	a0,8(s1)
    80003718:	00003097          	auipc	ra,0x3
    8000371c:	2ac080e7          	jalr	684(ra) # 800069c4 <_ZN6Buffer3putEi>
        i++;
    80003720:	0019071b          	addiw	a4,s2,1
    80003724:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003728:	0004a683          	lw	a3,0(s1)
    8000372c:	0026979b          	slliw	a5,a3,0x2
    80003730:	00d787bb          	addw	a5,a5,a3
    80003734:	0017979b          	slliw	a5,a5,0x1
    80003738:	02f767bb          	remw	a5,a4,a5
    8000373c:	fc0792e3          	bnez	a5,80003700 <_ZL16producerKeyboardPv+0x2c>
    80003740:	fb9ff06f          	j	800036f8 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003744:	00100793          	li	a5,1
    80003748:	00009717          	auipc	a4,0x9
    8000374c:	8cf72023          	sw	a5,-1856(a4) # 8000c008 <_ZL9threadEnd>
    data->buffer->put('!');
    80003750:	02100593          	li	a1,33
    80003754:	0084b503          	ld	a0,8(s1)
    80003758:	00003097          	auipc	ra,0x3
    8000375c:	26c080e7          	jalr	620(ra) # 800069c4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003760:	0104b503          	ld	a0,16(s1)
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	d9c080e7          	jalr	-612(ra) # 80001500 <_Z10sem_signalP4_sem>
}
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	00013903          	ld	s2,0(sp)
    8000377c:	02010113          	addi	sp,sp,32
    80003780:	00008067          	ret

0000000080003784 <_ZL8producerPv>:

static void producer(void *arg) {
    80003784:	fe010113          	addi	sp,sp,-32
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00913423          	sd	s1,8(sp)
    80003794:	01213023          	sd	s2,0(sp)
    80003798:	02010413          	addi	s0,sp,32
    8000379c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800037a0:	00000913          	li	s2,0
    800037a4:	00c0006f          	j	800037b0 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	be0080e7          	jalr	-1056(ra) # 80001388 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800037b0:	00009797          	auipc	a5,0x9
    800037b4:	8587a783          	lw	a5,-1960(a5) # 8000c008 <_ZL9threadEnd>
    800037b8:	02079e63          	bnez	a5,800037f4 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800037bc:	0004a583          	lw	a1,0(s1)
    800037c0:	0305859b          	addiw	a1,a1,48
    800037c4:	0084b503          	ld	a0,8(s1)
    800037c8:	00003097          	auipc	ra,0x3
    800037cc:	1fc080e7          	jalr	508(ra) # 800069c4 <_ZN6Buffer3putEi>
        i++;
    800037d0:	0019071b          	addiw	a4,s2,1
    800037d4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800037d8:	0004a683          	lw	a3,0(s1)
    800037dc:	0026979b          	slliw	a5,a3,0x2
    800037e0:	00d787bb          	addw	a5,a5,a3
    800037e4:	0017979b          	slliw	a5,a5,0x1
    800037e8:	02f767bb          	remw	a5,a4,a5
    800037ec:	fc0792e3          	bnez	a5,800037b0 <_ZL8producerPv+0x2c>
    800037f0:	fb9ff06f          	j	800037a8 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800037f4:	0104b503          	ld	a0,16(s1)
    800037f8:	ffffe097          	auipc	ra,0xffffe
    800037fc:	d08080e7          	jalr	-760(ra) # 80001500 <_Z10sem_signalP4_sem>
}
    80003800:	01813083          	ld	ra,24(sp)
    80003804:	01013403          	ld	s0,16(sp)
    80003808:	00813483          	ld	s1,8(sp)
    8000380c:	00013903          	ld	s2,0(sp)
    80003810:	02010113          	addi	sp,sp,32
    80003814:	00008067          	ret

0000000080003818 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003818:	fd010113          	addi	sp,sp,-48
    8000381c:	02113423          	sd	ra,40(sp)
    80003820:	02813023          	sd	s0,32(sp)
    80003824:	00913c23          	sd	s1,24(sp)
    80003828:	01213823          	sd	s2,16(sp)
    8000382c:	01313423          	sd	s3,8(sp)
    80003830:	03010413          	addi	s0,sp,48
    80003834:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003838:	00000993          	li	s3,0
    8000383c:	01c0006f          	j	80003858 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003840:	ffffe097          	auipc	ra,0xffffe
    80003844:	b48080e7          	jalr	-1208(ra) # 80001388 <_Z15thread_dispatchv>
    80003848:	0500006f          	j	80003898 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000384c:	00a00513          	li	a0,10
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	df8080e7          	jalr	-520(ra) # 80001648 <_Z4putcc>
    while (!threadEnd) {
    80003858:	00008797          	auipc	a5,0x8
    8000385c:	7b07a783          	lw	a5,1968(a5) # 8000c008 <_ZL9threadEnd>
    80003860:	06079063          	bnez	a5,800038c0 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003864:	00893503          	ld	a0,8(s2)
    80003868:	00003097          	auipc	ra,0x3
    8000386c:	1ec080e7          	jalr	492(ra) # 80006a54 <_ZN6Buffer3getEv>
        i++;
    80003870:	0019849b          	addiw	s1,s3,1
    80003874:	0004899b          	sext.w	s3,s1
        putc(key);
    80003878:	0ff57513          	andi	a0,a0,255
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	dcc080e7          	jalr	-564(ra) # 80001648 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003884:	00092703          	lw	a4,0(s2)
    80003888:	0027179b          	slliw	a5,a4,0x2
    8000388c:	00e787bb          	addw	a5,a5,a4
    80003890:	02f4e7bb          	remw	a5,s1,a5
    80003894:	fa0786e3          	beqz	a5,80003840 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003898:	05000793          	li	a5,80
    8000389c:	02f4e4bb          	remw	s1,s1,a5
    800038a0:	fa049ce3          	bnez	s1,80003858 <_ZL8consumerPv+0x40>
    800038a4:	fa9ff06f          	j	8000384c <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800038a8:	00893503          	ld	a0,8(s2)
    800038ac:	00003097          	auipc	ra,0x3
    800038b0:	1a8080e7          	jalr	424(ra) # 80006a54 <_ZN6Buffer3getEv>
        putc(key);
    800038b4:	0ff57513          	andi	a0,a0,255
    800038b8:	ffffe097          	auipc	ra,0xffffe
    800038bc:	d90080e7          	jalr	-624(ra) # 80001648 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800038c0:	00893503          	ld	a0,8(s2)
    800038c4:	00003097          	auipc	ra,0x3
    800038c8:	21c080e7          	jalr	540(ra) # 80006ae0 <_ZN6Buffer6getCntEv>
    800038cc:	fca04ee3          	bgtz	a0,800038a8 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800038d0:	01093503          	ld	a0,16(s2)
    800038d4:	ffffe097          	auipc	ra,0xffffe
    800038d8:	c2c080e7          	jalr	-980(ra) # 80001500 <_Z10sem_signalP4_sem>
}
    800038dc:	02813083          	ld	ra,40(sp)
    800038e0:	02013403          	ld	s0,32(sp)
    800038e4:	01813483          	ld	s1,24(sp)
    800038e8:	01013903          	ld	s2,16(sp)
    800038ec:	00813983          	ld	s3,8(sp)
    800038f0:	03010113          	addi	sp,sp,48
    800038f4:	00008067          	ret

00000000800038f8 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800038f8:	f9010113          	addi	sp,sp,-112
    800038fc:	06113423          	sd	ra,104(sp)
    80003900:	06813023          	sd	s0,96(sp)
    80003904:	04913c23          	sd	s1,88(sp)
    80003908:	05213823          	sd	s2,80(sp)
    8000390c:	05313423          	sd	s3,72(sp)
    80003910:	05413023          	sd	s4,64(sp)
    80003914:	03513c23          	sd	s5,56(sp)
    80003918:	03613823          	sd	s6,48(sp)
    8000391c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003920:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003924:	00006517          	auipc	a0,0x6
    80003928:	c3c50513          	addi	a0,a0,-964 # 80009560 <CONSOLE_STATUS+0x550>
    8000392c:	00002097          	auipc	ra,0x2
    80003930:	220080e7          	jalr	544(ra) # 80005b4c <_Z11printStringPKc>
    getString(input, 30);
    80003934:	01e00593          	li	a1,30
    80003938:	fa040493          	addi	s1,s0,-96
    8000393c:	00048513          	mv	a0,s1
    80003940:	00002097          	auipc	ra,0x2
    80003944:	294080e7          	jalr	660(ra) # 80005bd4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003948:	00048513          	mv	a0,s1
    8000394c:	00002097          	auipc	ra,0x2
    80003950:	360080e7          	jalr	864(ra) # 80005cac <_Z11stringToIntPKc>
    80003954:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003958:	00006517          	auipc	a0,0x6
    8000395c:	c2850513          	addi	a0,a0,-984 # 80009580 <CONSOLE_STATUS+0x570>
    80003960:	00002097          	auipc	ra,0x2
    80003964:	1ec080e7          	jalr	492(ra) # 80005b4c <_Z11printStringPKc>
    getString(input, 30);
    80003968:	01e00593          	li	a1,30
    8000396c:	00048513          	mv	a0,s1
    80003970:	00002097          	auipc	ra,0x2
    80003974:	264080e7          	jalr	612(ra) # 80005bd4 <_Z9getStringPci>
    n = stringToInt(input);
    80003978:	00048513          	mv	a0,s1
    8000397c:	00002097          	auipc	ra,0x2
    80003980:	330080e7          	jalr	816(ra) # 80005cac <_Z11stringToIntPKc>
    80003984:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003988:	00006517          	auipc	a0,0x6
    8000398c:	c1850513          	addi	a0,a0,-1000 # 800095a0 <CONSOLE_STATUS+0x590>
    80003990:	00002097          	auipc	ra,0x2
    80003994:	1bc080e7          	jalr	444(ra) # 80005b4c <_Z11printStringPKc>
    80003998:	00000613          	li	a2,0
    8000399c:	00a00593          	li	a1,10
    800039a0:	00090513          	mv	a0,s2
    800039a4:	00002097          	auipc	ra,0x2
    800039a8:	358080e7          	jalr	856(ra) # 80005cfc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800039ac:	00006517          	auipc	a0,0x6
    800039b0:	c0c50513          	addi	a0,a0,-1012 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800039b4:	00002097          	auipc	ra,0x2
    800039b8:	198080e7          	jalr	408(ra) # 80005b4c <_Z11printStringPKc>
    800039bc:	00000613          	li	a2,0
    800039c0:	00a00593          	li	a1,10
    800039c4:	00048513          	mv	a0,s1
    800039c8:	00002097          	auipc	ra,0x2
    800039cc:	334080e7          	jalr	820(ra) # 80005cfc <_Z8printIntiii>
    printString(".\n");
    800039d0:	00006517          	auipc	a0,0x6
    800039d4:	c0050513          	addi	a0,a0,-1024 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800039d8:	00002097          	auipc	ra,0x2
    800039dc:	174080e7          	jalr	372(ra) # 80005b4c <_Z11printStringPKc>
    if(threadNum > n) {
    800039e0:	0324c463          	blt	s1,s2,80003a08 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800039e4:	03205c63          	blez	s2,80003a1c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800039e8:	03800513          	li	a0,56
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	c44080e7          	jalr	-956(ra) # 80002630 <_Znwm>
    800039f4:	00050a13          	mv	s4,a0
    800039f8:	00048593          	mv	a1,s1
    800039fc:	00003097          	auipc	ra,0x3
    80003a00:	f2c080e7          	jalr	-212(ra) # 80006928 <_ZN6BufferC1Ei>
    80003a04:	0300006f          	j	80003a34 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003a08:	00006517          	auipc	a0,0x6
    80003a0c:	bd050513          	addi	a0,a0,-1072 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80003a10:	00002097          	auipc	ra,0x2
    80003a14:	13c080e7          	jalr	316(ra) # 80005b4c <_Z11printStringPKc>
        return;
    80003a18:	0140006f          	j	80003a2c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003a1c:	00006517          	auipc	a0,0x6
    80003a20:	bfc50513          	addi	a0,a0,-1028 # 80009618 <CONSOLE_STATUS+0x608>
    80003a24:	00002097          	auipc	ra,0x2
    80003a28:	128080e7          	jalr	296(ra) # 80005b4c <_Z11printStringPKc>
        return;
    80003a2c:	000b0113          	mv	sp,s6
    80003a30:	1500006f          	j	80003b80 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003a34:	00000593          	li	a1,0
    80003a38:	00008517          	auipc	a0,0x8
    80003a3c:	5d850513          	addi	a0,a0,1496 # 8000c010 <_ZL10waitForAll>
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	9fc080e7          	jalr	-1540(ra) # 8000143c <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    80003a48:	00391793          	slli	a5,s2,0x3
    80003a4c:	00f78793          	addi	a5,a5,15
    80003a50:	ff07f793          	andi	a5,a5,-16
    80003a54:	40f10133          	sub	sp,sp,a5
    80003a58:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003a5c:	0019071b          	addiw	a4,s2,1
    80003a60:	00171793          	slli	a5,a4,0x1
    80003a64:	00e787b3          	add	a5,a5,a4
    80003a68:	00379793          	slli	a5,a5,0x3
    80003a6c:	00f78793          	addi	a5,a5,15
    80003a70:	ff07f793          	andi	a5,a5,-16
    80003a74:	40f10133          	sub	sp,sp,a5
    80003a78:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003a7c:	00191613          	slli	a2,s2,0x1
    80003a80:	012607b3          	add	a5,a2,s2
    80003a84:	00379793          	slli	a5,a5,0x3
    80003a88:	00f987b3          	add	a5,s3,a5
    80003a8c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003a90:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003a94:	00008717          	auipc	a4,0x8
    80003a98:	57c73703          	ld	a4,1404(a4) # 8000c010 <_ZL10waitForAll>
    80003a9c:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003aa0:	00078613          	mv	a2,a5
    80003aa4:	00000597          	auipc	a1,0x0
    80003aa8:	d7458593          	addi	a1,a1,-652 # 80003818 <_ZL8consumerPv>
    80003aac:	f9840513          	addi	a0,s0,-104
    80003ab0:	ffffd097          	auipc	ra,0xffffd
    80003ab4:	7d4080e7          	jalr	2004(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003ab8:	00000493          	li	s1,0
    80003abc:	0280006f          	j	80003ae4 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003ac0:	00000597          	auipc	a1,0x0
    80003ac4:	c1458593          	addi	a1,a1,-1004 # 800036d4 <_ZL16producerKeyboardPv>
                      data + i);
    80003ac8:	00179613          	slli	a2,a5,0x1
    80003acc:	00f60633          	add	a2,a2,a5
    80003ad0:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003ad4:	00c98633          	add	a2,s3,a2
    80003ad8:	ffffd097          	auipc	ra,0xffffd
    80003adc:	7ac080e7          	jalr	1964(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003ae0:	0014849b          	addiw	s1,s1,1
    80003ae4:	0524d263          	bge	s1,s2,80003b28 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003ae8:	00149793          	slli	a5,s1,0x1
    80003aec:	009787b3          	add	a5,a5,s1
    80003af0:	00379793          	slli	a5,a5,0x3
    80003af4:	00f987b3          	add	a5,s3,a5
    80003af8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003afc:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80003b00:	00008717          	auipc	a4,0x8
    80003b04:	51073703          	ld	a4,1296(a4) # 8000c010 <_ZL10waitForAll>
    80003b08:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003b0c:	00048793          	mv	a5,s1
    80003b10:	00349513          	slli	a0,s1,0x3
    80003b14:	00aa8533          	add	a0,s5,a0
    80003b18:	fa9054e3          	blez	s1,80003ac0 <_Z22producerConsumer_C_APIv+0x1c8>
    80003b1c:	00000597          	auipc	a1,0x0
    80003b20:	c6858593          	addi	a1,a1,-920 # 80003784 <_ZL8producerPv>
    80003b24:	fa5ff06f          	j	80003ac8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003b28:	ffffe097          	auipc	ra,0xffffe
    80003b2c:	860080e7          	jalr	-1952(ra) # 80001388 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003b30:	00000493          	li	s1,0
    80003b34:	00994e63          	blt	s2,s1,80003b50 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003b38:	00008517          	auipc	a0,0x8
    80003b3c:	4d853503          	ld	a0,1240(a0) # 8000c010 <_ZL10waitForAll>
    80003b40:	ffffe097          	auipc	ra,0xffffe
    80003b44:	980080e7          	jalr	-1664(ra) # 800014c0 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    80003b48:	0014849b          	addiw	s1,s1,1
    80003b4c:	fe9ff06f          	j	80003b34 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003b50:	00008517          	auipc	a0,0x8
    80003b54:	4c053503          	ld	a0,1216(a0) # 8000c010 <_ZL10waitForAll>
    80003b58:	ffffe097          	auipc	ra,0xffffe
    80003b5c:	928080e7          	jalr	-1752(ra) # 80001480 <_Z9sem_closeP4_sem>
    delete buffer;
    80003b60:	000a0e63          	beqz	s4,80003b7c <_Z22producerConsumer_C_APIv+0x284>
    80003b64:	000a0513          	mv	a0,s4
    80003b68:	00003097          	auipc	ra,0x3
    80003b6c:	000080e7          	jalr	ra # 80006b68 <_ZN6BufferD1Ev>
    80003b70:	000a0513          	mv	a0,s4
    80003b74:	fffff097          	auipc	ra,0xfffff
    80003b78:	b0c080e7          	jalr	-1268(ra) # 80002680 <_ZdlPv>
    80003b7c:	000b0113          	mv	sp,s6

}
    80003b80:	f9040113          	addi	sp,s0,-112
    80003b84:	06813083          	ld	ra,104(sp)
    80003b88:	06013403          	ld	s0,96(sp)
    80003b8c:	05813483          	ld	s1,88(sp)
    80003b90:	05013903          	ld	s2,80(sp)
    80003b94:	04813983          	ld	s3,72(sp)
    80003b98:	04013a03          	ld	s4,64(sp)
    80003b9c:	03813a83          	ld	s5,56(sp)
    80003ba0:	03013b03          	ld	s6,48(sp)
    80003ba4:	07010113          	addi	sp,sp,112
    80003ba8:	00008067          	ret
    80003bac:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003bb0:	000a0513          	mv	a0,s4
    80003bb4:	fffff097          	auipc	ra,0xfffff
    80003bb8:	acc080e7          	jalr	-1332(ra) # 80002680 <_ZdlPv>
    80003bbc:	00048513          	mv	a0,s1
    80003bc0:	00009097          	auipc	ra,0x9
    80003bc4:	568080e7          	jalr	1384(ra) # 8000d128 <_Unwind_Resume>

0000000080003bc8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003bc8:	fe010113          	addi	sp,sp,-32
    80003bcc:	00113c23          	sd	ra,24(sp)
    80003bd0:	00813823          	sd	s0,16(sp)
    80003bd4:	00913423          	sd	s1,8(sp)
    80003bd8:	01213023          	sd	s2,0(sp)
    80003bdc:	02010413          	addi	s0,sp,32
    80003be0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003be4:	00100793          	li	a5,1
    80003be8:	02a7f863          	bgeu	a5,a0,80003c18 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003bec:	00a00793          	li	a5,10
    80003bf0:	02f577b3          	remu	a5,a0,a5
    80003bf4:	02078e63          	beqz	a5,80003c30 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003bf8:	fff48513          	addi	a0,s1,-1
    80003bfc:	00000097          	auipc	ra,0x0
    80003c00:	fcc080e7          	jalr	-52(ra) # 80003bc8 <_ZL9fibonaccim>
    80003c04:	00050913          	mv	s2,a0
    80003c08:	ffe48513          	addi	a0,s1,-2
    80003c0c:	00000097          	auipc	ra,0x0
    80003c10:	fbc080e7          	jalr	-68(ra) # 80003bc8 <_ZL9fibonaccim>
    80003c14:	00a90533          	add	a0,s2,a0
}
    80003c18:	01813083          	ld	ra,24(sp)
    80003c1c:	01013403          	ld	s0,16(sp)
    80003c20:	00813483          	ld	s1,8(sp)
    80003c24:	00013903          	ld	s2,0(sp)
    80003c28:	02010113          	addi	sp,sp,32
    80003c2c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003c30:	ffffd097          	auipc	ra,0xffffd
    80003c34:	758080e7          	jalr	1880(ra) # 80001388 <_Z15thread_dispatchv>
    80003c38:	fc1ff06f          	j	80003bf8 <_ZL9fibonaccim+0x30>

0000000080003c3c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00113c23          	sd	ra,24(sp)
    80003c44:	00813823          	sd	s0,16(sp)
    80003c48:	00913423          	sd	s1,8(sp)
    80003c4c:	01213023          	sd	s2,0(sp)
    80003c50:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003c54:	00000913          	li	s2,0
    80003c58:	0380006f          	j	80003c90 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003c5c:	ffffd097          	auipc	ra,0xffffd
    80003c60:	72c080e7          	jalr	1836(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003c64:	00148493          	addi	s1,s1,1
    80003c68:	000027b7          	lui	a5,0x2
    80003c6c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003c70:	0097ee63          	bltu	a5,s1,80003c8c <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003c74:	00000713          	li	a4,0
    80003c78:	000077b7          	lui	a5,0x7
    80003c7c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003c80:	fce7eee3          	bltu	a5,a4,80003c5c <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003c84:	00170713          	addi	a4,a4,1
    80003c88:	ff1ff06f          	j	80003c78 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003c8c:	00190913          	addi	s2,s2,1
    80003c90:	00900793          	li	a5,9
    80003c94:	0527e063          	bltu	a5,s2,80003cd4 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003c98:	00006517          	auipc	a0,0x6
    80003c9c:	9b050513          	addi	a0,a0,-1616 # 80009648 <CONSOLE_STATUS+0x638>
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	eac080e7          	jalr	-340(ra) # 80005b4c <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	0009051b          	sext.w	a0,s2
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	048080e7          	jalr	72(ra) # 80005cfc <_Z8printIntiii>
    80003cbc:	00005517          	auipc	a0,0x5
    80003cc0:	5e450513          	addi	a0,a0,1508 # 800092a0 <CONSOLE_STATUS+0x290>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	e88080e7          	jalr	-376(ra) # 80005b4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ccc:	00000493          	li	s1,0
    80003cd0:	f99ff06f          	j	80003c68 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003cd4:	00006517          	auipc	a0,0x6
    80003cd8:	97c50513          	addi	a0,a0,-1668 # 80009650 <CONSOLE_STATUS+0x640>
    80003cdc:	00002097          	auipc	ra,0x2
    80003ce0:	e70080e7          	jalr	-400(ra) # 80005b4c <_Z11printStringPKc>
    finishedA = true;
    80003ce4:	00100793          	li	a5,1
    80003ce8:	00008717          	auipc	a4,0x8
    80003cec:	32f70823          	sb	a5,816(a4) # 8000c018 <_ZL9finishedA>
}
    80003cf0:	01813083          	ld	ra,24(sp)
    80003cf4:	01013403          	ld	s0,16(sp)
    80003cf8:	00813483          	ld	s1,8(sp)
    80003cfc:	00013903          	ld	s2,0(sp)
    80003d00:	02010113          	addi	sp,sp,32
    80003d04:	00008067          	ret

0000000080003d08 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003d08:	fe010113          	addi	sp,sp,-32
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	00813823          	sd	s0,16(sp)
    80003d14:	00913423          	sd	s1,8(sp)
    80003d18:	01213023          	sd	s2,0(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003d20:	00000913          	li	s2,0
    80003d24:	0380006f          	j	80003d5c <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003d28:	ffffd097          	auipc	ra,0xffffd
    80003d2c:	660080e7          	jalr	1632(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003d30:	00148493          	addi	s1,s1,1
    80003d34:	000027b7          	lui	a5,0x2
    80003d38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003d3c:	0097ee63          	bltu	a5,s1,80003d58 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003d40:	00000713          	li	a4,0
    80003d44:	000077b7          	lui	a5,0x7
    80003d48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003d4c:	fce7eee3          	bltu	a5,a4,80003d28 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003d50:	00170713          	addi	a4,a4,1
    80003d54:	ff1ff06f          	j	80003d44 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003d58:	00190913          	addi	s2,s2,1
    80003d5c:	00f00793          	li	a5,15
    80003d60:	0527e063          	bltu	a5,s2,80003da0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003d64:	00006517          	auipc	a0,0x6
    80003d68:	8fc50513          	addi	a0,a0,-1796 # 80009660 <CONSOLE_STATUS+0x650>
    80003d6c:	00002097          	auipc	ra,0x2
    80003d70:	de0080e7          	jalr	-544(ra) # 80005b4c <_Z11printStringPKc>
    80003d74:	00000613          	li	a2,0
    80003d78:	00a00593          	li	a1,10
    80003d7c:	0009051b          	sext.w	a0,s2
    80003d80:	00002097          	auipc	ra,0x2
    80003d84:	f7c080e7          	jalr	-132(ra) # 80005cfc <_Z8printIntiii>
    80003d88:	00005517          	auipc	a0,0x5
    80003d8c:	51850513          	addi	a0,a0,1304 # 800092a0 <CONSOLE_STATUS+0x290>
    80003d90:	00002097          	auipc	ra,0x2
    80003d94:	dbc080e7          	jalr	-580(ra) # 80005b4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003d98:	00000493          	li	s1,0
    80003d9c:	f99ff06f          	j	80003d34 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003da0:	00006517          	auipc	a0,0x6
    80003da4:	8c850513          	addi	a0,a0,-1848 # 80009668 <CONSOLE_STATUS+0x658>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	da4080e7          	jalr	-604(ra) # 80005b4c <_Z11printStringPKc>
    finishedB = true;
    80003db0:	00100793          	li	a5,1
    80003db4:	00008717          	auipc	a4,0x8
    80003db8:	26f702a3          	sb	a5,613(a4) # 8000c019 <_ZL9finishedB>
    thread_dispatch();
    80003dbc:	ffffd097          	auipc	ra,0xffffd
    80003dc0:	5cc080e7          	jalr	1484(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003dc4:	01813083          	ld	ra,24(sp)
    80003dc8:	01013403          	ld	s0,16(sp)
    80003dcc:	00813483          	ld	s1,8(sp)
    80003dd0:	00013903          	ld	s2,0(sp)
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00008067          	ret

0000000080003ddc <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003ddc:	fe010113          	addi	sp,sp,-32
    80003de0:	00113c23          	sd	ra,24(sp)
    80003de4:	00813823          	sd	s0,16(sp)
    80003de8:	00913423          	sd	s1,8(sp)
    80003dec:	01213023          	sd	s2,0(sp)
    80003df0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003df4:	00000493          	li	s1,0
    80003df8:	0400006f          	j	80003e38 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003dfc:	00006517          	auipc	a0,0x6
    80003e00:	87c50513          	addi	a0,a0,-1924 # 80009678 <CONSOLE_STATUS+0x668>
    80003e04:	00002097          	auipc	ra,0x2
    80003e08:	d48080e7          	jalr	-696(ra) # 80005b4c <_Z11printStringPKc>
    80003e0c:	00000613          	li	a2,0
    80003e10:	00a00593          	li	a1,10
    80003e14:	00048513          	mv	a0,s1
    80003e18:	00002097          	auipc	ra,0x2
    80003e1c:	ee4080e7          	jalr	-284(ra) # 80005cfc <_Z8printIntiii>
    80003e20:	00005517          	auipc	a0,0x5
    80003e24:	48050513          	addi	a0,a0,1152 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e28:	00002097          	auipc	ra,0x2
    80003e2c:	d24080e7          	jalr	-732(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003e30:	0014849b          	addiw	s1,s1,1
    80003e34:	0ff4f493          	andi	s1,s1,255
    80003e38:	00200793          	li	a5,2
    80003e3c:	fc97f0e3          	bgeu	a5,s1,80003dfc <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003e40:	00006517          	auipc	a0,0x6
    80003e44:	84050513          	addi	a0,a0,-1984 # 80009680 <CONSOLE_STATUS+0x670>
    80003e48:	00002097          	auipc	ra,0x2
    80003e4c:	d04080e7          	jalr	-764(ra) # 80005b4c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003e50:	00700313          	li	t1,7
    thread_dispatch();
    80003e54:	ffffd097          	auipc	ra,0xffffd
    80003e58:	534080e7          	jalr	1332(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003e5c:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003e60:	00006517          	auipc	a0,0x6
    80003e64:	83050513          	addi	a0,a0,-2000 # 80009690 <CONSOLE_STATUS+0x680>
    80003e68:	00002097          	auipc	ra,0x2
    80003e6c:	ce4080e7          	jalr	-796(ra) # 80005b4c <_Z11printStringPKc>
    80003e70:	00000613          	li	a2,0
    80003e74:	00a00593          	li	a1,10
    80003e78:	0009051b          	sext.w	a0,s2
    80003e7c:	00002097          	auipc	ra,0x2
    80003e80:	e80080e7          	jalr	-384(ra) # 80005cfc <_Z8printIntiii>
    80003e84:	00005517          	auipc	a0,0x5
    80003e88:	41c50513          	addi	a0,a0,1052 # 800092a0 <CONSOLE_STATUS+0x290>
    80003e8c:	00002097          	auipc	ra,0x2
    80003e90:	cc0080e7          	jalr	-832(ra) # 80005b4c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003e94:	00c00513          	li	a0,12
    80003e98:	00000097          	auipc	ra,0x0
    80003e9c:	d30080e7          	jalr	-720(ra) # 80003bc8 <_ZL9fibonaccim>
    80003ea0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003ea4:	00005517          	auipc	a0,0x5
    80003ea8:	7f450513          	addi	a0,a0,2036 # 80009698 <CONSOLE_STATUS+0x688>
    80003eac:	00002097          	auipc	ra,0x2
    80003eb0:	ca0080e7          	jalr	-864(ra) # 80005b4c <_Z11printStringPKc>
    80003eb4:	00000613          	li	a2,0
    80003eb8:	00a00593          	li	a1,10
    80003ebc:	0009051b          	sext.w	a0,s2
    80003ec0:	00002097          	auipc	ra,0x2
    80003ec4:	e3c080e7          	jalr	-452(ra) # 80005cfc <_Z8printIntiii>
    80003ec8:	00005517          	auipc	a0,0x5
    80003ecc:	3d850513          	addi	a0,a0,984 # 800092a0 <CONSOLE_STATUS+0x290>
    80003ed0:	00002097          	auipc	ra,0x2
    80003ed4:	c7c080e7          	jalr	-900(ra) # 80005b4c <_Z11printStringPKc>
    80003ed8:	0400006f          	j	80003f18 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003edc:	00005517          	auipc	a0,0x5
    80003ee0:	79c50513          	addi	a0,a0,1948 # 80009678 <CONSOLE_STATUS+0x668>
    80003ee4:	00002097          	auipc	ra,0x2
    80003ee8:	c68080e7          	jalr	-920(ra) # 80005b4c <_Z11printStringPKc>
    80003eec:	00000613          	li	a2,0
    80003ef0:	00a00593          	li	a1,10
    80003ef4:	00048513          	mv	a0,s1
    80003ef8:	00002097          	auipc	ra,0x2
    80003efc:	e04080e7          	jalr	-508(ra) # 80005cfc <_Z8printIntiii>
    80003f00:	00005517          	auipc	a0,0x5
    80003f04:	3a050513          	addi	a0,a0,928 # 800092a0 <CONSOLE_STATUS+0x290>
    80003f08:	00002097          	auipc	ra,0x2
    80003f0c:	c44080e7          	jalr	-956(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003f10:	0014849b          	addiw	s1,s1,1
    80003f14:	0ff4f493          	andi	s1,s1,255
    80003f18:	00500793          	li	a5,5
    80003f1c:	fc97f0e3          	bgeu	a5,s1,80003edc <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003f20:	00005517          	auipc	a0,0x5
    80003f24:	73050513          	addi	a0,a0,1840 # 80009650 <CONSOLE_STATUS+0x640>
    80003f28:	00002097          	auipc	ra,0x2
    80003f2c:	c24080e7          	jalr	-988(ra) # 80005b4c <_Z11printStringPKc>
    finishedC = true;
    80003f30:	00100793          	li	a5,1
    80003f34:	00008717          	auipc	a4,0x8
    80003f38:	0ef70323          	sb	a5,230(a4) # 8000c01a <_ZL9finishedC>
    thread_dispatch();
    80003f3c:	ffffd097          	auipc	ra,0xffffd
    80003f40:	44c080e7          	jalr	1100(ra) # 80001388 <_Z15thread_dispatchv>
}
    80003f44:	01813083          	ld	ra,24(sp)
    80003f48:	01013403          	ld	s0,16(sp)
    80003f4c:	00813483          	ld	s1,8(sp)
    80003f50:	00013903          	ld	s2,0(sp)
    80003f54:	02010113          	addi	sp,sp,32
    80003f58:	00008067          	ret

0000000080003f5c <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00113c23          	sd	ra,24(sp)
    80003f64:	00813823          	sd	s0,16(sp)
    80003f68:	00913423          	sd	s1,8(sp)
    80003f6c:	01213023          	sd	s2,0(sp)
    80003f70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003f74:	00a00493          	li	s1,10
    80003f78:	0400006f          	j	80003fb8 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003f7c:	00005517          	auipc	a0,0x5
    80003f80:	72c50513          	addi	a0,a0,1836 # 800096a8 <CONSOLE_STATUS+0x698>
    80003f84:	00002097          	auipc	ra,0x2
    80003f88:	bc8080e7          	jalr	-1080(ra) # 80005b4c <_Z11printStringPKc>
    80003f8c:	00000613          	li	a2,0
    80003f90:	00a00593          	li	a1,10
    80003f94:	00048513          	mv	a0,s1
    80003f98:	00002097          	auipc	ra,0x2
    80003f9c:	d64080e7          	jalr	-668(ra) # 80005cfc <_Z8printIntiii>
    80003fa0:	00005517          	auipc	a0,0x5
    80003fa4:	30050513          	addi	a0,a0,768 # 800092a0 <CONSOLE_STATUS+0x290>
    80003fa8:	00002097          	auipc	ra,0x2
    80003fac:	ba4080e7          	jalr	-1116(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003fb0:	0014849b          	addiw	s1,s1,1
    80003fb4:	0ff4f493          	andi	s1,s1,255
    80003fb8:	00c00793          	li	a5,12
    80003fbc:	fc97f0e3          	bgeu	a5,s1,80003f7c <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003fc0:	00005517          	auipc	a0,0x5
    80003fc4:	6f050513          	addi	a0,a0,1776 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80003fc8:	00002097          	auipc	ra,0x2
    80003fcc:	b84080e7          	jalr	-1148(ra) # 80005b4c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003fd0:	00500313          	li	t1,5
    thread_dispatch();
    80003fd4:	ffffd097          	auipc	ra,0xffffd
    80003fd8:	3b4080e7          	jalr	948(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003fdc:	01000513          	li	a0,16
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	be8080e7          	jalr	-1048(ra) # 80003bc8 <_ZL9fibonaccim>
    80003fe8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003fec:	00005517          	auipc	a0,0x5
    80003ff0:	6d450513          	addi	a0,a0,1748 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80003ff4:	00002097          	auipc	ra,0x2
    80003ff8:	b58080e7          	jalr	-1192(ra) # 80005b4c <_Z11printStringPKc>
    80003ffc:	00000613          	li	a2,0
    80004000:	00a00593          	li	a1,10
    80004004:	0009051b          	sext.w	a0,s2
    80004008:	00002097          	auipc	ra,0x2
    8000400c:	cf4080e7          	jalr	-780(ra) # 80005cfc <_Z8printIntiii>
    80004010:	00005517          	auipc	a0,0x5
    80004014:	29050513          	addi	a0,a0,656 # 800092a0 <CONSOLE_STATUS+0x290>
    80004018:	00002097          	auipc	ra,0x2
    8000401c:	b34080e7          	jalr	-1228(ra) # 80005b4c <_Z11printStringPKc>
    80004020:	0400006f          	j	80004060 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004024:	00005517          	auipc	a0,0x5
    80004028:	68450513          	addi	a0,a0,1668 # 800096a8 <CONSOLE_STATUS+0x698>
    8000402c:	00002097          	auipc	ra,0x2
    80004030:	b20080e7          	jalr	-1248(ra) # 80005b4c <_Z11printStringPKc>
    80004034:	00000613          	li	a2,0
    80004038:	00a00593          	li	a1,10
    8000403c:	00048513          	mv	a0,s1
    80004040:	00002097          	auipc	ra,0x2
    80004044:	cbc080e7          	jalr	-836(ra) # 80005cfc <_Z8printIntiii>
    80004048:	00005517          	auipc	a0,0x5
    8000404c:	25850513          	addi	a0,a0,600 # 800092a0 <CONSOLE_STATUS+0x290>
    80004050:	00002097          	auipc	ra,0x2
    80004054:	afc080e7          	jalr	-1284(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004058:	0014849b          	addiw	s1,s1,1
    8000405c:	0ff4f493          	andi	s1,s1,255
    80004060:	00f00793          	li	a5,15
    80004064:	fc97f0e3          	bgeu	a5,s1,80004024 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80004068:	00005517          	auipc	a0,0x5
    8000406c:	66850513          	addi	a0,a0,1640 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80004070:	00002097          	auipc	ra,0x2
    80004074:	adc080e7          	jalr	-1316(ra) # 80005b4c <_Z11printStringPKc>
    finishedD = true;
    80004078:	00100793          	li	a5,1
    8000407c:	00008717          	auipc	a4,0x8
    80004080:	f8f70fa3          	sb	a5,-97(a4) # 8000c01b <_ZL9finishedD>
    thread_dispatch();
    80004084:	ffffd097          	auipc	ra,0xffffd
    80004088:	304080e7          	jalr	772(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000408c:	01813083          	ld	ra,24(sp)
    80004090:	01013403          	ld	s0,16(sp)
    80004094:	00813483          	ld	s1,8(sp)
    80004098:	00013903          	ld	s2,0(sp)
    8000409c:	02010113          	addi	sp,sp,32
    800040a0:	00008067          	ret

00000000800040a4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800040a4:	fc010113          	addi	sp,sp,-64
    800040a8:	02113c23          	sd	ra,56(sp)
    800040ac:	02813823          	sd	s0,48(sp)
    800040b0:	02913423          	sd	s1,40(sp)
    800040b4:	03213023          	sd	s2,32(sp)
    800040b8:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800040bc:	02000513          	li	a0,32
    800040c0:	ffffe097          	auipc	ra,0xffffe
    800040c4:	570080e7          	jalr	1392(ra) # 80002630 <_Znwm>
    800040c8:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800040cc:	fffff097          	auipc	ra,0xfffff
    800040d0:	83c080e7          	jalr	-1988(ra) # 80002908 <_ZN6ThreadC1Ev>
    800040d4:	00008797          	auipc	a5,0x8
    800040d8:	cc478793          	addi	a5,a5,-828 # 8000bd98 <_ZTV7WorkerA+0x10>
    800040dc:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800040e0:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800040e4:	00005517          	auipc	a0,0x5
    800040e8:	5fc50513          	addi	a0,a0,1532 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800040ec:	00002097          	auipc	ra,0x2
    800040f0:	a60080e7          	jalr	-1440(ra) # 80005b4c <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800040f4:	02000513          	li	a0,32
    800040f8:	ffffe097          	auipc	ra,0xffffe
    800040fc:	538080e7          	jalr	1336(ra) # 80002630 <_Znwm>
    80004100:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80004104:	fffff097          	auipc	ra,0xfffff
    80004108:	804080e7          	jalr	-2044(ra) # 80002908 <_ZN6ThreadC1Ev>
    8000410c:	00008797          	auipc	a5,0x8
    80004110:	cb478793          	addi	a5,a5,-844 # 8000bdc0 <_ZTV7WorkerB+0x10>
    80004114:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80004118:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000411c:	00005517          	auipc	a0,0x5
    80004120:	5dc50513          	addi	a0,a0,1500 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80004124:	00002097          	auipc	ra,0x2
    80004128:	a28080e7          	jalr	-1496(ra) # 80005b4c <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000412c:	02000513          	li	a0,32
    80004130:	ffffe097          	auipc	ra,0xffffe
    80004134:	500080e7          	jalr	1280(ra) # 80002630 <_Znwm>
    80004138:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000413c:	ffffe097          	auipc	ra,0xffffe
    80004140:	7cc080e7          	jalr	1996(ra) # 80002908 <_ZN6ThreadC1Ev>
    80004144:	00008797          	auipc	a5,0x8
    80004148:	ca478793          	addi	a5,a5,-860 # 8000bde8 <_ZTV7WorkerC+0x10>
    8000414c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004150:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004154:	00005517          	auipc	a0,0x5
    80004158:	5bc50513          	addi	a0,a0,1468 # 80009710 <CONSOLE_STATUS+0x700>
    8000415c:	00002097          	auipc	ra,0x2
    80004160:	9f0080e7          	jalr	-1552(ra) # 80005b4c <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004164:	02000513          	li	a0,32
    80004168:	ffffe097          	auipc	ra,0xffffe
    8000416c:	4c8080e7          	jalr	1224(ra) # 80002630 <_Znwm>
    80004170:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004174:	ffffe097          	auipc	ra,0xffffe
    80004178:	794080e7          	jalr	1940(ra) # 80002908 <_ZN6ThreadC1Ev>
    8000417c:	00008797          	auipc	a5,0x8
    80004180:	c9478793          	addi	a5,a5,-876 # 8000be10 <_ZTV7WorkerD+0x10>
    80004184:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80004188:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    8000418c:	00005517          	auipc	a0,0x5
    80004190:	59c50513          	addi	a0,a0,1436 # 80009728 <CONSOLE_STATUS+0x718>
    80004194:	00002097          	auipc	ra,0x2
    80004198:	9b8080e7          	jalr	-1608(ra) # 80005b4c <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    8000419c:	00000493          	li	s1,0
    800041a0:	00300793          	li	a5,3
    800041a4:	0297c663          	blt	a5,s1,800041d0 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800041a8:	00349793          	slli	a5,s1,0x3
    800041ac:	fe040713          	addi	a4,s0,-32
    800041b0:	00f707b3          	add	a5,a4,a5
    800041b4:	fe07b503          	ld	a0,-32(a5)
    800041b8:	ffffe097          	auipc	ra,0xffffe
    800041bc:	780080e7          	jalr	1920(ra) # 80002938 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800041c0:	0014849b          	addiw	s1,s1,1
    800041c4:	fddff06f          	j	800041a0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800041c8:	ffffe097          	auipc	ra,0xffffe
    800041cc:	7c4080e7          	jalr	1988(ra) # 8000298c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800041d0:	00008797          	auipc	a5,0x8
    800041d4:	e487c783          	lbu	a5,-440(a5) # 8000c018 <_ZL9finishedA>
    800041d8:	fe0788e3          	beqz	a5,800041c8 <_Z20Threads_CPP_API_testv+0x124>
    800041dc:	00008797          	auipc	a5,0x8
    800041e0:	e3d7c783          	lbu	a5,-451(a5) # 8000c019 <_ZL9finishedB>
    800041e4:	fe0782e3          	beqz	a5,800041c8 <_Z20Threads_CPP_API_testv+0x124>
    800041e8:	00008797          	auipc	a5,0x8
    800041ec:	e327c783          	lbu	a5,-462(a5) # 8000c01a <_ZL9finishedC>
    800041f0:	fc078ce3          	beqz	a5,800041c8 <_Z20Threads_CPP_API_testv+0x124>
    800041f4:	00008797          	auipc	a5,0x8
    800041f8:	e277c783          	lbu	a5,-473(a5) # 8000c01b <_ZL9finishedD>
    800041fc:	fc0786e3          	beqz	a5,800041c8 <_Z20Threads_CPP_API_testv+0x124>
    80004200:	fc040493          	addi	s1,s0,-64
    80004204:	0080006f          	j	8000420c <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80004208:	00848493          	addi	s1,s1,8
    8000420c:	fe040793          	addi	a5,s0,-32
    80004210:	08f48663          	beq	s1,a5,8000429c <_Z20Threads_CPP_API_testv+0x1f8>
    80004214:	0004b503          	ld	a0,0(s1)
    80004218:	fe0508e3          	beqz	a0,80004208 <_Z20Threads_CPP_API_testv+0x164>
    8000421c:	00053783          	ld	a5,0(a0)
    80004220:	0087b783          	ld	a5,8(a5)
    80004224:	000780e7          	jalr	a5
    80004228:	fe1ff06f          	j	80004208 <_Z20Threads_CPP_API_testv+0x164>
    8000422c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004230:	00048513          	mv	a0,s1
    80004234:	ffffe097          	auipc	ra,0xffffe
    80004238:	44c080e7          	jalr	1100(ra) # 80002680 <_ZdlPv>
    8000423c:	00090513          	mv	a0,s2
    80004240:	00009097          	auipc	ra,0x9
    80004244:	ee8080e7          	jalr	-280(ra) # 8000d128 <_Unwind_Resume>
    80004248:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    8000424c:	00048513          	mv	a0,s1
    80004250:	ffffe097          	auipc	ra,0xffffe
    80004254:	430080e7          	jalr	1072(ra) # 80002680 <_ZdlPv>
    80004258:	00090513          	mv	a0,s2
    8000425c:	00009097          	auipc	ra,0x9
    80004260:	ecc080e7          	jalr	-308(ra) # 8000d128 <_Unwind_Resume>
    80004264:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004268:	00048513          	mv	a0,s1
    8000426c:	ffffe097          	auipc	ra,0xffffe
    80004270:	414080e7          	jalr	1044(ra) # 80002680 <_ZdlPv>
    80004274:	00090513          	mv	a0,s2
    80004278:	00009097          	auipc	ra,0x9
    8000427c:	eb0080e7          	jalr	-336(ra) # 8000d128 <_Unwind_Resume>
    80004280:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004284:	00048513          	mv	a0,s1
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	3f8080e7          	jalr	1016(ra) # 80002680 <_ZdlPv>
    80004290:	00090513          	mv	a0,s2
    80004294:	00009097          	auipc	ra,0x9
    80004298:	e94080e7          	jalr	-364(ra) # 8000d128 <_Unwind_Resume>
}
    8000429c:	03813083          	ld	ra,56(sp)
    800042a0:	03013403          	ld	s0,48(sp)
    800042a4:	02813483          	ld	s1,40(sp)
    800042a8:	02013903          	ld	s2,32(sp)
    800042ac:	04010113          	addi	sp,sp,64
    800042b0:	00008067          	ret

00000000800042b4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800042b4:	ff010113          	addi	sp,sp,-16
    800042b8:	00113423          	sd	ra,8(sp)
    800042bc:	00813023          	sd	s0,0(sp)
    800042c0:	01010413          	addi	s0,sp,16
    800042c4:	00008797          	auipc	a5,0x8
    800042c8:	ad478793          	addi	a5,a5,-1324 # 8000bd98 <_ZTV7WorkerA+0x10>
    800042cc:	00f53023          	sd	a5,0(a0)
    800042d0:	ffffe097          	auipc	ra,0xffffe
    800042d4:	514080e7          	jalr	1300(ra) # 800027e4 <_ZN6ThreadD1Ev>
    800042d8:	00813083          	ld	ra,8(sp)
    800042dc:	00013403          	ld	s0,0(sp)
    800042e0:	01010113          	addi	sp,sp,16
    800042e4:	00008067          	ret

00000000800042e8 <_ZN7WorkerAD0Ev>:
    800042e8:	fe010113          	addi	sp,sp,-32
    800042ec:	00113c23          	sd	ra,24(sp)
    800042f0:	00813823          	sd	s0,16(sp)
    800042f4:	00913423          	sd	s1,8(sp)
    800042f8:	02010413          	addi	s0,sp,32
    800042fc:	00050493          	mv	s1,a0
    80004300:	00008797          	auipc	a5,0x8
    80004304:	a9878793          	addi	a5,a5,-1384 # 8000bd98 <_ZTV7WorkerA+0x10>
    80004308:	00f53023          	sd	a5,0(a0)
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	4d8080e7          	jalr	1240(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004314:	00048513          	mv	a0,s1
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	368080e7          	jalr	872(ra) # 80002680 <_ZdlPv>
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	00813483          	ld	s1,8(sp)
    8000432c:	02010113          	addi	sp,sp,32
    80004330:	00008067          	ret

0000000080004334 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004334:	ff010113          	addi	sp,sp,-16
    80004338:	00113423          	sd	ra,8(sp)
    8000433c:	00813023          	sd	s0,0(sp)
    80004340:	01010413          	addi	s0,sp,16
    80004344:	00008797          	auipc	a5,0x8
    80004348:	a7c78793          	addi	a5,a5,-1412 # 8000bdc0 <_ZTV7WorkerB+0x10>
    8000434c:	00f53023          	sd	a5,0(a0)
    80004350:	ffffe097          	auipc	ra,0xffffe
    80004354:	494080e7          	jalr	1172(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004358:	00813083          	ld	ra,8(sp)
    8000435c:	00013403          	ld	s0,0(sp)
    80004360:	01010113          	addi	sp,sp,16
    80004364:	00008067          	ret

0000000080004368 <_ZN7WorkerBD0Ev>:
    80004368:	fe010113          	addi	sp,sp,-32
    8000436c:	00113c23          	sd	ra,24(sp)
    80004370:	00813823          	sd	s0,16(sp)
    80004374:	00913423          	sd	s1,8(sp)
    80004378:	02010413          	addi	s0,sp,32
    8000437c:	00050493          	mv	s1,a0
    80004380:	00008797          	auipc	a5,0x8
    80004384:	a4078793          	addi	a5,a5,-1472 # 8000bdc0 <_ZTV7WorkerB+0x10>
    80004388:	00f53023          	sd	a5,0(a0)
    8000438c:	ffffe097          	auipc	ra,0xffffe
    80004390:	458080e7          	jalr	1112(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004394:	00048513          	mv	a0,s1
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	2e8080e7          	jalr	744(ra) # 80002680 <_ZdlPv>
    800043a0:	01813083          	ld	ra,24(sp)
    800043a4:	01013403          	ld	s0,16(sp)
    800043a8:	00813483          	ld	s1,8(sp)
    800043ac:	02010113          	addi	sp,sp,32
    800043b0:	00008067          	ret

00000000800043b4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800043b4:	ff010113          	addi	sp,sp,-16
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	00813023          	sd	s0,0(sp)
    800043c0:	01010413          	addi	s0,sp,16
    800043c4:	00008797          	auipc	a5,0x8
    800043c8:	a2478793          	addi	a5,a5,-1500 # 8000bde8 <_ZTV7WorkerC+0x10>
    800043cc:	00f53023          	sd	a5,0(a0)
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	414080e7          	jalr	1044(ra) # 800027e4 <_ZN6ThreadD1Ev>
    800043d8:	00813083          	ld	ra,8(sp)
    800043dc:	00013403          	ld	s0,0(sp)
    800043e0:	01010113          	addi	sp,sp,16
    800043e4:	00008067          	ret

00000000800043e8 <_ZN7WorkerCD0Ev>:
    800043e8:	fe010113          	addi	sp,sp,-32
    800043ec:	00113c23          	sd	ra,24(sp)
    800043f0:	00813823          	sd	s0,16(sp)
    800043f4:	00913423          	sd	s1,8(sp)
    800043f8:	02010413          	addi	s0,sp,32
    800043fc:	00050493          	mv	s1,a0
    80004400:	00008797          	auipc	a5,0x8
    80004404:	9e878793          	addi	a5,a5,-1560 # 8000bde8 <_ZTV7WorkerC+0x10>
    80004408:	00f53023          	sd	a5,0(a0)
    8000440c:	ffffe097          	auipc	ra,0xffffe
    80004410:	3d8080e7          	jalr	984(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004414:	00048513          	mv	a0,s1
    80004418:	ffffe097          	auipc	ra,0xffffe
    8000441c:	268080e7          	jalr	616(ra) # 80002680 <_ZdlPv>
    80004420:	01813083          	ld	ra,24(sp)
    80004424:	01013403          	ld	s0,16(sp)
    80004428:	00813483          	ld	s1,8(sp)
    8000442c:	02010113          	addi	sp,sp,32
    80004430:	00008067          	ret

0000000080004434 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004434:	ff010113          	addi	sp,sp,-16
    80004438:	00113423          	sd	ra,8(sp)
    8000443c:	00813023          	sd	s0,0(sp)
    80004440:	01010413          	addi	s0,sp,16
    80004444:	00008797          	auipc	a5,0x8
    80004448:	9cc78793          	addi	a5,a5,-1588 # 8000be10 <_ZTV7WorkerD+0x10>
    8000444c:	00f53023          	sd	a5,0(a0)
    80004450:	ffffe097          	auipc	ra,0xffffe
    80004454:	394080e7          	jalr	916(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004458:	00813083          	ld	ra,8(sp)
    8000445c:	00013403          	ld	s0,0(sp)
    80004460:	01010113          	addi	sp,sp,16
    80004464:	00008067          	ret

0000000080004468 <_ZN7WorkerDD0Ev>:
    80004468:	fe010113          	addi	sp,sp,-32
    8000446c:	00113c23          	sd	ra,24(sp)
    80004470:	00813823          	sd	s0,16(sp)
    80004474:	00913423          	sd	s1,8(sp)
    80004478:	02010413          	addi	s0,sp,32
    8000447c:	00050493          	mv	s1,a0
    80004480:	00008797          	auipc	a5,0x8
    80004484:	99078793          	addi	a5,a5,-1648 # 8000be10 <_ZTV7WorkerD+0x10>
    80004488:	00f53023          	sd	a5,0(a0)
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	358080e7          	jalr	856(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004494:	00048513          	mv	a0,s1
    80004498:	ffffe097          	auipc	ra,0xffffe
    8000449c:	1e8080e7          	jalr	488(ra) # 80002680 <_ZdlPv>
    800044a0:	01813083          	ld	ra,24(sp)
    800044a4:	01013403          	ld	s0,16(sp)
    800044a8:	00813483          	ld	s1,8(sp)
    800044ac:	02010113          	addi	sp,sp,32
    800044b0:	00008067          	ret

00000000800044b4 <_ZN7WorkerA3runEv>:
    void run() override {
    800044b4:	ff010113          	addi	sp,sp,-16
    800044b8:	00113423          	sd	ra,8(sp)
    800044bc:	00813023          	sd	s0,0(sp)
    800044c0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800044c4:	00000593          	li	a1,0
    800044c8:	fffff097          	auipc	ra,0xfffff
    800044cc:	774080e7          	jalr	1908(ra) # 80003c3c <_ZN7WorkerA11workerBodyAEPv>
    }
    800044d0:	00813083          	ld	ra,8(sp)
    800044d4:	00013403          	ld	s0,0(sp)
    800044d8:	01010113          	addi	sp,sp,16
    800044dc:	00008067          	ret

00000000800044e0 <_ZN7WorkerB3runEv>:
    void run() override {
    800044e0:	ff010113          	addi	sp,sp,-16
    800044e4:	00113423          	sd	ra,8(sp)
    800044e8:	00813023          	sd	s0,0(sp)
    800044ec:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800044f0:	00000593          	li	a1,0
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	814080e7          	jalr	-2028(ra) # 80003d08 <_ZN7WorkerB11workerBodyBEPv>
    }
    800044fc:	00813083          	ld	ra,8(sp)
    80004500:	00013403          	ld	s0,0(sp)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <_ZN7WorkerC3runEv>:
    void run() override {
    8000450c:	ff010113          	addi	sp,sp,-16
    80004510:	00113423          	sd	ra,8(sp)
    80004514:	00813023          	sd	s0,0(sp)
    80004518:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000451c:	00000593          	li	a1,0
    80004520:	00000097          	auipc	ra,0x0
    80004524:	8bc080e7          	jalr	-1860(ra) # 80003ddc <_ZN7WorkerC11workerBodyCEPv>
    }
    80004528:	00813083          	ld	ra,8(sp)
    8000452c:	00013403          	ld	s0,0(sp)
    80004530:	01010113          	addi	sp,sp,16
    80004534:	00008067          	ret

0000000080004538 <_ZN7WorkerD3runEv>:
    void run() override {
    80004538:	ff010113          	addi	sp,sp,-16
    8000453c:	00113423          	sd	ra,8(sp)
    80004540:	00813023          	sd	s0,0(sp)
    80004544:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004548:	00000593          	li	a1,0
    8000454c:	00000097          	auipc	ra,0x0
    80004550:	a10080e7          	jalr	-1520(ra) # 80003f5c <_ZN7WorkerD11workerBodyDEPv>
    }
    80004554:	00813083          	ld	ra,8(sp)
    80004558:	00013403          	ld	s0,0(sp)
    8000455c:	01010113          	addi	sp,sp,16
    80004560:	00008067          	ret

0000000080004564 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004564:	f8010113          	addi	sp,sp,-128
    80004568:	06113c23          	sd	ra,120(sp)
    8000456c:	06813823          	sd	s0,112(sp)
    80004570:	06913423          	sd	s1,104(sp)
    80004574:	07213023          	sd	s2,96(sp)
    80004578:	05313c23          	sd	s3,88(sp)
    8000457c:	05413823          	sd	s4,80(sp)
    80004580:	05513423          	sd	s5,72(sp)
    80004584:	05613023          	sd	s6,64(sp)
    80004588:	03713c23          	sd	s7,56(sp)
    8000458c:	03813823          	sd	s8,48(sp)
    80004590:	03913423          	sd	s9,40(sp)
    80004594:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004598:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    8000459c:	00005517          	auipc	a0,0x5
    800045a0:	fc450513          	addi	a0,a0,-60 # 80009560 <CONSOLE_STATUS+0x550>
    800045a4:	00001097          	auipc	ra,0x1
    800045a8:	5a8080e7          	jalr	1448(ra) # 80005b4c <_Z11printStringPKc>
    getString(input, 30);
    800045ac:	01e00593          	li	a1,30
    800045b0:	f8040493          	addi	s1,s0,-128
    800045b4:	00048513          	mv	a0,s1
    800045b8:	00001097          	auipc	ra,0x1
    800045bc:	61c080e7          	jalr	1564(ra) # 80005bd4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800045c0:	00048513          	mv	a0,s1
    800045c4:	00001097          	auipc	ra,0x1
    800045c8:	6e8080e7          	jalr	1768(ra) # 80005cac <_Z11stringToIntPKc>
    800045cc:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800045d0:	00005517          	auipc	a0,0x5
    800045d4:	fb050513          	addi	a0,a0,-80 # 80009580 <CONSOLE_STATUS+0x570>
    800045d8:	00001097          	auipc	ra,0x1
    800045dc:	574080e7          	jalr	1396(ra) # 80005b4c <_Z11printStringPKc>
    getString(input, 30);
    800045e0:	01e00593          	li	a1,30
    800045e4:	00048513          	mv	a0,s1
    800045e8:	00001097          	auipc	ra,0x1
    800045ec:	5ec080e7          	jalr	1516(ra) # 80005bd4 <_Z9getStringPci>
    n = stringToInt(input);
    800045f0:	00048513          	mv	a0,s1
    800045f4:	00001097          	auipc	ra,0x1
    800045f8:	6b8080e7          	jalr	1720(ra) # 80005cac <_Z11stringToIntPKc>
    800045fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004600:	00005517          	auipc	a0,0x5
    80004604:	fa050513          	addi	a0,a0,-96 # 800095a0 <CONSOLE_STATUS+0x590>
    80004608:	00001097          	auipc	ra,0x1
    8000460c:	544080e7          	jalr	1348(ra) # 80005b4c <_Z11printStringPKc>
    printInt(threadNum);
    80004610:	00000613          	li	a2,0
    80004614:	00a00593          	li	a1,10
    80004618:	00098513          	mv	a0,s3
    8000461c:	00001097          	auipc	ra,0x1
    80004620:	6e0080e7          	jalr	1760(ra) # 80005cfc <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004624:	00005517          	auipc	a0,0x5
    80004628:	f9450513          	addi	a0,a0,-108 # 800095b8 <CONSOLE_STATUS+0x5a8>
    8000462c:	00001097          	auipc	ra,0x1
    80004630:	520080e7          	jalr	1312(ra) # 80005b4c <_Z11printStringPKc>
    printInt(n);
    80004634:	00000613          	li	a2,0
    80004638:	00a00593          	li	a1,10
    8000463c:	00048513          	mv	a0,s1
    80004640:	00001097          	auipc	ra,0x1
    80004644:	6bc080e7          	jalr	1724(ra) # 80005cfc <_Z8printIntiii>
    printString(".\n");
    80004648:	00005517          	auipc	a0,0x5
    8000464c:	f8850513          	addi	a0,a0,-120 # 800095d0 <CONSOLE_STATUS+0x5c0>
    80004650:	00001097          	auipc	ra,0x1
    80004654:	4fc080e7          	jalr	1276(ra) # 80005b4c <_Z11printStringPKc>
    if (threadNum > n) {
    80004658:	0334c463          	blt	s1,s3,80004680 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    8000465c:	03305c63          	blez	s3,80004694 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004660:	03800513          	li	a0,56
    80004664:	ffffe097          	auipc	ra,0xffffe
    80004668:	fcc080e7          	jalr	-52(ra) # 80002630 <_Znwm>
    8000466c:	00050a93          	mv	s5,a0
    80004670:	00048593          	mv	a1,s1
    80004674:	00001097          	auipc	ra,0x1
    80004678:	7a8080e7          	jalr	1960(ra) # 80005e1c <_ZN9BufferCPPC1Ei>
    8000467c:	0300006f          	j	800046ac <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004680:	00005517          	auipc	a0,0x5
    80004684:	f5850513          	addi	a0,a0,-168 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80004688:	00001097          	auipc	ra,0x1
    8000468c:	4c4080e7          	jalr	1220(ra) # 80005b4c <_Z11printStringPKc>
        return;
    80004690:	0140006f          	j	800046a4 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004694:	00005517          	auipc	a0,0x5
    80004698:	f8450513          	addi	a0,a0,-124 # 80009618 <CONSOLE_STATUS+0x608>
    8000469c:	00001097          	auipc	ra,0x1
    800046a0:	4b0080e7          	jalr	1200(ra) # 80005b4c <_Z11printStringPKc>
        return;
    800046a4:	000c0113          	mv	sp,s8
    800046a8:	2140006f          	j	800048bc <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800046ac:	01000513          	li	a0,16
    800046b0:	ffffe097          	auipc	ra,0xffffe
    800046b4:	f80080e7          	jalr	-128(ra) # 80002630 <_Znwm>
    800046b8:	00050913          	mv	s2,a0
    800046bc:	00000593          	li	a1,0
    800046c0:	ffffe097          	auipc	ra,0xffffe
    800046c4:	370080e7          	jalr	880(ra) # 80002a30 <_ZN9SemaphoreC1Ej>
    800046c8:	00008797          	auipc	a5,0x8
    800046cc:	9727b023          	sd	s2,-1696(a5) # 8000c028 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800046d0:	00399793          	slli	a5,s3,0x3
    800046d4:	00f78793          	addi	a5,a5,15
    800046d8:	ff07f793          	andi	a5,a5,-16
    800046dc:	40f10133          	sub	sp,sp,a5
    800046e0:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800046e4:	0019871b          	addiw	a4,s3,1
    800046e8:	00171793          	slli	a5,a4,0x1
    800046ec:	00e787b3          	add	a5,a5,a4
    800046f0:	00379793          	slli	a5,a5,0x3
    800046f4:	00f78793          	addi	a5,a5,15
    800046f8:	ff07f793          	andi	a5,a5,-16
    800046fc:	40f10133          	sub	sp,sp,a5
    80004700:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004704:	00199493          	slli	s1,s3,0x1
    80004708:	013484b3          	add	s1,s1,s3
    8000470c:	00349493          	slli	s1,s1,0x3
    80004710:	009b04b3          	add	s1,s6,s1
    80004714:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004718:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    8000471c:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004720:	02800513          	li	a0,40
    80004724:	ffffe097          	auipc	ra,0xffffe
    80004728:	f0c080e7          	jalr	-244(ra) # 80002630 <_Znwm>
    8000472c:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004730:	ffffe097          	auipc	ra,0xffffe
    80004734:	1d8080e7          	jalr	472(ra) # 80002908 <_ZN6ThreadC1Ev>
    80004738:	00007797          	auipc	a5,0x7
    8000473c:	75078793          	addi	a5,a5,1872 # 8000be88 <_ZTV8Consumer+0x10>
    80004740:	00fbb023          	sd	a5,0(s7)
    80004744:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004748:	000b8513          	mv	a0,s7
    8000474c:	ffffe097          	auipc	ra,0xffffe
    80004750:	1ec080e7          	jalr	492(ra) # 80002938 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004754:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004758:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    8000475c:	00008797          	auipc	a5,0x8
    80004760:	8cc7b783          	ld	a5,-1844(a5) # 8000c028 <_ZL10waitForAll>
    80004764:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004768:	02800513          	li	a0,40
    8000476c:	ffffe097          	auipc	ra,0xffffe
    80004770:	ec4080e7          	jalr	-316(ra) # 80002630 <_Znwm>
    80004774:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004778:	ffffe097          	auipc	ra,0xffffe
    8000477c:	190080e7          	jalr	400(ra) # 80002908 <_ZN6ThreadC1Ev>
    80004780:	00007797          	auipc	a5,0x7
    80004784:	6b878793          	addi	a5,a5,1720 # 8000be38 <_ZTV16ProducerKeyborad+0x10>
    80004788:	00f4b023          	sd	a5,0(s1)
    8000478c:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004790:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004794:	00048513          	mv	a0,s1
    80004798:	ffffe097          	auipc	ra,0xffffe
    8000479c:	1a0080e7          	jalr	416(ra) # 80002938 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800047a0:	00100913          	li	s2,1
    800047a4:	0300006f          	j	800047d4 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800047a8:	00007797          	auipc	a5,0x7
    800047ac:	6b878793          	addi	a5,a5,1720 # 8000be60 <_ZTV8Producer+0x10>
    800047b0:	00fcb023          	sd	a5,0(s9)
    800047b4:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800047b8:	00391793          	slli	a5,s2,0x3
    800047bc:	00fa07b3          	add	a5,s4,a5
    800047c0:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800047c4:	000c8513          	mv	a0,s9
    800047c8:	ffffe097          	auipc	ra,0xffffe
    800047cc:	170080e7          	jalr	368(ra) # 80002938 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800047d0:	0019091b          	addiw	s2,s2,1
    800047d4:	05395263          	bge	s2,s3,80004818 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800047d8:	00191493          	slli	s1,s2,0x1
    800047dc:	012484b3          	add	s1,s1,s2
    800047e0:	00349493          	slli	s1,s1,0x3
    800047e4:	009b04b3          	add	s1,s6,s1
    800047e8:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800047ec:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800047f0:	00008797          	auipc	a5,0x8
    800047f4:	8387b783          	ld	a5,-1992(a5) # 8000c028 <_ZL10waitForAll>
    800047f8:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800047fc:	02800513          	li	a0,40
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	e30080e7          	jalr	-464(ra) # 80002630 <_Znwm>
    80004808:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000480c:	ffffe097          	auipc	ra,0xffffe
    80004810:	0fc080e7          	jalr	252(ra) # 80002908 <_ZN6ThreadC1Ev>
    80004814:	f95ff06f          	j	800047a8 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004818:	ffffe097          	auipc	ra,0xffffe
    8000481c:	174080e7          	jalr	372(ra) # 8000298c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004820:	00000493          	li	s1,0
    80004824:	0099ce63          	blt	s3,s1,80004840 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004828:	00008517          	auipc	a0,0x8
    8000482c:	80053503          	ld	a0,-2048(a0) # 8000c028 <_ZL10waitForAll>
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	23c080e7          	jalr	572(ra) # 80002a6c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004838:	0014849b          	addiw	s1,s1,1
    8000483c:	fe9ff06f          	j	80004824 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004840:	00007517          	auipc	a0,0x7
    80004844:	7e853503          	ld	a0,2024(a0) # 8000c028 <_ZL10waitForAll>
    80004848:	00050863          	beqz	a0,80004858 <_Z20testConsumerProducerv+0x2f4>
    8000484c:	00053783          	ld	a5,0(a0)
    80004850:	0087b783          	ld	a5,8(a5)
    80004854:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004858:	00000493          	li	s1,0
    8000485c:	0080006f          	j	80004864 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004860:	0014849b          	addiw	s1,s1,1
    80004864:	0334d263          	bge	s1,s3,80004888 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004868:	00349793          	slli	a5,s1,0x3
    8000486c:	00fa07b3          	add	a5,s4,a5
    80004870:	0007b503          	ld	a0,0(a5)
    80004874:	fe0506e3          	beqz	a0,80004860 <_Z20testConsumerProducerv+0x2fc>
    80004878:	00053783          	ld	a5,0(a0)
    8000487c:	0087b783          	ld	a5,8(a5)
    80004880:	000780e7          	jalr	a5
    80004884:	fddff06f          	j	80004860 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004888:	000b8a63          	beqz	s7,8000489c <_Z20testConsumerProducerv+0x338>
    8000488c:	000bb783          	ld	a5,0(s7)
    80004890:	0087b783          	ld	a5,8(a5)
    80004894:	000b8513          	mv	a0,s7
    80004898:	000780e7          	jalr	a5
    delete buffer;
    8000489c:	000a8e63          	beqz	s5,800048b8 <_Z20testConsumerProducerv+0x354>
    800048a0:	000a8513          	mv	a0,s5
    800048a4:	00002097          	auipc	ra,0x2
    800048a8:	870080e7          	jalr	-1936(ra) # 80006114 <_ZN9BufferCPPD1Ev>
    800048ac:	000a8513          	mv	a0,s5
    800048b0:	ffffe097          	auipc	ra,0xffffe
    800048b4:	dd0080e7          	jalr	-560(ra) # 80002680 <_ZdlPv>
    800048b8:	000c0113          	mv	sp,s8
}
    800048bc:	f8040113          	addi	sp,s0,-128
    800048c0:	07813083          	ld	ra,120(sp)
    800048c4:	07013403          	ld	s0,112(sp)
    800048c8:	06813483          	ld	s1,104(sp)
    800048cc:	06013903          	ld	s2,96(sp)
    800048d0:	05813983          	ld	s3,88(sp)
    800048d4:	05013a03          	ld	s4,80(sp)
    800048d8:	04813a83          	ld	s5,72(sp)
    800048dc:	04013b03          	ld	s6,64(sp)
    800048e0:	03813b83          	ld	s7,56(sp)
    800048e4:	03013c03          	ld	s8,48(sp)
    800048e8:	02813c83          	ld	s9,40(sp)
    800048ec:	08010113          	addi	sp,sp,128
    800048f0:	00008067          	ret
    800048f4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800048f8:	000a8513          	mv	a0,s5
    800048fc:	ffffe097          	auipc	ra,0xffffe
    80004900:	d84080e7          	jalr	-636(ra) # 80002680 <_ZdlPv>
    80004904:	00048513          	mv	a0,s1
    80004908:	00009097          	auipc	ra,0x9
    8000490c:	820080e7          	jalr	-2016(ra) # 8000d128 <_Unwind_Resume>
    80004910:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004914:	00090513          	mv	a0,s2
    80004918:	ffffe097          	auipc	ra,0xffffe
    8000491c:	d68080e7          	jalr	-664(ra) # 80002680 <_ZdlPv>
    80004920:	00048513          	mv	a0,s1
    80004924:	00009097          	auipc	ra,0x9
    80004928:	804080e7          	jalr	-2044(ra) # 8000d128 <_Unwind_Resume>
    8000492c:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004930:	000b8513          	mv	a0,s7
    80004934:	ffffe097          	auipc	ra,0xffffe
    80004938:	d4c080e7          	jalr	-692(ra) # 80002680 <_ZdlPv>
    8000493c:	00048513          	mv	a0,s1
    80004940:	00008097          	auipc	ra,0x8
    80004944:	7e8080e7          	jalr	2024(ra) # 8000d128 <_Unwind_Resume>
    80004948:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000494c:	00048513          	mv	a0,s1
    80004950:	ffffe097          	auipc	ra,0xffffe
    80004954:	d30080e7          	jalr	-720(ra) # 80002680 <_ZdlPv>
    80004958:	00090513          	mv	a0,s2
    8000495c:	00008097          	auipc	ra,0x8
    80004960:	7cc080e7          	jalr	1996(ra) # 8000d128 <_Unwind_Resume>
    80004964:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004968:	000c8513          	mv	a0,s9
    8000496c:	ffffe097          	auipc	ra,0xffffe
    80004970:	d14080e7          	jalr	-748(ra) # 80002680 <_ZdlPv>
    80004974:	00048513          	mv	a0,s1
    80004978:	00008097          	auipc	ra,0x8
    8000497c:	7b0080e7          	jalr	1968(ra) # 8000d128 <_Unwind_Resume>

0000000080004980 <_ZN8Consumer3runEv>:
    void run() override {
    80004980:	fd010113          	addi	sp,sp,-48
    80004984:	02113423          	sd	ra,40(sp)
    80004988:	02813023          	sd	s0,32(sp)
    8000498c:	00913c23          	sd	s1,24(sp)
    80004990:	01213823          	sd	s2,16(sp)
    80004994:	01313423          	sd	s3,8(sp)
    80004998:	03010413          	addi	s0,sp,48
    8000499c:	00050913          	mv	s2,a0
        int i = 0;
    800049a0:	00000993          	li	s3,0
    800049a4:	0100006f          	j	800049b4 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800049a8:	00a00513          	li	a0,10
    800049ac:	ffffe097          	auipc	ra,0xffffe
    800049b0:	1a8080e7          	jalr	424(ra) # 80002b54 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800049b4:	00007797          	auipc	a5,0x7
    800049b8:	66c7a783          	lw	a5,1644(a5) # 8000c020 <_ZL9threadEnd>
    800049bc:	04079a63          	bnez	a5,80004a10 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800049c0:	02093783          	ld	a5,32(s2)
    800049c4:	0087b503          	ld	a0,8(a5)
    800049c8:	00001097          	auipc	ra,0x1
    800049cc:	638080e7          	jalr	1592(ra) # 80006000 <_ZN9BufferCPP3getEv>
            i++;
    800049d0:	0019849b          	addiw	s1,s3,1
    800049d4:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800049d8:	0ff57513          	andi	a0,a0,255
    800049dc:	ffffe097          	auipc	ra,0xffffe
    800049e0:	178080e7          	jalr	376(ra) # 80002b54 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800049e4:	05000793          	li	a5,80
    800049e8:	02f4e4bb          	remw	s1,s1,a5
    800049ec:	fc0494e3          	bnez	s1,800049b4 <_ZN8Consumer3runEv+0x34>
    800049f0:	fb9ff06f          	j	800049a8 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800049f4:	02093783          	ld	a5,32(s2)
    800049f8:	0087b503          	ld	a0,8(a5)
    800049fc:	00001097          	auipc	ra,0x1
    80004a00:	604080e7          	jalr	1540(ra) # 80006000 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004a04:	0ff57513          	andi	a0,a0,255
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	14c080e7          	jalr	332(ra) # 80002b54 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004a10:	02093783          	ld	a5,32(s2)
    80004a14:	0087b503          	ld	a0,8(a5)
    80004a18:	00001097          	auipc	ra,0x1
    80004a1c:	674080e7          	jalr	1652(ra) # 8000608c <_ZN9BufferCPP6getCntEv>
    80004a20:	fca04ae3          	bgtz	a0,800049f4 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004a24:	02093783          	ld	a5,32(s2)
    80004a28:	0107b503          	ld	a0,16(a5)
    80004a2c:	ffffe097          	auipc	ra,0xffffe
    80004a30:	06c080e7          	jalr	108(ra) # 80002a98 <_ZN9Semaphore6signalEv>
    }
    80004a34:	02813083          	ld	ra,40(sp)
    80004a38:	02013403          	ld	s0,32(sp)
    80004a3c:	01813483          	ld	s1,24(sp)
    80004a40:	01013903          	ld	s2,16(sp)
    80004a44:	00813983          	ld	s3,8(sp)
    80004a48:	03010113          	addi	sp,sp,48
    80004a4c:	00008067          	ret

0000000080004a50 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004a50:	ff010113          	addi	sp,sp,-16
    80004a54:	00113423          	sd	ra,8(sp)
    80004a58:	00813023          	sd	s0,0(sp)
    80004a5c:	01010413          	addi	s0,sp,16
    80004a60:	00007797          	auipc	a5,0x7
    80004a64:	42878793          	addi	a5,a5,1064 # 8000be88 <_ZTV8Consumer+0x10>
    80004a68:	00f53023          	sd	a5,0(a0)
    80004a6c:	ffffe097          	auipc	ra,0xffffe
    80004a70:	d78080e7          	jalr	-648(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004a74:	00813083          	ld	ra,8(sp)
    80004a78:	00013403          	ld	s0,0(sp)
    80004a7c:	01010113          	addi	sp,sp,16
    80004a80:	00008067          	ret

0000000080004a84 <_ZN8ConsumerD0Ev>:
    80004a84:	fe010113          	addi	sp,sp,-32
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	00813823          	sd	s0,16(sp)
    80004a90:	00913423          	sd	s1,8(sp)
    80004a94:	02010413          	addi	s0,sp,32
    80004a98:	00050493          	mv	s1,a0
    80004a9c:	00007797          	auipc	a5,0x7
    80004aa0:	3ec78793          	addi	a5,a5,1004 # 8000be88 <_ZTV8Consumer+0x10>
    80004aa4:	00f53023          	sd	a5,0(a0)
    80004aa8:	ffffe097          	auipc	ra,0xffffe
    80004aac:	d3c080e7          	jalr	-708(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004ab0:	00048513          	mv	a0,s1
    80004ab4:	ffffe097          	auipc	ra,0xffffe
    80004ab8:	bcc080e7          	jalr	-1076(ra) # 80002680 <_ZdlPv>
    80004abc:	01813083          	ld	ra,24(sp)
    80004ac0:	01013403          	ld	s0,16(sp)
    80004ac4:	00813483          	ld	s1,8(sp)
    80004ac8:	02010113          	addi	sp,sp,32
    80004acc:	00008067          	ret

0000000080004ad0 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004ad0:	ff010113          	addi	sp,sp,-16
    80004ad4:	00113423          	sd	ra,8(sp)
    80004ad8:	00813023          	sd	s0,0(sp)
    80004adc:	01010413          	addi	s0,sp,16
    80004ae0:	00007797          	auipc	a5,0x7
    80004ae4:	35878793          	addi	a5,a5,856 # 8000be38 <_ZTV16ProducerKeyborad+0x10>
    80004ae8:	00f53023          	sd	a5,0(a0)
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	cf8080e7          	jalr	-776(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004af4:	00813083          	ld	ra,8(sp)
    80004af8:	00013403          	ld	s0,0(sp)
    80004afc:	01010113          	addi	sp,sp,16
    80004b00:	00008067          	ret

0000000080004b04 <_ZN16ProducerKeyboradD0Ev>:
    80004b04:	fe010113          	addi	sp,sp,-32
    80004b08:	00113c23          	sd	ra,24(sp)
    80004b0c:	00813823          	sd	s0,16(sp)
    80004b10:	00913423          	sd	s1,8(sp)
    80004b14:	02010413          	addi	s0,sp,32
    80004b18:	00050493          	mv	s1,a0
    80004b1c:	00007797          	auipc	a5,0x7
    80004b20:	31c78793          	addi	a5,a5,796 # 8000be38 <_ZTV16ProducerKeyborad+0x10>
    80004b24:	00f53023          	sd	a5,0(a0)
    80004b28:	ffffe097          	auipc	ra,0xffffe
    80004b2c:	cbc080e7          	jalr	-836(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004b30:	00048513          	mv	a0,s1
    80004b34:	ffffe097          	auipc	ra,0xffffe
    80004b38:	b4c080e7          	jalr	-1204(ra) # 80002680 <_ZdlPv>
    80004b3c:	01813083          	ld	ra,24(sp)
    80004b40:	01013403          	ld	s0,16(sp)
    80004b44:	00813483          	ld	s1,8(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret

0000000080004b50 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004b50:	ff010113          	addi	sp,sp,-16
    80004b54:	00113423          	sd	ra,8(sp)
    80004b58:	00813023          	sd	s0,0(sp)
    80004b5c:	01010413          	addi	s0,sp,16
    80004b60:	00007797          	auipc	a5,0x7
    80004b64:	30078793          	addi	a5,a5,768 # 8000be60 <_ZTV8Producer+0x10>
    80004b68:	00f53023          	sd	a5,0(a0)
    80004b6c:	ffffe097          	auipc	ra,0xffffe
    80004b70:	c78080e7          	jalr	-904(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004b74:	00813083          	ld	ra,8(sp)
    80004b78:	00013403          	ld	s0,0(sp)
    80004b7c:	01010113          	addi	sp,sp,16
    80004b80:	00008067          	ret

0000000080004b84 <_ZN8ProducerD0Ev>:
    80004b84:	fe010113          	addi	sp,sp,-32
    80004b88:	00113c23          	sd	ra,24(sp)
    80004b8c:	00813823          	sd	s0,16(sp)
    80004b90:	00913423          	sd	s1,8(sp)
    80004b94:	02010413          	addi	s0,sp,32
    80004b98:	00050493          	mv	s1,a0
    80004b9c:	00007797          	auipc	a5,0x7
    80004ba0:	2c478793          	addi	a5,a5,708 # 8000be60 <_ZTV8Producer+0x10>
    80004ba4:	00f53023          	sd	a5,0(a0)
    80004ba8:	ffffe097          	auipc	ra,0xffffe
    80004bac:	c3c080e7          	jalr	-964(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80004bb0:	00048513          	mv	a0,s1
    80004bb4:	ffffe097          	auipc	ra,0xffffe
    80004bb8:	acc080e7          	jalr	-1332(ra) # 80002680 <_ZdlPv>
    80004bbc:	01813083          	ld	ra,24(sp)
    80004bc0:	01013403          	ld	s0,16(sp)
    80004bc4:	00813483          	ld	s1,8(sp)
    80004bc8:	02010113          	addi	sp,sp,32
    80004bcc:	00008067          	ret

0000000080004bd0 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004bd0:	fe010113          	addi	sp,sp,-32
    80004bd4:	00113c23          	sd	ra,24(sp)
    80004bd8:	00813823          	sd	s0,16(sp)
    80004bdc:	00913423          	sd	s1,8(sp)
    80004be0:	02010413          	addi	s0,sp,32
    80004be4:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004be8:	ffffd097          	auipc	ra,0xffffd
    80004bec:	a20080e7          	jalr	-1504(ra) # 80001608 <_Z4getcv>
    80004bf0:	0005059b          	sext.w	a1,a0
    80004bf4:	01b00793          	li	a5,27
    80004bf8:	00f58c63          	beq	a1,a5,80004c10 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004bfc:	0204b783          	ld	a5,32(s1)
    80004c00:	0087b503          	ld	a0,8(a5)
    80004c04:	00001097          	auipc	ra,0x1
    80004c08:	36c080e7          	jalr	876(ra) # 80005f70 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004c0c:	fddff06f          	j	80004be8 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004c10:	00100793          	li	a5,1
    80004c14:	00007717          	auipc	a4,0x7
    80004c18:	40f72623          	sw	a5,1036(a4) # 8000c020 <_ZL9threadEnd>
        td->buffer->put('!');
    80004c1c:	0204b783          	ld	a5,32(s1)
    80004c20:	02100593          	li	a1,33
    80004c24:	0087b503          	ld	a0,8(a5)
    80004c28:	00001097          	auipc	ra,0x1
    80004c2c:	348080e7          	jalr	840(ra) # 80005f70 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004c30:	0204b783          	ld	a5,32(s1)
    80004c34:	0107b503          	ld	a0,16(a5)
    80004c38:	ffffe097          	auipc	ra,0xffffe
    80004c3c:	e60080e7          	jalr	-416(ra) # 80002a98 <_ZN9Semaphore6signalEv>
    }
    80004c40:	01813083          	ld	ra,24(sp)
    80004c44:	01013403          	ld	s0,16(sp)
    80004c48:	00813483          	ld	s1,8(sp)
    80004c4c:	02010113          	addi	sp,sp,32
    80004c50:	00008067          	ret

0000000080004c54 <_ZN8Producer3runEv>:
    void run() override {
    80004c54:	fe010113          	addi	sp,sp,-32
    80004c58:	00113c23          	sd	ra,24(sp)
    80004c5c:	00813823          	sd	s0,16(sp)
    80004c60:	00913423          	sd	s1,8(sp)
    80004c64:	01213023          	sd	s2,0(sp)
    80004c68:	02010413          	addi	s0,sp,32
    80004c6c:	00050493          	mv	s1,a0
        int i = 0;
    80004c70:	00000913          	li	s2,0
        while (!threadEnd) {
    80004c74:	00007797          	auipc	a5,0x7
    80004c78:	3ac7a783          	lw	a5,940(a5) # 8000c020 <_ZL9threadEnd>
    80004c7c:	04079263          	bnez	a5,80004cc0 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004c80:	0204b783          	ld	a5,32(s1)
    80004c84:	0007a583          	lw	a1,0(a5)
    80004c88:	0305859b          	addiw	a1,a1,48
    80004c8c:	0087b503          	ld	a0,8(a5)
    80004c90:	00001097          	auipc	ra,0x1
    80004c94:	2e0080e7          	jalr	736(ra) # 80005f70 <_ZN9BufferCPP3putEi>
            i++;
    80004c98:	0019071b          	addiw	a4,s2,1
    80004c9c:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004ca0:	0204b783          	ld	a5,32(s1)
    80004ca4:	0007a783          	lw	a5,0(a5)
    80004ca8:	00e787bb          	addw	a5,a5,a4
    80004cac:	00500513          	li	a0,5
    80004cb0:	02a7e53b          	remw	a0,a5,a0
    80004cb4:	ffffe097          	auipc	ra,0xffffe
    80004cb8:	d00080e7          	jalr	-768(ra) # 800029b4 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004cbc:	fb9ff06f          	j	80004c74 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004cc0:	0204b783          	ld	a5,32(s1)
    80004cc4:	0107b503          	ld	a0,16(a5)
    80004cc8:	ffffe097          	auipc	ra,0xffffe
    80004ccc:	dd0080e7          	jalr	-560(ra) # 80002a98 <_ZN9Semaphore6signalEv>
    }
    80004cd0:	01813083          	ld	ra,24(sp)
    80004cd4:	01013403          	ld	s0,16(sp)
    80004cd8:	00813483          	ld	s1,8(sp)
    80004cdc:	00013903          	ld	s2,0(sp)
    80004ce0:	02010113          	addi	sp,sp,32
    80004ce4:	00008067          	ret

0000000080004ce8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004ce8:	fe010113          	addi	sp,sp,-32
    80004cec:	00113c23          	sd	ra,24(sp)
    80004cf0:	00813823          	sd	s0,16(sp)
    80004cf4:	00913423          	sd	s1,8(sp)
    80004cf8:	01213023          	sd	s2,0(sp)
    80004cfc:	02010413          	addi	s0,sp,32
    80004d00:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004d04:	00100793          	li	a5,1
    80004d08:	02a7f863          	bgeu	a5,a0,80004d38 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004d0c:	00a00793          	li	a5,10
    80004d10:	02f577b3          	remu	a5,a0,a5
    80004d14:	02078e63          	beqz	a5,80004d50 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004d18:	fff48513          	addi	a0,s1,-1
    80004d1c:	00000097          	auipc	ra,0x0
    80004d20:	fcc080e7          	jalr	-52(ra) # 80004ce8 <_ZL9fibonaccim>
    80004d24:	00050913          	mv	s2,a0
    80004d28:	ffe48513          	addi	a0,s1,-2
    80004d2c:	00000097          	auipc	ra,0x0
    80004d30:	fbc080e7          	jalr	-68(ra) # 80004ce8 <_ZL9fibonaccim>
    80004d34:	00a90533          	add	a0,s2,a0
}
    80004d38:	01813083          	ld	ra,24(sp)
    80004d3c:	01013403          	ld	s0,16(sp)
    80004d40:	00813483          	ld	s1,8(sp)
    80004d44:	00013903          	ld	s2,0(sp)
    80004d48:	02010113          	addi	sp,sp,32
    80004d4c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004d50:	ffffc097          	auipc	ra,0xffffc
    80004d54:	638080e7          	jalr	1592(ra) # 80001388 <_Z15thread_dispatchv>
    80004d58:	fc1ff06f          	j	80004d18 <_ZL9fibonaccim+0x30>

0000000080004d5c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00113c23          	sd	ra,24(sp)
    80004d64:	00813823          	sd	s0,16(sp)
    80004d68:	00913423          	sd	s1,8(sp)
    80004d6c:	01213023          	sd	s2,0(sp)
    80004d70:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004d74:	00a00493          	li	s1,10
    80004d78:	0400006f          	j	80004db8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004d7c:	00005517          	auipc	a0,0x5
    80004d80:	92c50513          	addi	a0,a0,-1748 # 800096a8 <CONSOLE_STATUS+0x698>
    80004d84:	00001097          	auipc	ra,0x1
    80004d88:	dc8080e7          	jalr	-568(ra) # 80005b4c <_Z11printStringPKc>
    80004d8c:	00000613          	li	a2,0
    80004d90:	00a00593          	li	a1,10
    80004d94:	00048513          	mv	a0,s1
    80004d98:	00001097          	auipc	ra,0x1
    80004d9c:	f64080e7          	jalr	-156(ra) # 80005cfc <_Z8printIntiii>
    80004da0:	00004517          	auipc	a0,0x4
    80004da4:	50050513          	addi	a0,a0,1280 # 800092a0 <CONSOLE_STATUS+0x290>
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	da4080e7          	jalr	-604(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004db0:	0014849b          	addiw	s1,s1,1
    80004db4:	0ff4f493          	andi	s1,s1,255
    80004db8:	00c00793          	li	a5,12
    80004dbc:	fc97f0e3          	bgeu	a5,s1,80004d7c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004dc0:	00005517          	auipc	a0,0x5
    80004dc4:	8f050513          	addi	a0,a0,-1808 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80004dc8:	00001097          	auipc	ra,0x1
    80004dcc:	d84080e7          	jalr	-636(ra) # 80005b4c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004dd0:	00500313          	li	t1,5
    thread_dispatch();
    80004dd4:	ffffc097          	auipc	ra,0xffffc
    80004dd8:	5b4080e7          	jalr	1460(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004ddc:	01000513          	li	a0,16
    80004de0:	00000097          	auipc	ra,0x0
    80004de4:	f08080e7          	jalr	-248(ra) # 80004ce8 <_ZL9fibonaccim>
    80004de8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004dec:	00005517          	auipc	a0,0x5
    80004df0:	8d450513          	addi	a0,a0,-1836 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	d58080e7          	jalr	-680(ra) # 80005b4c <_Z11printStringPKc>
    80004dfc:	00000613          	li	a2,0
    80004e00:	00a00593          	li	a1,10
    80004e04:	0009051b          	sext.w	a0,s2
    80004e08:	00001097          	auipc	ra,0x1
    80004e0c:	ef4080e7          	jalr	-268(ra) # 80005cfc <_Z8printIntiii>
    80004e10:	00004517          	auipc	a0,0x4
    80004e14:	49050513          	addi	a0,a0,1168 # 800092a0 <CONSOLE_STATUS+0x290>
    80004e18:	00001097          	auipc	ra,0x1
    80004e1c:	d34080e7          	jalr	-716(ra) # 80005b4c <_Z11printStringPKc>
    80004e20:	0400006f          	j	80004e60 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004e24:	00005517          	auipc	a0,0x5
    80004e28:	88450513          	addi	a0,a0,-1916 # 800096a8 <CONSOLE_STATUS+0x698>
    80004e2c:	00001097          	auipc	ra,0x1
    80004e30:	d20080e7          	jalr	-736(ra) # 80005b4c <_Z11printStringPKc>
    80004e34:	00000613          	li	a2,0
    80004e38:	00a00593          	li	a1,10
    80004e3c:	00048513          	mv	a0,s1
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	ebc080e7          	jalr	-324(ra) # 80005cfc <_Z8printIntiii>
    80004e48:	00004517          	auipc	a0,0x4
    80004e4c:	45850513          	addi	a0,a0,1112 # 800092a0 <CONSOLE_STATUS+0x290>
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	cfc080e7          	jalr	-772(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004e58:	0014849b          	addiw	s1,s1,1
    80004e5c:	0ff4f493          	andi	s1,s1,255
    80004e60:	00f00793          	li	a5,15
    80004e64:	fc97f0e3          	bgeu	a5,s1,80004e24 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004e68:	00005517          	auipc	a0,0x5
    80004e6c:	86850513          	addi	a0,a0,-1944 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80004e70:	00001097          	auipc	ra,0x1
    80004e74:	cdc080e7          	jalr	-804(ra) # 80005b4c <_Z11printStringPKc>
    finishedD = true;
    80004e78:	00100793          	li	a5,1
    80004e7c:	00007717          	auipc	a4,0x7
    80004e80:	1af70a23          	sb	a5,436(a4) # 8000c030 <_ZL9finishedD>
    thread_dispatch();
    80004e84:	ffffc097          	auipc	ra,0xffffc
    80004e88:	504080e7          	jalr	1284(ra) # 80001388 <_Z15thread_dispatchv>
}
    80004e8c:	01813083          	ld	ra,24(sp)
    80004e90:	01013403          	ld	s0,16(sp)
    80004e94:	00813483          	ld	s1,8(sp)
    80004e98:	00013903          	ld	s2,0(sp)
    80004e9c:	02010113          	addi	sp,sp,32
    80004ea0:	00008067          	ret

0000000080004ea4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004ea4:	fe010113          	addi	sp,sp,-32
    80004ea8:	00113c23          	sd	ra,24(sp)
    80004eac:	00813823          	sd	s0,16(sp)
    80004eb0:	00913423          	sd	s1,8(sp)
    80004eb4:	01213023          	sd	s2,0(sp)
    80004eb8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004ebc:	00000493          	li	s1,0
    80004ec0:	0400006f          	j	80004f00 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004ec4:	00004517          	auipc	a0,0x4
    80004ec8:	7b450513          	addi	a0,a0,1972 # 80009678 <CONSOLE_STATUS+0x668>
    80004ecc:	00001097          	auipc	ra,0x1
    80004ed0:	c80080e7          	jalr	-896(ra) # 80005b4c <_Z11printStringPKc>
    80004ed4:	00000613          	li	a2,0
    80004ed8:	00a00593          	li	a1,10
    80004edc:	00048513          	mv	a0,s1
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	e1c080e7          	jalr	-484(ra) # 80005cfc <_Z8printIntiii>
    80004ee8:	00004517          	auipc	a0,0x4
    80004eec:	3b850513          	addi	a0,a0,952 # 800092a0 <CONSOLE_STATUS+0x290>
    80004ef0:	00001097          	auipc	ra,0x1
    80004ef4:	c5c080e7          	jalr	-932(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ef8:	0014849b          	addiw	s1,s1,1
    80004efc:	0ff4f493          	andi	s1,s1,255
    80004f00:	00200793          	li	a5,2
    80004f04:	fc97f0e3          	bgeu	a5,s1,80004ec4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004f08:	00004517          	auipc	a0,0x4
    80004f0c:	77850513          	addi	a0,a0,1912 # 80009680 <CONSOLE_STATUS+0x670>
    80004f10:	00001097          	auipc	ra,0x1
    80004f14:	c3c080e7          	jalr	-964(ra) # 80005b4c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004f18:	00700313          	li	t1,7
    thread_dispatch();
    80004f1c:	ffffc097          	auipc	ra,0xffffc
    80004f20:	46c080e7          	jalr	1132(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004f24:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004f28:	00004517          	auipc	a0,0x4
    80004f2c:	76850513          	addi	a0,a0,1896 # 80009690 <CONSOLE_STATUS+0x680>
    80004f30:	00001097          	auipc	ra,0x1
    80004f34:	c1c080e7          	jalr	-996(ra) # 80005b4c <_Z11printStringPKc>
    80004f38:	00000613          	li	a2,0
    80004f3c:	00a00593          	li	a1,10
    80004f40:	0009051b          	sext.w	a0,s2
    80004f44:	00001097          	auipc	ra,0x1
    80004f48:	db8080e7          	jalr	-584(ra) # 80005cfc <_Z8printIntiii>
    80004f4c:	00004517          	auipc	a0,0x4
    80004f50:	35450513          	addi	a0,a0,852 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f54:	00001097          	auipc	ra,0x1
    80004f58:	bf8080e7          	jalr	-1032(ra) # 80005b4c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004f5c:	00c00513          	li	a0,12
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	d88080e7          	jalr	-632(ra) # 80004ce8 <_ZL9fibonaccim>
    80004f68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004f6c:	00004517          	auipc	a0,0x4
    80004f70:	72c50513          	addi	a0,a0,1836 # 80009698 <CONSOLE_STATUS+0x688>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	bd8080e7          	jalr	-1064(ra) # 80005b4c <_Z11printStringPKc>
    80004f7c:	00000613          	li	a2,0
    80004f80:	00a00593          	li	a1,10
    80004f84:	0009051b          	sext.w	a0,s2
    80004f88:	00001097          	auipc	ra,0x1
    80004f8c:	d74080e7          	jalr	-652(ra) # 80005cfc <_Z8printIntiii>
    80004f90:	00004517          	auipc	a0,0x4
    80004f94:	31050513          	addi	a0,a0,784 # 800092a0 <CONSOLE_STATUS+0x290>
    80004f98:	00001097          	auipc	ra,0x1
    80004f9c:	bb4080e7          	jalr	-1100(ra) # 80005b4c <_Z11printStringPKc>
    80004fa0:	0400006f          	j	80004fe0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004fa4:	00004517          	auipc	a0,0x4
    80004fa8:	6d450513          	addi	a0,a0,1748 # 80009678 <CONSOLE_STATUS+0x668>
    80004fac:	00001097          	auipc	ra,0x1
    80004fb0:	ba0080e7          	jalr	-1120(ra) # 80005b4c <_Z11printStringPKc>
    80004fb4:	00000613          	li	a2,0
    80004fb8:	00a00593          	li	a1,10
    80004fbc:	00048513          	mv	a0,s1
    80004fc0:	00001097          	auipc	ra,0x1
    80004fc4:	d3c080e7          	jalr	-708(ra) # 80005cfc <_Z8printIntiii>
    80004fc8:	00004517          	auipc	a0,0x4
    80004fcc:	2d850513          	addi	a0,a0,728 # 800092a0 <CONSOLE_STATUS+0x290>
    80004fd0:	00001097          	auipc	ra,0x1
    80004fd4:	b7c080e7          	jalr	-1156(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004fd8:	0014849b          	addiw	s1,s1,1
    80004fdc:	0ff4f493          	andi	s1,s1,255
    80004fe0:	00500793          	li	a5,5
    80004fe4:	fc97f0e3          	bgeu	a5,s1,80004fa4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004fe8:	00004517          	auipc	a0,0x4
    80004fec:	66850513          	addi	a0,a0,1640 # 80009650 <CONSOLE_STATUS+0x640>
    80004ff0:	00001097          	auipc	ra,0x1
    80004ff4:	b5c080e7          	jalr	-1188(ra) # 80005b4c <_Z11printStringPKc>
    finishedC = true;
    80004ff8:	00100793          	li	a5,1
    80004ffc:	00007717          	auipc	a4,0x7
    80005000:	02f70aa3          	sb	a5,53(a4) # 8000c031 <_ZL9finishedC>
    thread_dispatch();
    80005004:	ffffc097          	auipc	ra,0xffffc
    80005008:	384080e7          	jalr	900(ra) # 80001388 <_Z15thread_dispatchv>
}
    8000500c:	01813083          	ld	ra,24(sp)
    80005010:	01013403          	ld	s0,16(sp)
    80005014:	00813483          	ld	s1,8(sp)
    80005018:	00013903          	ld	s2,0(sp)
    8000501c:	02010113          	addi	sp,sp,32
    80005020:	00008067          	ret

0000000080005024 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005024:	fe010113          	addi	sp,sp,-32
    80005028:	00113c23          	sd	ra,24(sp)
    8000502c:	00813823          	sd	s0,16(sp)
    80005030:	00913423          	sd	s1,8(sp)
    80005034:	01213023          	sd	s2,0(sp)
    80005038:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000503c:	00000913          	li	s2,0
    80005040:	0380006f          	j	80005078 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80005044:	ffffc097          	auipc	ra,0xffffc
    80005048:	344080e7          	jalr	836(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000504c:	00148493          	addi	s1,s1,1
    80005050:	000027b7          	lui	a5,0x2
    80005054:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005058:	0097ee63          	bltu	a5,s1,80005074 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000505c:	00000713          	li	a4,0
    80005060:	000077b7          	lui	a5,0x7
    80005064:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005068:	fce7eee3          	bltu	a5,a4,80005044 <_ZL11workerBodyBPv+0x20>
    8000506c:	00170713          	addi	a4,a4,1
    80005070:	ff1ff06f          	j	80005060 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005074:	00190913          	addi	s2,s2,1
    80005078:	00f00793          	li	a5,15
    8000507c:	0527e063          	bltu	a5,s2,800050bc <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005080:	00004517          	auipc	a0,0x4
    80005084:	5e050513          	addi	a0,a0,1504 # 80009660 <CONSOLE_STATUS+0x650>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	ac4080e7          	jalr	-1340(ra) # 80005b4c <_Z11printStringPKc>
    80005090:	00000613          	li	a2,0
    80005094:	00a00593          	li	a1,10
    80005098:	0009051b          	sext.w	a0,s2
    8000509c:	00001097          	auipc	ra,0x1
    800050a0:	c60080e7          	jalr	-928(ra) # 80005cfc <_Z8printIntiii>
    800050a4:	00004517          	auipc	a0,0x4
    800050a8:	1fc50513          	addi	a0,a0,508 # 800092a0 <CONSOLE_STATUS+0x290>
    800050ac:	00001097          	auipc	ra,0x1
    800050b0:	aa0080e7          	jalr	-1376(ra) # 80005b4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800050b4:	00000493          	li	s1,0
    800050b8:	f99ff06f          	j	80005050 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800050bc:	00004517          	auipc	a0,0x4
    800050c0:	5ac50513          	addi	a0,a0,1452 # 80009668 <CONSOLE_STATUS+0x658>
    800050c4:	00001097          	auipc	ra,0x1
    800050c8:	a88080e7          	jalr	-1400(ra) # 80005b4c <_Z11printStringPKc>
    finishedB = true;
    800050cc:	00100793          	li	a5,1
    800050d0:	00007717          	auipc	a4,0x7
    800050d4:	f6f70123          	sb	a5,-158(a4) # 8000c032 <_ZL9finishedB>
    thread_dispatch();
    800050d8:	ffffc097          	auipc	ra,0xffffc
    800050dc:	2b0080e7          	jalr	688(ra) # 80001388 <_Z15thread_dispatchv>
}
    800050e0:	01813083          	ld	ra,24(sp)
    800050e4:	01013403          	ld	s0,16(sp)
    800050e8:	00813483          	ld	s1,8(sp)
    800050ec:	00013903          	ld	s2,0(sp)
    800050f0:	02010113          	addi	sp,sp,32
    800050f4:	00008067          	ret

00000000800050f8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800050f8:	fe010113          	addi	sp,sp,-32
    800050fc:	00113c23          	sd	ra,24(sp)
    80005100:	00813823          	sd	s0,16(sp)
    80005104:	00913423          	sd	s1,8(sp)
    80005108:	01213023          	sd	s2,0(sp)
    8000510c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005110:	00000913          	li	s2,0
    80005114:	0380006f          	j	8000514c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005118:	ffffc097          	auipc	ra,0xffffc
    8000511c:	270080e7          	jalr	624(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005120:	00148493          	addi	s1,s1,1
    80005124:	000027b7          	lui	a5,0x2
    80005128:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000512c:	0097ee63          	bltu	a5,s1,80005148 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005130:	00000713          	li	a4,0
    80005134:	000077b7          	lui	a5,0x7
    80005138:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000513c:	fce7eee3          	bltu	a5,a4,80005118 <_ZL11workerBodyAPv+0x20>
    80005140:	00170713          	addi	a4,a4,1
    80005144:	ff1ff06f          	j	80005134 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005148:	00190913          	addi	s2,s2,1
    8000514c:	00900793          	li	a5,9
    80005150:	0527e063          	bltu	a5,s2,80005190 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005154:	00004517          	auipc	a0,0x4
    80005158:	4f450513          	addi	a0,a0,1268 # 80009648 <CONSOLE_STATUS+0x638>
    8000515c:	00001097          	auipc	ra,0x1
    80005160:	9f0080e7          	jalr	-1552(ra) # 80005b4c <_Z11printStringPKc>
    80005164:	00000613          	li	a2,0
    80005168:	00a00593          	li	a1,10
    8000516c:	0009051b          	sext.w	a0,s2
    80005170:	00001097          	auipc	ra,0x1
    80005174:	b8c080e7          	jalr	-1140(ra) # 80005cfc <_Z8printIntiii>
    80005178:	00004517          	auipc	a0,0x4
    8000517c:	12850513          	addi	a0,a0,296 # 800092a0 <CONSOLE_STATUS+0x290>
    80005180:	00001097          	auipc	ra,0x1
    80005184:	9cc080e7          	jalr	-1588(ra) # 80005b4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005188:	00000493          	li	s1,0
    8000518c:	f99ff06f          	j	80005124 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005190:	00004517          	auipc	a0,0x4
    80005194:	4c050513          	addi	a0,a0,1216 # 80009650 <CONSOLE_STATUS+0x640>
    80005198:	00001097          	auipc	ra,0x1
    8000519c:	9b4080e7          	jalr	-1612(ra) # 80005b4c <_Z11printStringPKc>
    finishedA = true;
    800051a0:	00100793          	li	a5,1
    800051a4:	00007717          	auipc	a4,0x7
    800051a8:	e8f707a3          	sb	a5,-369(a4) # 8000c033 <_ZL9finishedA>
}
    800051ac:	01813083          	ld	ra,24(sp)
    800051b0:	01013403          	ld	s0,16(sp)
    800051b4:	00813483          	ld	s1,8(sp)
    800051b8:	00013903          	ld	s2,0(sp)
    800051bc:	02010113          	addi	sp,sp,32
    800051c0:	00008067          	ret

00000000800051c4 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800051c4:	fd010113          	addi	sp,sp,-48
    800051c8:	02113423          	sd	ra,40(sp)
    800051cc:	02813023          	sd	s0,32(sp)
    800051d0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800051d4:	00000613          	li	a2,0
    800051d8:	00000597          	auipc	a1,0x0
    800051dc:	f2058593          	addi	a1,a1,-224 # 800050f8 <_ZL11workerBodyAPv>
    800051e0:	fd040513          	addi	a0,s0,-48
    800051e4:	ffffc097          	auipc	ra,0xffffc
    800051e8:	0a0080e7          	jalr	160(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800051ec:	00004517          	auipc	a0,0x4
    800051f0:	4f450513          	addi	a0,a0,1268 # 800096e0 <CONSOLE_STATUS+0x6d0>
    800051f4:	00001097          	auipc	ra,0x1
    800051f8:	958080e7          	jalr	-1704(ra) # 80005b4c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800051fc:	00000613          	li	a2,0
    80005200:	00000597          	auipc	a1,0x0
    80005204:	e2458593          	addi	a1,a1,-476 # 80005024 <_ZL11workerBodyBPv>
    80005208:	fd840513          	addi	a0,s0,-40
    8000520c:	ffffc097          	auipc	ra,0xffffc
    80005210:	078080e7          	jalr	120(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005214:	00004517          	auipc	a0,0x4
    80005218:	4e450513          	addi	a0,a0,1252 # 800096f8 <CONSOLE_STATUS+0x6e8>
    8000521c:	00001097          	auipc	ra,0x1
    80005220:	930080e7          	jalr	-1744(ra) # 80005b4c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005224:	00000613          	li	a2,0
    80005228:	00000597          	auipc	a1,0x0
    8000522c:	c7c58593          	addi	a1,a1,-900 # 80004ea4 <_ZL11workerBodyCPv>
    80005230:	fe040513          	addi	a0,s0,-32
    80005234:	ffffc097          	auipc	ra,0xffffc
    80005238:	050080e7          	jalr	80(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    8000523c:	00004517          	auipc	a0,0x4
    80005240:	4d450513          	addi	a0,a0,1236 # 80009710 <CONSOLE_STATUS+0x700>
    80005244:	00001097          	auipc	ra,0x1
    80005248:	908080e7          	jalr	-1784(ra) # 80005b4c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000524c:	00000613          	li	a2,0
    80005250:	00000597          	auipc	a1,0x0
    80005254:	b0c58593          	addi	a1,a1,-1268 # 80004d5c <_ZL11workerBodyDPv>
    80005258:	fe840513          	addi	a0,s0,-24
    8000525c:	ffffc097          	auipc	ra,0xffffc
    80005260:	028080e7          	jalr	40(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005264:	00004517          	auipc	a0,0x4
    80005268:	4c450513          	addi	a0,a0,1220 # 80009728 <CONSOLE_STATUS+0x718>
    8000526c:	00001097          	auipc	ra,0x1
    80005270:	8e0080e7          	jalr	-1824(ra) # 80005b4c <_Z11printStringPKc>
    80005274:	00c0006f          	j	80005280 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005278:	ffffc097          	auipc	ra,0xffffc
    8000527c:	110080e7          	jalr	272(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005280:	00007797          	auipc	a5,0x7
    80005284:	db37c783          	lbu	a5,-589(a5) # 8000c033 <_ZL9finishedA>
    80005288:	fe0788e3          	beqz	a5,80005278 <_Z18Threads_C_API_testv+0xb4>
    8000528c:	00007797          	auipc	a5,0x7
    80005290:	da67c783          	lbu	a5,-602(a5) # 8000c032 <_ZL9finishedB>
    80005294:	fe0782e3          	beqz	a5,80005278 <_Z18Threads_C_API_testv+0xb4>
    80005298:	00007797          	auipc	a5,0x7
    8000529c:	d997c783          	lbu	a5,-615(a5) # 8000c031 <_ZL9finishedC>
    800052a0:	fc078ce3          	beqz	a5,80005278 <_Z18Threads_C_API_testv+0xb4>
    800052a4:	00007797          	auipc	a5,0x7
    800052a8:	d8c7c783          	lbu	a5,-628(a5) # 8000c030 <_ZL9finishedD>
    800052ac:	fc0786e3          	beqz	a5,80005278 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800052b0:	02813083          	ld	ra,40(sp)
    800052b4:	02013403          	ld	s0,32(sp)
    800052b8:	03010113          	addi	sp,sp,48
    800052bc:	00008067          	ret

00000000800052c0 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800052c0:	fd010113          	addi	sp,sp,-48
    800052c4:	02113423          	sd	ra,40(sp)
    800052c8:	02813023          	sd	s0,32(sp)
    800052cc:	00913c23          	sd	s1,24(sp)
    800052d0:	01213823          	sd	s2,16(sp)
    800052d4:	01313423          	sd	s3,8(sp)
    800052d8:	03010413          	addi	s0,sp,48
    800052dc:	00050993          	mv	s3,a0
    800052e0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800052e4:	00000913          	li	s2,0
    800052e8:	00c0006f          	j	800052f4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052ec:	ffffd097          	auipc	ra,0xffffd
    800052f0:	6a0080e7          	jalr	1696(ra) # 8000298c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800052f4:	ffffc097          	auipc	ra,0xffffc
    800052f8:	314080e7          	jalr	788(ra) # 80001608 <_Z4getcv>
    800052fc:	0005059b          	sext.w	a1,a0
    80005300:	01b00793          	li	a5,27
    80005304:	02f58a63          	beq	a1,a5,80005338 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005308:	0084b503          	ld	a0,8(s1)
    8000530c:	00001097          	auipc	ra,0x1
    80005310:	c64080e7          	jalr	-924(ra) # 80005f70 <_ZN9BufferCPP3putEi>
        i++;
    80005314:	0019071b          	addiw	a4,s2,1
    80005318:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000531c:	0004a683          	lw	a3,0(s1)
    80005320:	0026979b          	slliw	a5,a3,0x2
    80005324:	00d787bb          	addw	a5,a5,a3
    80005328:	0017979b          	slliw	a5,a5,0x1
    8000532c:	02f767bb          	remw	a5,a4,a5
    80005330:	fc0792e3          	bnez	a5,800052f4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005334:	fb9ff06f          	j	800052ec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005338:	00100793          	li	a5,1
    8000533c:	00007717          	auipc	a4,0x7
    80005340:	cef72e23          	sw	a5,-772(a4) # 8000c038 <_ZL9threadEnd>
    td->buffer->put('!');
    80005344:	0209b783          	ld	a5,32(s3)
    80005348:	02100593          	li	a1,33
    8000534c:	0087b503          	ld	a0,8(a5)
    80005350:	00001097          	auipc	ra,0x1
    80005354:	c20080e7          	jalr	-992(ra) # 80005f70 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005358:	0104b503          	ld	a0,16(s1)
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	73c080e7          	jalr	1852(ra) # 80002a98 <_ZN9Semaphore6signalEv>
}
    80005364:	02813083          	ld	ra,40(sp)
    80005368:	02013403          	ld	s0,32(sp)
    8000536c:	01813483          	ld	s1,24(sp)
    80005370:	01013903          	ld	s2,16(sp)
    80005374:	00813983          	ld	s3,8(sp)
    80005378:	03010113          	addi	sp,sp,48
    8000537c:	00008067          	ret

0000000080005380 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005380:	fe010113          	addi	sp,sp,-32
    80005384:	00113c23          	sd	ra,24(sp)
    80005388:	00813823          	sd	s0,16(sp)
    8000538c:	00913423          	sd	s1,8(sp)
    80005390:	01213023          	sd	s2,0(sp)
    80005394:	02010413          	addi	s0,sp,32
    80005398:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000539c:	00000913          	li	s2,0
    800053a0:	00c0006f          	j	800053ac <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800053a4:	ffffd097          	auipc	ra,0xffffd
    800053a8:	5e8080e7          	jalr	1512(ra) # 8000298c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800053ac:	00007797          	auipc	a5,0x7
    800053b0:	c8c7a783          	lw	a5,-884(a5) # 8000c038 <_ZL9threadEnd>
    800053b4:	02079e63          	bnez	a5,800053f0 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800053b8:	0004a583          	lw	a1,0(s1)
    800053bc:	0305859b          	addiw	a1,a1,48
    800053c0:	0084b503          	ld	a0,8(s1)
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	bac080e7          	jalr	-1108(ra) # 80005f70 <_ZN9BufferCPP3putEi>
        i++;
    800053cc:	0019071b          	addiw	a4,s2,1
    800053d0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800053d4:	0004a683          	lw	a3,0(s1)
    800053d8:	0026979b          	slliw	a5,a3,0x2
    800053dc:	00d787bb          	addw	a5,a5,a3
    800053e0:	0017979b          	slliw	a5,a5,0x1
    800053e4:	02f767bb          	remw	a5,a4,a5
    800053e8:	fc0792e3          	bnez	a5,800053ac <_ZN12ProducerSync8producerEPv+0x2c>
    800053ec:	fb9ff06f          	j	800053a4 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800053f0:	0104b503          	ld	a0,16(s1)
    800053f4:	ffffd097          	auipc	ra,0xffffd
    800053f8:	6a4080e7          	jalr	1700(ra) # 80002a98 <_ZN9Semaphore6signalEv>
}
    800053fc:	01813083          	ld	ra,24(sp)
    80005400:	01013403          	ld	s0,16(sp)
    80005404:	00813483          	ld	s1,8(sp)
    80005408:	00013903          	ld	s2,0(sp)
    8000540c:	02010113          	addi	sp,sp,32
    80005410:	00008067          	ret

0000000080005414 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005414:	fd010113          	addi	sp,sp,-48
    80005418:	02113423          	sd	ra,40(sp)
    8000541c:	02813023          	sd	s0,32(sp)
    80005420:	00913c23          	sd	s1,24(sp)
    80005424:	01213823          	sd	s2,16(sp)
    80005428:	01313423          	sd	s3,8(sp)
    8000542c:	01413023          	sd	s4,0(sp)
    80005430:	03010413          	addi	s0,sp,48
    80005434:	00050993          	mv	s3,a0
    80005438:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000543c:	00000a13          	li	s4,0
    80005440:	01c0006f          	j	8000545c <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005444:	ffffd097          	auipc	ra,0xffffd
    80005448:	548080e7          	jalr	1352(ra) # 8000298c <_ZN6Thread8dispatchEv>
    8000544c:	0500006f          	j	8000549c <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005450:	00a00513          	li	a0,10
    80005454:	ffffc097          	auipc	ra,0xffffc
    80005458:	1f4080e7          	jalr	500(ra) # 80001648 <_Z4putcc>
    while (!threadEnd) {
    8000545c:	00007797          	auipc	a5,0x7
    80005460:	bdc7a783          	lw	a5,-1060(a5) # 8000c038 <_ZL9threadEnd>
    80005464:	06079263          	bnez	a5,800054c8 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005468:	00893503          	ld	a0,8(s2)
    8000546c:	00001097          	auipc	ra,0x1
    80005470:	b94080e7          	jalr	-1132(ra) # 80006000 <_ZN9BufferCPP3getEv>
        i++;
    80005474:	001a049b          	addiw	s1,s4,1
    80005478:	00048a1b          	sext.w	s4,s1
        putc(key);
    8000547c:	0ff57513          	andi	a0,a0,255
    80005480:	ffffc097          	auipc	ra,0xffffc
    80005484:	1c8080e7          	jalr	456(ra) # 80001648 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005488:	00092703          	lw	a4,0(s2)
    8000548c:	0027179b          	slliw	a5,a4,0x2
    80005490:	00e787bb          	addw	a5,a5,a4
    80005494:	02f4e7bb          	remw	a5,s1,a5
    80005498:	fa0786e3          	beqz	a5,80005444 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    8000549c:	05000793          	li	a5,80
    800054a0:	02f4e4bb          	remw	s1,s1,a5
    800054a4:	fa049ce3          	bnez	s1,8000545c <_ZN12ConsumerSync8consumerEPv+0x48>
    800054a8:	fa9ff06f          	j	80005450 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800054ac:	0209b783          	ld	a5,32(s3)
    800054b0:	0087b503          	ld	a0,8(a5)
    800054b4:	00001097          	auipc	ra,0x1
    800054b8:	b4c080e7          	jalr	-1204(ra) # 80006000 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800054bc:	0ff57513          	andi	a0,a0,255
    800054c0:	ffffd097          	auipc	ra,0xffffd
    800054c4:	694080e7          	jalr	1684(ra) # 80002b54 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800054c8:	0209b783          	ld	a5,32(s3)
    800054cc:	0087b503          	ld	a0,8(a5)
    800054d0:	00001097          	auipc	ra,0x1
    800054d4:	bbc080e7          	jalr	-1092(ra) # 8000608c <_ZN9BufferCPP6getCntEv>
    800054d8:	fca04ae3          	bgtz	a0,800054ac <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800054dc:	01093503          	ld	a0,16(s2)
    800054e0:	ffffd097          	auipc	ra,0xffffd
    800054e4:	5b8080e7          	jalr	1464(ra) # 80002a98 <_ZN9Semaphore6signalEv>
}
    800054e8:	02813083          	ld	ra,40(sp)
    800054ec:	02013403          	ld	s0,32(sp)
    800054f0:	01813483          	ld	s1,24(sp)
    800054f4:	01013903          	ld	s2,16(sp)
    800054f8:	00813983          	ld	s3,8(sp)
    800054fc:	00013a03          	ld	s4,0(sp)
    80005500:	03010113          	addi	sp,sp,48
    80005504:	00008067          	ret

0000000080005508 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005508:	f8010113          	addi	sp,sp,-128
    8000550c:	06113c23          	sd	ra,120(sp)
    80005510:	06813823          	sd	s0,112(sp)
    80005514:	06913423          	sd	s1,104(sp)
    80005518:	07213023          	sd	s2,96(sp)
    8000551c:	05313c23          	sd	s3,88(sp)
    80005520:	05413823          	sd	s4,80(sp)
    80005524:	05513423          	sd	s5,72(sp)
    80005528:	05613023          	sd	s6,64(sp)
    8000552c:	03713c23          	sd	s7,56(sp)
    80005530:	03813823          	sd	s8,48(sp)
    80005534:	03913423          	sd	s9,40(sp)
    80005538:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    8000553c:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005540:	00004517          	auipc	a0,0x4
    80005544:	02050513          	addi	a0,a0,32 # 80009560 <CONSOLE_STATUS+0x550>
    80005548:	00000097          	auipc	ra,0x0
    8000554c:	604080e7          	jalr	1540(ra) # 80005b4c <_Z11printStringPKc>
    getString(input, 30);
    80005550:	01e00593          	li	a1,30
    80005554:	f8040493          	addi	s1,s0,-128
    80005558:	00048513          	mv	a0,s1
    8000555c:	00000097          	auipc	ra,0x0
    80005560:	678080e7          	jalr	1656(ra) # 80005bd4 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005564:	00048513          	mv	a0,s1
    80005568:	00000097          	auipc	ra,0x0
    8000556c:	744080e7          	jalr	1860(ra) # 80005cac <_Z11stringToIntPKc>
    80005570:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005574:	00004517          	auipc	a0,0x4
    80005578:	00c50513          	addi	a0,a0,12 # 80009580 <CONSOLE_STATUS+0x570>
    8000557c:	00000097          	auipc	ra,0x0
    80005580:	5d0080e7          	jalr	1488(ra) # 80005b4c <_Z11printStringPKc>
    getString(input, 30);
    80005584:	01e00593          	li	a1,30
    80005588:	00048513          	mv	a0,s1
    8000558c:	00000097          	auipc	ra,0x0
    80005590:	648080e7          	jalr	1608(ra) # 80005bd4 <_Z9getStringPci>
    n = stringToInt(input);
    80005594:	00048513          	mv	a0,s1
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	714080e7          	jalr	1812(ra) # 80005cac <_Z11stringToIntPKc>
    800055a0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800055a4:	00004517          	auipc	a0,0x4
    800055a8:	ffc50513          	addi	a0,a0,-4 # 800095a0 <CONSOLE_STATUS+0x590>
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	5a0080e7          	jalr	1440(ra) # 80005b4c <_Z11printStringPKc>
    800055b4:	00000613          	li	a2,0
    800055b8:	00a00593          	li	a1,10
    800055bc:	00090513          	mv	a0,s2
    800055c0:	00000097          	auipc	ra,0x0
    800055c4:	73c080e7          	jalr	1852(ra) # 80005cfc <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800055c8:	00004517          	auipc	a0,0x4
    800055cc:	ff050513          	addi	a0,a0,-16 # 800095b8 <CONSOLE_STATUS+0x5a8>
    800055d0:	00000097          	auipc	ra,0x0
    800055d4:	57c080e7          	jalr	1404(ra) # 80005b4c <_Z11printStringPKc>
    800055d8:	00000613          	li	a2,0
    800055dc:	00a00593          	li	a1,10
    800055e0:	00048513          	mv	a0,s1
    800055e4:	00000097          	auipc	ra,0x0
    800055e8:	718080e7          	jalr	1816(ra) # 80005cfc <_Z8printIntiii>
    printString(".\n");
    800055ec:	00004517          	auipc	a0,0x4
    800055f0:	fe450513          	addi	a0,a0,-28 # 800095d0 <CONSOLE_STATUS+0x5c0>
    800055f4:	00000097          	auipc	ra,0x0
    800055f8:	558080e7          	jalr	1368(ra) # 80005b4c <_Z11printStringPKc>
    if(threadNum > n) {
    800055fc:	0324c463          	blt	s1,s2,80005624 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005600:	03205c63          	blez	s2,80005638 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005604:	03800513          	li	a0,56
    80005608:	ffffd097          	auipc	ra,0xffffd
    8000560c:	028080e7          	jalr	40(ra) # 80002630 <_Znwm>
    80005610:	00050a93          	mv	s5,a0
    80005614:	00048593          	mv	a1,s1
    80005618:	00001097          	auipc	ra,0x1
    8000561c:	804080e7          	jalr	-2044(ra) # 80005e1c <_ZN9BufferCPPC1Ei>
    80005620:	0300006f          	j	80005650 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005624:	00004517          	auipc	a0,0x4
    80005628:	fb450513          	addi	a0,a0,-76 # 800095d8 <CONSOLE_STATUS+0x5c8>
    8000562c:	00000097          	auipc	ra,0x0
    80005630:	520080e7          	jalr	1312(ra) # 80005b4c <_Z11printStringPKc>
        return;
    80005634:	0140006f          	j	80005648 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005638:	00004517          	auipc	a0,0x4
    8000563c:	fe050513          	addi	a0,a0,-32 # 80009618 <CONSOLE_STATUS+0x608>
    80005640:	00000097          	auipc	ra,0x0
    80005644:	50c080e7          	jalr	1292(ra) # 80005b4c <_Z11printStringPKc>
        return;
    80005648:	000b8113          	mv	sp,s7
    8000564c:	2380006f          	j	80005884 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005650:	01000513          	li	a0,16
    80005654:	ffffd097          	auipc	ra,0xffffd
    80005658:	fdc080e7          	jalr	-36(ra) # 80002630 <_Znwm>
    8000565c:	00050493          	mv	s1,a0
    80005660:	00000593          	li	a1,0
    80005664:	ffffd097          	auipc	ra,0xffffd
    80005668:	3cc080e7          	jalr	972(ra) # 80002a30 <_ZN9SemaphoreC1Ej>
    8000566c:	00007797          	auipc	a5,0x7
    80005670:	9c97ba23          	sd	s1,-1580(a5) # 8000c040 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005674:	00391793          	slli	a5,s2,0x3
    80005678:	00f78793          	addi	a5,a5,15
    8000567c:	ff07f793          	andi	a5,a5,-16
    80005680:	40f10133          	sub	sp,sp,a5
    80005684:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005688:	0019071b          	addiw	a4,s2,1
    8000568c:	00171793          	slli	a5,a4,0x1
    80005690:	00e787b3          	add	a5,a5,a4
    80005694:	00379793          	slli	a5,a5,0x3
    80005698:	00f78793          	addi	a5,a5,15
    8000569c:	ff07f793          	andi	a5,a5,-16
    800056a0:	40f10133          	sub	sp,sp,a5
    800056a4:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800056a8:	00191c13          	slli	s8,s2,0x1
    800056ac:	012c07b3          	add	a5,s8,s2
    800056b0:	00379793          	slli	a5,a5,0x3
    800056b4:	00fa07b3          	add	a5,s4,a5
    800056b8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800056bc:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800056c0:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800056c4:	02800513          	li	a0,40
    800056c8:	ffffd097          	auipc	ra,0xffffd
    800056cc:	f68080e7          	jalr	-152(ra) # 80002630 <_Znwm>
    800056d0:	00050b13          	mv	s6,a0
    800056d4:	012c0c33          	add	s8,s8,s2
    800056d8:	003c1c13          	slli	s8,s8,0x3
    800056dc:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800056e0:	ffffd097          	auipc	ra,0xffffd
    800056e4:	228080e7          	jalr	552(ra) # 80002908 <_ZN6ThreadC1Ev>
    800056e8:	00007797          	auipc	a5,0x7
    800056ec:	81878793          	addi	a5,a5,-2024 # 8000bf00 <_ZTV12ConsumerSync+0x10>
    800056f0:	00fb3023          	sd	a5,0(s6)
    800056f4:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800056f8:	000b0513          	mv	a0,s6
    800056fc:	ffffd097          	auipc	ra,0xffffd
    80005700:	23c080e7          	jalr	572(ra) # 80002938 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005704:	00000493          	li	s1,0
    80005708:	0380006f          	j	80005740 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000570c:	00006797          	auipc	a5,0x6
    80005710:	7cc78793          	addi	a5,a5,1996 # 8000bed8 <_ZTV12ProducerSync+0x10>
    80005714:	00fcb023          	sd	a5,0(s9)
    80005718:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    8000571c:	00349793          	slli	a5,s1,0x3
    80005720:	00f987b3          	add	a5,s3,a5
    80005724:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005728:	00349793          	slli	a5,s1,0x3
    8000572c:	00f987b3          	add	a5,s3,a5
    80005730:	0007b503          	ld	a0,0(a5)
    80005734:	ffffd097          	auipc	ra,0xffffd
    80005738:	204080e7          	jalr	516(ra) # 80002938 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000573c:	0014849b          	addiw	s1,s1,1
    80005740:	0b24d063          	bge	s1,s2,800057e0 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005744:	00149793          	slli	a5,s1,0x1
    80005748:	009787b3          	add	a5,a5,s1
    8000574c:	00379793          	slli	a5,a5,0x3
    80005750:	00fa07b3          	add	a5,s4,a5
    80005754:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005758:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    8000575c:	00007717          	auipc	a4,0x7
    80005760:	8e473703          	ld	a4,-1820(a4) # 8000c040 <_ZL10waitForAll>
    80005764:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005768:	02905863          	blez	s1,80005798 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    8000576c:	02800513          	li	a0,40
    80005770:	ffffd097          	auipc	ra,0xffffd
    80005774:	ec0080e7          	jalr	-320(ra) # 80002630 <_Znwm>
    80005778:	00050c93          	mv	s9,a0
    8000577c:	00149c13          	slli	s8,s1,0x1
    80005780:	009c0c33          	add	s8,s8,s1
    80005784:	003c1c13          	slli	s8,s8,0x3
    80005788:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    8000578c:	ffffd097          	auipc	ra,0xffffd
    80005790:	17c080e7          	jalr	380(ra) # 80002908 <_ZN6ThreadC1Ev>
    80005794:	f79ff06f          	j	8000570c <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005798:	02800513          	li	a0,40
    8000579c:	ffffd097          	auipc	ra,0xffffd
    800057a0:	e94080e7          	jalr	-364(ra) # 80002630 <_Znwm>
    800057a4:	00050c93          	mv	s9,a0
    800057a8:	00149c13          	slli	s8,s1,0x1
    800057ac:	009c0c33          	add	s8,s8,s1
    800057b0:	003c1c13          	slli	s8,s8,0x3
    800057b4:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800057b8:	ffffd097          	auipc	ra,0xffffd
    800057bc:	150080e7          	jalr	336(ra) # 80002908 <_ZN6ThreadC1Ev>
    800057c0:	00006797          	auipc	a5,0x6
    800057c4:	6f078793          	addi	a5,a5,1776 # 8000beb0 <_ZTV16ProducerKeyboard+0x10>
    800057c8:	00fcb023          	sd	a5,0(s9)
    800057cc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800057d0:	00349793          	slli	a5,s1,0x3
    800057d4:	00f987b3          	add	a5,s3,a5
    800057d8:	0197b023          	sd	s9,0(a5)
    800057dc:	f4dff06f          	j	80005728 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800057e0:	ffffd097          	auipc	ra,0xffffd
    800057e4:	1ac080e7          	jalr	428(ra) # 8000298c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800057e8:	00000493          	li	s1,0
    800057ec:	00994e63          	blt	s2,s1,80005808 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800057f0:	00007517          	auipc	a0,0x7
    800057f4:	85053503          	ld	a0,-1968(a0) # 8000c040 <_ZL10waitForAll>
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	274080e7          	jalr	628(ra) # 80002a6c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005800:	0014849b          	addiw	s1,s1,1
    80005804:	fe9ff06f          	j	800057ec <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005808:	00000493          	li	s1,0
    8000580c:	0080006f          	j	80005814 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005810:	0014849b          	addiw	s1,s1,1
    80005814:	0324d263          	bge	s1,s2,80005838 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005818:	00349793          	slli	a5,s1,0x3
    8000581c:	00f987b3          	add	a5,s3,a5
    80005820:	0007b503          	ld	a0,0(a5)
    80005824:	fe0506e3          	beqz	a0,80005810 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005828:	00053783          	ld	a5,0(a0)
    8000582c:	0087b783          	ld	a5,8(a5)
    80005830:	000780e7          	jalr	a5
    80005834:	fddff06f          	j	80005810 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005838:	000b0a63          	beqz	s6,8000584c <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    8000583c:	000b3783          	ld	a5,0(s6)
    80005840:	0087b783          	ld	a5,8(a5)
    80005844:	000b0513          	mv	a0,s6
    80005848:	000780e7          	jalr	a5
    delete waitForAll;
    8000584c:	00006517          	auipc	a0,0x6
    80005850:	7f453503          	ld	a0,2036(a0) # 8000c040 <_ZL10waitForAll>
    80005854:	00050863          	beqz	a0,80005864 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005858:	00053783          	ld	a5,0(a0)
    8000585c:	0087b783          	ld	a5,8(a5)
    80005860:	000780e7          	jalr	a5
    delete buffer;
    80005864:	000a8e63          	beqz	s5,80005880 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005868:	000a8513          	mv	a0,s5
    8000586c:	00001097          	auipc	ra,0x1
    80005870:	8a8080e7          	jalr	-1880(ra) # 80006114 <_ZN9BufferCPPD1Ev>
    80005874:	000a8513          	mv	a0,s5
    80005878:	ffffd097          	auipc	ra,0xffffd
    8000587c:	e08080e7          	jalr	-504(ra) # 80002680 <_ZdlPv>
    80005880:	000b8113          	mv	sp,s7

}
    80005884:	f8040113          	addi	sp,s0,-128
    80005888:	07813083          	ld	ra,120(sp)
    8000588c:	07013403          	ld	s0,112(sp)
    80005890:	06813483          	ld	s1,104(sp)
    80005894:	06013903          	ld	s2,96(sp)
    80005898:	05813983          	ld	s3,88(sp)
    8000589c:	05013a03          	ld	s4,80(sp)
    800058a0:	04813a83          	ld	s5,72(sp)
    800058a4:	04013b03          	ld	s6,64(sp)
    800058a8:	03813b83          	ld	s7,56(sp)
    800058ac:	03013c03          	ld	s8,48(sp)
    800058b0:	02813c83          	ld	s9,40(sp)
    800058b4:	08010113          	addi	sp,sp,128
    800058b8:	00008067          	ret
    800058bc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800058c0:	000a8513          	mv	a0,s5
    800058c4:	ffffd097          	auipc	ra,0xffffd
    800058c8:	dbc080e7          	jalr	-580(ra) # 80002680 <_ZdlPv>
    800058cc:	00048513          	mv	a0,s1
    800058d0:	00008097          	auipc	ra,0x8
    800058d4:	858080e7          	jalr	-1960(ra) # 8000d128 <_Unwind_Resume>
    800058d8:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800058dc:	00048513          	mv	a0,s1
    800058e0:	ffffd097          	auipc	ra,0xffffd
    800058e4:	da0080e7          	jalr	-608(ra) # 80002680 <_ZdlPv>
    800058e8:	00090513          	mv	a0,s2
    800058ec:	00008097          	auipc	ra,0x8
    800058f0:	83c080e7          	jalr	-1988(ra) # 8000d128 <_Unwind_Resume>
    800058f4:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800058f8:	000b0513          	mv	a0,s6
    800058fc:	ffffd097          	auipc	ra,0xffffd
    80005900:	d84080e7          	jalr	-636(ra) # 80002680 <_ZdlPv>
    80005904:	00048513          	mv	a0,s1
    80005908:	00008097          	auipc	ra,0x8
    8000590c:	820080e7          	jalr	-2016(ra) # 8000d128 <_Unwind_Resume>
    80005910:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005914:	000c8513          	mv	a0,s9
    80005918:	ffffd097          	auipc	ra,0xffffd
    8000591c:	d68080e7          	jalr	-664(ra) # 80002680 <_ZdlPv>
    80005920:	00048513          	mv	a0,s1
    80005924:	00008097          	auipc	ra,0x8
    80005928:	804080e7          	jalr	-2044(ra) # 8000d128 <_Unwind_Resume>
    8000592c:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005930:	000c8513          	mv	a0,s9
    80005934:	ffffd097          	auipc	ra,0xffffd
    80005938:	d4c080e7          	jalr	-692(ra) # 80002680 <_ZdlPv>
    8000593c:	00048513          	mv	a0,s1
    80005940:	00007097          	auipc	ra,0x7
    80005944:	7e8080e7          	jalr	2024(ra) # 8000d128 <_Unwind_Resume>

0000000080005948 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005948:	ff010113          	addi	sp,sp,-16
    8000594c:	00113423          	sd	ra,8(sp)
    80005950:	00813023          	sd	s0,0(sp)
    80005954:	01010413          	addi	s0,sp,16
    80005958:	00006797          	auipc	a5,0x6
    8000595c:	5a878793          	addi	a5,a5,1448 # 8000bf00 <_ZTV12ConsumerSync+0x10>
    80005960:	00f53023          	sd	a5,0(a0)
    80005964:	ffffd097          	auipc	ra,0xffffd
    80005968:	e80080e7          	jalr	-384(ra) # 800027e4 <_ZN6ThreadD1Ev>
    8000596c:	00813083          	ld	ra,8(sp)
    80005970:	00013403          	ld	s0,0(sp)
    80005974:	01010113          	addi	sp,sp,16
    80005978:	00008067          	ret

000000008000597c <_ZN12ConsumerSyncD0Ev>:
    8000597c:	fe010113          	addi	sp,sp,-32
    80005980:	00113c23          	sd	ra,24(sp)
    80005984:	00813823          	sd	s0,16(sp)
    80005988:	00913423          	sd	s1,8(sp)
    8000598c:	02010413          	addi	s0,sp,32
    80005990:	00050493          	mv	s1,a0
    80005994:	00006797          	auipc	a5,0x6
    80005998:	56c78793          	addi	a5,a5,1388 # 8000bf00 <_ZTV12ConsumerSync+0x10>
    8000599c:	00f53023          	sd	a5,0(a0)
    800059a0:	ffffd097          	auipc	ra,0xffffd
    800059a4:	e44080e7          	jalr	-444(ra) # 800027e4 <_ZN6ThreadD1Ev>
    800059a8:	00048513          	mv	a0,s1
    800059ac:	ffffd097          	auipc	ra,0xffffd
    800059b0:	cd4080e7          	jalr	-812(ra) # 80002680 <_ZdlPv>
    800059b4:	01813083          	ld	ra,24(sp)
    800059b8:	01013403          	ld	s0,16(sp)
    800059bc:	00813483          	ld	s1,8(sp)
    800059c0:	02010113          	addi	sp,sp,32
    800059c4:	00008067          	ret

00000000800059c8 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800059c8:	ff010113          	addi	sp,sp,-16
    800059cc:	00113423          	sd	ra,8(sp)
    800059d0:	00813023          	sd	s0,0(sp)
    800059d4:	01010413          	addi	s0,sp,16
    800059d8:	00006797          	auipc	a5,0x6
    800059dc:	50078793          	addi	a5,a5,1280 # 8000bed8 <_ZTV12ProducerSync+0x10>
    800059e0:	00f53023          	sd	a5,0(a0)
    800059e4:	ffffd097          	auipc	ra,0xffffd
    800059e8:	e00080e7          	jalr	-512(ra) # 800027e4 <_ZN6ThreadD1Ev>
    800059ec:	00813083          	ld	ra,8(sp)
    800059f0:	00013403          	ld	s0,0(sp)
    800059f4:	01010113          	addi	sp,sp,16
    800059f8:	00008067          	ret

00000000800059fc <_ZN12ProducerSyncD0Ev>:
    800059fc:	fe010113          	addi	sp,sp,-32
    80005a00:	00113c23          	sd	ra,24(sp)
    80005a04:	00813823          	sd	s0,16(sp)
    80005a08:	00913423          	sd	s1,8(sp)
    80005a0c:	02010413          	addi	s0,sp,32
    80005a10:	00050493          	mv	s1,a0
    80005a14:	00006797          	auipc	a5,0x6
    80005a18:	4c478793          	addi	a5,a5,1220 # 8000bed8 <_ZTV12ProducerSync+0x10>
    80005a1c:	00f53023          	sd	a5,0(a0)
    80005a20:	ffffd097          	auipc	ra,0xffffd
    80005a24:	dc4080e7          	jalr	-572(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80005a28:	00048513          	mv	a0,s1
    80005a2c:	ffffd097          	auipc	ra,0xffffd
    80005a30:	c54080e7          	jalr	-940(ra) # 80002680 <_ZdlPv>
    80005a34:	01813083          	ld	ra,24(sp)
    80005a38:	01013403          	ld	s0,16(sp)
    80005a3c:	00813483          	ld	s1,8(sp)
    80005a40:	02010113          	addi	sp,sp,32
    80005a44:	00008067          	ret

0000000080005a48 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005a48:	ff010113          	addi	sp,sp,-16
    80005a4c:	00113423          	sd	ra,8(sp)
    80005a50:	00813023          	sd	s0,0(sp)
    80005a54:	01010413          	addi	s0,sp,16
    80005a58:	00006797          	auipc	a5,0x6
    80005a5c:	45878793          	addi	a5,a5,1112 # 8000beb0 <_ZTV16ProducerKeyboard+0x10>
    80005a60:	00f53023          	sd	a5,0(a0)
    80005a64:	ffffd097          	auipc	ra,0xffffd
    80005a68:	d80080e7          	jalr	-640(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80005a6c:	00813083          	ld	ra,8(sp)
    80005a70:	00013403          	ld	s0,0(sp)
    80005a74:	01010113          	addi	sp,sp,16
    80005a78:	00008067          	ret

0000000080005a7c <_ZN16ProducerKeyboardD0Ev>:
    80005a7c:	fe010113          	addi	sp,sp,-32
    80005a80:	00113c23          	sd	ra,24(sp)
    80005a84:	00813823          	sd	s0,16(sp)
    80005a88:	00913423          	sd	s1,8(sp)
    80005a8c:	02010413          	addi	s0,sp,32
    80005a90:	00050493          	mv	s1,a0
    80005a94:	00006797          	auipc	a5,0x6
    80005a98:	41c78793          	addi	a5,a5,1052 # 8000beb0 <_ZTV16ProducerKeyboard+0x10>
    80005a9c:	00f53023          	sd	a5,0(a0)
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	d44080e7          	jalr	-700(ra) # 800027e4 <_ZN6ThreadD1Ev>
    80005aa8:	00048513          	mv	a0,s1
    80005aac:	ffffd097          	auipc	ra,0xffffd
    80005ab0:	bd4080e7          	jalr	-1068(ra) # 80002680 <_ZdlPv>
    80005ab4:	01813083          	ld	ra,24(sp)
    80005ab8:	01013403          	ld	s0,16(sp)
    80005abc:	00813483          	ld	s1,8(sp)
    80005ac0:	02010113          	addi	sp,sp,32
    80005ac4:	00008067          	ret

0000000080005ac8 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005ac8:	ff010113          	addi	sp,sp,-16
    80005acc:	00113423          	sd	ra,8(sp)
    80005ad0:	00813023          	sd	s0,0(sp)
    80005ad4:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005ad8:	02053583          	ld	a1,32(a0)
    80005adc:	fffff097          	auipc	ra,0xfffff
    80005ae0:	7e4080e7          	jalr	2020(ra) # 800052c0 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005ae4:	00813083          	ld	ra,8(sp)
    80005ae8:	00013403          	ld	s0,0(sp)
    80005aec:	01010113          	addi	sp,sp,16
    80005af0:	00008067          	ret

0000000080005af4 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005af4:	ff010113          	addi	sp,sp,-16
    80005af8:	00113423          	sd	ra,8(sp)
    80005afc:	00813023          	sd	s0,0(sp)
    80005b00:	01010413          	addi	s0,sp,16
        producer(td);
    80005b04:	02053583          	ld	a1,32(a0)
    80005b08:	00000097          	auipc	ra,0x0
    80005b0c:	878080e7          	jalr	-1928(ra) # 80005380 <_ZN12ProducerSync8producerEPv>
    }
    80005b10:	00813083          	ld	ra,8(sp)
    80005b14:	00013403          	ld	s0,0(sp)
    80005b18:	01010113          	addi	sp,sp,16
    80005b1c:	00008067          	ret

0000000080005b20 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005b20:	ff010113          	addi	sp,sp,-16
    80005b24:	00113423          	sd	ra,8(sp)
    80005b28:	00813023          	sd	s0,0(sp)
    80005b2c:	01010413          	addi	s0,sp,16
        consumer(td);
    80005b30:	02053583          	ld	a1,32(a0)
    80005b34:	00000097          	auipc	ra,0x0
    80005b38:	8e0080e7          	jalr	-1824(ra) # 80005414 <_ZN12ConsumerSync8consumerEPv>
    }
    80005b3c:	00813083          	ld	ra,8(sp)
    80005b40:	00013403          	ld	s0,0(sp)
    80005b44:	01010113          	addi	sp,sp,16
    80005b48:	00008067          	ret

0000000080005b4c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005b4c:	fe010113          	addi	sp,sp,-32
    80005b50:	00113c23          	sd	ra,24(sp)
    80005b54:	00813823          	sd	s0,16(sp)
    80005b58:	00913423          	sd	s1,8(sp)
    80005b5c:	02010413          	addi	s0,sp,32
    80005b60:	00050493          	mv	s1,a0
    LOCK();
    80005b64:	00100613          	li	a2,1
    80005b68:	00000593          	li	a1,0
    80005b6c:	00006517          	auipc	a0,0x6
    80005b70:	4dc50513          	addi	a0,a0,1244 # 8000c048 <lockPrint>
    80005b74:	ffffb097          	auipc	ra,0xffffb
    80005b78:	630080e7          	jalr	1584(ra) # 800011a4 <copy_and_swap>
    80005b7c:	00050863          	beqz	a0,80005b8c <_Z11printStringPKc+0x40>
    80005b80:	ffffc097          	auipc	ra,0xffffc
    80005b84:	808080e7          	jalr	-2040(ra) # 80001388 <_Z15thread_dispatchv>
    80005b88:	fddff06f          	j	80005b64 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005b8c:	0004c503          	lbu	a0,0(s1)
    80005b90:	00050a63          	beqz	a0,80005ba4 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005b94:	ffffc097          	auipc	ra,0xffffc
    80005b98:	ab4080e7          	jalr	-1356(ra) # 80001648 <_Z4putcc>
        string++;
    80005b9c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005ba0:	fedff06f          	j	80005b8c <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005ba4:	00000613          	li	a2,0
    80005ba8:	00100593          	li	a1,1
    80005bac:	00006517          	auipc	a0,0x6
    80005bb0:	49c50513          	addi	a0,a0,1180 # 8000c048 <lockPrint>
    80005bb4:	ffffb097          	auipc	ra,0xffffb
    80005bb8:	5f0080e7          	jalr	1520(ra) # 800011a4 <copy_and_swap>
    80005bbc:	fe0514e3          	bnez	a0,80005ba4 <_Z11printStringPKc+0x58>
}
    80005bc0:	01813083          	ld	ra,24(sp)
    80005bc4:	01013403          	ld	s0,16(sp)
    80005bc8:	00813483          	ld	s1,8(sp)
    80005bcc:	02010113          	addi	sp,sp,32
    80005bd0:	00008067          	ret

0000000080005bd4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005bd4:	fd010113          	addi	sp,sp,-48
    80005bd8:	02113423          	sd	ra,40(sp)
    80005bdc:	02813023          	sd	s0,32(sp)
    80005be0:	00913c23          	sd	s1,24(sp)
    80005be4:	01213823          	sd	s2,16(sp)
    80005be8:	01313423          	sd	s3,8(sp)
    80005bec:	01413023          	sd	s4,0(sp)
    80005bf0:	03010413          	addi	s0,sp,48
    80005bf4:	00050993          	mv	s3,a0
    80005bf8:	00058a13          	mv	s4,a1
    LOCK();
    80005bfc:	00100613          	li	a2,1
    80005c00:	00000593          	li	a1,0
    80005c04:	00006517          	auipc	a0,0x6
    80005c08:	44450513          	addi	a0,a0,1092 # 8000c048 <lockPrint>
    80005c0c:	ffffb097          	auipc	ra,0xffffb
    80005c10:	598080e7          	jalr	1432(ra) # 800011a4 <copy_and_swap>
    80005c14:	00050863          	beqz	a0,80005c24 <_Z9getStringPci+0x50>
    80005c18:	ffffb097          	auipc	ra,0xffffb
    80005c1c:	770080e7          	jalr	1904(ra) # 80001388 <_Z15thread_dispatchv>
    80005c20:	fddff06f          	j	80005bfc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005c24:	00000913          	li	s2,0
    80005c28:	00090493          	mv	s1,s2
    80005c2c:	0019091b          	addiw	s2,s2,1
    80005c30:	03495a63          	bge	s2,s4,80005c64 <_Z9getStringPci+0x90>
        cc = getc();
    80005c34:	ffffc097          	auipc	ra,0xffffc
    80005c38:	9d4080e7          	jalr	-1580(ra) # 80001608 <_Z4getcv>
        if(cc < 1)
    80005c3c:	02050463          	beqz	a0,80005c64 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005c40:	009984b3          	add	s1,s3,s1
    80005c44:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005c48:	00a00793          	li	a5,10
    80005c4c:	00f50a63          	beq	a0,a5,80005c60 <_Z9getStringPci+0x8c>
    80005c50:	00d00793          	li	a5,13
    80005c54:	fcf51ae3          	bne	a0,a5,80005c28 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005c58:	00090493          	mv	s1,s2
    80005c5c:	0080006f          	j	80005c64 <_Z9getStringPci+0x90>
    80005c60:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005c64:	009984b3          	add	s1,s3,s1
    80005c68:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005c6c:	00000613          	li	a2,0
    80005c70:	00100593          	li	a1,1
    80005c74:	00006517          	auipc	a0,0x6
    80005c78:	3d450513          	addi	a0,a0,980 # 8000c048 <lockPrint>
    80005c7c:	ffffb097          	auipc	ra,0xffffb
    80005c80:	528080e7          	jalr	1320(ra) # 800011a4 <copy_and_swap>
    80005c84:	fe0514e3          	bnez	a0,80005c6c <_Z9getStringPci+0x98>
    return buf;
}
    80005c88:	00098513          	mv	a0,s3
    80005c8c:	02813083          	ld	ra,40(sp)
    80005c90:	02013403          	ld	s0,32(sp)
    80005c94:	01813483          	ld	s1,24(sp)
    80005c98:	01013903          	ld	s2,16(sp)
    80005c9c:	00813983          	ld	s3,8(sp)
    80005ca0:	00013a03          	ld	s4,0(sp)
    80005ca4:	03010113          	addi	sp,sp,48
    80005ca8:	00008067          	ret

0000000080005cac <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005cac:	ff010113          	addi	sp,sp,-16
    80005cb0:	00813423          	sd	s0,8(sp)
    80005cb4:	01010413          	addi	s0,sp,16
    80005cb8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005cbc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005cc0:	0006c603          	lbu	a2,0(a3)
    80005cc4:	fd06071b          	addiw	a4,a2,-48
    80005cc8:	0ff77713          	andi	a4,a4,255
    80005ccc:	00900793          	li	a5,9
    80005cd0:	02e7e063          	bltu	a5,a4,80005cf0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005cd4:	0025179b          	slliw	a5,a0,0x2
    80005cd8:	00a787bb          	addw	a5,a5,a0
    80005cdc:	0017979b          	slliw	a5,a5,0x1
    80005ce0:	00168693          	addi	a3,a3,1
    80005ce4:	00c787bb          	addw	a5,a5,a2
    80005ce8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005cec:	fd5ff06f          	j	80005cc0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005cf0:	00813403          	ld	s0,8(sp)
    80005cf4:	01010113          	addi	sp,sp,16
    80005cf8:	00008067          	ret

0000000080005cfc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005cfc:	fc010113          	addi	sp,sp,-64
    80005d00:	02113c23          	sd	ra,56(sp)
    80005d04:	02813823          	sd	s0,48(sp)
    80005d08:	02913423          	sd	s1,40(sp)
    80005d0c:	03213023          	sd	s2,32(sp)
    80005d10:	01313c23          	sd	s3,24(sp)
    80005d14:	04010413          	addi	s0,sp,64
    80005d18:	00050493          	mv	s1,a0
    80005d1c:	00058913          	mv	s2,a1
    80005d20:	00060993          	mv	s3,a2
    LOCK();
    80005d24:	00100613          	li	a2,1
    80005d28:	00000593          	li	a1,0
    80005d2c:	00006517          	auipc	a0,0x6
    80005d30:	31c50513          	addi	a0,a0,796 # 8000c048 <lockPrint>
    80005d34:	ffffb097          	auipc	ra,0xffffb
    80005d38:	470080e7          	jalr	1136(ra) # 800011a4 <copy_and_swap>
    80005d3c:	00050863          	beqz	a0,80005d4c <_Z8printIntiii+0x50>
    80005d40:	ffffb097          	auipc	ra,0xffffb
    80005d44:	648080e7          	jalr	1608(ra) # 80001388 <_Z15thread_dispatchv>
    80005d48:	fddff06f          	j	80005d24 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005d4c:	00098463          	beqz	s3,80005d54 <_Z8printIntiii+0x58>
    80005d50:	0804c463          	bltz	s1,80005dd8 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005d54:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005d58:	00000593          	li	a1,0
    }

    i = 0;
    80005d5c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005d60:	0009079b          	sext.w	a5,s2
    80005d64:	0325773b          	remuw	a4,a0,s2
    80005d68:	00048613          	mv	a2,s1
    80005d6c:	0014849b          	addiw	s1,s1,1
    80005d70:	02071693          	slli	a3,a4,0x20
    80005d74:	0206d693          	srli	a3,a3,0x20
    80005d78:	00006717          	auipc	a4,0x6
    80005d7c:	1a070713          	addi	a4,a4,416 # 8000bf18 <digits>
    80005d80:	00d70733          	add	a4,a4,a3
    80005d84:	00074683          	lbu	a3,0(a4)
    80005d88:	fd040713          	addi	a4,s0,-48
    80005d8c:	00c70733          	add	a4,a4,a2
    80005d90:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005d94:	0005071b          	sext.w	a4,a0
    80005d98:	0325553b          	divuw	a0,a0,s2
    80005d9c:	fcf772e3          	bgeu	a4,a5,80005d60 <_Z8printIntiii+0x64>
    if(neg)
    80005da0:	00058c63          	beqz	a1,80005db8 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005da4:	fd040793          	addi	a5,s0,-48
    80005da8:	009784b3          	add	s1,a5,s1
    80005dac:	02d00793          	li	a5,45
    80005db0:	fef48823          	sb	a5,-16(s1)
    80005db4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005db8:	fff4849b          	addiw	s1,s1,-1
    80005dbc:	0204c463          	bltz	s1,80005de4 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005dc0:	fd040793          	addi	a5,s0,-48
    80005dc4:	009787b3          	add	a5,a5,s1
    80005dc8:	ff07c503          	lbu	a0,-16(a5)
    80005dcc:	ffffc097          	auipc	ra,0xffffc
    80005dd0:	87c080e7          	jalr	-1924(ra) # 80001648 <_Z4putcc>
    80005dd4:	fe5ff06f          	j	80005db8 <_Z8printIntiii+0xbc>
        x = -xx;
    80005dd8:	4090053b          	negw	a0,s1
        neg = 1;
    80005ddc:	00100593          	li	a1,1
        x = -xx;
    80005de0:	f7dff06f          	j	80005d5c <_Z8printIntiii+0x60>

    UNLOCK();
    80005de4:	00000613          	li	a2,0
    80005de8:	00100593          	li	a1,1
    80005dec:	00006517          	auipc	a0,0x6
    80005df0:	25c50513          	addi	a0,a0,604 # 8000c048 <lockPrint>
    80005df4:	ffffb097          	auipc	ra,0xffffb
    80005df8:	3b0080e7          	jalr	944(ra) # 800011a4 <copy_and_swap>
    80005dfc:	fe0514e3          	bnez	a0,80005de4 <_Z8printIntiii+0xe8>
    80005e00:	03813083          	ld	ra,56(sp)
    80005e04:	03013403          	ld	s0,48(sp)
    80005e08:	02813483          	ld	s1,40(sp)
    80005e0c:	02013903          	ld	s2,32(sp)
    80005e10:	01813983          	ld	s3,24(sp)
    80005e14:	04010113          	addi	sp,sp,64
    80005e18:	00008067          	ret

0000000080005e1c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005e1c:	fd010113          	addi	sp,sp,-48
    80005e20:	02113423          	sd	ra,40(sp)
    80005e24:	02813023          	sd	s0,32(sp)
    80005e28:	00913c23          	sd	s1,24(sp)
    80005e2c:	01213823          	sd	s2,16(sp)
    80005e30:	01313423          	sd	s3,8(sp)
    80005e34:	03010413          	addi	s0,sp,48
    80005e38:	00050493          	mv	s1,a0
    80005e3c:	00058913          	mv	s2,a1
    80005e40:	0015879b          	addiw	a5,a1,1
    80005e44:	0007851b          	sext.w	a0,a5
    80005e48:	00f4a023          	sw	a5,0(s1)
    80005e4c:	0004a823          	sw	zero,16(s1)
    80005e50:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005e54:	00251513          	slli	a0,a0,0x2
    80005e58:	ffffb097          	auipc	ra,0xffffb
    80005e5c:	3a0080e7          	jalr	928(ra) # 800011f8 <_Z9mem_allocm>
    80005e60:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005e64:	01000513          	li	a0,16
    80005e68:	ffffc097          	auipc	ra,0xffffc
    80005e6c:	7c8080e7          	jalr	1992(ra) # 80002630 <_Znwm>
    80005e70:	00050993          	mv	s3,a0
    80005e74:	00000593          	li	a1,0
    80005e78:	ffffd097          	auipc	ra,0xffffd
    80005e7c:	bb8080e7          	jalr	-1096(ra) # 80002a30 <_ZN9SemaphoreC1Ej>
    80005e80:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005e84:	01000513          	li	a0,16
    80005e88:	ffffc097          	auipc	ra,0xffffc
    80005e8c:	7a8080e7          	jalr	1960(ra) # 80002630 <_Znwm>
    80005e90:	00050993          	mv	s3,a0
    80005e94:	00090593          	mv	a1,s2
    80005e98:	ffffd097          	auipc	ra,0xffffd
    80005e9c:	b98080e7          	jalr	-1128(ra) # 80002a30 <_ZN9SemaphoreC1Ej>
    80005ea0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005ea4:	01000513          	li	a0,16
    80005ea8:	ffffc097          	auipc	ra,0xffffc
    80005eac:	788080e7          	jalr	1928(ra) # 80002630 <_Znwm>
    80005eb0:	00050913          	mv	s2,a0
    80005eb4:	00100593          	li	a1,1
    80005eb8:	ffffd097          	auipc	ra,0xffffd
    80005ebc:	b78080e7          	jalr	-1160(ra) # 80002a30 <_ZN9SemaphoreC1Ej>
    80005ec0:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005ec4:	01000513          	li	a0,16
    80005ec8:	ffffc097          	auipc	ra,0xffffc
    80005ecc:	768080e7          	jalr	1896(ra) # 80002630 <_Znwm>
    80005ed0:	00050913          	mv	s2,a0
    80005ed4:	00100593          	li	a1,1
    80005ed8:	ffffd097          	auipc	ra,0xffffd
    80005edc:	b58080e7          	jalr	-1192(ra) # 80002a30 <_ZN9SemaphoreC1Ej>
    80005ee0:	0324b823          	sd	s2,48(s1)
}
    80005ee4:	02813083          	ld	ra,40(sp)
    80005ee8:	02013403          	ld	s0,32(sp)
    80005eec:	01813483          	ld	s1,24(sp)
    80005ef0:	01013903          	ld	s2,16(sp)
    80005ef4:	00813983          	ld	s3,8(sp)
    80005ef8:	03010113          	addi	sp,sp,48
    80005efc:	00008067          	ret
    80005f00:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005f04:	00098513          	mv	a0,s3
    80005f08:	ffffc097          	auipc	ra,0xffffc
    80005f0c:	778080e7          	jalr	1912(ra) # 80002680 <_ZdlPv>
    80005f10:	00048513          	mv	a0,s1
    80005f14:	00007097          	auipc	ra,0x7
    80005f18:	214080e7          	jalr	532(ra) # 8000d128 <_Unwind_Resume>
    80005f1c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005f20:	00098513          	mv	a0,s3
    80005f24:	ffffc097          	auipc	ra,0xffffc
    80005f28:	75c080e7          	jalr	1884(ra) # 80002680 <_ZdlPv>
    80005f2c:	00048513          	mv	a0,s1
    80005f30:	00007097          	auipc	ra,0x7
    80005f34:	1f8080e7          	jalr	504(ra) # 8000d128 <_Unwind_Resume>
    80005f38:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005f3c:	00090513          	mv	a0,s2
    80005f40:	ffffc097          	auipc	ra,0xffffc
    80005f44:	740080e7          	jalr	1856(ra) # 80002680 <_ZdlPv>
    80005f48:	00048513          	mv	a0,s1
    80005f4c:	00007097          	auipc	ra,0x7
    80005f50:	1dc080e7          	jalr	476(ra) # 8000d128 <_Unwind_Resume>
    80005f54:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005f58:	00090513          	mv	a0,s2
    80005f5c:	ffffc097          	auipc	ra,0xffffc
    80005f60:	724080e7          	jalr	1828(ra) # 80002680 <_ZdlPv>
    80005f64:	00048513          	mv	a0,s1
    80005f68:	00007097          	auipc	ra,0x7
    80005f6c:	1c0080e7          	jalr	448(ra) # 8000d128 <_Unwind_Resume>

0000000080005f70 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005f70:	fe010113          	addi	sp,sp,-32
    80005f74:	00113c23          	sd	ra,24(sp)
    80005f78:	00813823          	sd	s0,16(sp)
    80005f7c:	00913423          	sd	s1,8(sp)
    80005f80:	01213023          	sd	s2,0(sp)
    80005f84:	02010413          	addi	s0,sp,32
    80005f88:	00050493          	mv	s1,a0
    80005f8c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005f90:	01853503          	ld	a0,24(a0)
    80005f94:	ffffd097          	auipc	ra,0xffffd
    80005f98:	ad8080e7          	jalr	-1320(ra) # 80002a6c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005f9c:	0304b503          	ld	a0,48(s1)
    80005fa0:	ffffd097          	auipc	ra,0xffffd
    80005fa4:	acc080e7          	jalr	-1332(ra) # 80002a6c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005fa8:	0084b783          	ld	a5,8(s1)
    80005fac:	0144a703          	lw	a4,20(s1)
    80005fb0:	00271713          	slli	a4,a4,0x2
    80005fb4:	00e787b3          	add	a5,a5,a4
    80005fb8:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005fbc:	0144a783          	lw	a5,20(s1)
    80005fc0:	0017879b          	addiw	a5,a5,1
    80005fc4:	0004a703          	lw	a4,0(s1)
    80005fc8:	02e7e7bb          	remw	a5,a5,a4
    80005fcc:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005fd0:	0304b503          	ld	a0,48(s1)
    80005fd4:	ffffd097          	auipc	ra,0xffffd
    80005fd8:	ac4080e7          	jalr	-1340(ra) # 80002a98 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005fdc:	0204b503          	ld	a0,32(s1)
    80005fe0:	ffffd097          	auipc	ra,0xffffd
    80005fe4:	ab8080e7          	jalr	-1352(ra) # 80002a98 <_ZN9Semaphore6signalEv>

}
    80005fe8:	01813083          	ld	ra,24(sp)
    80005fec:	01013403          	ld	s0,16(sp)
    80005ff0:	00813483          	ld	s1,8(sp)
    80005ff4:	00013903          	ld	s2,0(sp)
    80005ff8:	02010113          	addi	sp,sp,32
    80005ffc:	00008067          	ret

0000000080006000 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006000:	fe010113          	addi	sp,sp,-32
    80006004:	00113c23          	sd	ra,24(sp)
    80006008:	00813823          	sd	s0,16(sp)
    8000600c:	00913423          	sd	s1,8(sp)
    80006010:	01213023          	sd	s2,0(sp)
    80006014:	02010413          	addi	s0,sp,32
    80006018:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000601c:	02053503          	ld	a0,32(a0)
    80006020:	ffffd097          	auipc	ra,0xffffd
    80006024:	a4c080e7          	jalr	-1460(ra) # 80002a6c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006028:	0284b503          	ld	a0,40(s1)
    8000602c:	ffffd097          	auipc	ra,0xffffd
    80006030:	a40080e7          	jalr	-1472(ra) # 80002a6c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80006034:	0084b703          	ld	a4,8(s1)
    80006038:	0104a783          	lw	a5,16(s1)
    8000603c:	00279693          	slli	a3,a5,0x2
    80006040:	00d70733          	add	a4,a4,a3
    80006044:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006048:	0017879b          	addiw	a5,a5,1
    8000604c:	0004a703          	lw	a4,0(s1)
    80006050:	02e7e7bb          	remw	a5,a5,a4
    80006054:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80006058:	0284b503          	ld	a0,40(s1)
    8000605c:	ffffd097          	auipc	ra,0xffffd
    80006060:	a3c080e7          	jalr	-1476(ra) # 80002a98 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006064:	0184b503          	ld	a0,24(s1)
    80006068:	ffffd097          	auipc	ra,0xffffd
    8000606c:	a30080e7          	jalr	-1488(ra) # 80002a98 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006070:	00090513          	mv	a0,s2
    80006074:	01813083          	ld	ra,24(sp)
    80006078:	01013403          	ld	s0,16(sp)
    8000607c:	00813483          	ld	s1,8(sp)
    80006080:	00013903          	ld	s2,0(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	00813823          	sd	s0,16(sp)
    80006098:	00913423          	sd	s1,8(sp)
    8000609c:	01213023          	sd	s2,0(sp)
    800060a0:	02010413          	addi	s0,sp,32
    800060a4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800060a8:	02853503          	ld	a0,40(a0)
    800060ac:	ffffd097          	auipc	ra,0xffffd
    800060b0:	9c0080e7          	jalr	-1600(ra) # 80002a6c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800060b4:	0304b503          	ld	a0,48(s1)
    800060b8:	ffffd097          	auipc	ra,0xffffd
    800060bc:	9b4080e7          	jalr	-1612(ra) # 80002a6c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800060c0:	0144a783          	lw	a5,20(s1)
    800060c4:	0104a903          	lw	s2,16(s1)
    800060c8:	0327ce63          	blt	a5,s2,80006104 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800060cc:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800060d0:	0304b503          	ld	a0,48(s1)
    800060d4:	ffffd097          	auipc	ra,0xffffd
    800060d8:	9c4080e7          	jalr	-1596(ra) # 80002a98 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800060dc:	0284b503          	ld	a0,40(s1)
    800060e0:	ffffd097          	auipc	ra,0xffffd
    800060e4:	9b8080e7          	jalr	-1608(ra) # 80002a98 <_ZN9Semaphore6signalEv>

    return ret;
}
    800060e8:	00090513          	mv	a0,s2
    800060ec:	01813083          	ld	ra,24(sp)
    800060f0:	01013403          	ld	s0,16(sp)
    800060f4:	00813483          	ld	s1,8(sp)
    800060f8:	00013903          	ld	s2,0(sp)
    800060fc:	02010113          	addi	sp,sp,32
    80006100:	00008067          	ret
        ret = cap - head + tail;
    80006104:	0004a703          	lw	a4,0(s1)
    80006108:	4127093b          	subw	s2,a4,s2
    8000610c:	00f9093b          	addw	s2,s2,a5
    80006110:	fc1ff06f          	j	800060d0 <_ZN9BufferCPP6getCntEv+0x44>

0000000080006114 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80006114:	fe010113          	addi	sp,sp,-32
    80006118:	00113c23          	sd	ra,24(sp)
    8000611c:	00813823          	sd	s0,16(sp)
    80006120:	00913423          	sd	s1,8(sp)
    80006124:	02010413          	addi	s0,sp,32
    80006128:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000612c:	00a00513          	li	a0,10
    80006130:	ffffd097          	auipc	ra,0xffffd
    80006134:	a24080e7          	jalr	-1500(ra) # 80002b54 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006138:	00003517          	auipc	a0,0x3
    8000613c:	60850513          	addi	a0,a0,1544 # 80009740 <CONSOLE_STATUS+0x730>
    80006140:	00000097          	auipc	ra,0x0
    80006144:	a0c080e7          	jalr	-1524(ra) # 80005b4c <_Z11printStringPKc>
    while (getCnt()) {
    80006148:	00048513          	mv	a0,s1
    8000614c:	00000097          	auipc	ra,0x0
    80006150:	f40080e7          	jalr	-192(ra) # 8000608c <_ZN9BufferCPP6getCntEv>
    80006154:	02050c63          	beqz	a0,8000618c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80006158:	0084b783          	ld	a5,8(s1)
    8000615c:	0104a703          	lw	a4,16(s1)
    80006160:	00271713          	slli	a4,a4,0x2
    80006164:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80006168:	0007c503          	lbu	a0,0(a5)
    8000616c:	ffffd097          	auipc	ra,0xffffd
    80006170:	9e8080e7          	jalr	-1560(ra) # 80002b54 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006174:	0104a783          	lw	a5,16(s1)
    80006178:	0017879b          	addiw	a5,a5,1
    8000617c:	0004a703          	lw	a4,0(s1)
    80006180:	02e7e7bb          	remw	a5,a5,a4
    80006184:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80006188:	fc1ff06f          	j	80006148 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    8000618c:	02100513          	li	a0,33
    80006190:	ffffd097          	auipc	ra,0xffffd
    80006194:	9c4080e7          	jalr	-1596(ra) # 80002b54 <_ZN7Console4putcEc>
    Console::putc('\n');
    80006198:	00a00513          	li	a0,10
    8000619c:	ffffd097          	auipc	ra,0xffffd
    800061a0:	9b8080e7          	jalr	-1608(ra) # 80002b54 <_ZN7Console4putcEc>
    mem_free(buffer);
    800061a4:	0084b503          	ld	a0,8(s1)
    800061a8:	ffffb097          	auipc	ra,0xffffb
    800061ac:	09c080e7          	jalr	156(ra) # 80001244 <_Z8mem_freePv>
    delete itemAvailable;
    800061b0:	0204b503          	ld	a0,32(s1)
    800061b4:	00050863          	beqz	a0,800061c4 <_ZN9BufferCPPD1Ev+0xb0>
    800061b8:	00053783          	ld	a5,0(a0)
    800061bc:	0087b783          	ld	a5,8(a5)
    800061c0:	000780e7          	jalr	a5
    delete spaceAvailable;
    800061c4:	0184b503          	ld	a0,24(s1)
    800061c8:	00050863          	beqz	a0,800061d8 <_ZN9BufferCPPD1Ev+0xc4>
    800061cc:	00053783          	ld	a5,0(a0)
    800061d0:	0087b783          	ld	a5,8(a5)
    800061d4:	000780e7          	jalr	a5
    delete mutexTail;
    800061d8:	0304b503          	ld	a0,48(s1)
    800061dc:	00050863          	beqz	a0,800061ec <_ZN9BufferCPPD1Ev+0xd8>
    800061e0:	00053783          	ld	a5,0(a0)
    800061e4:	0087b783          	ld	a5,8(a5)
    800061e8:	000780e7          	jalr	a5
    delete mutexHead;
    800061ec:	0284b503          	ld	a0,40(s1)
    800061f0:	00050863          	beqz	a0,80006200 <_ZN9BufferCPPD1Ev+0xec>
    800061f4:	00053783          	ld	a5,0(a0)
    800061f8:	0087b783          	ld	a5,8(a5)
    800061fc:	000780e7          	jalr	a5
}
    80006200:	01813083          	ld	ra,24(sp)
    80006204:	01013403          	ld	s0,16(sp)
    80006208:	00813483          	ld	s1,8(sp)
    8000620c:	02010113          	addi	sp,sp,32
    80006210:	00008067          	ret

0000000080006214 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80006214:	fe010113          	addi	sp,sp,-32
    80006218:	00113c23          	sd	ra,24(sp)
    8000621c:	00813823          	sd	s0,16(sp)
    80006220:	00913423          	sd	s1,8(sp)
    80006224:	01213023          	sd	s2,0(sp)
    80006228:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000622c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006230:	00600493          	li	s1,6
    while (--i > 0) {
    80006234:	fff4849b          	addiw	s1,s1,-1
    80006238:	04905463          	blez	s1,80006280 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000623c:	00003517          	auipc	a0,0x3
    80006240:	51c50513          	addi	a0,a0,1308 # 80009758 <CONSOLE_STATUS+0x748>
    80006244:	00000097          	auipc	ra,0x0
    80006248:	908080e7          	jalr	-1784(ra) # 80005b4c <_Z11printStringPKc>
        printInt(sleep_time);
    8000624c:	00000613          	li	a2,0
    80006250:	00a00593          	li	a1,10
    80006254:	0009051b          	sext.w	a0,s2
    80006258:	00000097          	auipc	ra,0x0
    8000625c:	aa4080e7          	jalr	-1372(ra) # 80005cfc <_Z8printIntiii>
        printString(" !\n");
    80006260:	00003517          	auipc	a0,0x3
    80006264:	50050513          	addi	a0,a0,1280 # 80009760 <CONSOLE_STATUS+0x750>
    80006268:	00000097          	auipc	ra,0x0
    8000626c:	8e4080e7          	jalr	-1820(ra) # 80005b4c <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006270:	00090513          	mv	a0,s2
    80006274:	ffffb097          	auipc	ra,0xffffb
    80006278:	354080e7          	jalr	852(ra) # 800015c8 <_Z10time_sleepm>
    while (--i > 0) {
    8000627c:	fb9ff06f          	j	80006234 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006280:	00a00793          	li	a5,10
    80006284:	02f95933          	divu	s2,s2,a5
    80006288:	fff90913          	addi	s2,s2,-1
    8000628c:	00006797          	auipc	a5,0x6
    80006290:	dc478793          	addi	a5,a5,-572 # 8000c050 <_ZL8finished>
    80006294:	01278933          	add	s2,a5,s2
    80006298:	00100793          	li	a5,1
    8000629c:	00f90023          	sb	a5,0(s2)
}
    800062a0:	01813083          	ld	ra,24(sp)
    800062a4:	01013403          	ld	s0,16(sp)
    800062a8:	00813483          	ld	s1,8(sp)
    800062ac:	00013903          	ld	s2,0(sp)
    800062b0:	02010113          	addi	sp,sp,32
    800062b4:	00008067          	ret

00000000800062b8 <_Z12testSleepingv>:

void testSleeping() {
    800062b8:	fc010113          	addi	sp,sp,-64
    800062bc:	02113c23          	sd	ra,56(sp)
    800062c0:	02813823          	sd	s0,48(sp)
    800062c4:	02913423          	sd	s1,40(sp)
    800062c8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800062cc:	00a00793          	li	a5,10
    800062d0:	fcf43823          	sd	a5,-48(s0)
    800062d4:	01400793          	li	a5,20
    800062d8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800062dc:	00000493          	li	s1,0
    800062e0:	02c0006f          	j	8000630c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800062e4:	00349793          	slli	a5,s1,0x3
    800062e8:	fd040613          	addi	a2,s0,-48
    800062ec:	00f60633          	add	a2,a2,a5
    800062f0:	00000597          	auipc	a1,0x0
    800062f4:	f2458593          	addi	a1,a1,-220 # 80006214 <_ZL9sleepyRunPv>
    800062f8:	fc040513          	addi	a0,s0,-64
    800062fc:	00f50533          	add	a0,a0,a5
    80006300:	ffffb097          	auipc	ra,0xffffb
    80006304:	f84080e7          	jalr	-124(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006308:	0014849b          	addiw	s1,s1,1
    8000630c:	00100793          	li	a5,1
    80006310:	fc97dae3          	bge	a5,s1,800062e4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006314:	00006797          	auipc	a5,0x6
    80006318:	d3c7c783          	lbu	a5,-708(a5) # 8000c050 <_ZL8finished>
    8000631c:	fe078ce3          	beqz	a5,80006314 <_Z12testSleepingv+0x5c>
    80006320:	00006797          	auipc	a5,0x6
    80006324:	d317c783          	lbu	a5,-719(a5) # 8000c051 <_ZL8finished+0x1>
    80006328:	fe0786e3          	beqz	a5,80006314 <_Z12testSleepingv+0x5c>
}
    8000632c:	03813083          	ld	ra,56(sp)
    80006330:	03013403          	ld	s0,48(sp)
    80006334:	02813483          	ld	s1,40(sp)
    80006338:	04010113          	addi	sp,sp,64
    8000633c:	00008067          	ret

0000000080006340 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00113c23          	sd	ra,24(sp)
    80006348:	00813823          	sd	s0,16(sp)
    8000634c:	00913423          	sd	s1,8(sp)
    80006350:	01213023          	sd	s2,0(sp)
    80006354:	02010413          	addi	s0,sp,32
    80006358:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000635c:	00100793          	li	a5,1
    80006360:	02a7f863          	bgeu	a5,a0,80006390 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006364:	00a00793          	li	a5,10
    80006368:	02f577b3          	remu	a5,a0,a5
    8000636c:	02078e63          	beqz	a5,800063a8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006370:	fff48513          	addi	a0,s1,-1
    80006374:	00000097          	auipc	ra,0x0
    80006378:	fcc080e7          	jalr	-52(ra) # 80006340 <_ZL9fibonaccim>
    8000637c:	00050913          	mv	s2,a0
    80006380:	ffe48513          	addi	a0,s1,-2
    80006384:	00000097          	auipc	ra,0x0
    80006388:	fbc080e7          	jalr	-68(ra) # 80006340 <_ZL9fibonaccim>
    8000638c:	00a90533          	add	a0,s2,a0
}
    80006390:	01813083          	ld	ra,24(sp)
    80006394:	01013403          	ld	s0,16(sp)
    80006398:	00813483          	ld	s1,8(sp)
    8000639c:	00013903          	ld	s2,0(sp)
    800063a0:	02010113          	addi	sp,sp,32
    800063a4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800063a8:	ffffb097          	auipc	ra,0xffffb
    800063ac:	fe0080e7          	jalr	-32(ra) # 80001388 <_Z15thread_dispatchv>
    800063b0:	fc1ff06f          	j	80006370 <_ZL9fibonaccim+0x30>

00000000800063b4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800063b4:	fe010113          	addi	sp,sp,-32
    800063b8:	00113c23          	sd	ra,24(sp)
    800063bc:	00813823          	sd	s0,16(sp)
    800063c0:	00913423          	sd	s1,8(sp)
    800063c4:	01213023          	sd	s2,0(sp)
    800063c8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800063cc:	00a00493          	li	s1,10
    800063d0:	0400006f          	j	80006410 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800063d4:	00003517          	auipc	a0,0x3
    800063d8:	2d450513          	addi	a0,a0,724 # 800096a8 <CONSOLE_STATUS+0x698>
    800063dc:	fffff097          	auipc	ra,0xfffff
    800063e0:	770080e7          	jalr	1904(ra) # 80005b4c <_Z11printStringPKc>
    800063e4:	00000613          	li	a2,0
    800063e8:	00a00593          	li	a1,10
    800063ec:	00048513          	mv	a0,s1
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	90c080e7          	jalr	-1780(ra) # 80005cfc <_Z8printIntiii>
    800063f8:	00003517          	auipc	a0,0x3
    800063fc:	ea850513          	addi	a0,a0,-344 # 800092a0 <CONSOLE_STATUS+0x290>
    80006400:	fffff097          	auipc	ra,0xfffff
    80006404:	74c080e7          	jalr	1868(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006408:	0014849b          	addiw	s1,s1,1
    8000640c:	0ff4f493          	andi	s1,s1,255
    80006410:	00c00793          	li	a5,12
    80006414:	fc97f0e3          	bgeu	a5,s1,800063d4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	29850513          	addi	a0,a0,664 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	72c080e7          	jalr	1836(ra) # 80005b4c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006428:	00500313          	li	t1,5
    thread_dispatch();
    8000642c:	ffffb097          	auipc	ra,0xffffb
    80006430:	f5c080e7          	jalr	-164(ra) # 80001388 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006434:	01000513          	li	a0,16
    80006438:	00000097          	auipc	ra,0x0
    8000643c:	f08080e7          	jalr	-248(ra) # 80006340 <_ZL9fibonaccim>
    80006440:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006444:	00003517          	auipc	a0,0x3
    80006448:	27c50513          	addi	a0,a0,636 # 800096c0 <CONSOLE_STATUS+0x6b0>
    8000644c:	fffff097          	auipc	ra,0xfffff
    80006450:	700080e7          	jalr	1792(ra) # 80005b4c <_Z11printStringPKc>
    80006454:	00000613          	li	a2,0
    80006458:	00a00593          	li	a1,10
    8000645c:	0009051b          	sext.w	a0,s2
    80006460:	00000097          	auipc	ra,0x0
    80006464:	89c080e7          	jalr	-1892(ra) # 80005cfc <_Z8printIntiii>
    80006468:	00003517          	auipc	a0,0x3
    8000646c:	e3850513          	addi	a0,a0,-456 # 800092a0 <CONSOLE_STATUS+0x290>
    80006470:	fffff097          	auipc	ra,0xfffff
    80006474:	6dc080e7          	jalr	1756(ra) # 80005b4c <_Z11printStringPKc>
    80006478:	0400006f          	j	800064b8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000647c:	00003517          	auipc	a0,0x3
    80006480:	22c50513          	addi	a0,a0,556 # 800096a8 <CONSOLE_STATUS+0x698>
    80006484:	fffff097          	auipc	ra,0xfffff
    80006488:	6c8080e7          	jalr	1736(ra) # 80005b4c <_Z11printStringPKc>
    8000648c:	00000613          	li	a2,0
    80006490:	00a00593          	li	a1,10
    80006494:	00048513          	mv	a0,s1
    80006498:	00000097          	auipc	ra,0x0
    8000649c:	864080e7          	jalr	-1948(ra) # 80005cfc <_Z8printIntiii>
    800064a0:	00003517          	auipc	a0,0x3
    800064a4:	e0050513          	addi	a0,a0,-512 # 800092a0 <CONSOLE_STATUS+0x290>
    800064a8:	fffff097          	auipc	ra,0xfffff
    800064ac:	6a4080e7          	jalr	1700(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800064b0:	0014849b          	addiw	s1,s1,1
    800064b4:	0ff4f493          	andi	s1,s1,255
    800064b8:	00f00793          	li	a5,15
    800064bc:	fc97f0e3          	bgeu	a5,s1,8000647c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800064c0:	00003517          	auipc	a0,0x3
    800064c4:	21050513          	addi	a0,a0,528 # 800096d0 <CONSOLE_STATUS+0x6c0>
    800064c8:	fffff097          	auipc	ra,0xfffff
    800064cc:	684080e7          	jalr	1668(ra) # 80005b4c <_Z11printStringPKc>
    finishedD = true;
    800064d0:	00100793          	li	a5,1
    800064d4:	00006717          	auipc	a4,0x6
    800064d8:	b6f70f23          	sb	a5,-1154(a4) # 8000c052 <_ZL9finishedD>
    thread_dispatch();
    800064dc:	ffffb097          	auipc	ra,0xffffb
    800064e0:	eac080e7          	jalr	-340(ra) # 80001388 <_Z15thread_dispatchv>
}
    800064e4:	01813083          	ld	ra,24(sp)
    800064e8:	01013403          	ld	s0,16(sp)
    800064ec:	00813483          	ld	s1,8(sp)
    800064f0:	00013903          	ld	s2,0(sp)
    800064f4:	02010113          	addi	sp,sp,32
    800064f8:	00008067          	ret

00000000800064fc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800064fc:	fe010113          	addi	sp,sp,-32
    80006500:	00113c23          	sd	ra,24(sp)
    80006504:	00813823          	sd	s0,16(sp)
    80006508:	00913423          	sd	s1,8(sp)
    8000650c:	01213023          	sd	s2,0(sp)
    80006510:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006514:	00000493          	li	s1,0
    80006518:	0400006f          	j	80006558 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	15c50513          	addi	a0,a0,348 # 80009678 <CONSOLE_STATUS+0x668>
    80006524:	fffff097          	auipc	ra,0xfffff
    80006528:	628080e7          	jalr	1576(ra) # 80005b4c <_Z11printStringPKc>
    8000652c:	00000613          	li	a2,0
    80006530:	00a00593          	li	a1,10
    80006534:	00048513          	mv	a0,s1
    80006538:	fffff097          	auipc	ra,0xfffff
    8000653c:	7c4080e7          	jalr	1988(ra) # 80005cfc <_Z8printIntiii>
    80006540:	00003517          	auipc	a0,0x3
    80006544:	d6050513          	addi	a0,a0,-672 # 800092a0 <CONSOLE_STATUS+0x290>
    80006548:	fffff097          	auipc	ra,0xfffff
    8000654c:	604080e7          	jalr	1540(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006550:	0014849b          	addiw	s1,s1,1
    80006554:	0ff4f493          	andi	s1,s1,255
    80006558:	00200793          	li	a5,2
    8000655c:	fc97f0e3          	bgeu	a5,s1,8000651c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006560:	00003517          	auipc	a0,0x3
    80006564:	12050513          	addi	a0,a0,288 # 80009680 <CONSOLE_STATUS+0x670>
    80006568:	fffff097          	auipc	ra,0xfffff
    8000656c:	5e4080e7          	jalr	1508(ra) # 80005b4c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006570:	00700313          	li	t1,7
    thread_dispatch();
    80006574:	ffffb097          	auipc	ra,0xffffb
    80006578:	e14080e7          	jalr	-492(ra) # 80001388 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000657c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006580:	00003517          	auipc	a0,0x3
    80006584:	11050513          	addi	a0,a0,272 # 80009690 <CONSOLE_STATUS+0x680>
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	5c4080e7          	jalr	1476(ra) # 80005b4c <_Z11printStringPKc>
    80006590:	00000613          	li	a2,0
    80006594:	00a00593          	li	a1,10
    80006598:	0009051b          	sext.w	a0,s2
    8000659c:	fffff097          	auipc	ra,0xfffff
    800065a0:	760080e7          	jalr	1888(ra) # 80005cfc <_Z8printIntiii>
    800065a4:	00003517          	auipc	a0,0x3
    800065a8:	cfc50513          	addi	a0,a0,-772 # 800092a0 <CONSOLE_STATUS+0x290>
    800065ac:	fffff097          	auipc	ra,0xfffff
    800065b0:	5a0080e7          	jalr	1440(ra) # 80005b4c <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800065b4:	00c00513          	li	a0,12
    800065b8:	00000097          	auipc	ra,0x0
    800065bc:	d88080e7          	jalr	-632(ra) # 80006340 <_ZL9fibonaccim>
    800065c0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800065c4:	00003517          	auipc	a0,0x3
    800065c8:	0d450513          	addi	a0,a0,212 # 80009698 <CONSOLE_STATUS+0x688>
    800065cc:	fffff097          	auipc	ra,0xfffff
    800065d0:	580080e7          	jalr	1408(ra) # 80005b4c <_Z11printStringPKc>
    800065d4:	00000613          	li	a2,0
    800065d8:	00a00593          	li	a1,10
    800065dc:	0009051b          	sext.w	a0,s2
    800065e0:	fffff097          	auipc	ra,0xfffff
    800065e4:	71c080e7          	jalr	1820(ra) # 80005cfc <_Z8printIntiii>
    800065e8:	00003517          	auipc	a0,0x3
    800065ec:	cb850513          	addi	a0,a0,-840 # 800092a0 <CONSOLE_STATUS+0x290>
    800065f0:	fffff097          	auipc	ra,0xfffff
    800065f4:	55c080e7          	jalr	1372(ra) # 80005b4c <_Z11printStringPKc>
    800065f8:	0400006f          	j	80006638 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800065fc:	00003517          	auipc	a0,0x3
    80006600:	07c50513          	addi	a0,a0,124 # 80009678 <CONSOLE_STATUS+0x668>
    80006604:	fffff097          	auipc	ra,0xfffff
    80006608:	548080e7          	jalr	1352(ra) # 80005b4c <_Z11printStringPKc>
    8000660c:	00000613          	li	a2,0
    80006610:	00a00593          	li	a1,10
    80006614:	00048513          	mv	a0,s1
    80006618:	fffff097          	auipc	ra,0xfffff
    8000661c:	6e4080e7          	jalr	1764(ra) # 80005cfc <_Z8printIntiii>
    80006620:	00003517          	auipc	a0,0x3
    80006624:	c8050513          	addi	a0,a0,-896 # 800092a0 <CONSOLE_STATUS+0x290>
    80006628:	fffff097          	auipc	ra,0xfffff
    8000662c:	524080e7          	jalr	1316(ra) # 80005b4c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006630:	0014849b          	addiw	s1,s1,1
    80006634:	0ff4f493          	andi	s1,s1,255
    80006638:	00500793          	li	a5,5
    8000663c:	fc97f0e3          	bgeu	a5,s1,800065fc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006640:	00003517          	auipc	a0,0x3
    80006644:	01050513          	addi	a0,a0,16 # 80009650 <CONSOLE_STATUS+0x640>
    80006648:	fffff097          	auipc	ra,0xfffff
    8000664c:	504080e7          	jalr	1284(ra) # 80005b4c <_Z11printStringPKc>
    finishedC = true;
    80006650:	00100793          	li	a5,1
    80006654:	00006717          	auipc	a4,0x6
    80006658:	9ef70fa3          	sb	a5,-1537(a4) # 8000c053 <_ZL9finishedC>
    thread_dispatch();
    8000665c:	ffffb097          	auipc	ra,0xffffb
    80006660:	d2c080e7          	jalr	-724(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006664:	01813083          	ld	ra,24(sp)
    80006668:	01013403          	ld	s0,16(sp)
    8000666c:	00813483          	ld	s1,8(sp)
    80006670:	00013903          	ld	s2,0(sp)
    80006674:	02010113          	addi	sp,sp,32
    80006678:	00008067          	ret

000000008000667c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000667c:	fe010113          	addi	sp,sp,-32
    80006680:	00113c23          	sd	ra,24(sp)
    80006684:	00813823          	sd	s0,16(sp)
    80006688:	00913423          	sd	s1,8(sp)
    8000668c:	01213023          	sd	s2,0(sp)
    80006690:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006694:	00000913          	li	s2,0
    80006698:	0400006f          	j	800066d8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000669c:	ffffb097          	auipc	ra,0xffffb
    800066a0:	cec080e7          	jalr	-788(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800066a4:	00148493          	addi	s1,s1,1
    800066a8:	000027b7          	lui	a5,0x2
    800066ac:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800066b0:	0097ee63          	bltu	a5,s1,800066cc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800066b4:	00000713          	li	a4,0
    800066b8:	000077b7          	lui	a5,0x7
    800066bc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800066c0:	fce7eee3          	bltu	a5,a4,8000669c <_ZL11workerBodyBPv+0x20>
    800066c4:	00170713          	addi	a4,a4,1
    800066c8:	ff1ff06f          	j	800066b8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800066cc:	00a00793          	li	a5,10
    800066d0:	04f90663          	beq	s2,a5,8000671c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800066d4:	00190913          	addi	s2,s2,1
    800066d8:	00f00793          	li	a5,15
    800066dc:	0527e463          	bltu	a5,s2,80006724 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800066e0:	00003517          	auipc	a0,0x3
    800066e4:	f8050513          	addi	a0,a0,-128 # 80009660 <CONSOLE_STATUS+0x650>
    800066e8:	fffff097          	auipc	ra,0xfffff
    800066ec:	464080e7          	jalr	1124(ra) # 80005b4c <_Z11printStringPKc>
    800066f0:	00000613          	li	a2,0
    800066f4:	00a00593          	li	a1,10
    800066f8:	0009051b          	sext.w	a0,s2
    800066fc:	fffff097          	auipc	ra,0xfffff
    80006700:	600080e7          	jalr	1536(ra) # 80005cfc <_Z8printIntiii>
    80006704:	00003517          	auipc	a0,0x3
    80006708:	b9c50513          	addi	a0,a0,-1124 # 800092a0 <CONSOLE_STATUS+0x290>
    8000670c:	fffff097          	auipc	ra,0xfffff
    80006710:	440080e7          	jalr	1088(ra) # 80005b4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006714:	00000493          	li	s1,0
    80006718:	f91ff06f          	j	800066a8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000671c:	14102ff3          	csrr	t6,sepc
    80006720:	fb5ff06f          	j	800066d4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006724:	00003517          	auipc	a0,0x3
    80006728:	f4450513          	addi	a0,a0,-188 # 80009668 <CONSOLE_STATUS+0x658>
    8000672c:	fffff097          	auipc	ra,0xfffff
    80006730:	420080e7          	jalr	1056(ra) # 80005b4c <_Z11printStringPKc>
    finishedB = true;
    80006734:	00100793          	li	a5,1
    80006738:	00006717          	auipc	a4,0x6
    8000673c:	90f70e23          	sb	a5,-1764(a4) # 8000c054 <_ZL9finishedB>
    thread_dispatch();
    80006740:	ffffb097          	auipc	ra,0xffffb
    80006744:	c48080e7          	jalr	-952(ra) # 80001388 <_Z15thread_dispatchv>
}
    80006748:	01813083          	ld	ra,24(sp)
    8000674c:	01013403          	ld	s0,16(sp)
    80006750:	00813483          	ld	s1,8(sp)
    80006754:	00013903          	ld	s2,0(sp)
    80006758:	02010113          	addi	sp,sp,32
    8000675c:	00008067          	ret

0000000080006760 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006760:	fe010113          	addi	sp,sp,-32
    80006764:	00113c23          	sd	ra,24(sp)
    80006768:	00813823          	sd	s0,16(sp)
    8000676c:	00913423          	sd	s1,8(sp)
    80006770:	01213023          	sd	s2,0(sp)
    80006774:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006778:	00000913          	li	s2,0
    8000677c:	0380006f          	j	800067b4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006780:	ffffb097          	auipc	ra,0xffffb
    80006784:	c08080e7          	jalr	-1016(ra) # 80001388 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006788:	00148493          	addi	s1,s1,1
    8000678c:	000027b7          	lui	a5,0x2
    80006790:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006794:	0097ee63          	bltu	a5,s1,800067b0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006798:	00000713          	li	a4,0
    8000679c:	000077b7          	lui	a5,0x7
    800067a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800067a4:	fce7eee3          	bltu	a5,a4,80006780 <_ZL11workerBodyAPv+0x20>
    800067a8:	00170713          	addi	a4,a4,1
    800067ac:	ff1ff06f          	j	8000679c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800067b0:	00190913          	addi	s2,s2,1
    800067b4:	00900793          	li	a5,9
    800067b8:	0527e063          	bltu	a5,s2,800067f8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800067bc:	00003517          	auipc	a0,0x3
    800067c0:	e8c50513          	addi	a0,a0,-372 # 80009648 <CONSOLE_STATUS+0x638>
    800067c4:	fffff097          	auipc	ra,0xfffff
    800067c8:	388080e7          	jalr	904(ra) # 80005b4c <_Z11printStringPKc>
    800067cc:	00000613          	li	a2,0
    800067d0:	00a00593          	li	a1,10
    800067d4:	0009051b          	sext.w	a0,s2
    800067d8:	fffff097          	auipc	ra,0xfffff
    800067dc:	524080e7          	jalr	1316(ra) # 80005cfc <_Z8printIntiii>
    800067e0:	00003517          	auipc	a0,0x3
    800067e4:	ac050513          	addi	a0,a0,-1344 # 800092a0 <CONSOLE_STATUS+0x290>
    800067e8:	fffff097          	auipc	ra,0xfffff
    800067ec:	364080e7          	jalr	868(ra) # 80005b4c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800067f0:	00000493          	li	s1,0
    800067f4:	f99ff06f          	j	8000678c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800067f8:	00003517          	auipc	a0,0x3
    800067fc:	e5850513          	addi	a0,a0,-424 # 80009650 <CONSOLE_STATUS+0x640>
    80006800:	fffff097          	auipc	ra,0xfffff
    80006804:	34c080e7          	jalr	844(ra) # 80005b4c <_Z11printStringPKc>
    finishedA = true;
    80006808:	00100793          	li	a5,1
    8000680c:	00006717          	auipc	a4,0x6
    80006810:	84f704a3          	sb	a5,-1975(a4) # 8000c055 <_ZL9finishedA>
}
    80006814:	01813083          	ld	ra,24(sp)
    80006818:	01013403          	ld	s0,16(sp)
    8000681c:	00813483          	ld	s1,8(sp)
    80006820:	00013903          	ld	s2,0(sp)
    80006824:	02010113          	addi	sp,sp,32
    80006828:	00008067          	ret

000000008000682c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000682c:	fd010113          	addi	sp,sp,-48
    80006830:	02113423          	sd	ra,40(sp)
    80006834:	02813023          	sd	s0,32(sp)
    80006838:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000683c:	00000613          	li	a2,0
    80006840:	00000597          	auipc	a1,0x0
    80006844:	f2058593          	addi	a1,a1,-224 # 80006760 <_ZL11workerBodyAPv>
    80006848:	fd040513          	addi	a0,s0,-48
    8000684c:	ffffb097          	auipc	ra,0xffffb
    80006850:	a38080e7          	jalr	-1480(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80006854:	00003517          	auipc	a0,0x3
    80006858:	e8c50513          	addi	a0,a0,-372 # 800096e0 <CONSOLE_STATUS+0x6d0>
    8000685c:	fffff097          	auipc	ra,0xfffff
    80006860:	2f0080e7          	jalr	752(ra) # 80005b4c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006864:	00000613          	li	a2,0
    80006868:	00000597          	auipc	a1,0x0
    8000686c:	e1458593          	addi	a1,a1,-492 # 8000667c <_ZL11workerBodyBPv>
    80006870:	fd840513          	addi	a0,s0,-40
    80006874:	ffffb097          	auipc	ra,0xffffb
    80006878:	a10080e7          	jalr	-1520(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    8000687c:	00003517          	auipc	a0,0x3
    80006880:	e7c50513          	addi	a0,a0,-388 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80006884:	fffff097          	auipc	ra,0xfffff
    80006888:	2c8080e7          	jalr	712(ra) # 80005b4c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000688c:	00000613          	li	a2,0
    80006890:	00000597          	auipc	a1,0x0
    80006894:	c6c58593          	addi	a1,a1,-916 # 800064fc <_ZL11workerBodyCPv>
    80006898:	fe040513          	addi	a0,s0,-32
    8000689c:	ffffb097          	auipc	ra,0xffffb
    800068a0:	9e8080e7          	jalr	-1560(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800068a4:	00003517          	auipc	a0,0x3
    800068a8:	e6c50513          	addi	a0,a0,-404 # 80009710 <CONSOLE_STATUS+0x700>
    800068ac:	fffff097          	auipc	ra,0xfffff
    800068b0:	2a0080e7          	jalr	672(ra) # 80005b4c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800068b4:	00000613          	li	a2,0
    800068b8:	00000597          	auipc	a1,0x0
    800068bc:	afc58593          	addi	a1,a1,-1284 # 800063b4 <_ZL11workerBodyDPv>
    800068c0:	fe840513          	addi	a0,s0,-24
    800068c4:	ffffb097          	auipc	ra,0xffffb
    800068c8:	9c0080e7          	jalr	-1600(ra) # 80001284 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    800068cc:	00003517          	auipc	a0,0x3
    800068d0:	e5c50513          	addi	a0,a0,-420 # 80009728 <CONSOLE_STATUS+0x718>
    800068d4:	fffff097          	auipc	ra,0xfffff
    800068d8:	278080e7          	jalr	632(ra) # 80005b4c <_Z11printStringPKc>
    800068dc:	00c0006f          	j	800068e8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800068e0:	ffffb097          	auipc	ra,0xffffb
    800068e4:	aa8080e7          	jalr	-1368(ra) # 80001388 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800068e8:	00005797          	auipc	a5,0x5
    800068ec:	76d7c783          	lbu	a5,1901(a5) # 8000c055 <_ZL9finishedA>
    800068f0:	fe0788e3          	beqz	a5,800068e0 <_Z16System_Mode_testv+0xb4>
    800068f4:	00005797          	auipc	a5,0x5
    800068f8:	7607c783          	lbu	a5,1888(a5) # 8000c054 <_ZL9finishedB>
    800068fc:	fe0782e3          	beqz	a5,800068e0 <_Z16System_Mode_testv+0xb4>
    80006900:	00005797          	auipc	a5,0x5
    80006904:	7537c783          	lbu	a5,1875(a5) # 8000c053 <_ZL9finishedC>
    80006908:	fc078ce3          	beqz	a5,800068e0 <_Z16System_Mode_testv+0xb4>
    8000690c:	00005797          	auipc	a5,0x5
    80006910:	7467c783          	lbu	a5,1862(a5) # 8000c052 <_ZL9finishedD>
    80006914:	fc0786e3          	beqz	a5,800068e0 <_Z16System_Mode_testv+0xb4>
    }

}
    80006918:	02813083          	ld	ra,40(sp)
    8000691c:	02013403          	ld	s0,32(sp)
    80006920:	03010113          	addi	sp,sp,48
    80006924:	00008067          	ret

0000000080006928 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006928:	fe010113          	addi	sp,sp,-32
    8000692c:	00113c23          	sd	ra,24(sp)
    80006930:	00813823          	sd	s0,16(sp)
    80006934:	00913423          	sd	s1,8(sp)
    80006938:	01213023          	sd	s2,0(sp)
    8000693c:	02010413          	addi	s0,sp,32
    80006940:	00050493          	mv	s1,a0
    80006944:	00058913          	mv	s2,a1
    80006948:	0015879b          	addiw	a5,a1,1
    8000694c:	0007851b          	sext.w	a0,a5
    80006950:	00f4a023          	sw	a5,0(s1)
    80006954:	0004a823          	sw	zero,16(s1)
    80006958:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000695c:	00251513          	slli	a0,a0,0x2
    80006960:	ffffb097          	auipc	ra,0xffffb
    80006964:	898080e7          	jalr	-1896(ra) # 800011f8 <_Z9mem_allocm>
    80006968:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000696c:	00000593          	li	a1,0
    80006970:	02048513          	addi	a0,s1,32
    80006974:	ffffb097          	auipc	ra,0xffffb
    80006978:	ac8080e7          	jalr	-1336(ra) # 8000143c <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    8000697c:	00090593          	mv	a1,s2
    80006980:	01848513          	addi	a0,s1,24
    80006984:	ffffb097          	auipc	ra,0xffffb
    80006988:	ab8080e7          	jalr	-1352(ra) # 8000143c <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    8000698c:	00100593          	li	a1,1
    80006990:	02848513          	addi	a0,s1,40
    80006994:	ffffb097          	auipc	ra,0xffffb
    80006998:	aa8080e7          	jalr	-1368(ra) # 8000143c <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    8000699c:	00100593          	li	a1,1
    800069a0:	03048513          	addi	a0,s1,48
    800069a4:	ffffb097          	auipc	ra,0xffffb
    800069a8:	a98080e7          	jalr	-1384(ra) # 8000143c <_Z8sem_openPP4_semj>
}
    800069ac:	01813083          	ld	ra,24(sp)
    800069b0:	01013403          	ld	s0,16(sp)
    800069b4:	00813483          	ld	s1,8(sp)
    800069b8:	00013903          	ld	s2,0(sp)
    800069bc:	02010113          	addi	sp,sp,32
    800069c0:	00008067          	ret

00000000800069c4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800069c4:	fe010113          	addi	sp,sp,-32
    800069c8:	00113c23          	sd	ra,24(sp)
    800069cc:	00813823          	sd	s0,16(sp)
    800069d0:	00913423          	sd	s1,8(sp)
    800069d4:	01213023          	sd	s2,0(sp)
    800069d8:	02010413          	addi	s0,sp,32
    800069dc:	00050493          	mv	s1,a0
    800069e0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800069e4:	01853503          	ld	a0,24(a0)
    800069e8:	ffffb097          	auipc	ra,0xffffb
    800069ec:	ad8080e7          	jalr	-1320(ra) # 800014c0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    800069f0:	0304b503          	ld	a0,48(s1)
    800069f4:	ffffb097          	auipc	ra,0xffffb
    800069f8:	acc080e7          	jalr	-1332(ra) # 800014c0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    800069fc:	0084b783          	ld	a5,8(s1)
    80006a00:	0144a703          	lw	a4,20(s1)
    80006a04:	00271713          	slli	a4,a4,0x2
    80006a08:	00e787b3          	add	a5,a5,a4
    80006a0c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006a10:	0144a783          	lw	a5,20(s1)
    80006a14:	0017879b          	addiw	a5,a5,1
    80006a18:	0004a703          	lw	a4,0(s1)
    80006a1c:	02e7e7bb          	remw	a5,a5,a4
    80006a20:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006a24:	0304b503          	ld	a0,48(s1)
    80006a28:	ffffb097          	auipc	ra,0xffffb
    80006a2c:	ad8080e7          	jalr	-1320(ra) # 80001500 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006a30:	0204b503          	ld	a0,32(s1)
    80006a34:	ffffb097          	auipc	ra,0xffffb
    80006a38:	acc080e7          	jalr	-1332(ra) # 80001500 <_Z10sem_signalP4_sem>

}
    80006a3c:	01813083          	ld	ra,24(sp)
    80006a40:	01013403          	ld	s0,16(sp)
    80006a44:	00813483          	ld	s1,8(sp)
    80006a48:	00013903          	ld	s2,0(sp)
    80006a4c:	02010113          	addi	sp,sp,32
    80006a50:	00008067          	ret

0000000080006a54 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80006a54:	fe010113          	addi	sp,sp,-32
    80006a58:	00113c23          	sd	ra,24(sp)
    80006a5c:	00813823          	sd	s0,16(sp)
    80006a60:	00913423          	sd	s1,8(sp)
    80006a64:	01213023          	sd	s2,0(sp)
    80006a68:	02010413          	addi	s0,sp,32
    80006a6c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006a70:	02053503          	ld	a0,32(a0)
    80006a74:	ffffb097          	auipc	ra,0xffffb
    80006a78:	a4c080e7          	jalr	-1460(ra) # 800014c0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80006a7c:	0284b503          	ld	a0,40(s1)
    80006a80:	ffffb097          	auipc	ra,0xffffb
    80006a84:	a40080e7          	jalr	-1472(ra) # 800014c0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80006a88:	0084b703          	ld	a4,8(s1)
    80006a8c:	0104a783          	lw	a5,16(s1)
    80006a90:	00279693          	slli	a3,a5,0x2
    80006a94:	00d70733          	add	a4,a4,a3
    80006a98:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006a9c:	0017879b          	addiw	a5,a5,1
    80006aa0:	0004a703          	lw	a4,0(s1)
    80006aa4:	02e7e7bb          	remw	a5,a5,a4
    80006aa8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006aac:	0284b503          	ld	a0,40(s1)
    80006ab0:	ffffb097          	auipc	ra,0xffffb
    80006ab4:	a50080e7          	jalr	-1456(ra) # 80001500 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006ab8:	0184b503          	ld	a0,24(s1)
    80006abc:	ffffb097          	auipc	ra,0xffffb
    80006ac0:	a44080e7          	jalr	-1468(ra) # 80001500 <_Z10sem_signalP4_sem>

    return ret;
}
    80006ac4:	00090513          	mv	a0,s2
    80006ac8:	01813083          	ld	ra,24(sp)
    80006acc:	01013403          	ld	s0,16(sp)
    80006ad0:	00813483          	ld	s1,8(sp)
    80006ad4:	00013903          	ld	s2,0(sp)
    80006ad8:	02010113          	addi	sp,sp,32
    80006adc:	00008067          	ret

0000000080006ae0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006ae0:	fe010113          	addi	sp,sp,-32
    80006ae4:	00113c23          	sd	ra,24(sp)
    80006ae8:	00813823          	sd	s0,16(sp)
    80006aec:	00913423          	sd	s1,8(sp)
    80006af0:	01213023          	sd	s2,0(sp)
    80006af4:	02010413          	addi	s0,sp,32
    80006af8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006afc:	02853503          	ld	a0,40(a0)
    80006b00:	ffffb097          	auipc	ra,0xffffb
    80006b04:	9c0080e7          	jalr	-1600(ra) # 800014c0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006b08:	0304b503          	ld	a0,48(s1)
    80006b0c:	ffffb097          	auipc	ra,0xffffb
    80006b10:	9b4080e7          	jalr	-1612(ra) # 800014c0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006b14:	0144a783          	lw	a5,20(s1)
    80006b18:	0104a903          	lw	s2,16(s1)
    80006b1c:	0327ce63          	blt	a5,s2,80006b58 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006b20:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006b24:	0304b503          	ld	a0,48(s1)
    80006b28:	ffffb097          	auipc	ra,0xffffb
    80006b2c:	9d8080e7          	jalr	-1576(ra) # 80001500 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006b30:	0284b503          	ld	a0,40(s1)
    80006b34:	ffffb097          	auipc	ra,0xffffb
    80006b38:	9cc080e7          	jalr	-1588(ra) # 80001500 <_Z10sem_signalP4_sem>

    return ret;
}
    80006b3c:	00090513          	mv	a0,s2
    80006b40:	01813083          	ld	ra,24(sp)
    80006b44:	01013403          	ld	s0,16(sp)
    80006b48:	00813483          	ld	s1,8(sp)
    80006b4c:	00013903          	ld	s2,0(sp)
    80006b50:	02010113          	addi	sp,sp,32
    80006b54:	00008067          	ret
        ret = cap - head + tail;
    80006b58:	0004a703          	lw	a4,0(s1)
    80006b5c:	4127093b          	subw	s2,a4,s2
    80006b60:	00f9093b          	addw	s2,s2,a5
    80006b64:	fc1ff06f          	j	80006b24 <_ZN6Buffer6getCntEv+0x44>

0000000080006b68 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006b68:	fe010113          	addi	sp,sp,-32
    80006b6c:	00113c23          	sd	ra,24(sp)
    80006b70:	00813823          	sd	s0,16(sp)
    80006b74:	00913423          	sd	s1,8(sp)
    80006b78:	02010413          	addi	s0,sp,32
    80006b7c:	00050493          	mv	s1,a0
    putc('\n');
    80006b80:	00a00513          	li	a0,10
    80006b84:	ffffb097          	auipc	ra,0xffffb
    80006b88:	ac4080e7          	jalr	-1340(ra) # 80001648 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006b8c:	00003517          	auipc	a0,0x3
    80006b90:	bb450513          	addi	a0,a0,-1100 # 80009740 <CONSOLE_STATUS+0x730>
    80006b94:	fffff097          	auipc	ra,0xfffff
    80006b98:	fb8080e7          	jalr	-72(ra) # 80005b4c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006b9c:	00048513          	mv	a0,s1
    80006ba0:	00000097          	auipc	ra,0x0
    80006ba4:	f40080e7          	jalr	-192(ra) # 80006ae0 <_ZN6Buffer6getCntEv>
    80006ba8:	02a05c63          	blez	a0,80006be0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006bac:	0084b783          	ld	a5,8(s1)
    80006bb0:	0104a703          	lw	a4,16(s1)
    80006bb4:	00271713          	slli	a4,a4,0x2
    80006bb8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006bbc:	0007c503          	lbu	a0,0(a5)
    80006bc0:	ffffb097          	auipc	ra,0xffffb
    80006bc4:	a88080e7          	jalr	-1400(ra) # 80001648 <_Z4putcc>
        head = (head + 1) % cap;
    80006bc8:	0104a783          	lw	a5,16(s1)
    80006bcc:	0017879b          	addiw	a5,a5,1
    80006bd0:	0004a703          	lw	a4,0(s1)
    80006bd4:	02e7e7bb          	remw	a5,a5,a4
    80006bd8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006bdc:	fc1ff06f          	j	80006b9c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006be0:	02100513          	li	a0,33
    80006be4:	ffffb097          	auipc	ra,0xffffb
    80006be8:	a64080e7          	jalr	-1436(ra) # 80001648 <_Z4putcc>
    putc('\n');
    80006bec:	00a00513          	li	a0,10
    80006bf0:	ffffb097          	auipc	ra,0xffffb
    80006bf4:	a58080e7          	jalr	-1448(ra) # 80001648 <_Z4putcc>
    mem_free(buffer);
    80006bf8:	0084b503          	ld	a0,8(s1)
    80006bfc:	ffffa097          	auipc	ra,0xffffa
    80006c00:	648080e7          	jalr	1608(ra) # 80001244 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006c04:	0204b503          	ld	a0,32(s1)
    80006c08:	ffffb097          	auipc	ra,0xffffb
    80006c0c:	878080e7          	jalr	-1928(ra) # 80001480 <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006c10:	0184b503          	ld	a0,24(s1)
    80006c14:	ffffb097          	auipc	ra,0xffffb
    80006c18:	86c080e7          	jalr	-1940(ra) # 80001480 <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006c1c:	0304b503          	ld	a0,48(s1)
    80006c20:	ffffb097          	auipc	ra,0xffffb
    80006c24:	860080e7          	jalr	-1952(ra) # 80001480 <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006c28:	0284b503          	ld	a0,40(s1)
    80006c2c:	ffffb097          	auipc	ra,0xffffb
    80006c30:	854080e7          	jalr	-1964(ra) # 80001480 <_Z9sem_closeP4_sem>
}
    80006c34:	01813083          	ld	ra,24(sp)
    80006c38:	01013403          	ld	s0,16(sp)
    80006c3c:	00813483          	ld	s1,8(sp)
    80006c40:	02010113          	addi	sp,sp,32
    80006c44:	00008067          	ret

0000000080006c48 <start>:
    80006c48:	ff010113          	addi	sp,sp,-16
    80006c4c:	00813423          	sd	s0,8(sp)
    80006c50:	01010413          	addi	s0,sp,16
    80006c54:	300027f3          	csrr	a5,mstatus
    80006c58:	ffffe737          	lui	a4,0xffffe
    80006c5c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff153f>
    80006c60:	00e7f7b3          	and	a5,a5,a4
    80006c64:	00001737          	lui	a4,0x1
    80006c68:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006c6c:	00e7e7b3          	or	a5,a5,a4
    80006c70:	30079073          	csrw	mstatus,a5
    80006c74:	00000797          	auipc	a5,0x0
    80006c78:	16078793          	addi	a5,a5,352 # 80006dd4 <system_main>
    80006c7c:	34179073          	csrw	mepc,a5
    80006c80:	00000793          	li	a5,0
    80006c84:	18079073          	csrw	satp,a5
    80006c88:	000107b7          	lui	a5,0x10
    80006c8c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006c90:	30279073          	csrw	medeleg,a5
    80006c94:	30379073          	csrw	mideleg,a5
    80006c98:	104027f3          	csrr	a5,sie
    80006c9c:	2227e793          	ori	a5,a5,546
    80006ca0:	10479073          	csrw	sie,a5
    80006ca4:	fff00793          	li	a5,-1
    80006ca8:	00a7d793          	srli	a5,a5,0xa
    80006cac:	3b079073          	csrw	pmpaddr0,a5
    80006cb0:	00f00793          	li	a5,15
    80006cb4:	3a079073          	csrw	pmpcfg0,a5
    80006cb8:	f14027f3          	csrr	a5,mhartid
    80006cbc:	0200c737          	lui	a4,0x200c
    80006cc0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cc4:	0007869b          	sext.w	a3,a5
    80006cc8:	00269713          	slli	a4,a3,0x2
    80006ccc:	000f4637          	lui	a2,0xf4
    80006cd0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cd4:	00d70733          	add	a4,a4,a3
    80006cd8:	0037979b          	slliw	a5,a5,0x3
    80006cdc:	020046b7          	lui	a3,0x2004
    80006ce0:	00d787b3          	add	a5,a5,a3
    80006ce4:	00c585b3          	add	a1,a1,a2
    80006ce8:	00371693          	slli	a3,a4,0x3
    80006cec:	00005717          	auipc	a4,0x5
    80006cf0:	37470713          	addi	a4,a4,884 # 8000c060 <timer_scratch>
    80006cf4:	00b7b023          	sd	a1,0(a5)
    80006cf8:	00d70733          	add	a4,a4,a3
    80006cfc:	00f73c23          	sd	a5,24(a4)
    80006d00:	02c73023          	sd	a2,32(a4)
    80006d04:	34071073          	csrw	mscratch,a4
    80006d08:	00000797          	auipc	a5,0x0
    80006d0c:	6e878793          	addi	a5,a5,1768 # 800073f0 <timervec>
    80006d10:	30579073          	csrw	mtvec,a5
    80006d14:	300027f3          	csrr	a5,mstatus
    80006d18:	0087e793          	ori	a5,a5,8
    80006d1c:	30079073          	csrw	mstatus,a5
    80006d20:	304027f3          	csrr	a5,mie
    80006d24:	0807e793          	ori	a5,a5,128
    80006d28:	30479073          	csrw	mie,a5
    80006d2c:	f14027f3          	csrr	a5,mhartid
    80006d30:	0007879b          	sext.w	a5,a5
    80006d34:	00078213          	mv	tp,a5
    80006d38:	30200073          	mret
    80006d3c:	00813403          	ld	s0,8(sp)
    80006d40:	01010113          	addi	sp,sp,16
    80006d44:	00008067          	ret

0000000080006d48 <timerinit>:
    80006d48:	ff010113          	addi	sp,sp,-16
    80006d4c:	00813423          	sd	s0,8(sp)
    80006d50:	01010413          	addi	s0,sp,16
    80006d54:	f14027f3          	csrr	a5,mhartid
    80006d58:	0200c737          	lui	a4,0x200c
    80006d5c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006d60:	0007869b          	sext.w	a3,a5
    80006d64:	00269713          	slli	a4,a3,0x2
    80006d68:	000f4637          	lui	a2,0xf4
    80006d6c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006d70:	00d70733          	add	a4,a4,a3
    80006d74:	0037979b          	slliw	a5,a5,0x3
    80006d78:	020046b7          	lui	a3,0x2004
    80006d7c:	00d787b3          	add	a5,a5,a3
    80006d80:	00c585b3          	add	a1,a1,a2
    80006d84:	00371693          	slli	a3,a4,0x3
    80006d88:	00005717          	auipc	a4,0x5
    80006d8c:	2d870713          	addi	a4,a4,728 # 8000c060 <timer_scratch>
    80006d90:	00b7b023          	sd	a1,0(a5)
    80006d94:	00d70733          	add	a4,a4,a3
    80006d98:	00f73c23          	sd	a5,24(a4)
    80006d9c:	02c73023          	sd	a2,32(a4)
    80006da0:	34071073          	csrw	mscratch,a4
    80006da4:	00000797          	auipc	a5,0x0
    80006da8:	64c78793          	addi	a5,a5,1612 # 800073f0 <timervec>
    80006dac:	30579073          	csrw	mtvec,a5
    80006db0:	300027f3          	csrr	a5,mstatus
    80006db4:	0087e793          	ori	a5,a5,8
    80006db8:	30079073          	csrw	mstatus,a5
    80006dbc:	304027f3          	csrr	a5,mie
    80006dc0:	0807e793          	ori	a5,a5,128
    80006dc4:	30479073          	csrw	mie,a5
    80006dc8:	00813403          	ld	s0,8(sp)
    80006dcc:	01010113          	addi	sp,sp,16
    80006dd0:	00008067          	ret

0000000080006dd4 <system_main>:
    80006dd4:	fe010113          	addi	sp,sp,-32
    80006dd8:	00813823          	sd	s0,16(sp)
    80006ddc:	00913423          	sd	s1,8(sp)
    80006de0:	00113c23          	sd	ra,24(sp)
    80006de4:	02010413          	addi	s0,sp,32
    80006de8:	00000097          	auipc	ra,0x0
    80006dec:	0c4080e7          	jalr	196(ra) # 80006eac <cpuid>
    80006df0:	00005497          	auipc	s1,0x5
    80006df4:	19048493          	addi	s1,s1,400 # 8000bf80 <started>
    80006df8:	02050263          	beqz	a0,80006e1c <system_main+0x48>
    80006dfc:	0004a783          	lw	a5,0(s1)
    80006e00:	0007879b          	sext.w	a5,a5
    80006e04:	fe078ce3          	beqz	a5,80006dfc <system_main+0x28>
    80006e08:	0ff0000f          	fence
    80006e0c:	00003517          	auipc	a0,0x3
    80006e10:	98c50513          	addi	a0,a0,-1652 # 80009798 <CONSOLE_STATUS+0x788>
    80006e14:	00001097          	auipc	ra,0x1
    80006e18:	a78080e7          	jalr	-1416(ra) # 8000788c <panic>
    80006e1c:	00001097          	auipc	ra,0x1
    80006e20:	9cc080e7          	jalr	-1588(ra) # 800077e8 <consoleinit>
    80006e24:	00001097          	auipc	ra,0x1
    80006e28:	158080e7          	jalr	344(ra) # 80007f7c <printfinit>
    80006e2c:	00002517          	auipc	a0,0x2
    80006e30:	47450513          	addi	a0,a0,1140 # 800092a0 <CONSOLE_STATUS+0x290>
    80006e34:	00001097          	auipc	ra,0x1
    80006e38:	ab4080e7          	jalr	-1356(ra) # 800078e8 <__printf>
    80006e3c:	00003517          	auipc	a0,0x3
    80006e40:	92c50513          	addi	a0,a0,-1748 # 80009768 <CONSOLE_STATUS+0x758>
    80006e44:	00001097          	auipc	ra,0x1
    80006e48:	aa4080e7          	jalr	-1372(ra) # 800078e8 <__printf>
    80006e4c:	00002517          	auipc	a0,0x2
    80006e50:	45450513          	addi	a0,a0,1108 # 800092a0 <CONSOLE_STATUS+0x290>
    80006e54:	00001097          	auipc	ra,0x1
    80006e58:	a94080e7          	jalr	-1388(ra) # 800078e8 <__printf>
    80006e5c:	00001097          	auipc	ra,0x1
    80006e60:	4ac080e7          	jalr	1196(ra) # 80008308 <kinit>
    80006e64:	00000097          	auipc	ra,0x0
    80006e68:	148080e7          	jalr	328(ra) # 80006fac <trapinit>
    80006e6c:	00000097          	auipc	ra,0x0
    80006e70:	16c080e7          	jalr	364(ra) # 80006fd8 <trapinithart>
    80006e74:	00000097          	auipc	ra,0x0
    80006e78:	5bc080e7          	jalr	1468(ra) # 80007430 <plicinit>
    80006e7c:	00000097          	auipc	ra,0x0
    80006e80:	5dc080e7          	jalr	1500(ra) # 80007458 <plicinithart>
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	078080e7          	jalr	120(ra) # 80006efc <userinit>
    80006e8c:	0ff0000f          	fence
    80006e90:	00100793          	li	a5,1
    80006e94:	00003517          	auipc	a0,0x3
    80006e98:	8ec50513          	addi	a0,a0,-1812 # 80009780 <CONSOLE_STATUS+0x770>
    80006e9c:	00f4a023          	sw	a5,0(s1)
    80006ea0:	00001097          	auipc	ra,0x1
    80006ea4:	a48080e7          	jalr	-1464(ra) # 800078e8 <__printf>
    80006ea8:	0000006f          	j	80006ea8 <system_main+0xd4>

0000000080006eac <cpuid>:
    80006eac:	ff010113          	addi	sp,sp,-16
    80006eb0:	00813423          	sd	s0,8(sp)
    80006eb4:	01010413          	addi	s0,sp,16
    80006eb8:	00020513          	mv	a0,tp
    80006ebc:	00813403          	ld	s0,8(sp)
    80006ec0:	0005051b          	sext.w	a0,a0
    80006ec4:	01010113          	addi	sp,sp,16
    80006ec8:	00008067          	ret

0000000080006ecc <mycpu>:
    80006ecc:	ff010113          	addi	sp,sp,-16
    80006ed0:	00813423          	sd	s0,8(sp)
    80006ed4:	01010413          	addi	s0,sp,16
    80006ed8:	00020793          	mv	a5,tp
    80006edc:	00813403          	ld	s0,8(sp)
    80006ee0:	0007879b          	sext.w	a5,a5
    80006ee4:	00779793          	slli	a5,a5,0x7
    80006ee8:	00006517          	auipc	a0,0x6
    80006eec:	1a850513          	addi	a0,a0,424 # 8000d090 <cpus>
    80006ef0:	00f50533          	add	a0,a0,a5
    80006ef4:	01010113          	addi	sp,sp,16
    80006ef8:	00008067          	ret

0000000080006efc <userinit>:
    80006efc:	ff010113          	addi	sp,sp,-16
    80006f00:	00813423          	sd	s0,8(sp)
    80006f04:	01010413          	addi	s0,sp,16
    80006f08:	00813403          	ld	s0,8(sp)
    80006f0c:	01010113          	addi	sp,sp,16
    80006f10:	ffffb317          	auipc	t1,0xffffb
    80006f14:	7fc30067          	jr	2044(t1) # 8000270c <main>

0000000080006f18 <either_copyout>:
    80006f18:	ff010113          	addi	sp,sp,-16
    80006f1c:	00813023          	sd	s0,0(sp)
    80006f20:	00113423          	sd	ra,8(sp)
    80006f24:	01010413          	addi	s0,sp,16
    80006f28:	02051663          	bnez	a0,80006f54 <either_copyout+0x3c>
    80006f2c:	00058513          	mv	a0,a1
    80006f30:	00060593          	mv	a1,a2
    80006f34:	0006861b          	sext.w	a2,a3
    80006f38:	00002097          	auipc	ra,0x2
    80006f3c:	c5c080e7          	jalr	-932(ra) # 80008b94 <__memmove>
    80006f40:	00813083          	ld	ra,8(sp)
    80006f44:	00013403          	ld	s0,0(sp)
    80006f48:	00000513          	li	a0,0
    80006f4c:	01010113          	addi	sp,sp,16
    80006f50:	00008067          	ret
    80006f54:	00003517          	auipc	a0,0x3
    80006f58:	86c50513          	addi	a0,a0,-1940 # 800097c0 <CONSOLE_STATUS+0x7b0>
    80006f5c:	00001097          	auipc	ra,0x1
    80006f60:	930080e7          	jalr	-1744(ra) # 8000788c <panic>

0000000080006f64 <either_copyin>:
    80006f64:	ff010113          	addi	sp,sp,-16
    80006f68:	00813023          	sd	s0,0(sp)
    80006f6c:	00113423          	sd	ra,8(sp)
    80006f70:	01010413          	addi	s0,sp,16
    80006f74:	02059463          	bnez	a1,80006f9c <either_copyin+0x38>
    80006f78:	00060593          	mv	a1,a2
    80006f7c:	0006861b          	sext.w	a2,a3
    80006f80:	00002097          	auipc	ra,0x2
    80006f84:	c14080e7          	jalr	-1004(ra) # 80008b94 <__memmove>
    80006f88:	00813083          	ld	ra,8(sp)
    80006f8c:	00013403          	ld	s0,0(sp)
    80006f90:	00000513          	li	a0,0
    80006f94:	01010113          	addi	sp,sp,16
    80006f98:	00008067          	ret
    80006f9c:	00003517          	auipc	a0,0x3
    80006fa0:	84c50513          	addi	a0,a0,-1972 # 800097e8 <CONSOLE_STATUS+0x7d8>
    80006fa4:	00001097          	auipc	ra,0x1
    80006fa8:	8e8080e7          	jalr	-1816(ra) # 8000788c <panic>

0000000080006fac <trapinit>:
    80006fac:	ff010113          	addi	sp,sp,-16
    80006fb0:	00813423          	sd	s0,8(sp)
    80006fb4:	01010413          	addi	s0,sp,16
    80006fb8:	00813403          	ld	s0,8(sp)
    80006fbc:	00003597          	auipc	a1,0x3
    80006fc0:	85458593          	addi	a1,a1,-1964 # 80009810 <CONSOLE_STATUS+0x800>
    80006fc4:	00006517          	auipc	a0,0x6
    80006fc8:	14c50513          	addi	a0,a0,332 # 8000d110 <tickslock>
    80006fcc:	01010113          	addi	sp,sp,16
    80006fd0:	00001317          	auipc	t1,0x1
    80006fd4:	5c830067          	jr	1480(t1) # 80008598 <initlock>

0000000080006fd8 <trapinithart>:
    80006fd8:	ff010113          	addi	sp,sp,-16
    80006fdc:	00813423          	sd	s0,8(sp)
    80006fe0:	01010413          	addi	s0,sp,16
    80006fe4:	00000797          	auipc	a5,0x0
    80006fe8:	2fc78793          	addi	a5,a5,764 # 800072e0 <kernelvec>
    80006fec:	10579073          	csrw	stvec,a5
    80006ff0:	00813403          	ld	s0,8(sp)
    80006ff4:	01010113          	addi	sp,sp,16
    80006ff8:	00008067          	ret

0000000080006ffc <usertrap>:
    80006ffc:	ff010113          	addi	sp,sp,-16
    80007000:	00813423          	sd	s0,8(sp)
    80007004:	01010413          	addi	s0,sp,16
    80007008:	00813403          	ld	s0,8(sp)
    8000700c:	01010113          	addi	sp,sp,16
    80007010:	00008067          	ret

0000000080007014 <usertrapret>:
    80007014:	ff010113          	addi	sp,sp,-16
    80007018:	00813423          	sd	s0,8(sp)
    8000701c:	01010413          	addi	s0,sp,16
    80007020:	00813403          	ld	s0,8(sp)
    80007024:	01010113          	addi	sp,sp,16
    80007028:	00008067          	ret

000000008000702c <kerneltrap>:
    8000702c:	fe010113          	addi	sp,sp,-32
    80007030:	00813823          	sd	s0,16(sp)
    80007034:	00113c23          	sd	ra,24(sp)
    80007038:	00913423          	sd	s1,8(sp)
    8000703c:	02010413          	addi	s0,sp,32
    80007040:	142025f3          	csrr	a1,scause
    80007044:	100027f3          	csrr	a5,sstatus
    80007048:	0027f793          	andi	a5,a5,2
    8000704c:	10079c63          	bnez	a5,80007164 <kerneltrap+0x138>
    80007050:	142027f3          	csrr	a5,scause
    80007054:	0207ce63          	bltz	a5,80007090 <kerneltrap+0x64>
    80007058:	00003517          	auipc	a0,0x3
    8000705c:	80050513          	addi	a0,a0,-2048 # 80009858 <CONSOLE_STATUS+0x848>
    80007060:	00001097          	auipc	ra,0x1
    80007064:	888080e7          	jalr	-1912(ra) # 800078e8 <__printf>
    80007068:	141025f3          	csrr	a1,sepc
    8000706c:	14302673          	csrr	a2,stval
    80007070:	00002517          	auipc	a0,0x2
    80007074:	7f850513          	addi	a0,a0,2040 # 80009868 <CONSOLE_STATUS+0x858>
    80007078:	00001097          	auipc	ra,0x1
    8000707c:	870080e7          	jalr	-1936(ra) # 800078e8 <__printf>
    80007080:	00003517          	auipc	a0,0x3
    80007084:	80050513          	addi	a0,a0,-2048 # 80009880 <CONSOLE_STATUS+0x870>
    80007088:	00001097          	auipc	ra,0x1
    8000708c:	804080e7          	jalr	-2044(ra) # 8000788c <panic>
    80007090:	0ff7f713          	andi	a4,a5,255
    80007094:	00900693          	li	a3,9
    80007098:	04d70063          	beq	a4,a3,800070d8 <kerneltrap+0xac>
    8000709c:	fff00713          	li	a4,-1
    800070a0:	03f71713          	slli	a4,a4,0x3f
    800070a4:	00170713          	addi	a4,a4,1
    800070a8:	fae798e3          	bne	a5,a4,80007058 <kerneltrap+0x2c>
    800070ac:	00000097          	auipc	ra,0x0
    800070b0:	e00080e7          	jalr	-512(ra) # 80006eac <cpuid>
    800070b4:	06050663          	beqz	a0,80007120 <kerneltrap+0xf4>
    800070b8:	144027f3          	csrr	a5,sip
    800070bc:	ffd7f793          	andi	a5,a5,-3
    800070c0:	14479073          	csrw	sip,a5
    800070c4:	01813083          	ld	ra,24(sp)
    800070c8:	01013403          	ld	s0,16(sp)
    800070cc:	00813483          	ld	s1,8(sp)
    800070d0:	02010113          	addi	sp,sp,32
    800070d4:	00008067          	ret
    800070d8:	00000097          	auipc	ra,0x0
    800070dc:	3cc080e7          	jalr	972(ra) # 800074a4 <plic_claim>
    800070e0:	00a00793          	li	a5,10
    800070e4:	00050493          	mv	s1,a0
    800070e8:	06f50863          	beq	a0,a5,80007158 <kerneltrap+0x12c>
    800070ec:	fc050ce3          	beqz	a0,800070c4 <kerneltrap+0x98>
    800070f0:	00050593          	mv	a1,a0
    800070f4:	00002517          	auipc	a0,0x2
    800070f8:	74450513          	addi	a0,a0,1860 # 80009838 <CONSOLE_STATUS+0x828>
    800070fc:	00000097          	auipc	ra,0x0
    80007100:	7ec080e7          	jalr	2028(ra) # 800078e8 <__printf>
    80007104:	01013403          	ld	s0,16(sp)
    80007108:	01813083          	ld	ra,24(sp)
    8000710c:	00048513          	mv	a0,s1
    80007110:	00813483          	ld	s1,8(sp)
    80007114:	02010113          	addi	sp,sp,32
    80007118:	00000317          	auipc	t1,0x0
    8000711c:	3c430067          	jr	964(t1) # 800074dc <plic_complete>
    80007120:	00006517          	auipc	a0,0x6
    80007124:	ff050513          	addi	a0,a0,-16 # 8000d110 <tickslock>
    80007128:	00001097          	auipc	ra,0x1
    8000712c:	494080e7          	jalr	1172(ra) # 800085bc <acquire>
    80007130:	00005717          	auipc	a4,0x5
    80007134:	e5470713          	addi	a4,a4,-428 # 8000bf84 <ticks>
    80007138:	00072783          	lw	a5,0(a4)
    8000713c:	00006517          	auipc	a0,0x6
    80007140:	fd450513          	addi	a0,a0,-44 # 8000d110 <tickslock>
    80007144:	0017879b          	addiw	a5,a5,1
    80007148:	00f72023          	sw	a5,0(a4)
    8000714c:	00001097          	auipc	ra,0x1
    80007150:	53c080e7          	jalr	1340(ra) # 80008688 <release>
    80007154:	f65ff06f          	j	800070b8 <kerneltrap+0x8c>
    80007158:	00001097          	auipc	ra,0x1
    8000715c:	098080e7          	jalr	152(ra) # 800081f0 <uartintr>
    80007160:	fa5ff06f          	j	80007104 <kerneltrap+0xd8>
    80007164:	00002517          	auipc	a0,0x2
    80007168:	6b450513          	addi	a0,a0,1716 # 80009818 <CONSOLE_STATUS+0x808>
    8000716c:	00000097          	auipc	ra,0x0
    80007170:	720080e7          	jalr	1824(ra) # 8000788c <panic>

0000000080007174 <clockintr>:
    80007174:	fe010113          	addi	sp,sp,-32
    80007178:	00813823          	sd	s0,16(sp)
    8000717c:	00913423          	sd	s1,8(sp)
    80007180:	00113c23          	sd	ra,24(sp)
    80007184:	02010413          	addi	s0,sp,32
    80007188:	00006497          	auipc	s1,0x6
    8000718c:	f8848493          	addi	s1,s1,-120 # 8000d110 <tickslock>
    80007190:	00048513          	mv	a0,s1
    80007194:	00001097          	auipc	ra,0x1
    80007198:	428080e7          	jalr	1064(ra) # 800085bc <acquire>
    8000719c:	00005717          	auipc	a4,0x5
    800071a0:	de870713          	addi	a4,a4,-536 # 8000bf84 <ticks>
    800071a4:	00072783          	lw	a5,0(a4)
    800071a8:	01013403          	ld	s0,16(sp)
    800071ac:	01813083          	ld	ra,24(sp)
    800071b0:	00048513          	mv	a0,s1
    800071b4:	0017879b          	addiw	a5,a5,1
    800071b8:	00813483          	ld	s1,8(sp)
    800071bc:	00f72023          	sw	a5,0(a4)
    800071c0:	02010113          	addi	sp,sp,32
    800071c4:	00001317          	auipc	t1,0x1
    800071c8:	4c430067          	jr	1220(t1) # 80008688 <release>

00000000800071cc <devintr>:
    800071cc:	142027f3          	csrr	a5,scause
    800071d0:	00000513          	li	a0,0
    800071d4:	0007c463          	bltz	a5,800071dc <devintr+0x10>
    800071d8:	00008067          	ret
    800071dc:	fe010113          	addi	sp,sp,-32
    800071e0:	00813823          	sd	s0,16(sp)
    800071e4:	00113c23          	sd	ra,24(sp)
    800071e8:	00913423          	sd	s1,8(sp)
    800071ec:	02010413          	addi	s0,sp,32
    800071f0:	0ff7f713          	andi	a4,a5,255
    800071f4:	00900693          	li	a3,9
    800071f8:	04d70c63          	beq	a4,a3,80007250 <devintr+0x84>
    800071fc:	fff00713          	li	a4,-1
    80007200:	03f71713          	slli	a4,a4,0x3f
    80007204:	00170713          	addi	a4,a4,1
    80007208:	00e78c63          	beq	a5,a4,80007220 <devintr+0x54>
    8000720c:	01813083          	ld	ra,24(sp)
    80007210:	01013403          	ld	s0,16(sp)
    80007214:	00813483          	ld	s1,8(sp)
    80007218:	02010113          	addi	sp,sp,32
    8000721c:	00008067          	ret
    80007220:	00000097          	auipc	ra,0x0
    80007224:	c8c080e7          	jalr	-884(ra) # 80006eac <cpuid>
    80007228:	06050663          	beqz	a0,80007294 <devintr+0xc8>
    8000722c:	144027f3          	csrr	a5,sip
    80007230:	ffd7f793          	andi	a5,a5,-3
    80007234:	14479073          	csrw	sip,a5
    80007238:	01813083          	ld	ra,24(sp)
    8000723c:	01013403          	ld	s0,16(sp)
    80007240:	00813483          	ld	s1,8(sp)
    80007244:	00200513          	li	a0,2
    80007248:	02010113          	addi	sp,sp,32
    8000724c:	00008067          	ret
    80007250:	00000097          	auipc	ra,0x0
    80007254:	254080e7          	jalr	596(ra) # 800074a4 <plic_claim>
    80007258:	00a00793          	li	a5,10
    8000725c:	00050493          	mv	s1,a0
    80007260:	06f50663          	beq	a0,a5,800072cc <devintr+0x100>
    80007264:	00100513          	li	a0,1
    80007268:	fa0482e3          	beqz	s1,8000720c <devintr+0x40>
    8000726c:	00048593          	mv	a1,s1
    80007270:	00002517          	auipc	a0,0x2
    80007274:	5c850513          	addi	a0,a0,1480 # 80009838 <CONSOLE_STATUS+0x828>
    80007278:	00000097          	auipc	ra,0x0
    8000727c:	670080e7          	jalr	1648(ra) # 800078e8 <__printf>
    80007280:	00048513          	mv	a0,s1
    80007284:	00000097          	auipc	ra,0x0
    80007288:	258080e7          	jalr	600(ra) # 800074dc <plic_complete>
    8000728c:	00100513          	li	a0,1
    80007290:	f7dff06f          	j	8000720c <devintr+0x40>
    80007294:	00006517          	auipc	a0,0x6
    80007298:	e7c50513          	addi	a0,a0,-388 # 8000d110 <tickslock>
    8000729c:	00001097          	auipc	ra,0x1
    800072a0:	320080e7          	jalr	800(ra) # 800085bc <acquire>
    800072a4:	00005717          	auipc	a4,0x5
    800072a8:	ce070713          	addi	a4,a4,-800 # 8000bf84 <ticks>
    800072ac:	00072783          	lw	a5,0(a4)
    800072b0:	00006517          	auipc	a0,0x6
    800072b4:	e6050513          	addi	a0,a0,-416 # 8000d110 <tickslock>
    800072b8:	0017879b          	addiw	a5,a5,1
    800072bc:	00f72023          	sw	a5,0(a4)
    800072c0:	00001097          	auipc	ra,0x1
    800072c4:	3c8080e7          	jalr	968(ra) # 80008688 <release>
    800072c8:	f65ff06f          	j	8000722c <devintr+0x60>
    800072cc:	00001097          	auipc	ra,0x1
    800072d0:	f24080e7          	jalr	-220(ra) # 800081f0 <uartintr>
    800072d4:	fadff06f          	j	80007280 <devintr+0xb4>
	...

00000000800072e0 <kernelvec>:
    800072e0:	f0010113          	addi	sp,sp,-256
    800072e4:	00113023          	sd	ra,0(sp)
    800072e8:	00213423          	sd	sp,8(sp)
    800072ec:	00313823          	sd	gp,16(sp)
    800072f0:	00413c23          	sd	tp,24(sp)
    800072f4:	02513023          	sd	t0,32(sp)
    800072f8:	02613423          	sd	t1,40(sp)
    800072fc:	02713823          	sd	t2,48(sp)
    80007300:	02813c23          	sd	s0,56(sp)
    80007304:	04913023          	sd	s1,64(sp)
    80007308:	04a13423          	sd	a0,72(sp)
    8000730c:	04b13823          	sd	a1,80(sp)
    80007310:	04c13c23          	sd	a2,88(sp)
    80007314:	06d13023          	sd	a3,96(sp)
    80007318:	06e13423          	sd	a4,104(sp)
    8000731c:	06f13823          	sd	a5,112(sp)
    80007320:	07013c23          	sd	a6,120(sp)
    80007324:	09113023          	sd	a7,128(sp)
    80007328:	09213423          	sd	s2,136(sp)
    8000732c:	09313823          	sd	s3,144(sp)
    80007330:	09413c23          	sd	s4,152(sp)
    80007334:	0b513023          	sd	s5,160(sp)
    80007338:	0b613423          	sd	s6,168(sp)
    8000733c:	0b713823          	sd	s7,176(sp)
    80007340:	0b813c23          	sd	s8,184(sp)
    80007344:	0d913023          	sd	s9,192(sp)
    80007348:	0da13423          	sd	s10,200(sp)
    8000734c:	0db13823          	sd	s11,208(sp)
    80007350:	0dc13c23          	sd	t3,216(sp)
    80007354:	0fd13023          	sd	t4,224(sp)
    80007358:	0fe13423          	sd	t5,232(sp)
    8000735c:	0ff13823          	sd	t6,240(sp)
    80007360:	ccdff0ef          	jal	ra,8000702c <kerneltrap>
    80007364:	00013083          	ld	ra,0(sp)
    80007368:	00813103          	ld	sp,8(sp)
    8000736c:	01013183          	ld	gp,16(sp)
    80007370:	02013283          	ld	t0,32(sp)
    80007374:	02813303          	ld	t1,40(sp)
    80007378:	03013383          	ld	t2,48(sp)
    8000737c:	03813403          	ld	s0,56(sp)
    80007380:	04013483          	ld	s1,64(sp)
    80007384:	04813503          	ld	a0,72(sp)
    80007388:	05013583          	ld	a1,80(sp)
    8000738c:	05813603          	ld	a2,88(sp)
    80007390:	06013683          	ld	a3,96(sp)
    80007394:	06813703          	ld	a4,104(sp)
    80007398:	07013783          	ld	a5,112(sp)
    8000739c:	07813803          	ld	a6,120(sp)
    800073a0:	08013883          	ld	a7,128(sp)
    800073a4:	08813903          	ld	s2,136(sp)
    800073a8:	09013983          	ld	s3,144(sp)
    800073ac:	09813a03          	ld	s4,152(sp)
    800073b0:	0a013a83          	ld	s5,160(sp)
    800073b4:	0a813b03          	ld	s6,168(sp)
    800073b8:	0b013b83          	ld	s7,176(sp)
    800073bc:	0b813c03          	ld	s8,184(sp)
    800073c0:	0c013c83          	ld	s9,192(sp)
    800073c4:	0c813d03          	ld	s10,200(sp)
    800073c8:	0d013d83          	ld	s11,208(sp)
    800073cc:	0d813e03          	ld	t3,216(sp)
    800073d0:	0e013e83          	ld	t4,224(sp)
    800073d4:	0e813f03          	ld	t5,232(sp)
    800073d8:	0f013f83          	ld	t6,240(sp)
    800073dc:	10010113          	addi	sp,sp,256
    800073e0:	10200073          	sret
    800073e4:	00000013          	nop
    800073e8:	00000013          	nop
    800073ec:	00000013          	nop

00000000800073f0 <timervec>:
    800073f0:	34051573          	csrrw	a0,mscratch,a0
    800073f4:	00b53023          	sd	a1,0(a0)
    800073f8:	00c53423          	sd	a2,8(a0)
    800073fc:	00d53823          	sd	a3,16(a0)
    80007400:	01853583          	ld	a1,24(a0)
    80007404:	02053603          	ld	a2,32(a0)
    80007408:	0005b683          	ld	a3,0(a1)
    8000740c:	00c686b3          	add	a3,a3,a2
    80007410:	00d5b023          	sd	a3,0(a1)
    80007414:	00200593          	li	a1,2
    80007418:	14459073          	csrw	sip,a1
    8000741c:	01053683          	ld	a3,16(a0)
    80007420:	00853603          	ld	a2,8(a0)
    80007424:	00053583          	ld	a1,0(a0)
    80007428:	34051573          	csrrw	a0,mscratch,a0
    8000742c:	30200073          	mret

0000000080007430 <plicinit>:
    80007430:	ff010113          	addi	sp,sp,-16
    80007434:	00813423          	sd	s0,8(sp)
    80007438:	01010413          	addi	s0,sp,16
    8000743c:	00813403          	ld	s0,8(sp)
    80007440:	0c0007b7          	lui	a5,0xc000
    80007444:	00100713          	li	a4,1
    80007448:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000744c:	00e7a223          	sw	a4,4(a5)
    80007450:	01010113          	addi	sp,sp,16
    80007454:	00008067          	ret

0000000080007458 <plicinithart>:
    80007458:	ff010113          	addi	sp,sp,-16
    8000745c:	00813023          	sd	s0,0(sp)
    80007460:	00113423          	sd	ra,8(sp)
    80007464:	01010413          	addi	s0,sp,16
    80007468:	00000097          	auipc	ra,0x0
    8000746c:	a44080e7          	jalr	-1468(ra) # 80006eac <cpuid>
    80007470:	0085171b          	slliw	a4,a0,0x8
    80007474:	0c0027b7          	lui	a5,0xc002
    80007478:	00e787b3          	add	a5,a5,a4
    8000747c:	40200713          	li	a4,1026
    80007480:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007484:	00813083          	ld	ra,8(sp)
    80007488:	00013403          	ld	s0,0(sp)
    8000748c:	00d5151b          	slliw	a0,a0,0xd
    80007490:	0c2017b7          	lui	a5,0xc201
    80007494:	00a78533          	add	a0,a5,a0
    80007498:	00052023          	sw	zero,0(a0)
    8000749c:	01010113          	addi	sp,sp,16
    800074a0:	00008067          	ret

00000000800074a4 <plic_claim>:
    800074a4:	ff010113          	addi	sp,sp,-16
    800074a8:	00813023          	sd	s0,0(sp)
    800074ac:	00113423          	sd	ra,8(sp)
    800074b0:	01010413          	addi	s0,sp,16
    800074b4:	00000097          	auipc	ra,0x0
    800074b8:	9f8080e7          	jalr	-1544(ra) # 80006eac <cpuid>
    800074bc:	00813083          	ld	ra,8(sp)
    800074c0:	00013403          	ld	s0,0(sp)
    800074c4:	00d5151b          	slliw	a0,a0,0xd
    800074c8:	0c2017b7          	lui	a5,0xc201
    800074cc:	00a78533          	add	a0,a5,a0
    800074d0:	00452503          	lw	a0,4(a0)
    800074d4:	01010113          	addi	sp,sp,16
    800074d8:	00008067          	ret

00000000800074dc <plic_complete>:
    800074dc:	fe010113          	addi	sp,sp,-32
    800074e0:	00813823          	sd	s0,16(sp)
    800074e4:	00913423          	sd	s1,8(sp)
    800074e8:	00113c23          	sd	ra,24(sp)
    800074ec:	02010413          	addi	s0,sp,32
    800074f0:	00050493          	mv	s1,a0
    800074f4:	00000097          	auipc	ra,0x0
    800074f8:	9b8080e7          	jalr	-1608(ra) # 80006eac <cpuid>
    800074fc:	01813083          	ld	ra,24(sp)
    80007500:	01013403          	ld	s0,16(sp)
    80007504:	00d5179b          	slliw	a5,a0,0xd
    80007508:	0c201737          	lui	a4,0xc201
    8000750c:	00f707b3          	add	a5,a4,a5
    80007510:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007514:	00813483          	ld	s1,8(sp)
    80007518:	02010113          	addi	sp,sp,32
    8000751c:	00008067          	ret

0000000080007520 <consolewrite>:
    80007520:	fb010113          	addi	sp,sp,-80
    80007524:	04813023          	sd	s0,64(sp)
    80007528:	04113423          	sd	ra,72(sp)
    8000752c:	02913c23          	sd	s1,56(sp)
    80007530:	03213823          	sd	s2,48(sp)
    80007534:	03313423          	sd	s3,40(sp)
    80007538:	03413023          	sd	s4,32(sp)
    8000753c:	01513c23          	sd	s5,24(sp)
    80007540:	05010413          	addi	s0,sp,80
    80007544:	06c05c63          	blez	a2,800075bc <consolewrite+0x9c>
    80007548:	00060993          	mv	s3,a2
    8000754c:	00050a13          	mv	s4,a0
    80007550:	00058493          	mv	s1,a1
    80007554:	00000913          	li	s2,0
    80007558:	fff00a93          	li	s5,-1
    8000755c:	01c0006f          	j	80007578 <consolewrite+0x58>
    80007560:	fbf44503          	lbu	a0,-65(s0)
    80007564:	0019091b          	addiw	s2,s2,1
    80007568:	00148493          	addi	s1,s1,1
    8000756c:	00001097          	auipc	ra,0x1
    80007570:	a9c080e7          	jalr	-1380(ra) # 80008008 <uartputc>
    80007574:	03298063          	beq	s3,s2,80007594 <consolewrite+0x74>
    80007578:	00048613          	mv	a2,s1
    8000757c:	00100693          	li	a3,1
    80007580:	000a0593          	mv	a1,s4
    80007584:	fbf40513          	addi	a0,s0,-65
    80007588:	00000097          	auipc	ra,0x0
    8000758c:	9dc080e7          	jalr	-1572(ra) # 80006f64 <either_copyin>
    80007590:	fd5518e3          	bne	a0,s5,80007560 <consolewrite+0x40>
    80007594:	04813083          	ld	ra,72(sp)
    80007598:	04013403          	ld	s0,64(sp)
    8000759c:	03813483          	ld	s1,56(sp)
    800075a0:	02813983          	ld	s3,40(sp)
    800075a4:	02013a03          	ld	s4,32(sp)
    800075a8:	01813a83          	ld	s5,24(sp)
    800075ac:	00090513          	mv	a0,s2
    800075b0:	03013903          	ld	s2,48(sp)
    800075b4:	05010113          	addi	sp,sp,80
    800075b8:	00008067          	ret
    800075bc:	00000913          	li	s2,0
    800075c0:	fd5ff06f          	j	80007594 <consolewrite+0x74>

00000000800075c4 <consoleread>:
    800075c4:	f9010113          	addi	sp,sp,-112
    800075c8:	06813023          	sd	s0,96(sp)
    800075cc:	04913c23          	sd	s1,88(sp)
    800075d0:	05213823          	sd	s2,80(sp)
    800075d4:	05313423          	sd	s3,72(sp)
    800075d8:	05413023          	sd	s4,64(sp)
    800075dc:	03513c23          	sd	s5,56(sp)
    800075e0:	03613823          	sd	s6,48(sp)
    800075e4:	03713423          	sd	s7,40(sp)
    800075e8:	03813023          	sd	s8,32(sp)
    800075ec:	06113423          	sd	ra,104(sp)
    800075f0:	01913c23          	sd	s9,24(sp)
    800075f4:	07010413          	addi	s0,sp,112
    800075f8:	00060b93          	mv	s7,a2
    800075fc:	00050913          	mv	s2,a0
    80007600:	00058c13          	mv	s8,a1
    80007604:	00060b1b          	sext.w	s6,a2
    80007608:	00006497          	auipc	s1,0x6
    8000760c:	b3048493          	addi	s1,s1,-1232 # 8000d138 <cons>
    80007610:	00400993          	li	s3,4
    80007614:	fff00a13          	li	s4,-1
    80007618:	00a00a93          	li	s5,10
    8000761c:	05705e63          	blez	s7,80007678 <consoleread+0xb4>
    80007620:	09c4a703          	lw	a4,156(s1)
    80007624:	0984a783          	lw	a5,152(s1)
    80007628:	0007071b          	sext.w	a4,a4
    8000762c:	08e78463          	beq	a5,a4,800076b4 <consoleread+0xf0>
    80007630:	07f7f713          	andi	a4,a5,127
    80007634:	00e48733          	add	a4,s1,a4
    80007638:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000763c:	0017869b          	addiw	a3,a5,1
    80007640:	08d4ac23          	sw	a3,152(s1)
    80007644:	00070c9b          	sext.w	s9,a4
    80007648:	0b370663          	beq	a4,s3,800076f4 <consoleread+0x130>
    8000764c:	00100693          	li	a3,1
    80007650:	f9f40613          	addi	a2,s0,-97
    80007654:	000c0593          	mv	a1,s8
    80007658:	00090513          	mv	a0,s2
    8000765c:	f8e40fa3          	sb	a4,-97(s0)
    80007660:	00000097          	auipc	ra,0x0
    80007664:	8b8080e7          	jalr	-1864(ra) # 80006f18 <either_copyout>
    80007668:	01450863          	beq	a0,s4,80007678 <consoleread+0xb4>
    8000766c:	001c0c13          	addi	s8,s8,1
    80007670:	fffb8b9b          	addiw	s7,s7,-1
    80007674:	fb5c94e3          	bne	s9,s5,8000761c <consoleread+0x58>
    80007678:	000b851b          	sext.w	a0,s7
    8000767c:	06813083          	ld	ra,104(sp)
    80007680:	06013403          	ld	s0,96(sp)
    80007684:	05813483          	ld	s1,88(sp)
    80007688:	05013903          	ld	s2,80(sp)
    8000768c:	04813983          	ld	s3,72(sp)
    80007690:	04013a03          	ld	s4,64(sp)
    80007694:	03813a83          	ld	s5,56(sp)
    80007698:	02813b83          	ld	s7,40(sp)
    8000769c:	02013c03          	ld	s8,32(sp)
    800076a0:	01813c83          	ld	s9,24(sp)
    800076a4:	40ab053b          	subw	a0,s6,a0
    800076a8:	03013b03          	ld	s6,48(sp)
    800076ac:	07010113          	addi	sp,sp,112
    800076b0:	00008067          	ret
    800076b4:	00001097          	auipc	ra,0x1
    800076b8:	1d8080e7          	jalr	472(ra) # 8000888c <push_on>
    800076bc:	0984a703          	lw	a4,152(s1)
    800076c0:	09c4a783          	lw	a5,156(s1)
    800076c4:	0007879b          	sext.w	a5,a5
    800076c8:	fef70ce3          	beq	a4,a5,800076c0 <consoleread+0xfc>
    800076cc:	00001097          	auipc	ra,0x1
    800076d0:	234080e7          	jalr	564(ra) # 80008900 <pop_on>
    800076d4:	0984a783          	lw	a5,152(s1)
    800076d8:	07f7f713          	andi	a4,a5,127
    800076dc:	00e48733          	add	a4,s1,a4
    800076e0:	01874703          	lbu	a4,24(a4)
    800076e4:	0017869b          	addiw	a3,a5,1
    800076e8:	08d4ac23          	sw	a3,152(s1)
    800076ec:	00070c9b          	sext.w	s9,a4
    800076f0:	f5371ee3          	bne	a4,s3,8000764c <consoleread+0x88>
    800076f4:	000b851b          	sext.w	a0,s7
    800076f8:	f96bf2e3          	bgeu	s7,s6,8000767c <consoleread+0xb8>
    800076fc:	08f4ac23          	sw	a5,152(s1)
    80007700:	f7dff06f          	j	8000767c <consoleread+0xb8>

0000000080007704 <consputc>:
    80007704:	10000793          	li	a5,256
    80007708:	00f50663          	beq	a0,a5,80007714 <consputc+0x10>
    8000770c:	00001317          	auipc	t1,0x1
    80007710:	9f430067          	jr	-1548(t1) # 80008100 <uartputc_sync>
    80007714:	ff010113          	addi	sp,sp,-16
    80007718:	00113423          	sd	ra,8(sp)
    8000771c:	00813023          	sd	s0,0(sp)
    80007720:	01010413          	addi	s0,sp,16
    80007724:	00800513          	li	a0,8
    80007728:	00001097          	auipc	ra,0x1
    8000772c:	9d8080e7          	jalr	-1576(ra) # 80008100 <uartputc_sync>
    80007730:	02000513          	li	a0,32
    80007734:	00001097          	auipc	ra,0x1
    80007738:	9cc080e7          	jalr	-1588(ra) # 80008100 <uartputc_sync>
    8000773c:	00013403          	ld	s0,0(sp)
    80007740:	00813083          	ld	ra,8(sp)
    80007744:	00800513          	li	a0,8
    80007748:	01010113          	addi	sp,sp,16
    8000774c:	00001317          	auipc	t1,0x1
    80007750:	9b430067          	jr	-1612(t1) # 80008100 <uartputc_sync>

0000000080007754 <consoleintr>:
    80007754:	fe010113          	addi	sp,sp,-32
    80007758:	00813823          	sd	s0,16(sp)
    8000775c:	00913423          	sd	s1,8(sp)
    80007760:	01213023          	sd	s2,0(sp)
    80007764:	00113c23          	sd	ra,24(sp)
    80007768:	02010413          	addi	s0,sp,32
    8000776c:	00006917          	auipc	s2,0x6
    80007770:	9cc90913          	addi	s2,s2,-1588 # 8000d138 <cons>
    80007774:	00050493          	mv	s1,a0
    80007778:	00090513          	mv	a0,s2
    8000777c:	00001097          	auipc	ra,0x1
    80007780:	e40080e7          	jalr	-448(ra) # 800085bc <acquire>
    80007784:	02048c63          	beqz	s1,800077bc <consoleintr+0x68>
    80007788:	0a092783          	lw	a5,160(s2)
    8000778c:	09892703          	lw	a4,152(s2)
    80007790:	07f00693          	li	a3,127
    80007794:	40e7873b          	subw	a4,a5,a4
    80007798:	02e6e263          	bltu	a3,a4,800077bc <consoleintr+0x68>
    8000779c:	00d00713          	li	a4,13
    800077a0:	04e48063          	beq	s1,a4,800077e0 <consoleintr+0x8c>
    800077a4:	07f7f713          	andi	a4,a5,127
    800077a8:	00e90733          	add	a4,s2,a4
    800077ac:	0017879b          	addiw	a5,a5,1
    800077b0:	0af92023          	sw	a5,160(s2)
    800077b4:	00970c23          	sb	s1,24(a4)
    800077b8:	08f92e23          	sw	a5,156(s2)
    800077bc:	01013403          	ld	s0,16(sp)
    800077c0:	01813083          	ld	ra,24(sp)
    800077c4:	00813483          	ld	s1,8(sp)
    800077c8:	00013903          	ld	s2,0(sp)
    800077cc:	00006517          	auipc	a0,0x6
    800077d0:	96c50513          	addi	a0,a0,-1684 # 8000d138 <cons>
    800077d4:	02010113          	addi	sp,sp,32
    800077d8:	00001317          	auipc	t1,0x1
    800077dc:	eb030067          	jr	-336(t1) # 80008688 <release>
    800077e0:	00a00493          	li	s1,10
    800077e4:	fc1ff06f          	j	800077a4 <consoleintr+0x50>

00000000800077e8 <consoleinit>:
    800077e8:	fe010113          	addi	sp,sp,-32
    800077ec:	00113c23          	sd	ra,24(sp)
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00913423          	sd	s1,8(sp)
    800077f8:	02010413          	addi	s0,sp,32
    800077fc:	00006497          	auipc	s1,0x6
    80007800:	93c48493          	addi	s1,s1,-1732 # 8000d138 <cons>
    80007804:	00048513          	mv	a0,s1
    80007808:	00002597          	auipc	a1,0x2
    8000780c:	08858593          	addi	a1,a1,136 # 80009890 <CONSOLE_STATUS+0x880>
    80007810:	00001097          	auipc	ra,0x1
    80007814:	d88080e7          	jalr	-632(ra) # 80008598 <initlock>
    80007818:	00000097          	auipc	ra,0x0
    8000781c:	7ac080e7          	jalr	1964(ra) # 80007fc4 <uartinit>
    80007820:	01813083          	ld	ra,24(sp)
    80007824:	01013403          	ld	s0,16(sp)
    80007828:	00000797          	auipc	a5,0x0
    8000782c:	d9c78793          	addi	a5,a5,-612 # 800075c4 <consoleread>
    80007830:	0af4bc23          	sd	a5,184(s1)
    80007834:	00000797          	auipc	a5,0x0
    80007838:	cec78793          	addi	a5,a5,-788 # 80007520 <consolewrite>
    8000783c:	0cf4b023          	sd	a5,192(s1)
    80007840:	00813483          	ld	s1,8(sp)
    80007844:	02010113          	addi	sp,sp,32
    80007848:	00008067          	ret

000000008000784c <console_read>:
    8000784c:	ff010113          	addi	sp,sp,-16
    80007850:	00813423          	sd	s0,8(sp)
    80007854:	01010413          	addi	s0,sp,16
    80007858:	00813403          	ld	s0,8(sp)
    8000785c:	00006317          	auipc	t1,0x6
    80007860:	99433303          	ld	t1,-1644(t1) # 8000d1f0 <devsw+0x10>
    80007864:	01010113          	addi	sp,sp,16
    80007868:	00030067          	jr	t1

000000008000786c <console_write>:
    8000786c:	ff010113          	addi	sp,sp,-16
    80007870:	00813423          	sd	s0,8(sp)
    80007874:	01010413          	addi	s0,sp,16
    80007878:	00813403          	ld	s0,8(sp)
    8000787c:	00006317          	auipc	t1,0x6
    80007880:	97c33303          	ld	t1,-1668(t1) # 8000d1f8 <devsw+0x18>
    80007884:	01010113          	addi	sp,sp,16
    80007888:	00030067          	jr	t1

000000008000788c <panic>:
    8000788c:	fe010113          	addi	sp,sp,-32
    80007890:	00113c23          	sd	ra,24(sp)
    80007894:	00813823          	sd	s0,16(sp)
    80007898:	00913423          	sd	s1,8(sp)
    8000789c:	02010413          	addi	s0,sp,32
    800078a0:	00050493          	mv	s1,a0
    800078a4:	00002517          	auipc	a0,0x2
    800078a8:	ff450513          	addi	a0,a0,-12 # 80009898 <CONSOLE_STATUS+0x888>
    800078ac:	00006797          	auipc	a5,0x6
    800078b0:	9e07a623          	sw	zero,-1556(a5) # 8000d298 <pr+0x18>
    800078b4:	00000097          	auipc	ra,0x0
    800078b8:	034080e7          	jalr	52(ra) # 800078e8 <__printf>
    800078bc:	00048513          	mv	a0,s1
    800078c0:	00000097          	auipc	ra,0x0
    800078c4:	028080e7          	jalr	40(ra) # 800078e8 <__printf>
    800078c8:	00002517          	auipc	a0,0x2
    800078cc:	9d850513          	addi	a0,a0,-1576 # 800092a0 <CONSOLE_STATUS+0x290>
    800078d0:	00000097          	auipc	ra,0x0
    800078d4:	018080e7          	jalr	24(ra) # 800078e8 <__printf>
    800078d8:	00100793          	li	a5,1
    800078dc:	00004717          	auipc	a4,0x4
    800078e0:	6af72623          	sw	a5,1708(a4) # 8000bf88 <panicked>
    800078e4:	0000006f          	j	800078e4 <panic+0x58>

00000000800078e8 <__printf>:
    800078e8:	f3010113          	addi	sp,sp,-208
    800078ec:	08813023          	sd	s0,128(sp)
    800078f0:	07313423          	sd	s3,104(sp)
    800078f4:	09010413          	addi	s0,sp,144
    800078f8:	05813023          	sd	s8,64(sp)
    800078fc:	08113423          	sd	ra,136(sp)
    80007900:	06913c23          	sd	s1,120(sp)
    80007904:	07213823          	sd	s2,112(sp)
    80007908:	07413023          	sd	s4,96(sp)
    8000790c:	05513c23          	sd	s5,88(sp)
    80007910:	05613823          	sd	s6,80(sp)
    80007914:	05713423          	sd	s7,72(sp)
    80007918:	03913c23          	sd	s9,56(sp)
    8000791c:	03a13823          	sd	s10,48(sp)
    80007920:	03b13423          	sd	s11,40(sp)
    80007924:	00006317          	auipc	t1,0x6
    80007928:	95c30313          	addi	t1,t1,-1700 # 8000d280 <pr>
    8000792c:	01832c03          	lw	s8,24(t1)
    80007930:	00b43423          	sd	a1,8(s0)
    80007934:	00c43823          	sd	a2,16(s0)
    80007938:	00d43c23          	sd	a3,24(s0)
    8000793c:	02e43023          	sd	a4,32(s0)
    80007940:	02f43423          	sd	a5,40(s0)
    80007944:	03043823          	sd	a6,48(s0)
    80007948:	03143c23          	sd	a7,56(s0)
    8000794c:	00050993          	mv	s3,a0
    80007950:	4a0c1663          	bnez	s8,80007dfc <__printf+0x514>
    80007954:	60098c63          	beqz	s3,80007f6c <__printf+0x684>
    80007958:	0009c503          	lbu	a0,0(s3)
    8000795c:	00840793          	addi	a5,s0,8
    80007960:	f6f43c23          	sd	a5,-136(s0)
    80007964:	00000493          	li	s1,0
    80007968:	22050063          	beqz	a0,80007b88 <__printf+0x2a0>
    8000796c:	00002a37          	lui	s4,0x2
    80007970:	00018ab7          	lui	s5,0x18
    80007974:	000f4b37          	lui	s6,0xf4
    80007978:	00989bb7          	lui	s7,0x989
    8000797c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007980:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007984:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007988:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000798c:	00148c9b          	addiw	s9,s1,1
    80007990:	02500793          	li	a5,37
    80007994:	01998933          	add	s2,s3,s9
    80007998:	38f51263          	bne	a0,a5,80007d1c <__printf+0x434>
    8000799c:	00094783          	lbu	a5,0(s2)
    800079a0:	00078c9b          	sext.w	s9,a5
    800079a4:	1e078263          	beqz	a5,80007b88 <__printf+0x2a0>
    800079a8:	0024849b          	addiw	s1,s1,2
    800079ac:	07000713          	li	a4,112
    800079b0:	00998933          	add	s2,s3,s1
    800079b4:	38e78a63          	beq	a5,a4,80007d48 <__printf+0x460>
    800079b8:	20f76863          	bltu	a4,a5,80007bc8 <__printf+0x2e0>
    800079bc:	42a78863          	beq	a5,a0,80007dec <__printf+0x504>
    800079c0:	06400713          	li	a4,100
    800079c4:	40e79663          	bne	a5,a4,80007dd0 <__printf+0x4e8>
    800079c8:	f7843783          	ld	a5,-136(s0)
    800079cc:	0007a603          	lw	a2,0(a5)
    800079d0:	00878793          	addi	a5,a5,8
    800079d4:	f6f43c23          	sd	a5,-136(s0)
    800079d8:	42064a63          	bltz	a2,80007e0c <__printf+0x524>
    800079dc:	00a00713          	li	a4,10
    800079e0:	02e677bb          	remuw	a5,a2,a4
    800079e4:	00002d97          	auipc	s11,0x2
    800079e8:	edcd8d93          	addi	s11,s11,-292 # 800098c0 <digits>
    800079ec:	00900593          	li	a1,9
    800079f0:	0006051b          	sext.w	a0,a2
    800079f4:	00000c93          	li	s9,0
    800079f8:	02079793          	slli	a5,a5,0x20
    800079fc:	0207d793          	srli	a5,a5,0x20
    80007a00:	00fd87b3          	add	a5,s11,a5
    80007a04:	0007c783          	lbu	a5,0(a5)
    80007a08:	02e656bb          	divuw	a3,a2,a4
    80007a0c:	f8f40023          	sb	a5,-128(s0)
    80007a10:	14c5d863          	bge	a1,a2,80007b60 <__printf+0x278>
    80007a14:	06300593          	li	a1,99
    80007a18:	00100c93          	li	s9,1
    80007a1c:	02e6f7bb          	remuw	a5,a3,a4
    80007a20:	02079793          	slli	a5,a5,0x20
    80007a24:	0207d793          	srli	a5,a5,0x20
    80007a28:	00fd87b3          	add	a5,s11,a5
    80007a2c:	0007c783          	lbu	a5,0(a5)
    80007a30:	02e6d73b          	divuw	a4,a3,a4
    80007a34:	f8f400a3          	sb	a5,-127(s0)
    80007a38:	12a5f463          	bgeu	a1,a0,80007b60 <__printf+0x278>
    80007a3c:	00a00693          	li	a3,10
    80007a40:	00900593          	li	a1,9
    80007a44:	02d777bb          	remuw	a5,a4,a3
    80007a48:	02079793          	slli	a5,a5,0x20
    80007a4c:	0207d793          	srli	a5,a5,0x20
    80007a50:	00fd87b3          	add	a5,s11,a5
    80007a54:	0007c503          	lbu	a0,0(a5)
    80007a58:	02d757bb          	divuw	a5,a4,a3
    80007a5c:	f8a40123          	sb	a0,-126(s0)
    80007a60:	48e5f263          	bgeu	a1,a4,80007ee4 <__printf+0x5fc>
    80007a64:	06300513          	li	a0,99
    80007a68:	02d7f5bb          	remuw	a1,a5,a3
    80007a6c:	02059593          	slli	a1,a1,0x20
    80007a70:	0205d593          	srli	a1,a1,0x20
    80007a74:	00bd85b3          	add	a1,s11,a1
    80007a78:	0005c583          	lbu	a1,0(a1)
    80007a7c:	02d7d7bb          	divuw	a5,a5,a3
    80007a80:	f8b401a3          	sb	a1,-125(s0)
    80007a84:	48e57263          	bgeu	a0,a4,80007f08 <__printf+0x620>
    80007a88:	3e700513          	li	a0,999
    80007a8c:	02d7f5bb          	remuw	a1,a5,a3
    80007a90:	02059593          	slli	a1,a1,0x20
    80007a94:	0205d593          	srli	a1,a1,0x20
    80007a98:	00bd85b3          	add	a1,s11,a1
    80007a9c:	0005c583          	lbu	a1,0(a1)
    80007aa0:	02d7d7bb          	divuw	a5,a5,a3
    80007aa4:	f8b40223          	sb	a1,-124(s0)
    80007aa8:	46e57663          	bgeu	a0,a4,80007f14 <__printf+0x62c>
    80007aac:	02d7f5bb          	remuw	a1,a5,a3
    80007ab0:	02059593          	slli	a1,a1,0x20
    80007ab4:	0205d593          	srli	a1,a1,0x20
    80007ab8:	00bd85b3          	add	a1,s11,a1
    80007abc:	0005c583          	lbu	a1,0(a1)
    80007ac0:	02d7d7bb          	divuw	a5,a5,a3
    80007ac4:	f8b402a3          	sb	a1,-123(s0)
    80007ac8:	46ea7863          	bgeu	s4,a4,80007f38 <__printf+0x650>
    80007acc:	02d7f5bb          	remuw	a1,a5,a3
    80007ad0:	02059593          	slli	a1,a1,0x20
    80007ad4:	0205d593          	srli	a1,a1,0x20
    80007ad8:	00bd85b3          	add	a1,s11,a1
    80007adc:	0005c583          	lbu	a1,0(a1)
    80007ae0:	02d7d7bb          	divuw	a5,a5,a3
    80007ae4:	f8b40323          	sb	a1,-122(s0)
    80007ae8:	3eeaf863          	bgeu	s5,a4,80007ed8 <__printf+0x5f0>
    80007aec:	02d7f5bb          	remuw	a1,a5,a3
    80007af0:	02059593          	slli	a1,a1,0x20
    80007af4:	0205d593          	srli	a1,a1,0x20
    80007af8:	00bd85b3          	add	a1,s11,a1
    80007afc:	0005c583          	lbu	a1,0(a1)
    80007b00:	02d7d7bb          	divuw	a5,a5,a3
    80007b04:	f8b403a3          	sb	a1,-121(s0)
    80007b08:	42eb7e63          	bgeu	s6,a4,80007f44 <__printf+0x65c>
    80007b0c:	02d7f5bb          	remuw	a1,a5,a3
    80007b10:	02059593          	slli	a1,a1,0x20
    80007b14:	0205d593          	srli	a1,a1,0x20
    80007b18:	00bd85b3          	add	a1,s11,a1
    80007b1c:	0005c583          	lbu	a1,0(a1)
    80007b20:	02d7d7bb          	divuw	a5,a5,a3
    80007b24:	f8b40423          	sb	a1,-120(s0)
    80007b28:	42ebfc63          	bgeu	s7,a4,80007f60 <__printf+0x678>
    80007b2c:	02079793          	slli	a5,a5,0x20
    80007b30:	0207d793          	srli	a5,a5,0x20
    80007b34:	00fd8db3          	add	s11,s11,a5
    80007b38:	000dc703          	lbu	a4,0(s11)
    80007b3c:	00a00793          	li	a5,10
    80007b40:	00900c93          	li	s9,9
    80007b44:	f8e404a3          	sb	a4,-119(s0)
    80007b48:	00065c63          	bgez	a2,80007b60 <__printf+0x278>
    80007b4c:	f9040713          	addi	a4,s0,-112
    80007b50:	00f70733          	add	a4,a4,a5
    80007b54:	02d00693          	li	a3,45
    80007b58:	fed70823          	sb	a3,-16(a4)
    80007b5c:	00078c93          	mv	s9,a5
    80007b60:	f8040793          	addi	a5,s0,-128
    80007b64:	01978cb3          	add	s9,a5,s9
    80007b68:	f7f40d13          	addi	s10,s0,-129
    80007b6c:	000cc503          	lbu	a0,0(s9)
    80007b70:	fffc8c93          	addi	s9,s9,-1
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	b90080e7          	jalr	-1136(ra) # 80007704 <consputc>
    80007b7c:	ffac98e3          	bne	s9,s10,80007b6c <__printf+0x284>
    80007b80:	00094503          	lbu	a0,0(s2)
    80007b84:	e00514e3          	bnez	a0,8000798c <__printf+0xa4>
    80007b88:	1a0c1663          	bnez	s8,80007d34 <__printf+0x44c>
    80007b8c:	08813083          	ld	ra,136(sp)
    80007b90:	08013403          	ld	s0,128(sp)
    80007b94:	07813483          	ld	s1,120(sp)
    80007b98:	07013903          	ld	s2,112(sp)
    80007b9c:	06813983          	ld	s3,104(sp)
    80007ba0:	06013a03          	ld	s4,96(sp)
    80007ba4:	05813a83          	ld	s5,88(sp)
    80007ba8:	05013b03          	ld	s6,80(sp)
    80007bac:	04813b83          	ld	s7,72(sp)
    80007bb0:	04013c03          	ld	s8,64(sp)
    80007bb4:	03813c83          	ld	s9,56(sp)
    80007bb8:	03013d03          	ld	s10,48(sp)
    80007bbc:	02813d83          	ld	s11,40(sp)
    80007bc0:	0d010113          	addi	sp,sp,208
    80007bc4:	00008067          	ret
    80007bc8:	07300713          	li	a4,115
    80007bcc:	1ce78a63          	beq	a5,a4,80007da0 <__printf+0x4b8>
    80007bd0:	07800713          	li	a4,120
    80007bd4:	1ee79e63          	bne	a5,a4,80007dd0 <__printf+0x4e8>
    80007bd8:	f7843783          	ld	a5,-136(s0)
    80007bdc:	0007a703          	lw	a4,0(a5)
    80007be0:	00878793          	addi	a5,a5,8
    80007be4:	f6f43c23          	sd	a5,-136(s0)
    80007be8:	28074263          	bltz	a4,80007e6c <__printf+0x584>
    80007bec:	00002d97          	auipc	s11,0x2
    80007bf0:	cd4d8d93          	addi	s11,s11,-812 # 800098c0 <digits>
    80007bf4:	00f77793          	andi	a5,a4,15
    80007bf8:	00fd87b3          	add	a5,s11,a5
    80007bfc:	0007c683          	lbu	a3,0(a5)
    80007c00:	00f00613          	li	a2,15
    80007c04:	0007079b          	sext.w	a5,a4
    80007c08:	f8d40023          	sb	a3,-128(s0)
    80007c0c:	0047559b          	srliw	a1,a4,0x4
    80007c10:	0047569b          	srliw	a3,a4,0x4
    80007c14:	00000c93          	li	s9,0
    80007c18:	0ee65063          	bge	a2,a4,80007cf8 <__printf+0x410>
    80007c1c:	00f6f693          	andi	a3,a3,15
    80007c20:	00dd86b3          	add	a3,s11,a3
    80007c24:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007c28:	0087d79b          	srliw	a5,a5,0x8
    80007c2c:	00100c93          	li	s9,1
    80007c30:	f8d400a3          	sb	a3,-127(s0)
    80007c34:	0cb67263          	bgeu	a2,a1,80007cf8 <__printf+0x410>
    80007c38:	00f7f693          	andi	a3,a5,15
    80007c3c:	00dd86b3          	add	a3,s11,a3
    80007c40:	0006c583          	lbu	a1,0(a3)
    80007c44:	00f00613          	li	a2,15
    80007c48:	0047d69b          	srliw	a3,a5,0x4
    80007c4c:	f8b40123          	sb	a1,-126(s0)
    80007c50:	0047d593          	srli	a1,a5,0x4
    80007c54:	28f67e63          	bgeu	a2,a5,80007ef0 <__printf+0x608>
    80007c58:	00f6f693          	andi	a3,a3,15
    80007c5c:	00dd86b3          	add	a3,s11,a3
    80007c60:	0006c503          	lbu	a0,0(a3)
    80007c64:	0087d813          	srli	a6,a5,0x8
    80007c68:	0087d69b          	srliw	a3,a5,0x8
    80007c6c:	f8a401a3          	sb	a0,-125(s0)
    80007c70:	28b67663          	bgeu	a2,a1,80007efc <__printf+0x614>
    80007c74:	00f6f693          	andi	a3,a3,15
    80007c78:	00dd86b3          	add	a3,s11,a3
    80007c7c:	0006c583          	lbu	a1,0(a3)
    80007c80:	00c7d513          	srli	a0,a5,0xc
    80007c84:	00c7d69b          	srliw	a3,a5,0xc
    80007c88:	f8b40223          	sb	a1,-124(s0)
    80007c8c:	29067a63          	bgeu	a2,a6,80007f20 <__printf+0x638>
    80007c90:	00f6f693          	andi	a3,a3,15
    80007c94:	00dd86b3          	add	a3,s11,a3
    80007c98:	0006c583          	lbu	a1,0(a3)
    80007c9c:	0107d813          	srli	a6,a5,0x10
    80007ca0:	0107d69b          	srliw	a3,a5,0x10
    80007ca4:	f8b402a3          	sb	a1,-123(s0)
    80007ca8:	28a67263          	bgeu	a2,a0,80007f2c <__printf+0x644>
    80007cac:	00f6f693          	andi	a3,a3,15
    80007cb0:	00dd86b3          	add	a3,s11,a3
    80007cb4:	0006c683          	lbu	a3,0(a3)
    80007cb8:	0147d79b          	srliw	a5,a5,0x14
    80007cbc:	f8d40323          	sb	a3,-122(s0)
    80007cc0:	21067663          	bgeu	a2,a6,80007ecc <__printf+0x5e4>
    80007cc4:	02079793          	slli	a5,a5,0x20
    80007cc8:	0207d793          	srli	a5,a5,0x20
    80007ccc:	00fd8db3          	add	s11,s11,a5
    80007cd0:	000dc683          	lbu	a3,0(s11)
    80007cd4:	00800793          	li	a5,8
    80007cd8:	00700c93          	li	s9,7
    80007cdc:	f8d403a3          	sb	a3,-121(s0)
    80007ce0:	00075c63          	bgez	a4,80007cf8 <__printf+0x410>
    80007ce4:	f9040713          	addi	a4,s0,-112
    80007ce8:	00f70733          	add	a4,a4,a5
    80007cec:	02d00693          	li	a3,45
    80007cf0:	fed70823          	sb	a3,-16(a4)
    80007cf4:	00078c93          	mv	s9,a5
    80007cf8:	f8040793          	addi	a5,s0,-128
    80007cfc:	01978cb3          	add	s9,a5,s9
    80007d00:	f7f40d13          	addi	s10,s0,-129
    80007d04:	000cc503          	lbu	a0,0(s9)
    80007d08:	fffc8c93          	addi	s9,s9,-1
    80007d0c:	00000097          	auipc	ra,0x0
    80007d10:	9f8080e7          	jalr	-1544(ra) # 80007704 <consputc>
    80007d14:	ff9d18e3          	bne	s10,s9,80007d04 <__printf+0x41c>
    80007d18:	0100006f          	j	80007d28 <__printf+0x440>
    80007d1c:	00000097          	auipc	ra,0x0
    80007d20:	9e8080e7          	jalr	-1560(ra) # 80007704 <consputc>
    80007d24:	000c8493          	mv	s1,s9
    80007d28:	00094503          	lbu	a0,0(s2)
    80007d2c:	c60510e3          	bnez	a0,8000798c <__printf+0xa4>
    80007d30:	e40c0ee3          	beqz	s8,80007b8c <__printf+0x2a4>
    80007d34:	00005517          	auipc	a0,0x5
    80007d38:	54c50513          	addi	a0,a0,1356 # 8000d280 <pr>
    80007d3c:	00001097          	auipc	ra,0x1
    80007d40:	94c080e7          	jalr	-1716(ra) # 80008688 <release>
    80007d44:	e49ff06f          	j	80007b8c <__printf+0x2a4>
    80007d48:	f7843783          	ld	a5,-136(s0)
    80007d4c:	03000513          	li	a0,48
    80007d50:	01000d13          	li	s10,16
    80007d54:	00878713          	addi	a4,a5,8
    80007d58:	0007bc83          	ld	s9,0(a5)
    80007d5c:	f6e43c23          	sd	a4,-136(s0)
    80007d60:	00000097          	auipc	ra,0x0
    80007d64:	9a4080e7          	jalr	-1628(ra) # 80007704 <consputc>
    80007d68:	07800513          	li	a0,120
    80007d6c:	00000097          	auipc	ra,0x0
    80007d70:	998080e7          	jalr	-1640(ra) # 80007704 <consputc>
    80007d74:	00002d97          	auipc	s11,0x2
    80007d78:	b4cd8d93          	addi	s11,s11,-1204 # 800098c0 <digits>
    80007d7c:	03ccd793          	srli	a5,s9,0x3c
    80007d80:	00fd87b3          	add	a5,s11,a5
    80007d84:	0007c503          	lbu	a0,0(a5)
    80007d88:	fffd0d1b          	addiw	s10,s10,-1
    80007d8c:	004c9c93          	slli	s9,s9,0x4
    80007d90:	00000097          	auipc	ra,0x0
    80007d94:	974080e7          	jalr	-1676(ra) # 80007704 <consputc>
    80007d98:	fe0d12e3          	bnez	s10,80007d7c <__printf+0x494>
    80007d9c:	f8dff06f          	j	80007d28 <__printf+0x440>
    80007da0:	f7843783          	ld	a5,-136(s0)
    80007da4:	0007bc83          	ld	s9,0(a5)
    80007da8:	00878793          	addi	a5,a5,8
    80007dac:	f6f43c23          	sd	a5,-136(s0)
    80007db0:	000c9a63          	bnez	s9,80007dc4 <__printf+0x4dc>
    80007db4:	1080006f          	j	80007ebc <__printf+0x5d4>
    80007db8:	001c8c93          	addi	s9,s9,1
    80007dbc:	00000097          	auipc	ra,0x0
    80007dc0:	948080e7          	jalr	-1720(ra) # 80007704 <consputc>
    80007dc4:	000cc503          	lbu	a0,0(s9)
    80007dc8:	fe0518e3          	bnez	a0,80007db8 <__printf+0x4d0>
    80007dcc:	f5dff06f          	j	80007d28 <__printf+0x440>
    80007dd0:	02500513          	li	a0,37
    80007dd4:	00000097          	auipc	ra,0x0
    80007dd8:	930080e7          	jalr	-1744(ra) # 80007704 <consputc>
    80007ddc:	000c8513          	mv	a0,s9
    80007de0:	00000097          	auipc	ra,0x0
    80007de4:	924080e7          	jalr	-1756(ra) # 80007704 <consputc>
    80007de8:	f41ff06f          	j	80007d28 <__printf+0x440>
    80007dec:	02500513          	li	a0,37
    80007df0:	00000097          	auipc	ra,0x0
    80007df4:	914080e7          	jalr	-1772(ra) # 80007704 <consputc>
    80007df8:	f31ff06f          	j	80007d28 <__printf+0x440>
    80007dfc:	00030513          	mv	a0,t1
    80007e00:	00000097          	auipc	ra,0x0
    80007e04:	7bc080e7          	jalr	1980(ra) # 800085bc <acquire>
    80007e08:	b4dff06f          	j	80007954 <__printf+0x6c>
    80007e0c:	40c0053b          	negw	a0,a2
    80007e10:	00a00713          	li	a4,10
    80007e14:	02e576bb          	remuw	a3,a0,a4
    80007e18:	00002d97          	auipc	s11,0x2
    80007e1c:	aa8d8d93          	addi	s11,s11,-1368 # 800098c0 <digits>
    80007e20:	ff700593          	li	a1,-9
    80007e24:	02069693          	slli	a3,a3,0x20
    80007e28:	0206d693          	srli	a3,a3,0x20
    80007e2c:	00dd86b3          	add	a3,s11,a3
    80007e30:	0006c683          	lbu	a3,0(a3)
    80007e34:	02e557bb          	divuw	a5,a0,a4
    80007e38:	f8d40023          	sb	a3,-128(s0)
    80007e3c:	10b65e63          	bge	a2,a1,80007f58 <__printf+0x670>
    80007e40:	06300593          	li	a1,99
    80007e44:	02e7f6bb          	remuw	a3,a5,a4
    80007e48:	02069693          	slli	a3,a3,0x20
    80007e4c:	0206d693          	srli	a3,a3,0x20
    80007e50:	00dd86b3          	add	a3,s11,a3
    80007e54:	0006c683          	lbu	a3,0(a3)
    80007e58:	02e7d73b          	divuw	a4,a5,a4
    80007e5c:	00200793          	li	a5,2
    80007e60:	f8d400a3          	sb	a3,-127(s0)
    80007e64:	bca5ece3          	bltu	a1,a0,80007a3c <__printf+0x154>
    80007e68:	ce5ff06f          	j	80007b4c <__printf+0x264>
    80007e6c:	40e007bb          	negw	a5,a4
    80007e70:	00002d97          	auipc	s11,0x2
    80007e74:	a50d8d93          	addi	s11,s11,-1456 # 800098c0 <digits>
    80007e78:	00f7f693          	andi	a3,a5,15
    80007e7c:	00dd86b3          	add	a3,s11,a3
    80007e80:	0006c583          	lbu	a1,0(a3)
    80007e84:	ff100613          	li	a2,-15
    80007e88:	0047d69b          	srliw	a3,a5,0x4
    80007e8c:	f8b40023          	sb	a1,-128(s0)
    80007e90:	0047d59b          	srliw	a1,a5,0x4
    80007e94:	0ac75e63          	bge	a4,a2,80007f50 <__printf+0x668>
    80007e98:	00f6f693          	andi	a3,a3,15
    80007e9c:	00dd86b3          	add	a3,s11,a3
    80007ea0:	0006c603          	lbu	a2,0(a3)
    80007ea4:	00f00693          	li	a3,15
    80007ea8:	0087d79b          	srliw	a5,a5,0x8
    80007eac:	f8c400a3          	sb	a2,-127(s0)
    80007eb0:	d8b6e4e3          	bltu	a3,a1,80007c38 <__printf+0x350>
    80007eb4:	00200793          	li	a5,2
    80007eb8:	e2dff06f          	j	80007ce4 <__printf+0x3fc>
    80007ebc:	00002c97          	auipc	s9,0x2
    80007ec0:	9e4c8c93          	addi	s9,s9,-1564 # 800098a0 <CONSOLE_STATUS+0x890>
    80007ec4:	02800513          	li	a0,40
    80007ec8:	ef1ff06f          	j	80007db8 <__printf+0x4d0>
    80007ecc:	00700793          	li	a5,7
    80007ed0:	00600c93          	li	s9,6
    80007ed4:	e0dff06f          	j	80007ce0 <__printf+0x3f8>
    80007ed8:	00700793          	li	a5,7
    80007edc:	00600c93          	li	s9,6
    80007ee0:	c69ff06f          	j	80007b48 <__printf+0x260>
    80007ee4:	00300793          	li	a5,3
    80007ee8:	00200c93          	li	s9,2
    80007eec:	c5dff06f          	j	80007b48 <__printf+0x260>
    80007ef0:	00300793          	li	a5,3
    80007ef4:	00200c93          	li	s9,2
    80007ef8:	de9ff06f          	j	80007ce0 <__printf+0x3f8>
    80007efc:	00400793          	li	a5,4
    80007f00:	00300c93          	li	s9,3
    80007f04:	dddff06f          	j	80007ce0 <__printf+0x3f8>
    80007f08:	00400793          	li	a5,4
    80007f0c:	00300c93          	li	s9,3
    80007f10:	c39ff06f          	j	80007b48 <__printf+0x260>
    80007f14:	00500793          	li	a5,5
    80007f18:	00400c93          	li	s9,4
    80007f1c:	c2dff06f          	j	80007b48 <__printf+0x260>
    80007f20:	00500793          	li	a5,5
    80007f24:	00400c93          	li	s9,4
    80007f28:	db9ff06f          	j	80007ce0 <__printf+0x3f8>
    80007f2c:	00600793          	li	a5,6
    80007f30:	00500c93          	li	s9,5
    80007f34:	dadff06f          	j	80007ce0 <__printf+0x3f8>
    80007f38:	00600793          	li	a5,6
    80007f3c:	00500c93          	li	s9,5
    80007f40:	c09ff06f          	j	80007b48 <__printf+0x260>
    80007f44:	00800793          	li	a5,8
    80007f48:	00700c93          	li	s9,7
    80007f4c:	bfdff06f          	j	80007b48 <__printf+0x260>
    80007f50:	00100793          	li	a5,1
    80007f54:	d91ff06f          	j	80007ce4 <__printf+0x3fc>
    80007f58:	00100793          	li	a5,1
    80007f5c:	bf1ff06f          	j	80007b4c <__printf+0x264>
    80007f60:	00900793          	li	a5,9
    80007f64:	00800c93          	li	s9,8
    80007f68:	be1ff06f          	j	80007b48 <__printf+0x260>
    80007f6c:	00002517          	auipc	a0,0x2
    80007f70:	93c50513          	addi	a0,a0,-1732 # 800098a8 <CONSOLE_STATUS+0x898>
    80007f74:	00000097          	auipc	ra,0x0
    80007f78:	918080e7          	jalr	-1768(ra) # 8000788c <panic>

0000000080007f7c <printfinit>:
    80007f7c:	fe010113          	addi	sp,sp,-32
    80007f80:	00813823          	sd	s0,16(sp)
    80007f84:	00913423          	sd	s1,8(sp)
    80007f88:	00113c23          	sd	ra,24(sp)
    80007f8c:	02010413          	addi	s0,sp,32
    80007f90:	00005497          	auipc	s1,0x5
    80007f94:	2f048493          	addi	s1,s1,752 # 8000d280 <pr>
    80007f98:	00048513          	mv	a0,s1
    80007f9c:	00002597          	auipc	a1,0x2
    80007fa0:	91c58593          	addi	a1,a1,-1764 # 800098b8 <CONSOLE_STATUS+0x8a8>
    80007fa4:	00000097          	auipc	ra,0x0
    80007fa8:	5f4080e7          	jalr	1524(ra) # 80008598 <initlock>
    80007fac:	01813083          	ld	ra,24(sp)
    80007fb0:	01013403          	ld	s0,16(sp)
    80007fb4:	0004ac23          	sw	zero,24(s1)
    80007fb8:	00813483          	ld	s1,8(sp)
    80007fbc:	02010113          	addi	sp,sp,32
    80007fc0:	00008067          	ret

0000000080007fc4 <uartinit>:
    80007fc4:	ff010113          	addi	sp,sp,-16
    80007fc8:	00813423          	sd	s0,8(sp)
    80007fcc:	01010413          	addi	s0,sp,16
    80007fd0:	100007b7          	lui	a5,0x10000
    80007fd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007fd8:	f8000713          	li	a4,-128
    80007fdc:	00e781a3          	sb	a4,3(a5)
    80007fe0:	00300713          	li	a4,3
    80007fe4:	00e78023          	sb	a4,0(a5)
    80007fe8:	000780a3          	sb	zero,1(a5)
    80007fec:	00e781a3          	sb	a4,3(a5)
    80007ff0:	00700693          	li	a3,7
    80007ff4:	00d78123          	sb	a3,2(a5)
    80007ff8:	00e780a3          	sb	a4,1(a5)
    80007ffc:	00813403          	ld	s0,8(sp)
    80008000:	01010113          	addi	sp,sp,16
    80008004:	00008067          	ret

0000000080008008 <uartputc>:
    80008008:	00004797          	auipc	a5,0x4
    8000800c:	f807a783          	lw	a5,-128(a5) # 8000bf88 <panicked>
    80008010:	00078463          	beqz	a5,80008018 <uartputc+0x10>
    80008014:	0000006f          	j	80008014 <uartputc+0xc>
    80008018:	fd010113          	addi	sp,sp,-48
    8000801c:	02813023          	sd	s0,32(sp)
    80008020:	00913c23          	sd	s1,24(sp)
    80008024:	01213823          	sd	s2,16(sp)
    80008028:	01313423          	sd	s3,8(sp)
    8000802c:	02113423          	sd	ra,40(sp)
    80008030:	03010413          	addi	s0,sp,48
    80008034:	00004917          	auipc	s2,0x4
    80008038:	f5c90913          	addi	s2,s2,-164 # 8000bf90 <uart_tx_r>
    8000803c:	00093783          	ld	a5,0(s2)
    80008040:	00004497          	auipc	s1,0x4
    80008044:	f5848493          	addi	s1,s1,-168 # 8000bf98 <uart_tx_w>
    80008048:	0004b703          	ld	a4,0(s1)
    8000804c:	02078693          	addi	a3,a5,32
    80008050:	00050993          	mv	s3,a0
    80008054:	02e69c63          	bne	a3,a4,8000808c <uartputc+0x84>
    80008058:	00001097          	auipc	ra,0x1
    8000805c:	834080e7          	jalr	-1996(ra) # 8000888c <push_on>
    80008060:	00093783          	ld	a5,0(s2)
    80008064:	0004b703          	ld	a4,0(s1)
    80008068:	02078793          	addi	a5,a5,32
    8000806c:	00e79463          	bne	a5,a4,80008074 <uartputc+0x6c>
    80008070:	0000006f          	j	80008070 <uartputc+0x68>
    80008074:	00001097          	auipc	ra,0x1
    80008078:	88c080e7          	jalr	-1908(ra) # 80008900 <pop_on>
    8000807c:	00093783          	ld	a5,0(s2)
    80008080:	0004b703          	ld	a4,0(s1)
    80008084:	02078693          	addi	a3,a5,32
    80008088:	fce688e3          	beq	a3,a4,80008058 <uartputc+0x50>
    8000808c:	01f77693          	andi	a3,a4,31
    80008090:	00005597          	auipc	a1,0x5
    80008094:	21058593          	addi	a1,a1,528 # 8000d2a0 <uart_tx_buf>
    80008098:	00d586b3          	add	a3,a1,a3
    8000809c:	00170713          	addi	a4,a4,1
    800080a0:	01368023          	sb	s3,0(a3)
    800080a4:	00e4b023          	sd	a4,0(s1)
    800080a8:	10000637          	lui	a2,0x10000
    800080ac:	02f71063          	bne	a4,a5,800080cc <uartputc+0xc4>
    800080b0:	0340006f          	j	800080e4 <uartputc+0xdc>
    800080b4:	00074703          	lbu	a4,0(a4)
    800080b8:	00f93023          	sd	a5,0(s2)
    800080bc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800080c0:	00093783          	ld	a5,0(s2)
    800080c4:	0004b703          	ld	a4,0(s1)
    800080c8:	00f70e63          	beq	a4,a5,800080e4 <uartputc+0xdc>
    800080cc:	00564683          	lbu	a3,5(a2)
    800080d0:	01f7f713          	andi	a4,a5,31
    800080d4:	00e58733          	add	a4,a1,a4
    800080d8:	0206f693          	andi	a3,a3,32
    800080dc:	00178793          	addi	a5,a5,1
    800080e0:	fc069ae3          	bnez	a3,800080b4 <uartputc+0xac>
    800080e4:	02813083          	ld	ra,40(sp)
    800080e8:	02013403          	ld	s0,32(sp)
    800080ec:	01813483          	ld	s1,24(sp)
    800080f0:	01013903          	ld	s2,16(sp)
    800080f4:	00813983          	ld	s3,8(sp)
    800080f8:	03010113          	addi	sp,sp,48
    800080fc:	00008067          	ret

0000000080008100 <uartputc_sync>:
    80008100:	ff010113          	addi	sp,sp,-16
    80008104:	00813423          	sd	s0,8(sp)
    80008108:	01010413          	addi	s0,sp,16
    8000810c:	00004717          	auipc	a4,0x4
    80008110:	e7c72703          	lw	a4,-388(a4) # 8000bf88 <panicked>
    80008114:	02071663          	bnez	a4,80008140 <uartputc_sync+0x40>
    80008118:	00050793          	mv	a5,a0
    8000811c:	100006b7          	lui	a3,0x10000
    80008120:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008124:	02077713          	andi	a4,a4,32
    80008128:	fe070ce3          	beqz	a4,80008120 <uartputc_sync+0x20>
    8000812c:	0ff7f793          	andi	a5,a5,255
    80008130:	00f68023          	sb	a5,0(a3)
    80008134:	00813403          	ld	s0,8(sp)
    80008138:	01010113          	addi	sp,sp,16
    8000813c:	00008067          	ret
    80008140:	0000006f          	j	80008140 <uartputc_sync+0x40>

0000000080008144 <uartstart>:
    80008144:	ff010113          	addi	sp,sp,-16
    80008148:	00813423          	sd	s0,8(sp)
    8000814c:	01010413          	addi	s0,sp,16
    80008150:	00004617          	auipc	a2,0x4
    80008154:	e4060613          	addi	a2,a2,-448 # 8000bf90 <uart_tx_r>
    80008158:	00004517          	auipc	a0,0x4
    8000815c:	e4050513          	addi	a0,a0,-448 # 8000bf98 <uart_tx_w>
    80008160:	00063783          	ld	a5,0(a2)
    80008164:	00053703          	ld	a4,0(a0)
    80008168:	04f70263          	beq	a4,a5,800081ac <uartstart+0x68>
    8000816c:	100005b7          	lui	a1,0x10000
    80008170:	00005817          	auipc	a6,0x5
    80008174:	13080813          	addi	a6,a6,304 # 8000d2a0 <uart_tx_buf>
    80008178:	01c0006f          	j	80008194 <uartstart+0x50>
    8000817c:	0006c703          	lbu	a4,0(a3)
    80008180:	00f63023          	sd	a5,0(a2)
    80008184:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008188:	00063783          	ld	a5,0(a2)
    8000818c:	00053703          	ld	a4,0(a0)
    80008190:	00f70e63          	beq	a4,a5,800081ac <uartstart+0x68>
    80008194:	01f7f713          	andi	a4,a5,31
    80008198:	00e806b3          	add	a3,a6,a4
    8000819c:	0055c703          	lbu	a4,5(a1)
    800081a0:	00178793          	addi	a5,a5,1
    800081a4:	02077713          	andi	a4,a4,32
    800081a8:	fc071ae3          	bnez	a4,8000817c <uartstart+0x38>
    800081ac:	00813403          	ld	s0,8(sp)
    800081b0:	01010113          	addi	sp,sp,16
    800081b4:	00008067          	ret

00000000800081b8 <uartgetc>:
    800081b8:	ff010113          	addi	sp,sp,-16
    800081bc:	00813423          	sd	s0,8(sp)
    800081c0:	01010413          	addi	s0,sp,16
    800081c4:	10000737          	lui	a4,0x10000
    800081c8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800081cc:	0017f793          	andi	a5,a5,1
    800081d0:	00078c63          	beqz	a5,800081e8 <uartgetc+0x30>
    800081d4:	00074503          	lbu	a0,0(a4)
    800081d8:	0ff57513          	andi	a0,a0,255
    800081dc:	00813403          	ld	s0,8(sp)
    800081e0:	01010113          	addi	sp,sp,16
    800081e4:	00008067          	ret
    800081e8:	fff00513          	li	a0,-1
    800081ec:	ff1ff06f          	j	800081dc <uartgetc+0x24>

00000000800081f0 <uartintr>:
    800081f0:	100007b7          	lui	a5,0x10000
    800081f4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800081f8:	0017f793          	andi	a5,a5,1
    800081fc:	0a078463          	beqz	a5,800082a4 <uartintr+0xb4>
    80008200:	fe010113          	addi	sp,sp,-32
    80008204:	00813823          	sd	s0,16(sp)
    80008208:	00913423          	sd	s1,8(sp)
    8000820c:	00113c23          	sd	ra,24(sp)
    80008210:	02010413          	addi	s0,sp,32
    80008214:	100004b7          	lui	s1,0x10000
    80008218:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000821c:	0ff57513          	andi	a0,a0,255
    80008220:	fffff097          	auipc	ra,0xfffff
    80008224:	534080e7          	jalr	1332(ra) # 80007754 <consoleintr>
    80008228:	0054c783          	lbu	a5,5(s1)
    8000822c:	0017f793          	andi	a5,a5,1
    80008230:	fe0794e3          	bnez	a5,80008218 <uartintr+0x28>
    80008234:	00004617          	auipc	a2,0x4
    80008238:	d5c60613          	addi	a2,a2,-676 # 8000bf90 <uart_tx_r>
    8000823c:	00004517          	auipc	a0,0x4
    80008240:	d5c50513          	addi	a0,a0,-676 # 8000bf98 <uart_tx_w>
    80008244:	00063783          	ld	a5,0(a2)
    80008248:	00053703          	ld	a4,0(a0)
    8000824c:	04f70263          	beq	a4,a5,80008290 <uartintr+0xa0>
    80008250:	100005b7          	lui	a1,0x10000
    80008254:	00005817          	auipc	a6,0x5
    80008258:	04c80813          	addi	a6,a6,76 # 8000d2a0 <uart_tx_buf>
    8000825c:	01c0006f          	j	80008278 <uartintr+0x88>
    80008260:	0006c703          	lbu	a4,0(a3)
    80008264:	00f63023          	sd	a5,0(a2)
    80008268:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000826c:	00063783          	ld	a5,0(a2)
    80008270:	00053703          	ld	a4,0(a0)
    80008274:	00f70e63          	beq	a4,a5,80008290 <uartintr+0xa0>
    80008278:	01f7f713          	andi	a4,a5,31
    8000827c:	00e806b3          	add	a3,a6,a4
    80008280:	0055c703          	lbu	a4,5(a1)
    80008284:	00178793          	addi	a5,a5,1
    80008288:	02077713          	andi	a4,a4,32
    8000828c:	fc071ae3          	bnez	a4,80008260 <uartintr+0x70>
    80008290:	01813083          	ld	ra,24(sp)
    80008294:	01013403          	ld	s0,16(sp)
    80008298:	00813483          	ld	s1,8(sp)
    8000829c:	02010113          	addi	sp,sp,32
    800082a0:	00008067          	ret
    800082a4:	00004617          	auipc	a2,0x4
    800082a8:	cec60613          	addi	a2,a2,-788 # 8000bf90 <uart_tx_r>
    800082ac:	00004517          	auipc	a0,0x4
    800082b0:	cec50513          	addi	a0,a0,-788 # 8000bf98 <uart_tx_w>
    800082b4:	00063783          	ld	a5,0(a2)
    800082b8:	00053703          	ld	a4,0(a0)
    800082bc:	04f70263          	beq	a4,a5,80008300 <uartintr+0x110>
    800082c0:	100005b7          	lui	a1,0x10000
    800082c4:	00005817          	auipc	a6,0x5
    800082c8:	fdc80813          	addi	a6,a6,-36 # 8000d2a0 <uart_tx_buf>
    800082cc:	01c0006f          	j	800082e8 <uartintr+0xf8>
    800082d0:	0006c703          	lbu	a4,0(a3)
    800082d4:	00f63023          	sd	a5,0(a2)
    800082d8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800082dc:	00063783          	ld	a5,0(a2)
    800082e0:	00053703          	ld	a4,0(a0)
    800082e4:	02f70063          	beq	a4,a5,80008304 <uartintr+0x114>
    800082e8:	01f7f713          	andi	a4,a5,31
    800082ec:	00e806b3          	add	a3,a6,a4
    800082f0:	0055c703          	lbu	a4,5(a1)
    800082f4:	00178793          	addi	a5,a5,1
    800082f8:	02077713          	andi	a4,a4,32
    800082fc:	fc071ae3          	bnez	a4,800082d0 <uartintr+0xe0>
    80008300:	00008067          	ret
    80008304:	00008067          	ret

0000000080008308 <kinit>:
    80008308:	fc010113          	addi	sp,sp,-64
    8000830c:	02913423          	sd	s1,40(sp)
    80008310:	fffff7b7          	lui	a5,0xfffff
    80008314:	00006497          	auipc	s1,0x6
    80008318:	fab48493          	addi	s1,s1,-85 # 8000e2bf <end+0xfff>
    8000831c:	02813823          	sd	s0,48(sp)
    80008320:	01313c23          	sd	s3,24(sp)
    80008324:	00f4f4b3          	and	s1,s1,a5
    80008328:	02113c23          	sd	ra,56(sp)
    8000832c:	03213023          	sd	s2,32(sp)
    80008330:	01413823          	sd	s4,16(sp)
    80008334:	01513423          	sd	s5,8(sp)
    80008338:	04010413          	addi	s0,sp,64
    8000833c:	000017b7          	lui	a5,0x1
    80008340:	01100993          	li	s3,17
    80008344:	00f487b3          	add	a5,s1,a5
    80008348:	01b99993          	slli	s3,s3,0x1b
    8000834c:	06f9e063          	bltu	s3,a5,800083ac <kinit+0xa4>
    80008350:	00005a97          	auipc	s5,0x5
    80008354:	f70a8a93          	addi	s5,s5,-144 # 8000d2c0 <end>
    80008358:	0754ec63          	bltu	s1,s5,800083d0 <kinit+0xc8>
    8000835c:	0734fa63          	bgeu	s1,s3,800083d0 <kinit+0xc8>
    80008360:	00088a37          	lui	s4,0x88
    80008364:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008368:	00004917          	auipc	s2,0x4
    8000836c:	c3890913          	addi	s2,s2,-968 # 8000bfa0 <kmem>
    80008370:	00ca1a13          	slli	s4,s4,0xc
    80008374:	0140006f          	j	80008388 <kinit+0x80>
    80008378:	000017b7          	lui	a5,0x1
    8000837c:	00f484b3          	add	s1,s1,a5
    80008380:	0554e863          	bltu	s1,s5,800083d0 <kinit+0xc8>
    80008384:	0534f663          	bgeu	s1,s3,800083d0 <kinit+0xc8>
    80008388:	00001637          	lui	a2,0x1
    8000838c:	00100593          	li	a1,1
    80008390:	00048513          	mv	a0,s1
    80008394:	00000097          	auipc	ra,0x0
    80008398:	5e4080e7          	jalr	1508(ra) # 80008978 <__memset>
    8000839c:	00093783          	ld	a5,0(s2)
    800083a0:	00f4b023          	sd	a5,0(s1)
    800083a4:	00993023          	sd	s1,0(s2)
    800083a8:	fd4498e3          	bne	s1,s4,80008378 <kinit+0x70>
    800083ac:	03813083          	ld	ra,56(sp)
    800083b0:	03013403          	ld	s0,48(sp)
    800083b4:	02813483          	ld	s1,40(sp)
    800083b8:	02013903          	ld	s2,32(sp)
    800083bc:	01813983          	ld	s3,24(sp)
    800083c0:	01013a03          	ld	s4,16(sp)
    800083c4:	00813a83          	ld	s5,8(sp)
    800083c8:	04010113          	addi	sp,sp,64
    800083cc:	00008067          	ret
    800083d0:	00001517          	auipc	a0,0x1
    800083d4:	50850513          	addi	a0,a0,1288 # 800098d8 <digits+0x18>
    800083d8:	fffff097          	auipc	ra,0xfffff
    800083dc:	4b4080e7          	jalr	1204(ra) # 8000788c <panic>

00000000800083e0 <freerange>:
    800083e0:	fc010113          	addi	sp,sp,-64
    800083e4:	000017b7          	lui	a5,0x1
    800083e8:	02913423          	sd	s1,40(sp)
    800083ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800083f0:	009504b3          	add	s1,a0,s1
    800083f4:	fffff537          	lui	a0,0xfffff
    800083f8:	02813823          	sd	s0,48(sp)
    800083fc:	02113c23          	sd	ra,56(sp)
    80008400:	03213023          	sd	s2,32(sp)
    80008404:	01313c23          	sd	s3,24(sp)
    80008408:	01413823          	sd	s4,16(sp)
    8000840c:	01513423          	sd	s5,8(sp)
    80008410:	01613023          	sd	s6,0(sp)
    80008414:	04010413          	addi	s0,sp,64
    80008418:	00a4f4b3          	and	s1,s1,a0
    8000841c:	00f487b3          	add	a5,s1,a5
    80008420:	06f5e463          	bltu	a1,a5,80008488 <freerange+0xa8>
    80008424:	00005a97          	auipc	s5,0x5
    80008428:	e9ca8a93          	addi	s5,s5,-356 # 8000d2c0 <end>
    8000842c:	0954e263          	bltu	s1,s5,800084b0 <freerange+0xd0>
    80008430:	01100993          	li	s3,17
    80008434:	01b99993          	slli	s3,s3,0x1b
    80008438:	0734fc63          	bgeu	s1,s3,800084b0 <freerange+0xd0>
    8000843c:	00058a13          	mv	s4,a1
    80008440:	00004917          	auipc	s2,0x4
    80008444:	b6090913          	addi	s2,s2,-1184 # 8000bfa0 <kmem>
    80008448:	00002b37          	lui	s6,0x2
    8000844c:	0140006f          	j	80008460 <freerange+0x80>
    80008450:	000017b7          	lui	a5,0x1
    80008454:	00f484b3          	add	s1,s1,a5
    80008458:	0554ec63          	bltu	s1,s5,800084b0 <freerange+0xd0>
    8000845c:	0534fa63          	bgeu	s1,s3,800084b0 <freerange+0xd0>
    80008460:	00001637          	lui	a2,0x1
    80008464:	00100593          	li	a1,1
    80008468:	00048513          	mv	a0,s1
    8000846c:	00000097          	auipc	ra,0x0
    80008470:	50c080e7          	jalr	1292(ra) # 80008978 <__memset>
    80008474:	00093703          	ld	a4,0(s2)
    80008478:	016487b3          	add	a5,s1,s6
    8000847c:	00e4b023          	sd	a4,0(s1)
    80008480:	00993023          	sd	s1,0(s2)
    80008484:	fcfa76e3          	bgeu	s4,a5,80008450 <freerange+0x70>
    80008488:	03813083          	ld	ra,56(sp)
    8000848c:	03013403          	ld	s0,48(sp)
    80008490:	02813483          	ld	s1,40(sp)
    80008494:	02013903          	ld	s2,32(sp)
    80008498:	01813983          	ld	s3,24(sp)
    8000849c:	01013a03          	ld	s4,16(sp)
    800084a0:	00813a83          	ld	s5,8(sp)
    800084a4:	00013b03          	ld	s6,0(sp)
    800084a8:	04010113          	addi	sp,sp,64
    800084ac:	00008067          	ret
    800084b0:	00001517          	auipc	a0,0x1
    800084b4:	42850513          	addi	a0,a0,1064 # 800098d8 <digits+0x18>
    800084b8:	fffff097          	auipc	ra,0xfffff
    800084bc:	3d4080e7          	jalr	980(ra) # 8000788c <panic>

00000000800084c0 <kfree>:
    800084c0:	fe010113          	addi	sp,sp,-32
    800084c4:	00813823          	sd	s0,16(sp)
    800084c8:	00113c23          	sd	ra,24(sp)
    800084cc:	00913423          	sd	s1,8(sp)
    800084d0:	02010413          	addi	s0,sp,32
    800084d4:	03451793          	slli	a5,a0,0x34
    800084d8:	04079c63          	bnez	a5,80008530 <kfree+0x70>
    800084dc:	00005797          	auipc	a5,0x5
    800084e0:	de478793          	addi	a5,a5,-540 # 8000d2c0 <end>
    800084e4:	00050493          	mv	s1,a0
    800084e8:	04f56463          	bltu	a0,a5,80008530 <kfree+0x70>
    800084ec:	01100793          	li	a5,17
    800084f0:	01b79793          	slli	a5,a5,0x1b
    800084f4:	02f57e63          	bgeu	a0,a5,80008530 <kfree+0x70>
    800084f8:	00001637          	lui	a2,0x1
    800084fc:	00100593          	li	a1,1
    80008500:	00000097          	auipc	ra,0x0
    80008504:	478080e7          	jalr	1144(ra) # 80008978 <__memset>
    80008508:	00004797          	auipc	a5,0x4
    8000850c:	a9878793          	addi	a5,a5,-1384 # 8000bfa0 <kmem>
    80008510:	0007b703          	ld	a4,0(a5)
    80008514:	01813083          	ld	ra,24(sp)
    80008518:	01013403          	ld	s0,16(sp)
    8000851c:	00e4b023          	sd	a4,0(s1)
    80008520:	0097b023          	sd	s1,0(a5)
    80008524:	00813483          	ld	s1,8(sp)
    80008528:	02010113          	addi	sp,sp,32
    8000852c:	00008067          	ret
    80008530:	00001517          	auipc	a0,0x1
    80008534:	3a850513          	addi	a0,a0,936 # 800098d8 <digits+0x18>
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	354080e7          	jalr	852(ra) # 8000788c <panic>

0000000080008540 <kalloc>:
    80008540:	fe010113          	addi	sp,sp,-32
    80008544:	00813823          	sd	s0,16(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	00113c23          	sd	ra,24(sp)
    80008550:	02010413          	addi	s0,sp,32
    80008554:	00004797          	auipc	a5,0x4
    80008558:	a4c78793          	addi	a5,a5,-1460 # 8000bfa0 <kmem>
    8000855c:	0007b483          	ld	s1,0(a5)
    80008560:	02048063          	beqz	s1,80008580 <kalloc+0x40>
    80008564:	0004b703          	ld	a4,0(s1)
    80008568:	00001637          	lui	a2,0x1
    8000856c:	00500593          	li	a1,5
    80008570:	00048513          	mv	a0,s1
    80008574:	00e7b023          	sd	a4,0(a5)
    80008578:	00000097          	auipc	ra,0x0
    8000857c:	400080e7          	jalr	1024(ra) # 80008978 <__memset>
    80008580:	01813083          	ld	ra,24(sp)
    80008584:	01013403          	ld	s0,16(sp)
    80008588:	00048513          	mv	a0,s1
    8000858c:	00813483          	ld	s1,8(sp)
    80008590:	02010113          	addi	sp,sp,32
    80008594:	00008067          	ret

0000000080008598 <initlock>:
    80008598:	ff010113          	addi	sp,sp,-16
    8000859c:	00813423          	sd	s0,8(sp)
    800085a0:	01010413          	addi	s0,sp,16
    800085a4:	00813403          	ld	s0,8(sp)
    800085a8:	00b53423          	sd	a1,8(a0)
    800085ac:	00052023          	sw	zero,0(a0)
    800085b0:	00053823          	sd	zero,16(a0)
    800085b4:	01010113          	addi	sp,sp,16
    800085b8:	00008067          	ret

00000000800085bc <acquire>:
    800085bc:	fe010113          	addi	sp,sp,-32
    800085c0:	00813823          	sd	s0,16(sp)
    800085c4:	00913423          	sd	s1,8(sp)
    800085c8:	00113c23          	sd	ra,24(sp)
    800085cc:	01213023          	sd	s2,0(sp)
    800085d0:	02010413          	addi	s0,sp,32
    800085d4:	00050493          	mv	s1,a0
    800085d8:	10002973          	csrr	s2,sstatus
    800085dc:	100027f3          	csrr	a5,sstatus
    800085e0:	ffd7f793          	andi	a5,a5,-3
    800085e4:	10079073          	csrw	sstatus,a5
    800085e8:	fffff097          	auipc	ra,0xfffff
    800085ec:	8e4080e7          	jalr	-1820(ra) # 80006ecc <mycpu>
    800085f0:	07852783          	lw	a5,120(a0)
    800085f4:	06078e63          	beqz	a5,80008670 <acquire+0xb4>
    800085f8:	fffff097          	auipc	ra,0xfffff
    800085fc:	8d4080e7          	jalr	-1836(ra) # 80006ecc <mycpu>
    80008600:	07852783          	lw	a5,120(a0)
    80008604:	0004a703          	lw	a4,0(s1)
    80008608:	0017879b          	addiw	a5,a5,1
    8000860c:	06f52c23          	sw	a5,120(a0)
    80008610:	04071063          	bnez	a4,80008650 <acquire+0x94>
    80008614:	00100713          	li	a4,1
    80008618:	00070793          	mv	a5,a4
    8000861c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008620:	0007879b          	sext.w	a5,a5
    80008624:	fe079ae3          	bnez	a5,80008618 <acquire+0x5c>
    80008628:	0ff0000f          	fence
    8000862c:	fffff097          	auipc	ra,0xfffff
    80008630:	8a0080e7          	jalr	-1888(ra) # 80006ecc <mycpu>
    80008634:	01813083          	ld	ra,24(sp)
    80008638:	01013403          	ld	s0,16(sp)
    8000863c:	00a4b823          	sd	a0,16(s1)
    80008640:	00013903          	ld	s2,0(sp)
    80008644:	00813483          	ld	s1,8(sp)
    80008648:	02010113          	addi	sp,sp,32
    8000864c:	00008067          	ret
    80008650:	0104b903          	ld	s2,16(s1)
    80008654:	fffff097          	auipc	ra,0xfffff
    80008658:	878080e7          	jalr	-1928(ra) # 80006ecc <mycpu>
    8000865c:	faa91ce3          	bne	s2,a0,80008614 <acquire+0x58>
    80008660:	00001517          	auipc	a0,0x1
    80008664:	28050513          	addi	a0,a0,640 # 800098e0 <digits+0x20>
    80008668:	fffff097          	auipc	ra,0xfffff
    8000866c:	224080e7          	jalr	548(ra) # 8000788c <panic>
    80008670:	00195913          	srli	s2,s2,0x1
    80008674:	fffff097          	auipc	ra,0xfffff
    80008678:	858080e7          	jalr	-1960(ra) # 80006ecc <mycpu>
    8000867c:	00197913          	andi	s2,s2,1
    80008680:	07252e23          	sw	s2,124(a0)
    80008684:	f75ff06f          	j	800085f8 <acquire+0x3c>

0000000080008688 <release>:
    80008688:	fe010113          	addi	sp,sp,-32
    8000868c:	00813823          	sd	s0,16(sp)
    80008690:	00113c23          	sd	ra,24(sp)
    80008694:	00913423          	sd	s1,8(sp)
    80008698:	01213023          	sd	s2,0(sp)
    8000869c:	02010413          	addi	s0,sp,32
    800086a0:	00052783          	lw	a5,0(a0)
    800086a4:	00079a63          	bnez	a5,800086b8 <release+0x30>
    800086a8:	00001517          	auipc	a0,0x1
    800086ac:	24050513          	addi	a0,a0,576 # 800098e8 <digits+0x28>
    800086b0:	fffff097          	auipc	ra,0xfffff
    800086b4:	1dc080e7          	jalr	476(ra) # 8000788c <panic>
    800086b8:	01053903          	ld	s2,16(a0)
    800086bc:	00050493          	mv	s1,a0
    800086c0:	fffff097          	auipc	ra,0xfffff
    800086c4:	80c080e7          	jalr	-2036(ra) # 80006ecc <mycpu>
    800086c8:	fea910e3          	bne	s2,a0,800086a8 <release+0x20>
    800086cc:	0004b823          	sd	zero,16(s1)
    800086d0:	0ff0000f          	fence
    800086d4:	0f50000f          	fence	iorw,ow
    800086d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800086dc:	ffffe097          	auipc	ra,0xffffe
    800086e0:	7f0080e7          	jalr	2032(ra) # 80006ecc <mycpu>
    800086e4:	100027f3          	csrr	a5,sstatus
    800086e8:	0027f793          	andi	a5,a5,2
    800086ec:	04079a63          	bnez	a5,80008740 <release+0xb8>
    800086f0:	07852783          	lw	a5,120(a0)
    800086f4:	02f05e63          	blez	a5,80008730 <release+0xa8>
    800086f8:	fff7871b          	addiw	a4,a5,-1
    800086fc:	06e52c23          	sw	a4,120(a0)
    80008700:	00071c63          	bnez	a4,80008718 <release+0x90>
    80008704:	07c52783          	lw	a5,124(a0)
    80008708:	00078863          	beqz	a5,80008718 <release+0x90>
    8000870c:	100027f3          	csrr	a5,sstatus
    80008710:	0027e793          	ori	a5,a5,2
    80008714:	10079073          	csrw	sstatus,a5
    80008718:	01813083          	ld	ra,24(sp)
    8000871c:	01013403          	ld	s0,16(sp)
    80008720:	00813483          	ld	s1,8(sp)
    80008724:	00013903          	ld	s2,0(sp)
    80008728:	02010113          	addi	sp,sp,32
    8000872c:	00008067          	ret
    80008730:	00001517          	auipc	a0,0x1
    80008734:	1d850513          	addi	a0,a0,472 # 80009908 <digits+0x48>
    80008738:	fffff097          	auipc	ra,0xfffff
    8000873c:	154080e7          	jalr	340(ra) # 8000788c <panic>
    80008740:	00001517          	auipc	a0,0x1
    80008744:	1b050513          	addi	a0,a0,432 # 800098f0 <digits+0x30>
    80008748:	fffff097          	auipc	ra,0xfffff
    8000874c:	144080e7          	jalr	324(ra) # 8000788c <panic>

0000000080008750 <holding>:
    80008750:	00052783          	lw	a5,0(a0)
    80008754:	00079663          	bnez	a5,80008760 <holding+0x10>
    80008758:	00000513          	li	a0,0
    8000875c:	00008067          	ret
    80008760:	fe010113          	addi	sp,sp,-32
    80008764:	00813823          	sd	s0,16(sp)
    80008768:	00913423          	sd	s1,8(sp)
    8000876c:	00113c23          	sd	ra,24(sp)
    80008770:	02010413          	addi	s0,sp,32
    80008774:	01053483          	ld	s1,16(a0)
    80008778:	ffffe097          	auipc	ra,0xffffe
    8000877c:	754080e7          	jalr	1876(ra) # 80006ecc <mycpu>
    80008780:	01813083          	ld	ra,24(sp)
    80008784:	01013403          	ld	s0,16(sp)
    80008788:	40a48533          	sub	a0,s1,a0
    8000878c:	00153513          	seqz	a0,a0
    80008790:	00813483          	ld	s1,8(sp)
    80008794:	02010113          	addi	sp,sp,32
    80008798:	00008067          	ret

000000008000879c <push_off>:
    8000879c:	fe010113          	addi	sp,sp,-32
    800087a0:	00813823          	sd	s0,16(sp)
    800087a4:	00113c23          	sd	ra,24(sp)
    800087a8:	00913423          	sd	s1,8(sp)
    800087ac:	02010413          	addi	s0,sp,32
    800087b0:	100024f3          	csrr	s1,sstatus
    800087b4:	100027f3          	csrr	a5,sstatus
    800087b8:	ffd7f793          	andi	a5,a5,-3
    800087bc:	10079073          	csrw	sstatus,a5
    800087c0:	ffffe097          	auipc	ra,0xffffe
    800087c4:	70c080e7          	jalr	1804(ra) # 80006ecc <mycpu>
    800087c8:	07852783          	lw	a5,120(a0)
    800087cc:	02078663          	beqz	a5,800087f8 <push_off+0x5c>
    800087d0:	ffffe097          	auipc	ra,0xffffe
    800087d4:	6fc080e7          	jalr	1788(ra) # 80006ecc <mycpu>
    800087d8:	07852783          	lw	a5,120(a0)
    800087dc:	01813083          	ld	ra,24(sp)
    800087e0:	01013403          	ld	s0,16(sp)
    800087e4:	0017879b          	addiw	a5,a5,1
    800087e8:	06f52c23          	sw	a5,120(a0)
    800087ec:	00813483          	ld	s1,8(sp)
    800087f0:	02010113          	addi	sp,sp,32
    800087f4:	00008067          	ret
    800087f8:	0014d493          	srli	s1,s1,0x1
    800087fc:	ffffe097          	auipc	ra,0xffffe
    80008800:	6d0080e7          	jalr	1744(ra) # 80006ecc <mycpu>
    80008804:	0014f493          	andi	s1,s1,1
    80008808:	06952e23          	sw	s1,124(a0)
    8000880c:	fc5ff06f          	j	800087d0 <push_off+0x34>

0000000080008810 <pop_off>:
    80008810:	ff010113          	addi	sp,sp,-16
    80008814:	00813023          	sd	s0,0(sp)
    80008818:	00113423          	sd	ra,8(sp)
    8000881c:	01010413          	addi	s0,sp,16
    80008820:	ffffe097          	auipc	ra,0xffffe
    80008824:	6ac080e7          	jalr	1708(ra) # 80006ecc <mycpu>
    80008828:	100027f3          	csrr	a5,sstatus
    8000882c:	0027f793          	andi	a5,a5,2
    80008830:	04079663          	bnez	a5,8000887c <pop_off+0x6c>
    80008834:	07852783          	lw	a5,120(a0)
    80008838:	02f05a63          	blez	a5,8000886c <pop_off+0x5c>
    8000883c:	fff7871b          	addiw	a4,a5,-1
    80008840:	06e52c23          	sw	a4,120(a0)
    80008844:	00071c63          	bnez	a4,8000885c <pop_off+0x4c>
    80008848:	07c52783          	lw	a5,124(a0)
    8000884c:	00078863          	beqz	a5,8000885c <pop_off+0x4c>
    80008850:	100027f3          	csrr	a5,sstatus
    80008854:	0027e793          	ori	a5,a5,2
    80008858:	10079073          	csrw	sstatus,a5
    8000885c:	00813083          	ld	ra,8(sp)
    80008860:	00013403          	ld	s0,0(sp)
    80008864:	01010113          	addi	sp,sp,16
    80008868:	00008067          	ret
    8000886c:	00001517          	auipc	a0,0x1
    80008870:	09c50513          	addi	a0,a0,156 # 80009908 <digits+0x48>
    80008874:	fffff097          	auipc	ra,0xfffff
    80008878:	018080e7          	jalr	24(ra) # 8000788c <panic>
    8000887c:	00001517          	auipc	a0,0x1
    80008880:	07450513          	addi	a0,a0,116 # 800098f0 <digits+0x30>
    80008884:	fffff097          	auipc	ra,0xfffff
    80008888:	008080e7          	jalr	8(ra) # 8000788c <panic>

000000008000888c <push_on>:
    8000888c:	fe010113          	addi	sp,sp,-32
    80008890:	00813823          	sd	s0,16(sp)
    80008894:	00113c23          	sd	ra,24(sp)
    80008898:	00913423          	sd	s1,8(sp)
    8000889c:	02010413          	addi	s0,sp,32
    800088a0:	100024f3          	csrr	s1,sstatus
    800088a4:	100027f3          	csrr	a5,sstatus
    800088a8:	0027e793          	ori	a5,a5,2
    800088ac:	10079073          	csrw	sstatus,a5
    800088b0:	ffffe097          	auipc	ra,0xffffe
    800088b4:	61c080e7          	jalr	1564(ra) # 80006ecc <mycpu>
    800088b8:	07852783          	lw	a5,120(a0)
    800088bc:	02078663          	beqz	a5,800088e8 <push_on+0x5c>
    800088c0:	ffffe097          	auipc	ra,0xffffe
    800088c4:	60c080e7          	jalr	1548(ra) # 80006ecc <mycpu>
    800088c8:	07852783          	lw	a5,120(a0)
    800088cc:	01813083          	ld	ra,24(sp)
    800088d0:	01013403          	ld	s0,16(sp)
    800088d4:	0017879b          	addiw	a5,a5,1
    800088d8:	06f52c23          	sw	a5,120(a0)
    800088dc:	00813483          	ld	s1,8(sp)
    800088e0:	02010113          	addi	sp,sp,32
    800088e4:	00008067          	ret
    800088e8:	0014d493          	srli	s1,s1,0x1
    800088ec:	ffffe097          	auipc	ra,0xffffe
    800088f0:	5e0080e7          	jalr	1504(ra) # 80006ecc <mycpu>
    800088f4:	0014f493          	andi	s1,s1,1
    800088f8:	06952e23          	sw	s1,124(a0)
    800088fc:	fc5ff06f          	j	800088c0 <push_on+0x34>

0000000080008900 <pop_on>:
    80008900:	ff010113          	addi	sp,sp,-16
    80008904:	00813023          	sd	s0,0(sp)
    80008908:	00113423          	sd	ra,8(sp)
    8000890c:	01010413          	addi	s0,sp,16
    80008910:	ffffe097          	auipc	ra,0xffffe
    80008914:	5bc080e7          	jalr	1468(ra) # 80006ecc <mycpu>
    80008918:	100027f3          	csrr	a5,sstatus
    8000891c:	0027f793          	andi	a5,a5,2
    80008920:	04078463          	beqz	a5,80008968 <pop_on+0x68>
    80008924:	07852783          	lw	a5,120(a0)
    80008928:	02f05863          	blez	a5,80008958 <pop_on+0x58>
    8000892c:	fff7879b          	addiw	a5,a5,-1
    80008930:	06f52c23          	sw	a5,120(a0)
    80008934:	07853783          	ld	a5,120(a0)
    80008938:	00079863          	bnez	a5,80008948 <pop_on+0x48>
    8000893c:	100027f3          	csrr	a5,sstatus
    80008940:	ffd7f793          	andi	a5,a5,-3
    80008944:	10079073          	csrw	sstatus,a5
    80008948:	00813083          	ld	ra,8(sp)
    8000894c:	00013403          	ld	s0,0(sp)
    80008950:	01010113          	addi	sp,sp,16
    80008954:	00008067          	ret
    80008958:	00001517          	auipc	a0,0x1
    8000895c:	fd850513          	addi	a0,a0,-40 # 80009930 <digits+0x70>
    80008960:	fffff097          	auipc	ra,0xfffff
    80008964:	f2c080e7          	jalr	-212(ra) # 8000788c <panic>
    80008968:	00001517          	auipc	a0,0x1
    8000896c:	fa850513          	addi	a0,a0,-88 # 80009910 <digits+0x50>
    80008970:	fffff097          	auipc	ra,0xfffff
    80008974:	f1c080e7          	jalr	-228(ra) # 8000788c <panic>

0000000080008978 <__memset>:
    80008978:	ff010113          	addi	sp,sp,-16
    8000897c:	00813423          	sd	s0,8(sp)
    80008980:	01010413          	addi	s0,sp,16
    80008984:	1a060e63          	beqz	a2,80008b40 <__memset+0x1c8>
    80008988:	40a007b3          	neg	a5,a0
    8000898c:	0077f793          	andi	a5,a5,7
    80008990:	00778693          	addi	a3,a5,7
    80008994:	00b00813          	li	a6,11
    80008998:	0ff5f593          	andi	a1,a1,255
    8000899c:	fff6071b          	addiw	a4,a2,-1
    800089a0:	1b06e663          	bltu	a3,a6,80008b4c <__memset+0x1d4>
    800089a4:	1cd76463          	bltu	a4,a3,80008b6c <__memset+0x1f4>
    800089a8:	1a078e63          	beqz	a5,80008b64 <__memset+0x1ec>
    800089ac:	00b50023          	sb	a1,0(a0)
    800089b0:	00100713          	li	a4,1
    800089b4:	1ae78463          	beq	a5,a4,80008b5c <__memset+0x1e4>
    800089b8:	00b500a3          	sb	a1,1(a0)
    800089bc:	00200713          	li	a4,2
    800089c0:	1ae78a63          	beq	a5,a4,80008b74 <__memset+0x1fc>
    800089c4:	00b50123          	sb	a1,2(a0)
    800089c8:	00300713          	li	a4,3
    800089cc:	18e78463          	beq	a5,a4,80008b54 <__memset+0x1dc>
    800089d0:	00b501a3          	sb	a1,3(a0)
    800089d4:	00400713          	li	a4,4
    800089d8:	1ae78263          	beq	a5,a4,80008b7c <__memset+0x204>
    800089dc:	00b50223          	sb	a1,4(a0)
    800089e0:	00500713          	li	a4,5
    800089e4:	1ae78063          	beq	a5,a4,80008b84 <__memset+0x20c>
    800089e8:	00b502a3          	sb	a1,5(a0)
    800089ec:	00700713          	li	a4,7
    800089f0:	18e79e63          	bne	a5,a4,80008b8c <__memset+0x214>
    800089f4:	00b50323          	sb	a1,6(a0)
    800089f8:	00700e93          	li	t4,7
    800089fc:	00859713          	slli	a4,a1,0x8
    80008a00:	00e5e733          	or	a4,a1,a4
    80008a04:	01059e13          	slli	t3,a1,0x10
    80008a08:	01c76e33          	or	t3,a4,t3
    80008a0c:	01859313          	slli	t1,a1,0x18
    80008a10:	006e6333          	or	t1,t3,t1
    80008a14:	02059893          	slli	a7,a1,0x20
    80008a18:	40f60e3b          	subw	t3,a2,a5
    80008a1c:	011368b3          	or	a7,t1,a7
    80008a20:	02859813          	slli	a6,a1,0x28
    80008a24:	0108e833          	or	a6,a7,a6
    80008a28:	03059693          	slli	a3,a1,0x30
    80008a2c:	003e589b          	srliw	a7,t3,0x3
    80008a30:	00d866b3          	or	a3,a6,a3
    80008a34:	03859713          	slli	a4,a1,0x38
    80008a38:	00389813          	slli	a6,a7,0x3
    80008a3c:	00f507b3          	add	a5,a0,a5
    80008a40:	00e6e733          	or	a4,a3,a4
    80008a44:	000e089b          	sext.w	a7,t3
    80008a48:	00f806b3          	add	a3,a6,a5
    80008a4c:	00e7b023          	sd	a4,0(a5)
    80008a50:	00878793          	addi	a5,a5,8
    80008a54:	fed79ce3          	bne	a5,a3,80008a4c <__memset+0xd4>
    80008a58:	ff8e7793          	andi	a5,t3,-8
    80008a5c:	0007871b          	sext.w	a4,a5
    80008a60:	01d787bb          	addw	a5,a5,t4
    80008a64:	0ce88e63          	beq	a7,a4,80008b40 <__memset+0x1c8>
    80008a68:	00f50733          	add	a4,a0,a5
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	0017871b          	addiw	a4,a5,1
    80008a74:	0cc77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	0027871b          	addiw	a4,a5,2
    80008a84:	0ac77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008a88:	00e50733          	add	a4,a0,a4
    80008a8c:	00b70023          	sb	a1,0(a4)
    80008a90:	0037871b          	addiw	a4,a5,3
    80008a94:	0ac77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008a98:	00e50733          	add	a4,a0,a4
    80008a9c:	00b70023          	sb	a1,0(a4)
    80008aa0:	0047871b          	addiw	a4,a5,4
    80008aa4:	08c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008aa8:	00e50733          	add	a4,a0,a4
    80008aac:	00b70023          	sb	a1,0(a4)
    80008ab0:	0057871b          	addiw	a4,a5,5
    80008ab4:	08c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ab8:	00e50733          	add	a4,a0,a4
    80008abc:	00b70023          	sb	a1,0(a4)
    80008ac0:	0067871b          	addiw	a4,a5,6
    80008ac4:	06c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ac8:	00e50733          	add	a4,a0,a4
    80008acc:	00b70023          	sb	a1,0(a4)
    80008ad0:	0077871b          	addiw	a4,a5,7
    80008ad4:	06c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ad8:	00e50733          	add	a4,a0,a4
    80008adc:	00b70023          	sb	a1,0(a4)
    80008ae0:	0087871b          	addiw	a4,a5,8
    80008ae4:	04c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008ae8:	00e50733          	add	a4,a0,a4
    80008aec:	00b70023          	sb	a1,0(a4)
    80008af0:	0097871b          	addiw	a4,a5,9
    80008af4:	04c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008af8:	00e50733          	add	a4,a0,a4
    80008afc:	00b70023          	sb	a1,0(a4)
    80008b00:	00a7871b          	addiw	a4,a5,10
    80008b04:	02c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008b08:	00e50733          	add	a4,a0,a4
    80008b0c:	00b70023          	sb	a1,0(a4)
    80008b10:	00b7871b          	addiw	a4,a5,11
    80008b14:	02c77663          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008b18:	00e50733          	add	a4,a0,a4
    80008b1c:	00b70023          	sb	a1,0(a4)
    80008b20:	00c7871b          	addiw	a4,a5,12
    80008b24:	00c77e63          	bgeu	a4,a2,80008b40 <__memset+0x1c8>
    80008b28:	00e50733          	add	a4,a0,a4
    80008b2c:	00b70023          	sb	a1,0(a4)
    80008b30:	00d7879b          	addiw	a5,a5,13
    80008b34:	00c7f663          	bgeu	a5,a2,80008b40 <__memset+0x1c8>
    80008b38:	00f507b3          	add	a5,a0,a5
    80008b3c:	00b78023          	sb	a1,0(a5)
    80008b40:	00813403          	ld	s0,8(sp)
    80008b44:	01010113          	addi	sp,sp,16
    80008b48:	00008067          	ret
    80008b4c:	00b00693          	li	a3,11
    80008b50:	e55ff06f          	j	800089a4 <__memset+0x2c>
    80008b54:	00300e93          	li	t4,3
    80008b58:	ea5ff06f          	j	800089fc <__memset+0x84>
    80008b5c:	00100e93          	li	t4,1
    80008b60:	e9dff06f          	j	800089fc <__memset+0x84>
    80008b64:	00000e93          	li	t4,0
    80008b68:	e95ff06f          	j	800089fc <__memset+0x84>
    80008b6c:	00000793          	li	a5,0
    80008b70:	ef9ff06f          	j	80008a68 <__memset+0xf0>
    80008b74:	00200e93          	li	t4,2
    80008b78:	e85ff06f          	j	800089fc <__memset+0x84>
    80008b7c:	00400e93          	li	t4,4
    80008b80:	e7dff06f          	j	800089fc <__memset+0x84>
    80008b84:	00500e93          	li	t4,5
    80008b88:	e75ff06f          	j	800089fc <__memset+0x84>
    80008b8c:	00600e93          	li	t4,6
    80008b90:	e6dff06f          	j	800089fc <__memset+0x84>

0000000080008b94 <__memmove>:
    80008b94:	ff010113          	addi	sp,sp,-16
    80008b98:	00813423          	sd	s0,8(sp)
    80008b9c:	01010413          	addi	s0,sp,16
    80008ba0:	0e060863          	beqz	a2,80008c90 <__memmove+0xfc>
    80008ba4:	fff6069b          	addiw	a3,a2,-1
    80008ba8:	0006881b          	sext.w	a6,a3
    80008bac:	0ea5e863          	bltu	a1,a0,80008c9c <__memmove+0x108>
    80008bb0:	00758713          	addi	a4,a1,7
    80008bb4:	00a5e7b3          	or	a5,a1,a0
    80008bb8:	40a70733          	sub	a4,a4,a0
    80008bbc:	0077f793          	andi	a5,a5,7
    80008bc0:	00f73713          	sltiu	a4,a4,15
    80008bc4:	00174713          	xori	a4,a4,1
    80008bc8:	0017b793          	seqz	a5,a5
    80008bcc:	00e7f7b3          	and	a5,a5,a4
    80008bd0:	10078863          	beqz	a5,80008ce0 <__memmove+0x14c>
    80008bd4:	00900793          	li	a5,9
    80008bd8:	1107f463          	bgeu	a5,a6,80008ce0 <__memmove+0x14c>
    80008bdc:	0036581b          	srliw	a6,a2,0x3
    80008be0:	fff8081b          	addiw	a6,a6,-1
    80008be4:	02081813          	slli	a6,a6,0x20
    80008be8:	01d85893          	srli	a7,a6,0x1d
    80008bec:	00858813          	addi	a6,a1,8
    80008bf0:	00058793          	mv	a5,a1
    80008bf4:	00050713          	mv	a4,a0
    80008bf8:	01088833          	add	a6,a7,a6
    80008bfc:	0007b883          	ld	a7,0(a5)
    80008c00:	00878793          	addi	a5,a5,8
    80008c04:	00870713          	addi	a4,a4,8
    80008c08:	ff173c23          	sd	a7,-8(a4)
    80008c0c:	ff0798e3          	bne	a5,a6,80008bfc <__memmove+0x68>
    80008c10:	ff867713          	andi	a4,a2,-8
    80008c14:	02071793          	slli	a5,a4,0x20
    80008c18:	0207d793          	srli	a5,a5,0x20
    80008c1c:	00f585b3          	add	a1,a1,a5
    80008c20:	40e686bb          	subw	a3,a3,a4
    80008c24:	00f507b3          	add	a5,a0,a5
    80008c28:	06e60463          	beq	a2,a4,80008c90 <__memmove+0xfc>
    80008c2c:	0005c703          	lbu	a4,0(a1)
    80008c30:	00e78023          	sb	a4,0(a5)
    80008c34:	04068e63          	beqz	a3,80008c90 <__memmove+0xfc>
    80008c38:	0015c603          	lbu	a2,1(a1)
    80008c3c:	00100713          	li	a4,1
    80008c40:	00c780a3          	sb	a2,1(a5)
    80008c44:	04e68663          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c48:	0025c603          	lbu	a2,2(a1)
    80008c4c:	00200713          	li	a4,2
    80008c50:	00c78123          	sb	a2,2(a5)
    80008c54:	02e68e63          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c58:	0035c603          	lbu	a2,3(a1)
    80008c5c:	00300713          	li	a4,3
    80008c60:	00c781a3          	sb	a2,3(a5)
    80008c64:	02e68663          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c68:	0045c603          	lbu	a2,4(a1)
    80008c6c:	00400713          	li	a4,4
    80008c70:	00c78223          	sb	a2,4(a5)
    80008c74:	00e68e63          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c78:	0055c603          	lbu	a2,5(a1)
    80008c7c:	00500713          	li	a4,5
    80008c80:	00c782a3          	sb	a2,5(a5)
    80008c84:	00e68663          	beq	a3,a4,80008c90 <__memmove+0xfc>
    80008c88:	0065c703          	lbu	a4,6(a1)
    80008c8c:	00e78323          	sb	a4,6(a5)
    80008c90:	00813403          	ld	s0,8(sp)
    80008c94:	01010113          	addi	sp,sp,16
    80008c98:	00008067          	ret
    80008c9c:	02061713          	slli	a4,a2,0x20
    80008ca0:	02075713          	srli	a4,a4,0x20
    80008ca4:	00e587b3          	add	a5,a1,a4
    80008ca8:	f0f574e3          	bgeu	a0,a5,80008bb0 <__memmove+0x1c>
    80008cac:	02069613          	slli	a2,a3,0x20
    80008cb0:	02065613          	srli	a2,a2,0x20
    80008cb4:	fff64613          	not	a2,a2
    80008cb8:	00e50733          	add	a4,a0,a4
    80008cbc:	00c78633          	add	a2,a5,a2
    80008cc0:	fff7c683          	lbu	a3,-1(a5)
    80008cc4:	fff78793          	addi	a5,a5,-1
    80008cc8:	fff70713          	addi	a4,a4,-1
    80008ccc:	00d70023          	sb	a3,0(a4)
    80008cd0:	fec798e3          	bne	a5,a2,80008cc0 <__memmove+0x12c>
    80008cd4:	00813403          	ld	s0,8(sp)
    80008cd8:	01010113          	addi	sp,sp,16
    80008cdc:	00008067          	ret
    80008ce0:	02069713          	slli	a4,a3,0x20
    80008ce4:	02075713          	srli	a4,a4,0x20
    80008ce8:	00170713          	addi	a4,a4,1
    80008cec:	00e50733          	add	a4,a0,a4
    80008cf0:	00050793          	mv	a5,a0
    80008cf4:	0005c683          	lbu	a3,0(a1)
    80008cf8:	00178793          	addi	a5,a5,1
    80008cfc:	00158593          	addi	a1,a1,1
    80008d00:	fed78fa3          	sb	a3,-1(a5)
    80008d04:	fee798e3          	bne	a5,a4,80008cf4 <__memmove+0x160>
    80008d08:	f89ff06f          	j	80008c90 <__memmove+0xfc>

0000000080008d0c <__putc>:
    80008d0c:	fe010113          	addi	sp,sp,-32
    80008d10:	00813823          	sd	s0,16(sp)
    80008d14:	00113c23          	sd	ra,24(sp)
    80008d18:	02010413          	addi	s0,sp,32
    80008d1c:	00050793          	mv	a5,a0
    80008d20:	fef40593          	addi	a1,s0,-17
    80008d24:	00100613          	li	a2,1
    80008d28:	00000513          	li	a0,0
    80008d2c:	fef407a3          	sb	a5,-17(s0)
    80008d30:	fffff097          	auipc	ra,0xfffff
    80008d34:	b3c080e7          	jalr	-1220(ra) # 8000786c <console_write>
    80008d38:	01813083          	ld	ra,24(sp)
    80008d3c:	01013403          	ld	s0,16(sp)
    80008d40:	02010113          	addi	sp,sp,32
    80008d44:	00008067          	ret

0000000080008d48 <__getc>:
    80008d48:	fe010113          	addi	sp,sp,-32
    80008d4c:	00813823          	sd	s0,16(sp)
    80008d50:	00113c23          	sd	ra,24(sp)
    80008d54:	02010413          	addi	s0,sp,32
    80008d58:	fe840593          	addi	a1,s0,-24
    80008d5c:	00100613          	li	a2,1
    80008d60:	00000513          	li	a0,0
    80008d64:	fffff097          	auipc	ra,0xfffff
    80008d68:	ae8080e7          	jalr	-1304(ra) # 8000784c <console_read>
    80008d6c:	fe844503          	lbu	a0,-24(s0)
    80008d70:	01813083          	ld	ra,24(sp)
    80008d74:	01013403          	ld	s0,16(sp)
    80008d78:	02010113          	addi	sp,sp,32
    80008d7c:	00008067          	ret

0000000080008d80 <console_handler>:
    80008d80:	fe010113          	addi	sp,sp,-32
    80008d84:	00813823          	sd	s0,16(sp)
    80008d88:	00113c23          	sd	ra,24(sp)
    80008d8c:	00913423          	sd	s1,8(sp)
    80008d90:	02010413          	addi	s0,sp,32
    80008d94:	14202773          	csrr	a4,scause
    80008d98:	100027f3          	csrr	a5,sstatus
    80008d9c:	0027f793          	andi	a5,a5,2
    80008da0:	06079e63          	bnez	a5,80008e1c <console_handler+0x9c>
    80008da4:	00074c63          	bltz	a4,80008dbc <console_handler+0x3c>
    80008da8:	01813083          	ld	ra,24(sp)
    80008dac:	01013403          	ld	s0,16(sp)
    80008db0:	00813483          	ld	s1,8(sp)
    80008db4:	02010113          	addi	sp,sp,32
    80008db8:	00008067          	ret
    80008dbc:	0ff77713          	andi	a4,a4,255
    80008dc0:	00900793          	li	a5,9
    80008dc4:	fef712e3          	bne	a4,a5,80008da8 <console_handler+0x28>
    80008dc8:	ffffe097          	auipc	ra,0xffffe
    80008dcc:	6dc080e7          	jalr	1756(ra) # 800074a4 <plic_claim>
    80008dd0:	00a00793          	li	a5,10
    80008dd4:	00050493          	mv	s1,a0
    80008dd8:	02f50c63          	beq	a0,a5,80008e10 <console_handler+0x90>
    80008ddc:	fc0506e3          	beqz	a0,80008da8 <console_handler+0x28>
    80008de0:	00050593          	mv	a1,a0
    80008de4:	00001517          	auipc	a0,0x1
    80008de8:	a5450513          	addi	a0,a0,-1452 # 80009838 <CONSOLE_STATUS+0x828>
    80008dec:	fffff097          	auipc	ra,0xfffff
    80008df0:	afc080e7          	jalr	-1284(ra) # 800078e8 <__printf>
    80008df4:	01013403          	ld	s0,16(sp)
    80008df8:	01813083          	ld	ra,24(sp)
    80008dfc:	00048513          	mv	a0,s1
    80008e00:	00813483          	ld	s1,8(sp)
    80008e04:	02010113          	addi	sp,sp,32
    80008e08:	ffffe317          	auipc	t1,0xffffe
    80008e0c:	6d430067          	jr	1748(t1) # 800074dc <plic_complete>
    80008e10:	fffff097          	auipc	ra,0xfffff
    80008e14:	3e0080e7          	jalr	992(ra) # 800081f0 <uartintr>
    80008e18:	fddff06f          	j	80008df4 <console_handler+0x74>
    80008e1c:	00001517          	auipc	a0,0x1
    80008e20:	b1c50513          	addi	a0,a0,-1252 # 80009938 <digits+0x78>
    80008e24:	fffff097          	auipc	ra,0xfffff
    80008e28:	a68080e7          	jalr	-1432(ra) # 8000788c <panic>
	...
