
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	e8813103          	ld	sp,-376(sp) # 8000be88 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	385060ef          	jal	ra,80006ba0 <start>

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
    80001090:	2b1000ef          	jal	ra,80001b40 <handleSupervisorTrap>

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

00000000800011c4 <_ZL9doSyscallmmmmmm>:
#include "../h/syscall_c.hpp"

static uint64 doSyscall(uint64 code, uint64 arg1 = 0, uint64 arg2 = 0,
                        uint64 arg3 = 0, uint64 arg4 = 0, uint64 arg5 = 0) {
    800011c4:	ff010113          	addi	sp,sp,-16
    800011c8:	00813423          	sd	s0,8(sp)
    800011cc:	01010413          	addi	s0,sp,16
    uint64 ret;
    asm volatile("mv a5, %0" : : "r"(arg5));
    800011d0:	00078793          	mv	a5,a5
    asm volatile("mv a4, %0" : : "r"(arg4));
    800011d4:	00070713          	mv	a4,a4
    asm volatile("mv a3, %0" : : "r"(arg3));
    800011d8:	00068693          	mv	a3,a3
    asm volatile("mv a2, %0" : : "r"(arg2));
    800011dc:	00060613          	mv	a2,a2
    asm volatile("mv a1, %0" : : "r"(arg1));
    800011e0:	00058593          	mv	a1,a1
    asm volatile("mv a0, %0" : : "r"(code));
    800011e4:	00050513          	mv	a0,a0

    asm volatile("ecall");
    800011e8:	00000073          	ecall

    asm volatile("mv %0, a0" : "=r"(ret));
    800011ec:	00050513          	mv	a0,a0

    return ret;
}
    800011f0:	00813403          	ld	s0,8(sp)
    800011f4:	01010113          	addi	sp,sp,16
    800011f8:	00008067          	ret

00000000800011fc <_Z9mem_allocm>:

void* mem_alloc(size_t size) {
    if (size == 0) {
    800011fc:	04050463          	beqz	a0,80001244 <_Z9mem_allocm+0x48>
void* mem_alloc(size_t size) {
    80001200:	ff010113          	addi	sp,sp,-16
    80001204:	00113423          	sd	ra,8(sp)
    80001208:	00813023          	sd	s0,0(sp)
    8000120c:	01010413          	addi	s0,sp,16
        return nullptr;
    }

    size_t numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001210:	03f50513          	addi	a0,a0,63

    return (void*)doSyscall(0x01, numBlocks);
    80001214:	00000793          	li	a5,0
    80001218:	00000713          	li	a4,0
    8000121c:	00000693          	li	a3,0
    80001220:	00000613          	li	a2,0
    80001224:	00655593          	srli	a1,a0,0x6
    80001228:	00100513          	li	a0,1
    8000122c:	00000097          	auipc	ra,0x0
    80001230:	f98080e7          	jalr	-104(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    80001234:	00813083          	ld	ra,8(sp)
    80001238:	00013403          	ld	s0,0(sp)
    8000123c:	01010113          	addi	sp,sp,16
    80001240:	00008067          	ret
        return nullptr;
    80001244:	00000513          	li	a0,0
}
    80001248:	00008067          	ret

000000008000124c <_Z8mem_freePv>:

int mem_free(void* ptr) {
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00113423          	sd	ra,8(sp)
    80001254:	00813023          	sd	s0,0(sp)
    80001258:	01010413          	addi	s0,sp,16
    8000125c:	00050593          	mv	a1,a0
    return (int)doSyscall(0x02, (uint64)ptr);
    80001260:	00000793          	li	a5,0
    80001264:	00000713          	li	a4,0
    80001268:	00000693          	li	a3,0
    8000126c:	00000613          	li	a2,0
    80001270:	00200513          	li	a0,2
    80001274:	00000097          	auipc	ra,0x0
    80001278:	f50080e7          	jalr	-176(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    8000127c:	0005051b          	sext.w	a0,a0
    80001280:	00813083          	ld	ra,8(sp)
    80001284:	00013403          	ld	s0,0(sp)
    80001288:	01010113          	addi	sp,sp,16
    8000128c:	00008067          	ret

0000000080001290 <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    if (handle == nullptr || start_routine == nullptr) {
    80001290:	08050463          	beqz	a0,80001318 <_Z13thread_createPP7_threadPFvPvES2_+0x88>
int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001294:	fd010113          	addi	sp,sp,-48
    80001298:	02113423          	sd	ra,40(sp)
    8000129c:	02813023          	sd	s0,32(sp)
    800012a0:	00913c23          	sd	s1,24(sp)
    800012a4:	01213823          	sd	s2,16(sp)
    800012a8:	01313423          	sd	s3,8(sp)
    800012ac:	03010413          	addi	s0,sp,48
    800012b0:	00050493          	mv	s1,a0
    800012b4:	00058913          	mv	s2,a1
    800012b8:	00060993          	mv	s3,a2
    if (handle == nullptr || start_routine == nullptr) {
    800012bc:	06058263          	beqz	a1,80001320 <_Z13thread_createPP7_threadPFvPvES2_+0x90>
        return -1;
    }

    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    800012c0:	00001537          	lui	a0,0x1
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	f38080e7          	jalr	-200(ra) # 800011fc <_Z9mem_allocm>

    if (stack == nullptr) {
    800012cc:	04050e63          	beqz	a0,80001328 <_Z13thread_createPP7_threadPFvPvES2_+0x98>
        return -1;
    }

    uint64 stackTop = (uint64)stack + DEFAULT_STACK_SIZE;
    800012d0:	00001737          	lui	a4,0x1
    800012d4:	00e50733          	add	a4,a0,a4
    stackTop &= ~((uint64)0xF);

    return (int)doSyscall(
    800012d8:	00000793          	li	a5,0
    800012dc:	ff077713          	andi	a4,a4,-16
    800012e0:	00098693          	mv	a3,s3
    800012e4:	00090613          	mv	a2,s2
    800012e8:	00048593          	mv	a1,s1
    800012ec:	01100513          	li	a0,17
    800012f0:	00000097          	auipc	ra,0x0
    800012f4:	ed4080e7          	jalr	-300(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
        0x11,
        (uint64)handle,
        (uint64)start_routine,
        (uint64)arg,
        stackTop
    );
    800012f8:	0005051b          	sext.w	a0,a0
}
    800012fc:	02813083          	ld	ra,40(sp)
    80001300:	02013403          	ld	s0,32(sp)
    80001304:	01813483          	ld	s1,24(sp)
    80001308:	01013903          	ld	s2,16(sp)
    8000130c:	00813983          	ld	s3,8(sp)
    80001310:	03010113          	addi	sp,sp,48
    80001314:	00008067          	ret
        return -1;
    80001318:	fff00513          	li	a0,-1
}
    8000131c:	00008067          	ret
        return -1;
    80001320:	fff00513          	li	a0,-1
    80001324:	fd9ff06f          	j	800012fc <_Z13thread_createPP7_threadPFvPvES2_+0x6c>
        return -1;
    80001328:	fff00513          	li	a0,-1
    8000132c:	fd1ff06f          	j	800012fc <_Z13thread_createPP7_threadPFvPvES2_+0x6c>

0000000080001330 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority>:

int thread_create_priority(thread_t* handle, void (*start_routine)(void*), void* arg, ThreadPriority priority) {
        if (handle == nullptr || start_routine == nullptr){//handle je mesto gde kernel upisuje pokazivac na napravljenu nit
    80001330:	08050c63          	beqz	a0,800013c8 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority+0x98>
int thread_create_priority(thread_t* handle, void (*start_routine)(void*), void* arg, ThreadPriority priority) {
    80001334:	fd010113          	addi	sp,sp,-48
    80001338:	02113423          	sd	ra,40(sp)
    8000133c:	02813023          	sd	s0,32(sp)
    80001340:	00913c23          	sd	s1,24(sp)
    80001344:	01213823          	sd	s2,16(sp)
    80001348:	01313423          	sd	s3,8(sp)
    8000134c:	01413023          	sd	s4,0(sp)
    80001350:	03010413          	addi	s0,sp,48
    80001354:	00050493          	mv	s1,a0
    80001358:	00058913          	mv	s2,a1
    8000135c:	00060993          	mv	s3,a2
    80001360:	00068a13          	mv	s4,a3
        if (handle == nullptr || start_routine == nullptr){//handle je mesto gde kernel upisuje pokazivac na napravljenu nit
    80001364:	06058663          	beqz	a1,800013d0 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority+0xa0>
            return -1;
        }
        void* stack = mem_alloc(DEFAULT_STACK_SIZE);//stack pokazuje na pocetak alociranog prostora
    80001368:	00001537          	lui	a0,0x1
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	e90080e7          	jalr	-368(ra) # 800011fc <_Z9mem_allocm>
        if (stack == nullptr){
    80001374:	06050263          	beqz	a0,800013d8 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority+0xa8>
            return -1;
        }
        uint64 stackTop = (uint64)stack + DEFAULT_STACK_SIZE;//stek raste na dole, pocetni sp na kraju alociranog prostora
    80001378:	00001737          	lui	a4,0x1
    8000137c:	00e50733          	add	a4,a0,a4
        stackTop &= ~((uint64)0xF);//obrisemo poslednja 4 bita adrese jer deljivo sa 16

        return (int)doSyscall(
    80001380:	020a1793          	slli	a5,s4,0x20
    80001384:	0207d793          	srli	a5,a5,0x20
    80001388:	ff077713          	andi	a4,a4,-16
    8000138c:	00098693          	mv	a3,s3
    80001390:	00090613          	mv	a2,s2
    80001394:	00048593          	mv	a1,s1
    80001398:	01400513          	li	a0,20
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	e28080e7          	jalr	-472(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
            (uint64)handle,
            (uint64)start_routine,
            (uint64)arg,
            stackTop,
            (uint64)priority
        );
    800013a4:	0005051b          	sext.w	a0,a0
}
    800013a8:	02813083          	ld	ra,40(sp)
    800013ac:	02013403          	ld	s0,32(sp)
    800013b0:	01813483          	ld	s1,24(sp)
    800013b4:	01013903          	ld	s2,16(sp)
    800013b8:	00813983          	ld	s3,8(sp)
    800013bc:	00013a03          	ld	s4,0(sp)
    800013c0:	03010113          	addi	sp,sp,48
    800013c4:	00008067          	ret
            return -1;
    800013c8:	fff00513          	li	a0,-1
}
    800013cc:	00008067          	ret
            return -1;
    800013d0:	fff00513          	li	a0,-1
    800013d4:	fd5ff06f          	j	800013a8 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority+0x78>
            return -1;
    800013d8:	fff00513          	li	a0,-1
    800013dc:	fcdff06f          	j	800013a8 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority+0x78>

00000000800013e0 <_Z11thread_exitv>:
int thread_exit() {
    800013e0:	ff010113          	addi	sp,sp,-16
    800013e4:	00113423          	sd	ra,8(sp)
    800013e8:	00813023          	sd	s0,0(sp)
    800013ec:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x12);
    800013f0:	00000793          	li	a5,0
    800013f4:	00000713          	li	a4,0
    800013f8:	00000693          	li	a3,0
    800013fc:	00000613          	li	a2,0
    80001400:	00000593          	li	a1,0
    80001404:	01200513          	li	a0,18
    80001408:	00000097          	auipc	ra,0x0
    8000140c:	dbc080e7          	jalr	-580(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    80001410:	0005051b          	sext.w	a0,a0
    80001414:	00813083          	ld	ra,8(sp)
    80001418:	00013403          	ld	s0,0(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_Z15thread_dispatchv>:
void thread_dispatch() {
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00113423          	sd	ra,8(sp)
    8000142c:	00813023          	sd	s0,0(sp)
    80001430:	01010413          	addi	s0,sp,16
    doSyscall(0x13);
    80001434:	00000793          	li	a5,0
    80001438:	00000713          	li	a4,0
    8000143c:	00000693          	li	a3,0
    80001440:	00000613          	li	a2,0
    80001444:	00000593          	li	a1,0
    80001448:	01300513          	li	a0,19
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	d78080e7          	jalr	-648(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    80001454:	00813083          	ld	ra,8(sp)
    80001458:	00013403          	ld	s0,0(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z8sem_openPP4_semj>:
int sem_open(sem_t* handle, unsigned init) {
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00113423          	sd	ra,8(sp)
    8000146c:	00813023          	sd	s0,0(sp)
    80001470:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x21, (uint64)handle, (uint64)init);
    80001474:	00000793          	li	a5,0
    80001478:	00000713          	li	a4,0
    8000147c:	00000693          	li	a3,0
    80001480:	02059613          	slli	a2,a1,0x20
    80001484:	02065613          	srli	a2,a2,0x20
    80001488:	00050593          	mv	a1,a0
    8000148c:	02100513          	li	a0,33
    80001490:	00000097          	auipc	ra,0x0
    80001494:	d34080e7          	jalr	-716(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    80001498:	0005051b          	sext.w	a0,a0
    8000149c:	00813083          	ld	ra,8(sp)
    800014a0:	00013403          	ld	s0,0(sp)
    800014a4:	01010113          	addi	sp,sp,16
    800014a8:	00008067          	ret

00000000800014ac <_Z9sem_closeP4_sem>:

int sem_close(sem_t handle) {
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00113423          	sd	ra,8(sp)
    800014b4:	00813023          	sd	s0,0(sp)
    800014b8:	01010413          	addi	s0,sp,16
    800014bc:	00050593          	mv	a1,a0
    return (int)doSyscall(0x22, (uint64)handle);
    800014c0:	00000793          	li	a5,0
    800014c4:	00000713          	li	a4,0
    800014c8:	00000693          	li	a3,0
    800014cc:	00000613          	li	a2,0
    800014d0:	02200513          	li	a0,34
    800014d4:	00000097          	auipc	ra,0x0
    800014d8:	cf0080e7          	jalr	-784(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    800014dc:	0005051b          	sext.w	a0,a0
    800014e0:	00813083          	ld	ra,8(sp)
    800014e4:	00013403          	ld	s0,0(sp)
    800014e8:	01010113          	addi	sp,sp,16
    800014ec:	00008067          	ret

00000000800014f0 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id) {
    800014f0:	ff010113          	addi	sp,sp,-16
    800014f4:	00113423          	sd	ra,8(sp)
    800014f8:	00813023          	sd	s0,0(sp)
    800014fc:	01010413          	addi	s0,sp,16
    80001500:	00050593          	mv	a1,a0
    return (int)doSyscall(0x23, (uint64)id);
    80001504:	00000793          	li	a5,0
    80001508:	00000713          	li	a4,0
    8000150c:	00000693          	li	a3,0
    80001510:	00000613          	li	a2,0
    80001514:	02300513          	li	a0,35
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	cac080e7          	jalr	-852(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    80001520:	0005051b          	sext.w	a0,a0
    80001524:	00813083          	ld	ra,8(sp)
    80001528:	00013403          	ld	s0,0(sp)
    8000152c:	01010113          	addi	sp,sp,16
    80001530:	00008067          	ret

0000000080001534 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id) {
    80001534:	ff010113          	addi	sp,sp,-16
    80001538:	00113423          	sd	ra,8(sp)
    8000153c:	00813023          	sd	s0,0(sp)
    80001540:	01010413          	addi	s0,sp,16
    80001544:	00050593          	mv	a1,a0
    return (int)doSyscall(0x24, (uint64)id);
    80001548:	00000793          	li	a5,0
    8000154c:	00000713          	li	a4,0
    80001550:	00000693          	li	a3,0
    80001554:	00000613          	li	a2,0
    80001558:	02400513          	li	a0,36
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	c68080e7          	jalr	-920(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    80001564:	0005051b          	sext.w	a0,a0
    80001568:	00813083          	ld	ra,8(sp)
    8000156c:	00013403          	ld	s0,0(sp)
    80001570:	01010113          	addi	sp,sp,16
    80001574:	00008067          	ret

0000000080001578 <_Z10sem_wait_nP4_semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001578:	ff010113          	addi	sp,sp,-16
    8000157c:	00113423          	sd	ra,8(sp)
    80001580:	00813023          	sd	s0,0(sp)
    80001584:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x25, (uint64)id, (uint64)n);
    80001588:	00000793          	li	a5,0
    8000158c:	00000713          	li	a4,0
    80001590:	00000693          	li	a3,0
    80001594:	02059613          	slli	a2,a1,0x20
    80001598:	02065613          	srli	a2,a2,0x20
    8000159c:	00050593          	mv	a1,a0
    800015a0:	02500513          	li	a0,37
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	c20080e7          	jalr	-992(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    800015ac:	0005051b          	sext.w	a0,a0
    800015b0:	00813083          	ld	ra,8(sp)
    800015b4:	00013403          	ld	s0,0(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <_Z12sem_signal_nP4_semj>:

int sem_signal_n(sem_t id, unsigned n) {
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00113423          	sd	ra,8(sp)
    800015c8:	00813023          	sd	s0,0(sp)
    800015cc:	01010413          	addi	s0,sp,16
    return (int)doSyscall(0x26, (uint64)id, (uint64)n);
    800015d0:	00000793          	li	a5,0
    800015d4:	00000713          	li	a4,0
    800015d8:	00000693          	li	a3,0
    800015dc:	02059613          	slli	a2,a1,0x20
    800015e0:	02065613          	srli	a2,a2,0x20
    800015e4:	00050593          	mv	a1,a0
    800015e8:	02600513          	li	a0,38
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	bd8080e7          	jalr	-1064(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    800015f4:	0005051b          	sext.w	a0,a0
    800015f8:	00813083          	ld	ra,8(sp)
    800015fc:	00013403          	ld	s0,0(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_Z10time_sleepm>:
int time_sleep(time_t time) {
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00113423          	sd	ra,8(sp)
    80001610:	00813023          	sd	s0,0(sp)
    80001614:	01010413          	addi	s0,sp,16
    80001618:	00050593          	mv	a1,a0
    return (int)doSyscall(0x31, (uint64)time);
    8000161c:	00000793          	li	a5,0
    80001620:	00000713          	li	a4,0
    80001624:	00000693          	li	a3,0
    80001628:	00000613          	li	a2,0
    8000162c:	03100513          	li	a0,49
    80001630:	00000097          	auipc	ra,0x0
    80001634:	b94080e7          	jalr	-1132(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
}
    80001638:	0005051b          	sext.w	a0,a0
    8000163c:	00813083          	ld	ra,8(sp)
    80001640:	00013403          	ld	s0,0(sp)
    80001644:	01010113          	addi	sp,sp,16
    80001648:	00008067          	ret

000000008000164c <_Z4getcv>:

char getc() {
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00113423          	sd	ra,8(sp)
    80001654:	00813023          	sd	s0,0(sp)
    80001658:	01010413          	addi	s0,sp,16
    return (char)doSyscall(0x41);
    8000165c:	00000793          	li	a5,0
    80001660:	00000713          	li	a4,0
    80001664:	00000693          	li	a3,0
    80001668:	00000613          	li	a2,0
    8000166c:	00000593          	li	a1,0
    80001670:	04100513          	li	a0,65
    80001674:	00000097          	auipc	ra,0x0
    80001678:	b50080e7          	jalr	-1200(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
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
    800016a4:	00000793          	li	a5,0
    800016a8:	00000713          	li	a4,0
    800016ac:	00000693          	li	a3,0
    800016b0:	00000613          	li	a2,0
    800016b4:	04200513          	li	a0,66
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	b0c080e7          	jalr	-1268(ra) # 800011c4 <_ZL9doSyscallmmmmmm>
    800016c0:	00813083          	ld	ra,8(sp)
    800016c4:	00013403          	ld	s0,0(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret

00000000800016d0 <_ZL23blocksForBytesSemaphorem>:
#include "../h/Semaphore.hpp"
#include "../h/Thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

static size_t blocksForBytesSemaphore(size_t bytes) {
    800016d0:	ff010113          	addi	sp,sp,-16
    800016d4:	00813423          	sd	s0,8(sp)
    800016d8:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    800016dc:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
}
    800016e0:	00655513          	srli	a0,a0,0x6
    800016e4:	00813403          	ld	s0,8(sp)
    800016e8:	01010113          	addi	sp,sp,16
    800016ec:	00008067          	ret

00000000800016f0 <_ZN4_semnwEm>:

void* _sem::operator new(size_t size) {
    800016f0:	fe010113          	addi	sp,sp,-32
    800016f4:	00113c23          	sd	ra,24(sp)
    800016f8:	00813823          	sd	s0,16(sp)
    800016fc:	00913423          	sd	s1,8(sp)
    80001700:	01213023          	sd	s2,0(sp)
    80001704:	02010413          	addi	s0,sp,32
    80001708:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytesSemaphore(size));
    8000170c:	00001097          	auipc	ra,0x1
    80001710:	5f4080e7          	jalr	1524(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001714:	00050493          	mv	s1,a0
    80001718:	00090513          	mv	a0,s2
    8000171c:	00000097          	auipc	ra,0x0
    80001720:	fb4080e7          	jalr	-76(ra) # 800016d0 <_ZL23blocksForBytesSemaphorem>
    80001724:	00050593          	mv	a1,a0
    80001728:	00048513          	mv	a0,s1
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	654080e7          	jalr	1620(ra) # 80002d80 <_ZN15MemoryAllocator6mallocEm>
}
    80001734:	01813083          	ld	ra,24(sp)
    80001738:	01013403          	ld	s0,16(sp)
    8000173c:	00813483          	ld	s1,8(sp)
    80001740:	00013903          	ld	s2,0(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret

000000008000174c <_ZN4_semdlEPv>:

void _sem::operator delete(void* ptr) {
    if (ptr == nullptr) {
    8000174c:	04050263          	beqz	a0,80001790 <_ZN4_semdlEPv+0x44>
void _sem::operator delete(void* ptr) {
    80001750:	fe010113          	addi	sp,sp,-32
    80001754:	00113c23          	sd	ra,24(sp)
    80001758:	00813823          	sd	s0,16(sp)
    8000175c:	00913423          	sd	s1,8(sp)
    80001760:	02010413          	addi	s0,sp,32
    80001764:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	598080e7          	jalr	1432(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001770:	00048593          	mv	a1,s1
    80001774:	00001097          	auipc	ra,0x1
    80001778:	768080e7          	jalr	1896(ra) # 80002edc <_ZN15MemoryAllocator4freeEPv>
}
    8000177c:	01813083          	ld	ra,24(sp)
    80001780:	01013403          	ld	s0,16(sp)
    80001784:	00813483          	ld	s1,8(sp)
    80001788:	02010113          	addi	sp,sp,32
    8000178c:	00008067          	ret
    80001790:	00008067          	ret

0000000080001794 <_ZN4_semC1Ej>:

_sem::_sem(unsigned init) {
    80001794:	ff010113          	addi	sp,sp,-16
    80001798:	00813423          	sd	s0,8(sp)
    8000179c:	01010413          	addi	s0,sp,16
    val = (int)init;
    800017a0:	00b52023          	sw	a1,0(a0)
    closed = false;
    800017a4:	00050223          	sb	zero,4(a0)
    head = nullptr;
    800017a8:	00053423          	sd	zero,8(a0)
    tail = nullptr;
    800017ac:	00053823          	sd	zero,16(a0)
}
    800017b0:	00813403          	ld	s0,8(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret

00000000800017bc <_ZN4_sem15createSemaphoreEj>:

_sem* _sem::createSemaphore(unsigned init) {
    800017bc:	fe010113          	addi	sp,sp,-32
    800017c0:	00113c23          	sd	ra,24(sp)
    800017c4:	00813823          	sd	s0,16(sp)
    800017c8:	00913423          	sd	s1,8(sp)
    800017cc:	01213023          	sd	s2,0(sp)
    800017d0:	02010413          	addi	s0,sp,32
    800017d4:	00050913          	mv	s2,a0
    return new _sem(init);
    800017d8:	01800513          	li	a0,24
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	f14080e7          	jalr	-236(ra) # 800016f0 <_ZN4_semnwEm>
    800017e4:	00050493          	mv	s1,a0
    800017e8:	00090593          	mv	a1,s2
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	fa8080e7          	jalr	-88(ra) # 80001794 <_ZN4_semC1Ej>
}
    800017f4:	00048513          	mv	a0,s1
    800017f8:	01813083          	ld	ra,24(sp)
    800017fc:	01013403          	ld	s0,16(sp)
    80001800:	00813483          	ld	s1,8(sp)
    80001804:	00013903          	ld	s2,0(sp)
    80001808:	02010113          	addi	sp,sp,32
    8000180c:	00008067          	ret

0000000080001810 <_ZN4_sem16destroySemaphoreEPS_>:

int _sem::destroySemaphore(_sem* sem) {
    if (sem == nullptr) {
    80001810:	02050863          	beqz	a0,80001840 <_ZN4_sem16destroySemaphoreEPS_+0x30>
int _sem::destroySemaphore(_sem* sem) {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
        return -1;
    }

    delete sem;
    80001824:	00000097          	auipc	ra,0x0
    80001828:	f28080e7          	jalr	-216(ra) # 8000174c <_ZN4_semdlEPv>
    return 0;
    8000182c:	00000513          	li	a0,0
}
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret
        return -1;
    80001840:	fff00513          	li	a0,-1
}
    80001844:	00008067          	ret

0000000080001848 <_ZN4_sem5blockEPNS_11BlockedNodeE>:
    unblockReady();

    return 0;
}

void _sem::block(BlockedNode* node) {
    80001848:	ff010113          	addi	sp,sp,-16
    8000184c:	00813423          	sd	s0,8(sp)
    80001850:	01010413          	addi	s0,sp,16
    if (node == nullptr) {
    80001854:	00058e63          	beqz	a1,80001870 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>
        return;
    }

    node->next = nullptr;
    80001858:	0005b823          	sd	zero,16(a1)

    if (head == nullptr) {
    8000185c:	00853783          	ld	a5,8(a0)
    80001860:	00078e63          	beqz	a5,8000187c <_ZN4_sem5blockEPNS_11BlockedNodeE+0x34>
        head = node;
        tail = node;
    } else {
        tail->next = node;
    80001864:	01053783          	ld	a5,16(a0)
    80001868:	00b7b823          	sd	a1,16(a5)
        tail = node;
    8000186c:	00b53823          	sd	a1,16(a0)
    }
}
    80001870:	00813403          	ld	s0,8(sp)
    80001874:	01010113          	addi	sp,sp,16
    80001878:	00008067          	ret
        head = node;
    8000187c:	00b53423          	sd	a1,8(a0)
        tail = node;
    80001880:	00b53823          	sd	a1,16(a0)
    80001884:	fedff06f          	j	80001870 <_ZN4_sem5blockEPNS_11BlockedNodeE+0x28>

0000000080001888 <_ZN4_sem5waitNEj>:
    if (_thread::running == nullptr) {
    80001888:	0000a797          	auipc	a5,0xa
    8000188c:	5f07b783          	ld	a5,1520(a5) # 8000be78 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001890:	0007b783          	ld	a5,0(a5)
    80001894:	08078a63          	beqz	a5,80001928 <_ZN4_sem5waitNEj+0xa0>
    if (closed) {
    80001898:	00454703          	lbu	a4,4(a0)
    8000189c:	08071a63          	bnez	a4,80001930 <_ZN4_sem5waitNEj+0xa8>
    if (n == 0) {
    800018a0:	08058c63          	beqz	a1,80001938 <_ZN4_sem5waitNEj+0xb0>
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    800018a4:	00853703          	ld	a4,8(a0)
    800018a8:	06070263          	beqz	a4,8000190c <_ZN4_sem5waitNEj+0x84>
int _sem::waitN(unsigned n) {
    800018ac:	fd010113          	addi	sp,sp,-48
    800018b0:	02113423          	sd	ra,40(sp)
    800018b4:	02813023          	sd	s0,32(sp)
    800018b8:	03010413          	addi	s0,sp,48
    node.thread = _thread::running;
    800018bc:	fcf43c23          	sd	a5,-40(s0)
    node.requested = n;
    800018c0:	feb42023          	sw	a1,-32(s0)
    node.status = 0;
    800018c4:	fe042223          	sw	zero,-28(s0)
    node.next = nullptr;
    800018c8:	fe043423          	sd	zero,-24(s0)
    block(&node);
    800018cc:	fd840593          	addi	a1,s0,-40
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	f78080e7          	jalr	-136(ra) # 80001848 <_ZN4_sem5blockEPNS_11BlockedNodeE>
    _thread::running->setState(_thread::BLOCKED);
    800018d8:	00300593          	li	a1,3
    800018dc:	0000a797          	auipc	a5,0xa
    800018e0:	59c7b783          	ld	a5,1436(a5) # 8000be78 <_GLOBAL_OFFSET_TABLE_+0x10>
    800018e4:	0007b503          	ld	a0,0(a5)
    800018e8:	00001097          	auipc	ra,0x1
    800018ec:	a3c080e7          	jalr	-1476(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
    _thread::dispatch();
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	858080e7          	jalr	-1960(ra) # 80002148 <_ZN7_thread8dispatchEv>
    return node.status;
    800018f8:	fe442503          	lw	a0,-28(s0)
}
    800018fc:	02813083          	ld	ra,40(sp)
    80001900:	02013403          	ld	s0,32(sp)
    80001904:	03010113          	addi	sp,sp,48
    80001908:	00008067          	ret
    if (head == nullptr && val >= (int)n) {//nema blokiranih niti i ima dovoljno resursa
    8000190c:	00052703          	lw	a4,0(a0)
    80001910:	0005869b          	sext.w	a3,a1
    80001914:	f8d74ce3          	blt	a4,a3,800018ac <_ZN4_sem5waitNEj+0x24>
        val -= (int)n;
    80001918:	40d7073b          	subw	a4,a4,a3
    8000191c:	00e52023          	sw	a4,0(a0)
        return 0;
    80001920:	00000513          	li	a0,0
    80001924:	00008067          	ret
        return -1;
    80001928:	fff00513          	li	a0,-1
    8000192c:	00008067          	ret
        return -1;
    80001930:	fff00513          	li	a0,-1
    80001934:	00008067          	ret
        return 0;
    80001938:	00000513          	li	a0,0
}
    8000193c:	00008067          	ret

0000000080001940 <_ZN4_sem4waitEv>:
int _sem::wait() {
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00113423          	sd	ra,8(sp)
    80001948:	00813023          	sd	s0,0(sp)
    8000194c:	01010413          	addi	s0,sp,16
    return waitN(1);
    80001950:	00100593          	li	a1,1
    80001954:	00000097          	auipc	ra,0x0
    80001958:	f34080e7          	jalr	-204(ra) # 80001888 <_ZN4_sem5waitNEj>
}
    8000195c:	00813083          	ld	ra,8(sp)
    80001960:	00013403          	ld	s0,0(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_ZN4_sem12unblockReadyEv>:

void _sem::unblockReady() {
    8000196c:	fe010113          	addi	sp,sp,-32
    80001970:	00113c23          	sd	ra,24(sp)
    80001974:	00813823          	sd	s0,16(sp)
    80001978:	00913423          	sd	s1,8(sp)
    8000197c:	01213023          	sd	s2,0(sp)
    80001980:	02010413          	addi	s0,sp,32
    80001984:	00050913          	mv	s2,a0
    80001988:	0240006f          	j	800019ac <_ZN4_sem12unblockReadyEv+0x40>
        BlockedNode* node = head;

        head = head->next;

        if (head == nullptr) {
            tail = nullptr;
    8000198c:	00093823          	sd	zero,16(s2)
        }

        val -= (int)node->requested;
    80001990:	0084a703          	lw	a4,8(s1)
    80001994:	40e787bb          	subw	a5,a5,a4
    80001998:	00f92023          	sw	a5,0(s2)

        node->status = 0;//znaci da ce waitN vratiti 0
    8000199c:	0004a623          	sw	zero,12(s1)
        node->next = nullptr;
    800019a0:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    800019a4:	0004b503          	ld	a0,0(s1)
    800019a8:	02051463          	bnez	a0,800019d0 <_ZN4_sem12unblockReadyEv+0x64>
    while (head != nullptr && val >= (int)head->requested) {
    800019ac:	00893483          	ld	s1,8(s2)
    800019b0:	02048e63          	beqz	s1,800019ec <_ZN4_sem12unblockReadyEv+0x80>
    800019b4:	00092783          	lw	a5,0(s2)
    800019b8:	0084a703          	lw	a4,8(s1)
    800019bc:	02e7c863          	blt	a5,a4,800019ec <_ZN4_sem12unblockReadyEv+0x80>
        head = head->next;
    800019c0:	0104b703          	ld	a4,16(s1)
    800019c4:	00e93423          	sd	a4,8(s2)
        if (head == nullptr) {
    800019c8:	fc0714e3          	bnez	a4,80001990 <_ZN4_sem12unblockReadyEv+0x24>
    800019cc:	fc1ff06f          	j	8000198c <_ZN4_sem12unblockReadyEv+0x20>
            node->thread->setState(_thread::READY);
    800019d0:	00100593          	li	a1,1
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	950080e7          	jalr	-1712(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    800019dc:	0004b503          	ld	a0,0(s1)
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	b5c080e7          	jalr	-1188(ra) # 8000253c <_ZN9Scheduler3putEP7_thread>
    800019e8:	fc5ff06f          	j	800019ac <_ZN4_sem12unblockReadyEv+0x40>
        }
    }
}
    800019ec:	01813083          	ld	ra,24(sp)
    800019f0:	01013403          	ld	s0,16(sp)
    800019f4:	00813483          	ld	s1,8(sp)
    800019f8:	00013903          	ld	s2,0(sp)
    800019fc:	02010113          	addi	sp,sp,32
    80001a00:	00008067          	ret

0000000080001a04 <_ZN4_sem7signalNEj>:
    if (closed) {
    80001a04:	00454783          	lbu	a5,4(a0)
    80001a08:	04079463          	bnez	a5,80001a50 <_ZN4_sem7signalNEj+0x4c>
    if (n == 0) {
    80001a0c:	00059663          	bnez	a1,80001a18 <_ZN4_sem7signalNEj+0x14>
        return 0;
    80001a10:	00000513          	li	a0,0
}
    80001a14:	00008067          	ret
int _sem::signalN(unsigned n) {
    80001a18:	ff010113          	addi	sp,sp,-16
    80001a1c:	00113423          	sd	ra,8(sp)
    80001a20:	00813023          	sd	s0,0(sp)
    80001a24:	01010413          	addi	s0,sp,16
    val += (int)n;
    80001a28:	00052783          	lw	a5,0(a0)
    80001a2c:	00b785bb          	addw	a1,a5,a1
    80001a30:	00b52023          	sw	a1,0(a0)
    unblockReady();
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	f38080e7          	jalr	-200(ra) # 8000196c <_ZN4_sem12unblockReadyEv>
    return 0;
    80001a3c:	00000513          	li	a0,0
}
    80001a40:	00813083          	ld	ra,8(sp)
    80001a44:	00013403          	ld	s0,0(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret
        return -1;
    80001a50:	fff00513          	li	a0,-1
    80001a54:	00008067          	ret

0000000080001a58 <_ZN4_sem6signalEv>:
int _sem::signal() {
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00113423          	sd	ra,8(sp)
    80001a60:	00813023          	sd	s0,0(sp)
    80001a64:	01010413          	addi	s0,sp,16
    return signalN(1);
    80001a68:	00100593          	li	a1,1
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	f98080e7          	jalr	-104(ra) # 80001a04 <_ZN4_sem7signalNEj>
}
    80001a74:	00813083          	ld	ra,8(sp)
    80001a78:	00013403          	ld	s0,0(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <_ZN4_sem10unblockAllEv>:

void _sem::unblockAll() {
    80001a84:	fe010113          	addi	sp,sp,-32
    80001a88:	00113c23          	sd	ra,24(sp)
    80001a8c:	00813823          	sd	s0,16(sp)
    80001a90:	00913423          	sd	s1,8(sp)
    80001a94:	01213023          	sd	s2,0(sp)
    80001a98:	02010413          	addi	s0,sp,32
    80001a9c:	00050913          	mv	s2,a0
    while (head != nullptr) {
    80001aa0:	00893483          	ld	s1,8(s2)
    80001aa4:	02048e63          	beqz	s1,80001ae0 <_ZN4_sem10unblockAllEv+0x5c>
        BlockedNode* node = head;

        head = head->next;
    80001aa8:	0104b783          	ld	a5,16(s1)
    80001aac:	00f93423          	sd	a5,8(s2)

        node->status = -1;
    80001ab0:	fff00793          	li	a5,-1
    80001ab4:	00f4a623          	sw	a5,12(s1)
        node->next = nullptr;
    80001ab8:	0004b823          	sd	zero,16(s1)

        if (node->thread != nullptr) {
    80001abc:	0004b503          	ld	a0,0(s1)
    80001ac0:	fe0500e3          	beqz	a0,80001aa0 <_ZN4_sem10unblockAllEv+0x1c>
            node->thread->setState(_thread::READY);
    80001ac4:	00100593          	li	a1,1
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	85c080e7          	jalr	-1956(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
            Scheduler::put(node->thread);
    80001ad0:	0004b503          	ld	a0,0(s1)
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	a68080e7          	jalr	-1432(ra) # 8000253c <_ZN9Scheduler3putEP7_thread>
    80001adc:	fc5ff06f          	j	80001aa0 <_ZN4_sem10unblockAllEv+0x1c>
        }
    }

    tail = nullptr;
    80001ae0:	00093823          	sd	zero,16(s2)
    80001ae4:	01813083          	ld	ra,24(sp)
    80001ae8:	01013403          	ld	s0,16(sp)
    80001aec:	00813483          	ld	s1,8(sp)
    80001af0:	00013903          	ld	s2,0(sp)
    80001af4:	02010113          	addi	sp,sp,32
    80001af8:	00008067          	ret

0000000080001afc <_ZN4_sem5closeEv>:
    if (closed) {
    80001afc:	00454783          	lbu	a5,4(a0)
    80001b00:	02079c63          	bnez	a5,80001b38 <_ZN4_sem5closeEv+0x3c>
int _sem::close() {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
    closed = true;
    80001b14:	00100793          	li	a5,1
    80001b18:	00f50223          	sb	a5,4(a0)
    unblockAll();
    80001b1c:	00000097          	auipc	ra,0x0
    80001b20:	f68080e7          	jalr	-152(ra) # 80001a84 <_ZN4_sem10unblockAllEv>
    return 0;
    80001b24:	00000513          	li	a0,0
}
    80001b28:	00813083          	ld	ra,8(sp)
    80001b2c:	00013403          	ld	s0,0(sp)
    80001b30:	01010113          	addi	sp,sp,16
    80001b34:	00008067          	ret
        return -1;
    80001b38:	fff00513          	li	a0,-1
}
    80001b3c:	00008067          	ret

0000000080001b40 <handleSupervisorTrap>:
#include "../h/Semaphore.hpp"
#include "../lib/console.h"

extern "C" void handleSupervisorTrap(TrapFrame* frame);

extern "C" void handleSupervisorTrap(TrapFrame* frame) {
    80001b40:	fd010113          	addi	sp,sp,-48
    80001b44:	02113423          	sd	ra,40(sp)
    80001b48:	02813023          	sd	s0,32(sp)
    80001b4c:	00913c23          	sd	s1,24(sp)
    80001b50:	01213823          	sd	s2,16(sp)
    80001b54:	01313423          	sd	s3,8(sp)
    80001b58:	03010413          	addi	s0,sp,48
    static const uint64 SSTATUS_SIE = (1UL << 1);
    static const uint64 SIP_SSIP = (1UL << 1);

    static uint64 r_scause() {
        uint64 x;
        asm volatile("csrr %0, scause" : "=r"(x));//upis vrednosti scause u x
    80001b5c:	14202773          	csrr	a4,scause
    uint64 scause = Riscv::r_scause();

    if (scause == 8 || scause == 9) {
    80001b60:	ff870693          	addi	a3,a4,-8 # ff8 <_entry-0x7ffff008>
    80001b64:	00100793          	li	a5,1
    80001b68:	02d7f463          	bgeu	a5,a3,80001b90 <handleSupervisorTrap+0x50>

        frame->sepc += 4;
        return;
    }

    if (scause == 0x8000000000000001UL) {
    80001b6c:	fff00793          	li	a5,-1
    80001b70:	03f79793          	slli	a5,a5,0x3f
    80001b74:	00178793          	addi	a5,a5,1
    80001b78:	2cf70c63          	beq	a4,a5,80001e50 <handleSupervisorTrap+0x310>
        Riscv::mc_sip(Riscv::SIP_SSIP);//birsanje pending bita
        return;
    }

    if (scause == 0x8000000000000009UL) {//spoljasnji hardverski prekid 9
    80001b7c:	fff00793          	li	a5,-1
    80001b80:	03f79793          	slli	a5,a5,0x3f
    80001b84:	00978793          	addi	a5,a5,9
    80001b88:	2cf70a63          	beq	a4,a5,80001e5c <handleSupervisorTrap+0x31c>
        console_handler();
        return;
    }

    while (true) {}
    80001b8c:	0000006f          	j	80001b8c <handleSupervisorTrap+0x4c>
    80001b90:	00050493          	mv	s1,a0
        uint64 syscallCode = frame->a0;
    80001b94:	04053783          	ld	a5,64(a0)
        uint64 arg1 = frame->a1;
    80001b98:	04853903          	ld	s2,72(a0)
        uint64 arg2 = frame->a2;
    80001b9c:	05053503          	ld	a0,80(a0)
        uint64 arg3 = frame->a3;
    80001ba0:	0584b583          	ld	a1,88(s1)
        uint64 arg4 = frame->a4;
    80001ba4:	0604b603          	ld	a2,96(s1)
        uint64 arg5 = frame->a5;
    80001ba8:	0684b683          	ld	a3,104(s1)
        switch (syscallCode) {
    80001bac:	04200713          	li	a4,66
    80001bb0:	28f76a63          	bltu	a4,a5,80001e44 <handleSupervisorTrap+0x304>
    80001bb4:	00279793          	slli	a5,a5,0x2
    80001bb8:	00007717          	auipc	a4,0x7
    80001bbc:	46870713          	addi	a4,a4,1128 # 80009020 <CONSOLE_STATUS+0x10>
    80001bc0:	00e787b3          	add	a5,a5,a4
    80001bc4:	0007a783          	lw	a5,0(a5)
    80001bc8:	00e787b3          	add	a5,a5,a4
    80001bcc:	00078067          	jr	a5
                frame->a0 = (uint64)MemoryAllocator::getInstance().malloc((size_t)arg1);
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	130080e7          	jalr	304(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001bd8:	00090593          	mv	a1,s2
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	1a4080e7          	jalr	420(ra) # 80002d80 <_ZN15MemoryAllocator6mallocEm>
    80001be4:	04a4b023          	sd	a0,64(s1)
        frame->sepc += 4;
    80001be8:	0f04b783          	ld	a5,240(s1)
    80001bec:	00478793          	addi	a5,a5,4
    80001bf0:	0ef4b823          	sd	a5,240(s1)
    80001bf4:	02813083          	ld	ra,40(sp)
    80001bf8:	02013403          	ld	s0,32(sp)
    80001bfc:	01813483          	ld	s1,24(sp)
    80001c00:	01013903          	ld	s2,16(sp)
    80001c04:	00813983          	ld	s3,8(sp)
    80001c08:	03010113          	addi	sp,sp,48
    80001c0c:	00008067          	ret
                frame->a0 = (uint64)MemoryAllocator::getInstance().free((void*)arg1);
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	0f0080e7          	jalr	240(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001c18:	00090593          	mv	a1,s2
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	2c0080e7          	jalr	704(ra) # 80002edc <_ZN15MemoryAllocator4freeEPv>
    80001c24:	04a4b023          	sd	a0,64(s1)
                break;
    80001c28:	fc1ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001c2c:	00090663          	beqz	s2,80001c38 <handleSupervisorTrap+0xf8>
    80001c30:	00050463          	beqz	a0,80001c38 <handleSupervisorTrap+0xf8>
    80001c34:	00061863          	bnez	a2,80001c44 <handleSupervisorTrap+0x104>
                    frame->a0 = (uint64)-1;
    80001c38:	fff00793          	li	a5,-1
    80001c3c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c40:	fa9ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                _thread* thread = _thread::createThread(body, arg, stackSpace, LOW);
    80001c44:	00200693          	li	a3,2
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	418080e7          	jalr	1048(ra) # 80002060 <_ZN7_thread12createThreadEPFvPvES0_S0_14ThreadPriority>
                if (thread == nullptr) {
    80001c50:	00050c63          	beqz	a0,80001c68 <handleSupervisorTrap+0x128>
                *handle = thread;
    80001c54:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	8e4080e7          	jalr	-1820(ra) # 8000253c <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001c60:	0404b023          	sd	zero,64(s1)
                break;
    80001c64:	f85ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                    frame->a0 = (uint64)-1;
    80001c68:	fff00793          	li	a5,-1
    80001c6c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001c70:	f79ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->sepc += 4;
    80001c74:	0f04b783          	ld	a5,240(s1)
    80001c78:	00478793          	addi	a5,a5,4
    80001c7c:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)_thread::exit();
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	570080e7          	jalr	1392(ra) # 800021f0 <_ZN7_thread4exitEv>
    80001c88:	04a4b023          	sd	a0,64(s1)
                return;
    80001c8c:	f69ff06f          	j	80001bf4 <handleSupervisorTrap+0xb4>
                frame->sepc += 4;
    80001c90:	0f04b783          	ld	a5,240(s1)
    80001c94:	00478793          	addi	a5,a5,4
    80001c98:	0ef4b823          	sd	a5,240(s1)
                _thread::dispatch();//nismo frame->a0 jer dispatch nema povratnu value
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	4ac080e7          	jalr	1196(ra) # 80002148 <_ZN7_thread8dispatchEv>
                return;
    80001ca4:	f51ff06f          	j	80001bf4 <handleSupervisorTrap+0xb4>
                ThreadPriority priority = (ThreadPriority)arg5;
    80001ca8:	0006869b          	sext.w	a3,a3
                if (handle == nullptr || body == nullptr || stackSpace == nullptr) {
    80001cac:	00090663          	beqz	s2,80001cb8 <handleSupervisorTrap+0x178>
    80001cb0:	00050463          	beqz	a0,80001cb8 <handleSupervisorTrap+0x178>
    80001cb4:	00061863          	bnez	a2,80001cc4 <handleSupervisorTrap+0x184>
                    frame->a0 = (uint64)-1;
    80001cb8:	fff00793          	li	a5,-1
    80001cbc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cc0:	f29ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                _thread* thread = _thread::createThread(body, arg, stackSpace, priority);
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	39c080e7          	jalr	924(ra) # 80002060 <_ZN7_thread12createThreadEPFvPvES0_S0_14ThreadPriority>
                if (thread == nullptr) {
    80001ccc:	00050c63          	beqz	a0,80001ce4 <handleSupervisorTrap+0x1a4>
                *handle = thread;
    80001cd0:	00a93023          	sd	a0,0(s2)
                Scheduler::put(thread);
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	868080e7          	jalr	-1944(ra) # 8000253c <_ZN9Scheduler3putEP7_thread>
                frame->a0 = 0;
    80001cdc:	0404b023          	sd	zero,64(s1)
                break;
    80001ce0:	f09ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                    frame->a0 = (uint64)-1;
    80001ce4:	fff00793          	li	a5,-1
    80001ce8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001cec:	efdff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                unsigned init = (unsigned)arg2;
    80001cf0:	0005051b          	sext.w	a0,a0
                if (handle == nullptr) {
    80001cf4:	00091863          	bnez	s2,80001d04 <handleSupervisorTrap+0x1c4>
                    frame->a0 = (uint64)-1;
    80001cf8:	fff00793          	li	a5,-1
    80001cfc:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d00:	ee9ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                _sem* sem = _sem::createSemaphore(init);
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	ab8080e7          	jalr	-1352(ra) # 800017bc <_ZN4_sem15createSemaphoreEj>
                if (sem == nullptr) {
    80001d0c:	00050863          	beqz	a0,80001d1c <handleSupervisorTrap+0x1dc>
                *handle = sem;
    80001d10:	00a93023          	sd	a0,0(s2)
                frame->a0 = 0;
    80001d14:	0404b023          	sd	zero,64(s1)
                break;
    80001d18:	ed1ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                    frame->a0 = (uint64)-1;
    80001d1c:	fff00793          	li	a5,-1
    80001d20:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d24:	ec5ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                if (sem == nullptr) {
    80001d28:	00091863          	bnez	s2,80001d38 <handleSupervisorTrap+0x1f8>
                    frame->a0 = (uint64)-1;
    80001d2c:	fff00793          	li	a5,-1
    80001d30:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d34:	eb5ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                int ret = sem->close();
    80001d38:	00090513          	mv	a0,s2
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	dc0080e7          	jalr	-576(ra) # 80001afc <_ZN4_sem5closeEv>
    80001d44:	00050993          	mv	s3,a0
                if (ret == 0) {
    80001d48:	00050663          	beqz	a0,80001d54 <handleSupervisorTrap+0x214>
                frame->a0 = (uint64)ret;
    80001d4c:	0534b023          	sd	s3,64(s1)
                break;
    80001d50:	e99ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                    _sem::destroySemaphore(sem);
    80001d54:	00090513          	mv	a0,s2
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	ab8080e7          	jalr	-1352(ra) # 80001810 <_ZN4_sem16destroySemaphoreEPS_>
    80001d60:	fedff06f          	j	80001d4c <handleSupervisorTrap+0x20c>
                if (sem == nullptr) {
    80001d64:	00091863          	bnez	s2,80001d74 <handleSupervisorTrap+0x234>
                    frame->a0 = (uint64)-1;
    80001d68:	fff00793          	li	a5,-1
    80001d6c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001d70:	e79ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->sepc += 4;
    80001d74:	0f04b783          	ld	a5,240(s1)
    80001d78:	00478793          	addi	a5,a5,4
    80001d7c:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->wait();
    80001d80:	00090513          	mv	a0,s2
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	bbc080e7          	jalr	-1092(ra) # 80001940 <_ZN4_sem4waitEv>
    80001d8c:	04a4b023          	sd	a0,64(s1)
                return;
    80001d90:	e65ff06f          	j	80001bf4 <handleSupervisorTrap+0xb4>
                if (sem == nullptr) {
    80001d94:	00091863          	bnez	s2,80001da4 <handleSupervisorTrap+0x264>
                    frame->a0 = (uint64)-1;
    80001d98:	fff00793          	li	a5,-1
    80001d9c:	04f4b023          	sd	a5,64(s1)
                    break;
    80001da0:	e49ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->a0 = (uint64)sem->signal();
    80001da4:	00090513          	mv	a0,s2
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	cb0080e7          	jalr	-848(ra) # 80001a58 <_ZN4_sem6signalEv>
    80001db0:	04a4b023          	sd	a0,64(s1)
                break;
    80001db4:	e35ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                unsigned n = (unsigned)arg2;
    80001db8:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001dbc:	00091863          	bnez	s2,80001dcc <handleSupervisorTrap+0x28c>
                    frame->a0 = (uint64)-1;
    80001dc0:	fff00793          	li	a5,-1
    80001dc4:	04f4b023          	sd	a5,64(s1)
                    break;
    80001dc8:	e21ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->sepc += 4;
    80001dcc:	0f04b783          	ld	a5,240(s1)
    80001dd0:	00478793          	addi	a5,a5,4
    80001dd4:	0ef4b823          	sd	a5,240(s1)
                frame->a0 = (uint64)sem->waitN(n);
    80001dd8:	00090513          	mv	a0,s2
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	aac080e7          	jalr	-1364(ra) # 80001888 <_ZN4_sem5waitNEj>
    80001de4:	04a4b023          	sd	a0,64(s1)
                return;
    80001de8:	e0dff06f          	j	80001bf4 <handleSupervisorTrap+0xb4>
                unsigned n = (unsigned)arg2;
    80001dec:	0005059b          	sext.w	a1,a0
                if (sem == nullptr) {
    80001df0:	00091863          	bnez	s2,80001e00 <handleSupervisorTrap+0x2c0>
                    frame->a0 = (uint64)-1;
    80001df4:	fff00793          	li	a5,-1
    80001df8:	04f4b023          	sd	a5,64(s1)
                    break;
    80001dfc:	dedff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->a0 = (uint64)sem->signalN(n);
    80001e00:	00090513          	mv	a0,s2
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	c00080e7          	jalr	-1024(ra) # 80001a04 <_ZN4_sem7signalNEj>
    80001e0c:	04a4b023          	sd	a0,64(s1)
                break;
    80001e10:	dd9ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->a0 = (uint64)-1;
    80001e14:	fff00793          	li	a5,-1
    80001e18:	04f4b023          	sd	a5,64(s1)
                break;
    80001e1c:	dcdff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->a0 = (uint64)__getc();
    80001e20:	00007097          	auipc	ra,0x7
    80001e24:	e78080e7          	jalr	-392(ra) # 80008c98 <__getc>
    80001e28:	04a4b023          	sd	a0,64(s1)
                break;
    80001e2c:	dbdff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                __putc((char)arg1);
    80001e30:	0ff97513          	andi	a0,s2,255
    80001e34:	00007097          	auipc	ra,0x7
    80001e38:	e28080e7          	jalr	-472(ra) # 80008c5c <__putc>
                frame->a0 = 0;
    80001e3c:	0404b023          	sd	zero,64(s1)
                break;
    80001e40:	da9ff06f          	j	80001be8 <handleSupervisorTrap+0xa8>
                frame->a0 = (uint64)-1;
    80001e44:	fff00793          	li	a5,-1
    80001e48:	04f4b023          	sd	a5,64(s1)
                break;
    80001e4c:	d9dff06f          	j	80001be8 <handleSupervisorTrap+0xa8>

    static void mc_sstatus(uint64 mask) {
        asm volatile("csrc sstatus, %0" : : "r"(mask));//vrati prekide
    }
    static void mc_sip(uint64 mask) {
        asm volatile("csrc sip, %0" : : "r"(mask));
    80001e50:	00200793          	li	a5,2
    80001e54:	1447b073          	csrc	sip,a5
        return;
    80001e58:	d9dff06f          	j	80001bf4 <handleSupervisorTrap+0xb4>
        console_handler();
    80001e5c:	00007097          	auipc	ra,0x7
    80001e60:	e74080e7          	jalr	-396(ra) # 80008cd0 <console_handler>
        return;
    80001e64:	d91ff06f          	j	80001bf4 <handleSupervisorTrap+0xb4>

0000000080001e68 <_ZL14blocksForBytesm>:
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"

_thread* _thread::running = nullptr;

static size_t blocksForBytes(size_t bytes) {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00813423          	sd	s0,8(sp)
    80001e70:	01010413          	addi	s0,sp,16
    return (bytes + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e74:	03f50513          	addi	a0,a0,63
}
    80001e78:	00655513          	srli	a0,a0,0x6
    80001e7c:	00813403          	ld	s0,8(sp)
    80001e80:	01010113          	addi	sp,sp,16
    80001e84:	00008067          	ret

0000000080001e88 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t size) {
    80001e88:	fe010113          	addi	sp,sp,-32
    80001e8c:	00113c23          	sd	ra,24(sp)
    80001e90:	00813823          	sd	s0,16(sp)
    80001e94:	00913423          	sd	s1,8(sp)
    80001e98:	01213023          	sd	s2,0(sp)
    80001e9c:	02010413          	addi	s0,sp,32
    80001ea0:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001ea4:	00001097          	auipc	ra,0x1
    80001ea8:	e5c080e7          	jalr	-420(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001eac:	00050493          	mv	s1,a0
    80001eb0:	00090513          	mv	a0,s2
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	fb4080e7          	jalr	-76(ra) # 80001e68 <_ZL14blocksForBytesm>
    80001ebc:	00050593          	mv	a1,a0
    80001ec0:	00048513          	mv	a0,s1
    80001ec4:	00001097          	auipc	ra,0x1
    80001ec8:	ebc080e7          	jalr	-324(ra) # 80002d80 <_ZN15MemoryAllocator6mallocEm>
}
    80001ecc:	01813083          	ld	ra,24(sp)
    80001ed0:	01013403          	ld	s0,16(sp)
    80001ed4:	00813483          	ld	s1,8(sp)
    80001ed8:	00013903          	ld	s2,0(sp)
    80001edc:	02010113          	addi	sp,sp,32
    80001ee0:	00008067          	ret

0000000080001ee4 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t size) {
    80001ee4:	fe010113          	addi	sp,sp,-32
    80001ee8:	00113c23          	sd	ra,24(sp)
    80001eec:	00813823          	sd	s0,16(sp)
    80001ef0:	00913423          	sd	s1,8(sp)
    80001ef4:	01213023          	sd	s2,0(sp)
    80001ef8:	02010413          	addi	s0,sp,32
    80001efc:	00050913          	mv	s2,a0
    return MemoryAllocator::getInstance().malloc(blocksForBytes(size));
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	e00080e7          	jalr	-512(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001f08:	00050493          	mv	s1,a0
    80001f0c:	00090513          	mv	a0,s2
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	f58080e7          	jalr	-168(ra) # 80001e68 <_ZL14blocksForBytesm>
    80001f18:	00050593          	mv	a1,a0
    80001f1c:	00048513          	mv	a0,s1
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	e60080e7          	jalr	-416(ra) # 80002d80 <_ZN15MemoryAllocator6mallocEm>
}
    80001f28:	01813083          	ld	ra,24(sp)
    80001f2c:	01013403          	ld	s0,16(sp)
    80001f30:	00813483          	ld	s1,8(sp)
    80001f34:	00013903          	ld	s2,0(sp)
    80001f38:	02010113          	addi	sp,sp,32
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN7_threaddlEPv>:

void _thread::operator delete(void* ptr) {
    if (ptr == nullptr) {
    80001f40:	04050263          	beqz	a0,80001f84 <_ZN7_threaddlEPv+0x44>
void _thread::operator delete(void* ptr) {
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	00813823          	sd	s0,16(sp)
    80001f50:	00913423          	sd	s1,8(sp)
    80001f54:	02010413          	addi	s0,sp,32
    80001f58:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	da4080e7          	jalr	-604(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001f64:	00048593          	mv	a1,s1
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	f74080e7          	jalr	-140(ra) # 80002edc <_ZN15MemoryAllocator4freeEPv>
}
    80001f70:	01813083          	ld	ra,24(sp)
    80001f74:	01013403          	ld	s0,16(sp)
    80001f78:	00813483          	ld	s1,8(sp)
    80001f7c:	02010113          	addi	sp,sp,32
    80001f80:	00008067          	ret
    80001f84:	00008067          	ret

0000000080001f88 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void* ptr) {
    if (ptr == nullptr) {
    80001f88:	04050263          	beqz	a0,80001fcc <_ZN7_threaddaEPv+0x44>
void _thread::operator delete[](void* ptr) {
    80001f8c:	fe010113          	addi	sp,sp,-32
    80001f90:	00113c23          	sd	ra,24(sp)
    80001f94:	00813823          	sd	s0,16(sp)
    80001f98:	00913423          	sd	s1,8(sp)
    80001f9c:	02010413          	addi	s0,sp,32
    80001fa0:	00050493          	mv	s1,a0
        return;
    }

    MemoryAllocator::getInstance().free(ptr);
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	d5c080e7          	jalr	-676(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80001fac:	00048593          	mv	a1,s1
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	f2c080e7          	jalr	-212(ra) # 80002edc <_ZN15MemoryAllocator4freeEPv>
}
    80001fb8:	01813083          	ld	ra,24(sp)
    80001fbc:	01013403          	ld	s0,16(sp)
    80001fc0:	00813483          	ld	s1,8(sp)
    80001fc4:	02010113          	addi	sp,sp,32
    80001fc8:	00008067          	ret
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN7_threadC1EPFvPvES0_S0_14ThreadPriority>:

_thread::_thread(Body body, void* arg, void* stackSpace, ThreadPriority priority) {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    this->body = body;
    80001fdc:	00b53023          	sd	a1,0(a0)
    this->arg = arg;
    80001fe0:	00c53423          	sd	a2,8(a0)

    if (stackSpace != nullptr) {
    80001fe4:	06068863          	beqz	a3,80002054 <_ZN7_threadC1EPFvPvES0_S0_14ThreadPriority+0x84>
        this->stack = (void*)((uint64)stackSpace - DEFAULT_STACK_SIZE);
    80001fe8:	fffff7b7          	lui	a5,0xfffff
    80001fec:	00f687b3          	add	a5,a3,a5
    80001ff0:	00f53823          	sd	a5,16(a0)
        this->context.sp = (uint64)stackSpace;
    80001ff4:	02d53023          	sd	a3,32(a0)
    } else {
        this->stack = nullptr;
        this->context.sp = 0;
    }
    this->context.s0 = 0;
    80001ff8:	02053423          	sd	zero,40(a0)
    this->context.s1 = 0;
    80001ffc:	02053823          	sd	zero,48(a0)
    this->context.s2 = 0;
    80002000:	02053c23          	sd	zero,56(a0)
    this->context.s3 = 0;
    80002004:	04053023          	sd	zero,64(a0)
    this->context.s4 = 0;
    80002008:	04053423          	sd	zero,72(a0)
    this->context.s5 = 0;
    8000200c:	04053823          	sd	zero,80(a0)
    this->context.s6 = 0;
    80002010:	04053c23          	sd	zero,88(a0)
    this->context.s7 = 0;
    80002014:	06053023          	sd	zero,96(a0)
    this->context.s8 = 0;
    80002018:	06053423          	sd	zero,104(a0)
    this->context.s9 = 0;
    8000201c:	06053823          	sd	zero,112(a0)
    this->context.s10 = 0;
    80002020:	06053c23          	sd	zero,120(a0)
    this->context.s11 = 0;
    80002024:	08053023          	sd	zero,128(a0)

    this->context.ra = (uint64)&_thread::threadWrapper;//nit nigde nije radila pa upisujemo povratnu adresu
    80002028:	00000797          	auipc	a5,0x0
    8000202c:	21078793          	addi	a5,a5,528 # 80002238 <_ZN7_thread13threadWrapperEv>
    80002030:	00f53c23          	sd	a5,24(a0)
    this->timeSlice = DEFAULT_TIME_SLICE;
    80002034:	00200793          	li	a5,2
    80002038:	08f53423          	sd	a5,136(a0)
    this->state = CREATED;//nakon ovoga u trap.cpp radimo ready
    8000203c:	08052823          	sw	zero,144(a0)
    this->next = nullptr;
    80002040:	08053c23          	sd	zero,152(a0)
    this->priority = priority;
    80002044:	08e52a23          	sw	a4,148(a0)
}
    80002048:	00813403          	ld	s0,8(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret
        this->stack = nullptr;
    80002054:	00053823          	sd	zero,16(a0)
        this->context.sp = 0;
    80002058:	02053023          	sd	zero,32(a0)
    8000205c:	f9dff06f          	j	80001ff8 <_ZN7_threadC1EPFvPvES0_S0_14ThreadPriority+0x28>

0000000080002060 <_ZN7_thread12createThreadEPFvPvES0_S0_14ThreadPriority>:

_thread* _thread::createThread(Body body, void* arg, void* stackSpace, ThreadPriority priority) {
    80002060:	fc010113          	addi	sp,sp,-64
    80002064:	02113c23          	sd	ra,56(sp)
    80002068:	02813823          	sd	s0,48(sp)
    8000206c:	02913423          	sd	s1,40(sp)
    80002070:	03213023          	sd	s2,32(sp)
    80002074:	01313c23          	sd	s3,24(sp)
    80002078:	01413823          	sd	s4,16(sp)
    8000207c:	01513423          	sd	s5,8(sp)
    80002080:	04010413          	addi	s0,sp,64
    80002084:	00050913          	mv	s2,a0
    80002088:	00058993          	mv	s3,a1
    8000208c:	00060a13          	mv	s4,a2
    80002090:	00068a93          	mv	s5,a3
    return new _thread(body, arg, stackSpace, priority);
    80002094:	0a000513          	li	a0,160
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	df0080e7          	jalr	-528(ra) # 80001e88 <_ZN7_threadnwEm>
    800020a0:	00050493          	mv	s1,a0
    800020a4:	000a8713          	mv	a4,s5
    800020a8:	000a0693          	mv	a3,s4
    800020ac:	00098613          	mv	a2,s3
    800020b0:	00090593          	mv	a1,s2
    800020b4:	00000097          	auipc	ra,0x0
    800020b8:	f1c080e7          	jalr	-228(ra) # 80001fd0 <_ZN7_threadC1EPFvPvES0_S0_14ThreadPriority>
}
    800020bc:	00048513          	mv	a0,s1
    800020c0:	03813083          	ld	ra,56(sp)
    800020c4:	03013403          	ld	s0,48(sp)
    800020c8:	02813483          	ld	s1,40(sp)
    800020cc:	02013903          	ld	s2,32(sp)
    800020d0:	01813983          	ld	s3,24(sp)
    800020d4:	01013a03          	ld	s4,16(sp)
    800020d8:	00813a83          	ld	s5,8(sp)
    800020dc:	04010113          	addi	sp,sp,64
    800020e0:	00008067          	ret

00000000800020e4 <_ZN7_thread13destroyThreadEPS_>:

int _thread::destroyThread(_thread* thread) {
    if (thread == nullptr) {
    800020e4:	04050e63          	beqz	a0,80002140 <_ZN7_thread13destroyThreadEPS_+0x5c>
int _thread::destroyThread(_thread* thread) {
    800020e8:	fe010113          	addi	sp,sp,-32
    800020ec:	00113c23          	sd	ra,24(sp)
    800020f0:	00813823          	sd	s0,16(sp)
    800020f4:	00913423          	sd	s1,8(sp)
    800020f8:	02010413          	addi	s0,sp,32
    800020fc:	00050493          	mv	s1,a0
        return -1;
    }

    if (thread->stack != nullptr) {
    80002100:	01053783          	ld	a5,16(a0)
    80002104:	00078c63          	beqz	a5,8000211c <_ZN7_thread13destroyThreadEPS_+0x38>
        MemoryAllocator::getInstance().free(thread->stack);
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	bf8080e7          	jalr	-1032(ra) # 80002d00 <_ZN15MemoryAllocator11getInstanceEv>
    80002110:	0104b583          	ld	a1,16(s1)
    80002114:	00001097          	auipc	ra,0x1
    80002118:	dc8080e7          	jalr	-568(ra) # 80002edc <_ZN15MemoryAllocator4freeEPv>
        thread->stack = nullptr;
    }

    delete thread;
    8000211c:	00048513          	mv	a0,s1
    80002120:	00000097          	auipc	ra,0x0
    80002124:	e20080e7          	jalr	-480(ra) # 80001f40 <_ZN7_threaddlEPv>
    return 0;
    80002128:	00000513          	li	a0,0
}
    8000212c:	01813083          	ld	ra,24(sp)
    80002130:	01013403          	ld	s0,16(sp)
    80002134:	00813483          	ld	s1,8(sp)
    80002138:	02010113          	addi	sp,sp,32
    8000213c:	00008067          	ret
        return -1;
    80002140:	fff00513          	li	a0,-1
}
    80002144:	00008067          	ret

0000000080002148 <_ZN7_thread8dispatchEv>:

void _thread::dispatch() {
    80002148:	fe010113          	addi	sp,sp,-32
    8000214c:	00113c23          	sd	ra,24(sp)
    80002150:	00813823          	sd	s0,16(sp)
    80002154:	00913423          	sd	s1,8(sp)
    80002158:	02010413          	addi	s0,sp,32
    _thread* old = running;
    8000215c:	0000a497          	auipc	s1,0xa
    80002160:	d844b483          	ld	s1,-636(s1) # 8000bee0 <_ZN7_thread7runningE>

    if (old != nullptr && old->state != FINISHED && old->state != BLOCKED) {
    80002164:	00048c63          	beqz	s1,8000217c <_ZN7_thread8dispatchEv+0x34>
    80002168:	0904a783          	lw	a5,144(s1)
    8000216c:	00400713          	li	a4,4
    80002170:	00e78663          	beq	a5,a4,8000217c <_ZN7_thread8dispatchEv+0x34>
    80002174:	00300713          	li	a4,3
    80002178:	04e79663          	bne	a5,a4,800021c4 <_ZN7_thread8dispatchEv+0x7c>
        Scheduler::put(old);
    }

    _thread* next = Scheduler::get();
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	4a4080e7          	jalr	1188(ra) # 80002620 <_ZN9Scheduler3getEv>

    if (next == nullptr) {
    80002184:	04050863          	beqz	a0,800021d4 <_ZN7_thread8dispatchEv+0x8c>
            running = old;
        }
        return;
    }

    running = next;
    80002188:	0000a797          	auipc	a5,0xa
    8000218c:	d4a7bc23          	sd	a0,-680(a5) # 8000bee0 <_ZN7_thread7runningE>
    running->state = RUNNING;
    80002190:	00200793          	li	a5,2
    80002194:	08f52823          	sw	a5,144(a0)

    if (old != nullptr && old != running) {//ako je scheduler vratio istu nit ne treba contextswitch
    80002198:	00048c63          	beqz	s1,800021b0 <_ZN7_thread8dispatchEv+0x68>
    8000219c:	00a48a63          	beq	s1,a0,800021b0 <_ZN7_thread8dispatchEv+0x68>
        contextSwitch(&old->context, &running->context);
    800021a0:	01850593          	addi	a1,a0,24
    800021a4:	01848513          	addi	a0,s1,24
    800021a8:	fffff097          	auipc	ra,0xfffff
    800021ac:	f88080e7          	jalr	-120(ra) # 80001130 <contextSwitch>
    }
}
    800021b0:	01813083          	ld	ra,24(sp)
    800021b4:	01013403          	ld	s0,16(sp)
    800021b8:	00813483          	ld	s1,8(sp)
    800021bc:	02010113          	addi	sp,sp,32
    800021c0:	00008067          	ret
        Scheduler::put(old);
    800021c4:	00048513          	mv	a0,s1
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	374080e7          	jalr	884(ra) # 8000253c <_ZN9Scheduler3putEP7_thread>
    800021d0:	fadff06f          	j	8000217c <_ZN7_thread8dispatchEv+0x34>
        if (old != nullptr && old->state == RUNNING) {
    800021d4:	fc048ee3          	beqz	s1,800021b0 <_ZN7_thread8dispatchEv+0x68>
    800021d8:	0904a703          	lw	a4,144(s1)
    800021dc:	00200793          	li	a5,2
    800021e0:	fcf718e3          	bne	a4,a5,800021b0 <_ZN7_thread8dispatchEv+0x68>
            running = old;
    800021e4:	0000a797          	auipc	a5,0xa
    800021e8:	ce97be23          	sd	s1,-772(a5) # 8000bee0 <_ZN7_thread7runningE>
        return;
    800021ec:	fc5ff06f          	j	800021b0 <_ZN7_thread8dispatchEv+0x68>

00000000800021f0 <_ZN7_thread4exitEv>:
int _thread::exit() {
    if (running == nullptr) {
    800021f0:	0000a797          	auipc	a5,0xa
    800021f4:	cf07b783          	ld	a5,-784(a5) # 8000bee0 <_ZN7_thread7runningE>
    800021f8:	02078c63          	beqz	a5,80002230 <_ZN7_thread4exitEv+0x40>
int _thread::exit() {
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00113423          	sd	ra,8(sp)
    80002204:	00813023          	sd	s0,0(sp)
    80002208:	01010413          	addi	s0,sp,16
        return -1;
    }

    running->state = FINISHED;
    8000220c:	00400713          	li	a4,4
    80002210:	08e7a823          	sw	a4,144(a5)

    dispatch();
    80002214:	00000097          	auipc	ra,0x0
    80002218:	f34080e7          	jalr	-204(ra) # 80002148 <_ZN7_thread8dispatchEv>

    return 0;
    8000221c:	00000513          	li	a0,0
}
    80002220:	00813083          	ld	ra,8(sp)
    80002224:	00013403          	ld	s0,0(sp)
    80002228:	01010113          	addi	sp,sp,16
    8000222c:	00008067          	ret
        return -1;
    80002230:	fff00513          	li	a0,-1
}
    80002234:	00008067          	ret

0000000080002238 <_ZN7_thread13threadWrapperEv>:

uint64 _thread::getTimeSlice() const {
    return timeSlice;
}

void _thread::threadWrapper() {//
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00113423          	sd	ra,8(sp)
    80002240:	00813023          	sd	s0,0(sp)
    80002244:	01010413          	addi	s0,sp,16
    if (running != nullptr && running->body != nullptr) {
    80002248:	0000a797          	auipc	a5,0xa
    8000224c:	c987b783          	ld	a5,-872(a5) # 8000bee0 <_ZN7_thread7runningE>
    80002250:	00078a63          	beqz	a5,80002264 <_ZN7_thread13threadWrapperEv+0x2c>
    80002254:	0007b703          	ld	a4,0(a5)
    80002258:	00070663          	beqz	a4,80002264 <_ZN7_thread13threadWrapperEv+0x2c>
        running->body(running->arg);
    8000225c:	0087b503          	ld	a0,8(a5)
    80002260:	000700e7          	jalr	a4
    }

    _thread::exit();
    80002264:	00000097          	auipc	ra,0x0
    80002268:	f8c080e7          	jalr	-116(ra) # 800021f0 <_ZN7_thread4exitEv>
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZNK7_thread7getBodyEv>:
_thread::Body _thread::getBody() const {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00813423          	sd	s0,8(sp)
    80002284:	01010413          	addi	s0,sp,16
}
    80002288:	00053503          	ld	a0,0(a0)
    8000228c:	00813403          	ld	s0,8(sp)
    80002290:	01010113          	addi	sp,sp,16
    80002294:	00008067          	ret

0000000080002298 <_ZNK7_thread6getArgEv>:
void* _thread::getArg() const {
    80002298:	ff010113          	addi	sp,sp,-16
    8000229c:	00813423          	sd	s0,8(sp)
    800022a0:	01010413          	addi	s0,sp,16
}
    800022a4:	00853503          	ld	a0,8(a0)
    800022a8:	00813403          	ld	s0,8(sp)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret

00000000800022b4 <_ZNK7_thread8getStackEv>:
void* _thread::getStack() const {
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00813423          	sd	s0,8(sp)
    800022bc:	01010413          	addi	s0,sp,16
}
    800022c0:	01053503          	ld	a0,16(a0)
    800022c4:	00813403          	ld	s0,8(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN7_thread10getContextEv>:
_thread::Context* _thread::getContext() {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00813423          	sd	s0,8(sp)
    800022d8:	01010413          	addi	s0,sp,16
}
    800022dc:	01850513          	addi	a0,a0,24
    800022e0:	00813403          	ld	s0,8(sp)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <_ZNK7_thread8getStateEv>:
_thread::State _thread::getState() const {
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
}
    800022f8:	09052503          	lw	a0,144(a0)
    800022fc:	00813403          	ld	s0,8(sp)
    80002300:	01010113          	addi	sp,sp,16
    80002304:	00008067          	ret

0000000080002308 <_ZNK7_thread11getPriorityEv>:
ThreadPriority _thread::getPriority() const {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00813423          	sd	s0,8(sp)
    80002310:	01010413          	addi	s0,sp,16
}
    80002314:	09452503          	lw	a0,148(a0)
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

000000008000235c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000235c:	fe010113          	addi	sp,sp,-32
    80002360:	00113c23          	sd	ra,24(sp)
    80002364:	00813823          	sd	s0,16(sp)
    80002368:	00913423          	sd	s1,8(sp)
    8000236c:	01213023          	sd	s2,0(sp)
    80002370:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80002374:	00007517          	auipc	a0,0x7
    80002378:	dbc50513          	addi	a0,a0,-580 # 80009130 <CONSOLE_STATUS+0x120>
    8000237c:	00003097          	auipc	ra,0x3
    80002380:	728080e7          	jalr	1832(ra) # 80005aa4 <_Z11printStringPKc>
    int test = getc() - '0';
    80002384:	fffff097          	auipc	ra,0xfffff
    80002388:	2c8080e7          	jalr	712(ra) # 8000164c <_Z4getcv>
    8000238c:	00050913          	mv	s2,a0
    80002390:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80002394:	fffff097          	auipc	ra,0xfffff
    80002398:	2b8080e7          	jalr	696(ra) # 8000164c <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000239c:	fcb9091b          	addiw	s2,s2,-53
    800023a0:	00100793          	li	a5,1
    800023a4:	0327f463          	bgeu	a5,s2,800023cc <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800023a8:	00800793          	li	a5,8
    800023ac:	1097e063          	bltu	a5,s1,800024ac <_Z8userMainv+0x150>
    800023b0:	00249493          	slli	s1,s1,0x2
    800023b4:	00007717          	auipc	a4,0x7
    800023b8:	fec70713          	addi	a4,a4,-20 # 800093a0 <CONSOLE_STATUS+0x390>
    800023bc:	00e484b3          	add	s1,s1,a4
    800023c0:	0004a783          	lw	a5,0(s1)
    800023c4:	00e787b3          	add	a5,a5,a4
    800023c8:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800023cc:	00007517          	auipc	a0,0x7
    800023d0:	d8450513          	addi	a0,a0,-636 # 80009150 <CONSOLE_STATUS+0x140>
    800023d4:	00003097          	auipc	ra,0x3
    800023d8:	6d0080e7          	jalr	1744(ra) # 80005aa4 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800023dc:	01813083          	ld	ra,24(sp)
    800023e0:	01013403          	ld	s0,16(sp)
    800023e4:	00813483          	ld	s1,8(sp)
    800023e8:	00013903          	ld	s2,0(sp)
    800023ec:	02010113          	addi	sp,sp,32
    800023f0:	00008067          	ret
            Threads_C_API_test();
    800023f4:	00002097          	auipc	ra,0x2
    800023f8:	778080e7          	jalr	1912(ra) # 80004b6c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800023fc:	00007517          	auipc	a0,0x7
    80002400:	d8450513          	addi	a0,a0,-636 # 80009180 <CONSOLE_STATUS+0x170>
    80002404:	00003097          	auipc	ra,0x3
    80002408:	6a0080e7          	jalr	1696(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    8000240c:	fd1ff06f          	j	800023dc <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80002410:	00001097          	auipc	ra,0x1
    80002414:	63c080e7          	jalr	1596(ra) # 80003a4c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80002418:	00007517          	auipc	a0,0x7
    8000241c:	da850513          	addi	a0,a0,-600 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80002420:	00003097          	auipc	ra,0x3
    80002424:	684080e7          	jalr	1668(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    80002428:	fb5ff06f          	j	800023dc <_Z8userMainv+0x80>
            producerConsumer_C_API();
    8000242c:	00001097          	auipc	ra,0x1
    80002430:	e74080e7          	jalr	-396(ra) # 800032a0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80002434:	00007517          	auipc	a0,0x7
    80002438:	dcc50513          	addi	a0,a0,-564 # 80009200 <CONSOLE_STATUS+0x1f0>
    8000243c:	00003097          	auipc	ra,0x3
    80002440:	668080e7          	jalr	1640(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    80002444:	f99ff06f          	j	800023dc <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80002448:	00003097          	auipc	ra,0x3
    8000244c:	018080e7          	jalr	24(ra) # 80005460 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80002450:	00007517          	auipc	a0,0x7
    80002454:	e0050513          	addi	a0,a0,-512 # 80009250 <CONSOLE_STATUS+0x240>
    80002458:	00003097          	auipc	ra,0x3
    8000245c:	64c080e7          	jalr	1612(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    80002460:	f7dff06f          	j	800023dc <_Z8userMainv+0x80>
            System_Mode_test();
    80002464:	00004097          	auipc	ra,0x4
    80002468:	320080e7          	jalr	800(ra) # 80006784 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    8000246c:	00007517          	auipc	a0,0x7
    80002470:	e3c50513          	addi	a0,a0,-452 # 800092a8 <CONSOLE_STATUS+0x298>
    80002474:	00003097          	auipc	ra,0x3
    80002478:	630080e7          	jalr	1584(ra) # 80005aa4 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    8000247c:	00007517          	auipc	a0,0x7
    80002480:	e4c50513          	addi	a0,a0,-436 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80002484:	00003097          	auipc	ra,0x3
    80002488:	620080e7          	jalr	1568(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    8000248c:	f51ff06f          	j	800023dc <_Z8userMainv+0x80>
            PriorityTest();
    80002490:	00003097          	auipc	ra,0x3
    80002494:	868080e7          	jalr	-1944(ra) # 80004cf8 <_Z12PriorityTestv>
            printString("TEST 8 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80002498:	00007517          	auipc	a0,0x7
    8000249c:	e8850513          	addi	a0,a0,-376 # 80009320 <CONSOLE_STATUS+0x310>
    800024a0:	00003097          	auipc	ra,0x3
    800024a4:	604080e7          	jalr	1540(ra) # 80005aa4 <_Z11printStringPKc>
            break;
    800024a8:	f35ff06f          	j	800023dc <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800024ac:	00007517          	auipc	a0,0x7
    800024b0:	ecc50513          	addi	a0,a0,-308 # 80009378 <CONSOLE_STATUS+0x368>
    800024b4:	00003097          	auipc	ra,0x3
    800024b8:	5f0080e7          	jalr	1520(ra) # 80005aa4 <_Z11printStringPKc>
    800024bc:	f21ff06f          	j	800023dc <_Z8userMainv+0x80>

00000000800024c0 <_ZN9Scheduler9putInListEP7_threadRS1_S2_>:
_thread* Scheduler::mediumTail = nullptr;

_thread* Scheduler::lowHead = nullptr;
_thread* Scheduler::lowTail = nullptr;

void Scheduler::putInList(_thread* thread, _thread*& head, _thread*& tail) {
    800024c0:	ff010113          	addi	sp,sp,-16
    800024c4:	00813423          	sd	s0,8(sp)
    800024c8:	01010413          	addi	s0,sp,16
    if (thread == nullptr) {
    800024cc:	00050e63          	beqz	a0,800024e8 <_ZN9Scheduler9putInListEP7_threadRS1_S2_+0x28>
        return;
    }

    thread->next = nullptr;
    800024d0:	08053c23          	sd	zero,152(a0)

    if (head == nullptr) {
    800024d4:	0005b783          	ld	a5,0(a1)
    800024d8:	00078e63          	beqz	a5,800024f4 <_ZN9Scheduler9putInListEP7_threadRS1_S2_+0x34>
        head = tail = thread;
    } else {
        tail->next = thread;
    800024dc:	00063783          	ld	a5,0(a2)
    800024e0:	08a7bc23          	sd	a0,152(a5)
        tail = thread;
    800024e4:	00a63023          	sd	a0,0(a2)
    }
}
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret
        head = tail = thread;
    800024f4:	00a63023          	sd	a0,0(a2)
    800024f8:	00a5b023          	sd	a0,0(a1)
    800024fc:	fedff06f          	j	800024e8 <_ZN9Scheduler9putInListEP7_threadRS1_S2_+0x28>

0000000080002500 <_ZN9Scheduler11getFromListERP7_threadS2_>:
_thread* Scheduler::getFromList(_thread*& head, _thread*& tail) {
    80002500:	ff010113          	addi	sp,sp,-16
    80002504:	00813423          	sd	s0,8(sp)
    80002508:	01010413          	addi	s0,sp,16
    8000250c:	00050793          	mv	a5,a0
    if (head == nullptr) {
    80002510:	00053503          	ld	a0,0(a0)
    80002514:	00050a63          	beqz	a0,80002528 <_ZN9Scheduler11getFromListERP7_threadS2_+0x28>
        return nullptr;
    }

    _thread* thread = head;
    head = head->next;
    80002518:	09853703          	ld	a4,152(a0)
    8000251c:	00e7b023          	sd	a4,0(a5)

    if (head == nullptr) {
    80002520:	00070a63          	beqz	a4,80002534 <_ZN9Scheduler11getFromListERP7_threadS2_+0x34>
        tail = nullptr;
    }

    thread->next = nullptr;
    80002524:	08053c23          	sd	zero,152(a0)
    return thread;
}
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret
        tail = nullptr;
    80002534:	0005b023          	sd	zero,0(a1)
    80002538:	fedff06f          	j	80002524 <_ZN9Scheduler11getFromListERP7_threadS2_+0x24>

000000008000253c <_ZN9Scheduler3putEP7_thread>:

void Scheduler::put(_thread* thread) {
    if (thread == nullptr) {
    8000253c:	0e050063          	beqz	a0,8000261c <_ZN9Scheduler3putEP7_thread+0xe0>
void Scheduler::put(_thread* thread) {
    80002540:	fe010113          	addi	sp,sp,-32
    80002544:	00113c23          	sd	ra,24(sp)
    80002548:	00813823          	sd	s0,16(sp)
    8000254c:	00913423          	sd	s1,8(sp)
    80002550:	02010413          	addi	s0,sp,32
    80002554:	00050493          	mv	s1,a0
        return;
    }

    if (thread->state == _thread::FINISHED || thread->state == _thread::BLOCKED) {
    80002558:	09052783          	lw	a5,144(a0)
    8000255c:	ffd7879b          	addiw	a5,a5,-3
    80002560:	00100713          	li	a4,1
    80002564:	06f77263          	bgeu	a4,a5,800025c8 <_ZN9Scheduler3putEP7_thread+0x8c>
        return;
    }

    thread->state = _thread::READY;
    80002568:	00100793          	li	a5,1
    8000256c:	08f52823          	sw	a5,144(a0)
    switch (thread->getPriority()) {
    80002570:	00000097          	auipc	ra,0x0
    80002574:	d98080e7          	jalr	-616(ra) # 80002308 <_ZNK7_thread11getPriorityEv>
    80002578:	00100793          	li	a5,1
    8000257c:	06f50063          	beq	a0,a5,800025dc <_ZN9Scheduler3putEP7_thread+0xa0>
    80002580:	00200793          	li	a5,2
    80002584:	06f50c63          	beq	a0,a5,800025fc <_ZN9Scheduler3putEP7_thread+0xc0>
    80002588:	02050263          	beqz	a0,800025ac <_ZN9Scheduler3putEP7_thread+0x70>

        case LOW:
            putInList(thread, lowHead, lowTail);
            break;
        default:
            putInList(thread, lowHead, lowTail);
    8000258c:	0000a617          	auipc	a2,0xa
    80002590:	97c60613          	addi	a2,a2,-1668 # 8000bf08 <_ZN9Scheduler7lowTailE>
    80002594:	0000a597          	auipc	a1,0xa
    80002598:	97c58593          	addi	a1,a1,-1668 # 8000bf10 <_ZN9Scheduler7lowHeadE>
    8000259c:	00048513          	mv	a0,s1
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	f20080e7          	jalr	-224(ra) # 800024c0 <_ZN9Scheduler9putInListEP7_threadRS1_S2_>
            break;
    800025a8:	0200006f          	j	800025c8 <_ZN9Scheduler3putEP7_thread+0x8c>
            putInList(thread, highHead, highTail);
    800025ac:	0000a617          	auipc	a2,0xa
    800025b0:	93c60613          	addi	a2,a2,-1732 # 8000bee8 <_ZN9Scheduler8highTailE>
    800025b4:	0000a597          	auipc	a1,0xa
    800025b8:	93c58593          	addi	a1,a1,-1732 # 8000bef0 <_ZN9Scheduler8highHeadE>
    800025bc:	00048513          	mv	a0,s1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	f00080e7          	jalr	-256(ra) # 800024c0 <_ZN9Scheduler9putInListEP7_threadRS1_S2_>
    }
}
    800025c8:	01813083          	ld	ra,24(sp)
    800025cc:	01013403          	ld	s0,16(sp)
    800025d0:	00813483          	ld	s1,8(sp)
    800025d4:	02010113          	addi	sp,sp,32
    800025d8:	00008067          	ret
            putInList(thread, mediumHead, mediumTail);
    800025dc:	0000a617          	auipc	a2,0xa
    800025e0:	91c60613          	addi	a2,a2,-1764 # 8000bef8 <_ZN9Scheduler10mediumTailE>
    800025e4:	0000a597          	auipc	a1,0xa
    800025e8:	91c58593          	addi	a1,a1,-1764 # 8000bf00 <_ZN9Scheduler10mediumHeadE>
    800025ec:	00048513          	mv	a0,s1
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	ed0080e7          	jalr	-304(ra) # 800024c0 <_ZN9Scheduler9putInListEP7_threadRS1_S2_>
            break;
    800025f8:	fd1ff06f          	j	800025c8 <_ZN9Scheduler3putEP7_thread+0x8c>
            putInList(thread, lowHead, lowTail);
    800025fc:	0000a617          	auipc	a2,0xa
    80002600:	90c60613          	addi	a2,a2,-1780 # 8000bf08 <_ZN9Scheduler7lowTailE>
    80002604:	0000a597          	auipc	a1,0xa
    80002608:	90c58593          	addi	a1,a1,-1780 # 8000bf10 <_ZN9Scheduler7lowHeadE>
    8000260c:	00048513          	mv	a0,s1
    80002610:	00000097          	auipc	ra,0x0
    80002614:	eb0080e7          	jalr	-336(ra) # 800024c0 <_ZN9Scheduler9putInListEP7_threadRS1_S2_>
            break;
    80002618:	fb1ff06f          	j	800025c8 <_ZN9Scheduler3putEP7_thread+0x8c>
    8000261c:	00008067          	ret

0000000080002620 <_ZN9Scheduler3getEv>:

_thread* Scheduler::get() {
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00113423          	sd	ra,8(sp)
    80002628:	00813023          	sd	s0,0(sp)
    8000262c:	01010413          	addi	s0,sp,16
    _thread* thread = getFromList(highHead, highTail);
    80002630:	0000a597          	auipc	a1,0xa
    80002634:	8b858593          	addi	a1,a1,-1864 # 8000bee8 <_ZN9Scheduler8highTailE>
    80002638:	0000a517          	auipc	a0,0xa
    8000263c:	8b850513          	addi	a0,a0,-1864 # 8000bef0 <_ZN9Scheduler8highHeadE>
    80002640:	00000097          	auipc	ra,0x0
    80002644:	ec0080e7          	jalr	-320(ra) # 80002500 <_ZN9Scheduler11getFromListERP7_threadS2_>
    if (thread != nullptr) {
    80002648:	00050a63          	beqz	a0,8000265c <_ZN9Scheduler3getEv+0x3c>
    if (thread != nullptr) {
        return thread;
    }

    return getFromList(lowHead, lowTail);
}
    8000264c:	00813083          	ld	ra,8(sp)
    80002650:	00013403          	ld	s0,0(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret
    thread = getFromList(mediumHead, mediumTail);
    8000265c:	0000a597          	auipc	a1,0xa
    80002660:	89c58593          	addi	a1,a1,-1892 # 8000bef8 <_ZN9Scheduler10mediumTailE>
    80002664:	0000a517          	auipc	a0,0xa
    80002668:	89c50513          	addi	a0,a0,-1892 # 8000bf00 <_ZN9Scheduler10mediumHeadE>
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	e94080e7          	jalr	-364(ra) # 80002500 <_ZN9Scheduler11getFromListERP7_threadS2_>
    if (thread != nullptr) {
    80002674:	fc051ce3          	bnez	a0,8000264c <_ZN9Scheduler3getEv+0x2c>
    return getFromList(lowHead, lowTail);
    80002678:	0000a597          	auipc	a1,0xa
    8000267c:	89058593          	addi	a1,a1,-1904 # 8000bf08 <_ZN9Scheduler7lowTailE>
    80002680:	0000a517          	auipc	a0,0xa
    80002684:	89050513          	addi	a0,a0,-1904 # 8000bf10 <_ZN9Scheduler7lowHeadE>
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	e78080e7          	jalr	-392(ra) # 80002500 <_ZN9Scheduler11getFromListERP7_threadS2_>
    80002690:	fbdff06f          	j	8000264c <_ZN9Scheduler3getEv+0x2c>

0000000080002694 <_Znwm>:
#include "../h/new.hpp"
#include "../h/syscall_c.hpp"

void* operator new(size_t size) {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	b58080e7          	jalr	-1192(ra) # 800011fc <_Z9mem_allocm>
}
    800026ac:	00813083          	ld	ra,8(sp)
    800026b0:	00013403          	ld	s0,0(sp)
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00008067          	ret

00000000800026bc <_Znam>:

void* operator new[](size_t size) {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	00813023          	sd	s0,0(sp)
    800026c8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	b30080e7          	jalr	-1232(ra) # 800011fc <_Z9mem_allocm>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZdlPv>:

void operator delete(void* ptr) {
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00113423          	sd	ra,8(sp)
    800026ec:	00813023          	sd	s0,0(sp)
    800026f0:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    800026f4:	fffff097          	auipc	ra,0xfffff
    800026f8:	b58080e7          	jalr	-1192(ra) # 8000124c <_Z8mem_freePv>
}
    800026fc:	00813083          	ld	ra,8(sp)
    80002700:	00013403          	ld	s0,0(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZdaPv>:

void operator delete[](void* ptr) {
    8000270c:	ff010113          	addi	sp,sp,-16
    80002710:	00113423          	sd	ra,8(sp)
    80002714:	00813023          	sd	s0,0(sp)
    80002718:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    8000271c:	fffff097          	auipc	ra,0xfffff
    80002720:	b30080e7          	jalr	-1232(ra) # 8000124c <_Z8mem_freePv>
    80002724:	00813083          	ld	ra,8(sp)
    80002728:	00013403          	ld	s0,0(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret

0000000080002734 <_ZL15userMainWrapperPv>:
extern "C" void supervisorTrap();
extern void userMain();

static volatile bool userMainFinished = false;

static void userMainWrapper(void*) {
    80002734:	ff010113          	addi	sp,sp,-16
    80002738:	00113423          	sd	ra,8(sp)
    8000273c:	00813023          	sd	s0,0(sp)
    80002740:	01010413          	addi	s0,sp,16
    userMain();
    80002744:	00000097          	auipc	ra,0x0
    80002748:	c18080e7          	jalr	-1000(ra) # 8000235c <_Z8userMainv>
    userMainFinished = true;
    8000274c:	00100793          	li	a5,1
    80002750:	00009717          	auipc	a4,0x9
    80002754:	7cf70423          	sb	a5,1992(a4) # 8000bf18 <_ZL16userMainFinished>
    thread_exit();
    80002758:	fffff097          	auipc	ra,0xfffff
    8000275c:	c88080e7          	jalr	-888(ra) # 800013e0 <_Z11thread_exitv>
}
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00013403          	ld	s0,0(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret

0000000080002770 <main>:

int main() {
    80002770:	f3010113          	addi	sp,sp,-208
    80002774:	0c113423          	sd	ra,200(sp)
    80002778:	0c813023          	sd	s0,192(sp)
    8000277c:	0a913c23          	sd	s1,184(sp)
    80002780:	0d010413          	addi	s0,sp,208
    Riscv::w_stvec((uint64)&supervisorTrap);
    80002784:	00009797          	auipc	a5,0x9
    80002788:	6fc7b783          	ld	a5,1788(a5) # 8000be80 <_GLOBAL_OFFSET_TABLE_+0x18>
        asm volatile("csrw stvec, %0" : : "r"(x));//adresa prekidne rutine, da bi skocilo na supervisorTrap
    8000278c:	10579073          	csrw	stvec,a5
        asm volatile("csrs sstatus, %0" : : "r"(mask));//omoguci prekide
    80002790:	00200793          	li	a5,2
    80002794:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    _thread mainThread(nullptr, nullptr, nullptr);//poziv konstruktora
    80002798:	00200713          	li	a4,2
    8000279c:	00000693          	li	a3,0
    800027a0:	00000613          	li	a2,0
    800027a4:	00000593          	li	a1,0
    800027a8:	f4040493          	addi	s1,s0,-192
    800027ac:	00048513          	mv	a0,s1
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	820080e7          	jalr	-2016(ra) # 80001fd0 <_ZN7_threadC1EPFvPvES0_S0_14ThreadPriority>
    mainThread.setState(_thread::RUNNING);
    800027b8:	00200593          	li	a1,2
    800027bc:	00048513          	mv	a0,s1
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	b64080e7          	jalr	-1180(ra) # 80002324 <_ZN7_thread8setStateENS_5StateE>
    _thread::running = &mainThread;//pravimo main nit zbog dispatch-a, jer nemamo running na pocetku, i scheduler radi samo sa _thread
    800027c8:	00009797          	auipc	a5,0x9
    800027cc:	6b07b783          	ld	a5,1712(a5) # 8000be78 <_GLOBAL_OFFSET_TABLE_+0x10>
    800027d0:	0097b023          	sd	s1,0(a5)

    thread_t userThread = nullptr;
    800027d4:	f2043c23          	sd	zero,-200(s0)
    int ret = thread_create(&userThread, userMainWrapper, nullptr);
    800027d8:	00000613          	li	a2,0
    800027dc:	00000597          	auipc	a1,0x0
    800027e0:	f5858593          	addi	a1,a1,-168 # 80002734 <_ZL15userMainWrapperPv>
    800027e4:	f3840513          	addi	a0,s0,-200
    800027e8:	fffff097          	auipc	ra,0xfffff
    800027ec:	aa8080e7          	jalr	-1368(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>

    if (ret < 0 || userThread == nullptr) {
    800027f0:	00054663          	bltz	a0,800027fc <main+0x8c>
    800027f4:	f3843783          	ld	a5,-200(s0)
    800027f8:	02079063          	bnez	a5,80002818 <main+0xa8>
        volatile uint32* qemu = (uint32*)0x100000;
        *qemu = 0x5555;
    800027fc:	00100737          	lui	a4,0x100
    80002800:	000057b7          	lui	a5,0x5
    80002804:	5557879b          	addiw	a5,a5,1365
    80002808:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
        return ret;
    8000280c:	02c0006f          	j	80002838 <main+0xc8>
    }

    while (!userMainFinished) {
        thread_dispatch();
    80002810:	fffff097          	auipc	ra,0xfffff
    80002814:	c14080e7          	jalr	-1004(ra) # 80001424 <_Z15thread_dispatchv>
    while (!userMainFinished) {
    80002818:	00009797          	auipc	a5,0x9
    8000281c:	7007c783          	lbu	a5,1792(a5) # 8000bf18 <_ZL16userMainFinished>
    80002820:	fe0788e3          	beqz	a5,80002810 <main+0xa0>
    }

    volatile uint32* qemu = (uint32*)0x100000;
    *qemu = 0x5555;
    80002824:	00100737          	lui	a4,0x100
    80002828:	000057b7          	lui	a5,0x5
    8000282c:	5557879b          	addiw	a5,a5,1365
    80002830:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>

    return 0;
    80002834:	00000513          	li	a0,0
    80002838:	0c813083          	ld	ra,200(sp)
    8000283c:	0c013403          	ld	s0,192(sp)
    80002840:	0b813483          	ld	s1,184(sp)
    80002844:	0d010113          	addi	sp,sp,208
    80002848:	00008067          	ret

000000008000284c <_ZN6ThreadD1Ev>:
    this->body = nullptr;
    this->arg = this;
    this->myHandle = nullptr;
    this->priority = priority;
}
Thread::~Thread() {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00813423          	sd	s0,8(sp)
    80002854:	01010413          	addi	s0,sp,16
}
    80002858:	00813403          	ld	s0,8(sp)
    8000285c:	01010113          	addi	sp,sp,16
    80002860:	00008067          	ret

0000000080002864 <_ZN6Thread13threadWrapperEPv>:
}

void Thread::threadWrapper(void* thread) {
    Thread* t = (Thread*)thread;

    if (t != nullptr) {
    80002864:	02050863          	beqz	a0,80002894 <_ZN6Thread13threadWrapperEPv+0x30>
void Thread::threadWrapper(void* thread) {
    80002868:	ff010113          	addi	sp,sp,-16
    8000286c:	00113423          	sd	ra,8(sp)
    80002870:	00813023          	sd	s0,0(sp)
    80002874:	01010413          	addi	s0,sp,16
        t->run();
    80002878:	00053783          	ld	a5,0(a0)
    8000287c:	0107b783          	ld	a5,16(a5) # 5010 <_entry-0x7fffaff0>
    80002880:	000780e7          	jalr	a5
    }
}
    80002884:	00813083          	ld	ra,8(sp)
    80002888:	00013403          	ld	s0,0(sp)
    8000288c:	01010113          	addi	sp,sp,16
    80002890:	00008067          	ret
    80002894:	00008067          	ret

0000000080002898 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002898:	ff010113          	addi	sp,sp,-16
    8000289c:	00113423          	sd	ra,8(sp)
    800028a0:	00813023          	sd	s0,0(sp)
    800028a4:	01010413          	addi	s0,sp,16
}
    800028a8:	00000097          	auipc	ra,0x0
    800028ac:	e3c080e7          	jalr	-452(ra) # 800026e4 <_ZdlPv>
    800028b0:	00813083          	ld	ra,8(sp)
    800028b4:	00013403          	ld	s0,0(sp)
    800028b8:	01010113          	addi	sp,sp,16
    800028bc:	00008067          	ret

00000000800028c0 <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned init) {
    myHandle = nullptr;
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800028c0:	00009797          	auipc	a5,0x9
    800028c4:	34878793          	addi	a5,a5,840 # 8000bc08 <_ZTV9Semaphore+0x10>
    800028c8:	00f53023          	sd	a5,0(a0)
    if (myHandle != nullptr) {
    800028cc:	00853503          	ld	a0,8(a0)
    800028d0:	02050663          	beqz	a0,800028fc <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800028d4:	ff010113          	addi	sp,sp,-16
    800028d8:	00113423          	sd	ra,8(sp)
    800028dc:	00813023          	sd	s0,0(sp)
    800028e0:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    800028e4:	fffff097          	auipc	ra,0xfffff
    800028e8:	bc8080e7          	jalr	-1080(ra) # 800014ac <_Z9sem_closeP4_sem>
    }
}
    800028ec:	00813083          	ld	ra,8(sp)
    800028f0:	00013403          	ld	s0,0(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret
    800028fc:	00008067          	ret

0000000080002900 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002900:	fe010113          	addi	sp,sp,-32
    80002904:	00113c23          	sd	ra,24(sp)
    80002908:	00813823          	sd	s0,16(sp)
    8000290c:	00913423          	sd	s1,8(sp)
    80002910:	02010413          	addi	s0,sp,32
    80002914:	00050493          	mv	s1,a0
}
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	fa8080e7          	jalr	-88(ra) # 800028c0 <_ZN9SemaphoreD1Ev>
    80002920:	00048513          	mv	a0,s1
    80002924:	00000097          	auipc	ra,0x0
    80002928:	dc0080e7          	jalr	-576(ra) # 800026e4 <_ZdlPv>
    8000292c:	01813083          	ld	ra,24(sp)
    80002930:	01013403          	ld	s0,16(sp)
    80002934:	00813483          	ld	s1,8(sp)
    80002938:	02010113          	addi	sp,sp,32
    8000293c:	00008067          	ret

0000000080002940 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002940:	ff010113          	addi	sp,sp,-16
    80002944:	00813423          	sd	s0,8(sp)
    80002948:	01010413          	addi	s0,sp,16
    8000294c:	00009797          	auipc	a5,0x9
    80002950:	29478793          	addi	a5,a5,660 # 8000bbe0 <_ZTV6Thread+0x10>
    80002954:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    80002958:	00053423          	sd	zero,8(a0)
    this->body = body;
    8000295c:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002960:	00c53c23          	sd	a2,24(a0)
    this->priority = LOW;
    80002964:	00200793          	li	a5,2
    80002968:	02f52023          	sw	a5,32(a0)
}
    8000296c:	00813403          	ld	s0,8(sp)
    80002970:	01010113          	addi	sp,sp,16
    80002974:	00008067          	ret

0000000080002978 <_ZN6ThreadC1EPFvPvES0_14ThreadPriority>:
Thread::Thread(void (*body)(void*), void* arg, ThreadPriority priority) {
    80002978:	ff010113          	addi	sp,sp,-16
    8000297c:	00813423          	sd	s0,8(sp)
    80002980:	01010413          	addi	s0,sp,16
    80002984:	00009797          	auipc	a5,0x9
    80002988:	25c78793          	addi	a5,a5,604 # 8000bbe0 <_ZTV6Thread+0x10>
    8000298c:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80002990:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002994:	00c53c23          	sd	a2,24(a0)
    this->myHandle = nullptr;
    80002998:	00053423          	sd	zero,8(a0)
    this->priority = priority;
    8000299c:	02d52023          	sw	a3,32(a0)
}
    800029a0:	00813403          	ld	s0,8(sp)
    800029a4:	01010113          	addi	sp,sp,16
    800029a8:	00008067          	ret

00000000800029ac <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800029ac:	ff010113          	addi	sp,sp,-16
    800029b0:	00813423          	sd	s0,8(sp)
    800029b4:	01010413          	addi	s0,sp,16
    800029b8:	00009797          	auipc	a5,0x9
    800029bc:	22878793          	addi	a5,a5,552 # 8000bbe0 <_ZTV6Thread+0x10>
    800029c0:	00f53023          	sd	a5,0(a0)
    this->myHandle = nullptr;
    800029c4:	00053423          	sd	zero,8(a0)
    this->body = nullptr;
    800029c8:	00053823          	sd	zero,16(a0)
    this->arg = this;
    800029cc:	00a53c23          	sd	a0,24(a0)
    this->priority = LOW;
    800029d0:	00200793          	li	a5,2
    800029d4:	02f52023          	sw	a5,32(a0)
}
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	01010113          	addi	sp,sp,16
    800029e0:	00008067          	ret

00000000800029e4 <_ZN6ThreadC1E14ThreadPriority>:
Thread::Thread(ThreadPriority priority) {
    800029e4:	ff010113          	addi	sp,sp,-16
    800029e8:	00813423          	sd	s0,8(sp)
    800029ec:	01010413          	addi	s0,sp,16
    800029f0:	00009797          	auipc	a5,0x9
    800029f4:	1f078793          	addi	a5,a5,496 # 8000bbe0 <_ZTV6Thread+0x10>
    800029f8:	00f53023          	sd	a5,0(a0)
    this->body = nullptr;
    800029fc:	00053823          	sd	zero,16(a0)
    this->arg = this;
    80002a00:	00a53c23          	sd	a0,24(a0)
    this->myHandle = nullptr;
    80002a04:	00053423          	sd	zero,8(a0)
    this->priority = priority;
    80002a08:	02b52023          	sw	a1,32(a0)
}
    80002a0c:	00813403          	ld	s0,8(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN6Thread5startEv>:
int Thread::start() {
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00113423          	sd	ra,8(sp)
    80002a20:	00813023          	sd	s0,0(sp)
    80002a24:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80002a28:	01053583          	ld	a1,16(a0)
    80002a2c:	02058463          	beqz	a1,80002a54 <_ZN6Thread5startEv+0x3c>
        return thread_create_priority(&myHandle, body, arg, priority);
    80002a30:	02052683          	lw	a3,32(a0)
    80002a34:	01853603          	ld	a2,24(a0)
    80002a38:	00850513          	addi	a0,a0,8
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	8f4080e7          	jalr	-1804(ra) # 80001330 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority>
}
    80002a44:	00813083          	ld	ra,8(sp)
    80002a48:	00013403          	ld	s0,0(sp)
    80002a4c:	01010113          	addi	sp,sp,16
    80002a50:	00008067          	ret
    return thread_create_priority(&myHandle, Thread::threadWrapper, this, priority);//kada korisnik ocekuje da se izvrsi run(), pa se u thread wrapper poziva run
    80002a54:	02052683          	lw	a3,32(a0)
    80002a58:	00050613          	mv	a2,a0
    80002a5c:	00000597          	auipc	a1,0x0
    80002a60:	e0858593          	addi	a1,a1,-504 # 80002864 <_ZN6Thread13threadWrapperEPv>
    80002a64:	00850513          	addi	a0,a0,8
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	8c8080e7          	jalr	-1848(ra) # 80001330 <_Z22thread_create_priorityPP7_threadPFvPvES2_14ThreadPriority>
    80002a70:	fd5ff06f          	j	80002a44 <_ZN6Thread5startEv+0x2c>

0000000080002a74 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00113423          	sd	ra,8(sp)
    80002a7c:	00813023          	sd	s0,0(sp)
    80002a80:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	9a0080e7          	jalr	-1632(ra) # 80001424 <_Z15thread_dispatchv>
}
    80002a8c:	00813083          	ld	ra,8(sp)
    80002a90:	00013403          	ld	s0,0(sp)
    80002a94:	01010113          	addi	sp,sp,16
    80002a98:	00008067          	ret

0000000080002a9c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002a9c:	ff010113          	addi	sp,sp,-16
    80002aa0:	00113423          	sd	ra,8(sp)
    80002aa4:	00813023          	sd	s0,0(sp)
    80002aa8:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002aac:	fffff097          	auipc	ra,0xfffff
    80002ab0:	b5c080e7          	jalr	-1188(ra) # 80001608 <_Z10time_sleepm>
}
    80002ab4:	00813083          	ld	ra,8(sp)
    80002ab8:	00013403          	ld	s0,0(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80002ac4:	ff010113          	addi	sp,sp,-16
    80002ac8:	00113423          	sd	ra,8(sp)
    80002acc:	00813023          	sd	s0,0(sp)
    80002ad0:	01010413          	addi	s0,sp,16
    80002ad4:	00009797          	auipc	a5,0x9
    80002ad8:	13478793          	addi	a5,a5,308 # 8000bc08 <_ZTV9Semaphore+0x10>
    80002adc:	00f53023          	sd	a5,0(a0)
    myHandle = nullptr;
    80002ae0:	00053423          	sd	zero,8(a0)
    sem_open(&myHandle, init);
    80002ae4:	00850513          	addi	a0,a0,8
    80002ae8:	fffff097          	auipc	ra,0xfffff
    80002aec:	97c080e7          	jalr	-1668(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    80002af0:	00813083          	ld	ra,8(sp)
    80002af4:	00013403          	ld	s0,0(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret

0000000080002b00 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002b00:	ff010113          	addi	sp,sp,-16
    80002b04:	00113423          	sd	ra,8(sp)
    80002b08:	00813023          	sd	s0,0(sp)
    80002b0c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002b10:	00853503          	ld	a0,8(a0)
    80002b14:	fffff097          	auipc	ra,0xfffff
    80002b18:	9dc080e7          	jalr	-1572(ra) # 800014f0 <_Z8sem_waitP4_sem>
}
    80002b1c:	00813083          	ld	ra,8(sp)
    80002b20:	00013403          	ld	s0,0(sp)
    80002b24:	01010113          	addi	sp,sp,16
    80002b28:	00008067          	ret

0000000080002b2c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002b3c:	00853503          	ld	a0,8(a0)
    80002b40:	fffff097          	auipc	ra,0xfffff
    80002b44:	9f4080e7          	jalr	-1548(ra) # 80001534 <_Z10sem_signalP4_sem>
}
    80002b48:	00813083          	ld	ra,8(sp)
    80002b4c:	00013403          	ld	s0,0(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret

0000000080002b58 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) : Thread() {
    80002b58:	fe010113          	addi	sp,sp,-32
    80002b5c:	00113c23          	sd	ra,24(sp)
    80002b60:	00813823          	sd	s0,16(sp)
    80002b64:	00913423          	sd	s1,8(sp)
    80002b68:	01213023          	sd	s2,0(sp)
    80002b6c:	02010413          	addi	s0,sp,32
    80002b70:	00050493          	mv	s1,a0
    80002b74:	00058913          	mv	s2,a1
    80002b78:	00000097          	auipc	ra,0x0
    80002b7c:	e34080e7          	jalr	-460(ra) # 800029ac <_ZN6ThreadC1Ev>
    80002b80:	00009797          	auipc	a5,0x9
    80002b84:	03078793          	addi	a5,a5,48 # 8000bbb0 <_ZTV14PeriodicThread+0x10>
    80002b88:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002b8c:	0324b423          	sd	s2,40(s1)
}
    80002b90:	01813083          	ld	ra,24(sp)
    80002b94:	01013403          	ld	s0,16(sp)
    80002b98:	00813483          	ld	s1,8(sp)
    80002b9c:	00013903          	ld	s2,0(sp)
    80002ba0:	02010113          	addi	sp,sp,32
    80002ba4:	00008067          	ret

0000000080002ba8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    80002ba8:	ff010113          	addi	sp,sp,-16
    80002bac:	00813423          	sd	s0,8(sp)
    80002bb0:	01010413          	addi	s0,sp,16
    /*
     * PeriodicThread je deo zadatka 4.
     * Pošto ga ne radiš, ovo ostaje prazno.
     */
}
    80002bb4:	00813403          	ld	s0,8(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <_ZN7Console4getcEv>:

char Console::getc() {
    80002bc0:	ff010113          	addi	sp,sp,-16
    80002bc4:	00113423          	sd	ra,8(sp)
    80002bc8:	00813023          	sd	s0,0(sp)
    80002bcc:	01010413          	addi	s0,sp,16
    return ::getc();
    80002bd0:	fffff097          	auipc	ra,0xfffff
    80002bd4:	a7c080e7          	jalr	-1412(ra) # 8000164c <_Z4getcv>
}
    80002bd8:	00813083          	ld	ra,8(sp)
    80002bdc:	00013403          	ld	s0,0(sp)
    80002be0:	01010113          	addi	sp,sp,16
    80002be4:	00008067          	ret

0000000080002be8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00113423          	sd	ra,8(sp)
    80002bf0:	00813023          	sd	s0,0(sp)
    80002bf4:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002bf8:	fffff097          	auipc	ra,0xfffff
    80002bfc:	a98080e7          	jalr	-1384(ra) # 80001690 <_Z4putcc>
    80002c00:	00813083          	ld	ra,8(sp)
    80002c04:	00013403          	ld	s0,0(sp)
    80002c08:	01010113          	addi	sp,sp,16
    80002c0c:	00008067          	ret

0000000080002c10 <_ZN6Thread3runEv>:

protected:
    Thread();
    Thread(ThreadPriority priority);

    virtual void run() {}
    80002c10:	ff010113          	addi	sp,sp,-16
    80002c14:	00813423          	sd	s0,8(sp)
    80002c18:	01010413          	addi	s0,sp,16
    80002c1c:	00813403          	ld	s0,8(sp)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret

0000000080002c28 <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate();

protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00813423          	sd	s0,8(sp)
    80002c30:	01010413          	addi	s0,sp,16
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	01010113          	addi	sp,sp,16
    80002c3c:	00008067          	ret

0000000080002c40 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002c40:	ff010113          	addi	sp,sp,-16
    80002c44:	00813423          	sd	s0,8(sp)
    80002c48:	01010413          	addi	s0,sp,16
    80002c4c:	00009797          	auipc	a5,0x9
    80002c50:	f6478793          	addi	a5,a5,-156 # 8000bbb0 <_ZTV14PeriodicThread+0x10>
    80002c54:	00f53023          	sd	a5,0(a0)
    80002c58:	00813403          	ld	s0,8(sp)
    80002c5c:	01010113          	addi	sp,sp,16
    80002c60:	00008067          	ret

0000000080002c64 <_ZN14PeriodicThreadD0Ev>:
    80002c64:	ff010113          	addi	sp,sp,-16
    80002c68:	00113423          	sd	ra,8(sp)
    80002c6c:	00813023          	sd	s0,0(sp)
    80002c70:	01010413          	addi	s0,sp,16
    80002c74:	00009797          	auipc	a5,0x9
    80002c78:	f3c78793          	addi	a5,a5,-196 # 8000bbb0 <_ZTV14PeriodicThread+0x10>
    80002c7c:	00f53023          	sd	a5,0(a0)
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	a64080e7          	jalr	-1436(ra) # 800026e4 <_ZdlPv>
    80002c88:	00813083          	ld	ra,8(sp)
    80002c8c:	00013403          	ld	s0,0(sp)
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	00008067          	ret

0000000080002c98 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemoryAllocator() : freeHead(nullptr), initialized(false) {}
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00813423          	sd	s0,8(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    80002ca4:	00053023          	sd	zero,0(a0)
    80002ca8:	00050423          	sb	zero,8(a0)
    80002cac:	00813403          	ld	s0,8(sp)
    80002cb0:	01010113          	addi	sp,sp,16
    80002cb4:	00008067          	ret

0000000080002cb8 <_Z41__static_initialization_and_destruction_0ii>:
            block->next->prev = block;
        }
        nextBlock->next = nullptr;
        nextBlock->prev = nullptr;
    }
    80002cb8:	00100793          	li	a5,1
    80002cbc:	00f50463          	beq	a0,a5,80002cc4 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002cc0:	00008067          	ret
    80002cc4:	000107b7          	lui	a5,0x10
    80002cc8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002ccc:	fef59ae3          	bne	a1,a5,80002cc0 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00113423          	sd	ra,8(sp)
    80002cd8:	00813023          	sd	s0,0(sp)
    80002cdc:	01010413          	addi	s0,sp,16
MemoryAllocator MemoryAllocator::instance;
    80002ce0:	00009517          	auipc	a0,0x9
    80002ce4:	24050513          	addi	a0,a0,576 # 8000bf20 <_ZN15MemoryAllocator8instanceE>
    80002ce8:	00000097          	auipc	ra,0x0
    80002cec:	fb0080e7          	jalr	-80(ra) # 80002c98 <_ZN15MemoryAllocatorC1Ev>
    80002cf0:	00813083          	ld	ra,8(sp)
    80002cf4:	00013403          	ld	s0,0(sp)
    80002cf8:	01010113          	addi	sp,sp,16
    80002cfc:	00008067          	ret

0000000080002d00 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator& MemoryAllocator::getInstance() {
    80002d00:	ff010113          	addi	sp,sp,-16
    80002d04:	00813423          	sd	s0,8(sp)
    80002d08:	01010413          	addi	s0,sp,16
}
    80002d0c:	00009517          	auipc	a0,0x9
    80002d10:	21450513          	addi	a0,a0,532 # 8000bf20 <_ZN15MemoryAllocator8instanceE>
    80002d14:	00813403          	ld	s0,8(sp)
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00008067          	ret

0000000080002d20 <_ZN15MemoryAllocator4initEv>:
void MemoryAllocator::init() {
    80002d20:	ff010113          	addi	sp,sp,-16
    80002d24:	00813423          	sd	s0,8(sp)
    80002d28:	01010413          	addi	s0,sp,16
    if (initialized) return;
    80002d2c:	00854783          	lbu	a5,8(a0)
    80002d30:	04079263          	bnez	a5,80002d74 <_ZN15MemoryAllocator4initEv+0x54>
    uint64 heapStart = (uint64) HEAP_START_ADDR;
    80002d34:	00009797          	auipc	a5,0x9
    80002d38:	13c7b783          	ld	a5,316(a5) # 8000be70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002d3c:	0007b703          	ld	a4,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002d40:	00009797          	auipc	a5,0x9
    80002d44:	1507b783          	ld	a5,336(a5) # 8000be90 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002d48:	0007b783          	ld	a5,0(a5)
    size_t heapSize = (heapEnd - heapStart) / MEM_BLOCK_SIZE;
    80002d4c:	40e787b3          	sub	a5,a5,a4
    80002d50:	0067d793          	srli	a5,a5,0x6
    freeHead = (FreeBlock*) heapStart;
    80002d54:	00e53023          	sd	a4,0(a0)
    freeHead->size = heapSize;
    80002d58:	00f73023          	sd	a5,0(a4)
    freeHead->next = nullptr;
    80002d5c:	00053783          	ld	a5,0(a0)
    80002d60:	0007b423          	sd	zero,8(a5)
    freeHead->prev = nullptr;
    80002d64:	00053783          	ld	a5,0(a0)
    80002d68:	0007b823          	sd	zero,16(a5)
    initialized = true;
    80002d6c:	00100793          	li	a5,1
    80002d70:	00f50423          	sb	a5,8(a0)
}
    80002d74:	00813403          	ld	s0,8(sp)
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00008067          	ret

0000000080002d80 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t numBlocks) {
    80002d80:	fe010113          	addi	sp,sp,-32
    80002d84:	00113c23          	sd	ra,24(sp)
    80002d88:	00813823          	sd	s0,16(sp)
    80002d8c:	00913423          	sd	s1,8(sp)
    80002d90:	01213023          	sd	s2,0(sp)
    80002d94:	02010413          	addi	s0,sp,32
    80002d98:	00050913          	mv	s2,a0
    80002d9c:	00058493          	mv	s1,a1
    init();
    80002da0:	00000097          	auipc	ra,0x0
    80002da4:	f80080e7          	jalr	-128(ra) # 80002d20 <_ZN15MemoryAllocator4initEv>
    if (numBlocks == 0) return nullptr;
    80002da8:	0c048863          	beqz	s1,80002e78 <_ZN15MemoryAllocator6mallocEm+0xf8>
    size_t neededBlocks = numBlocks + 1;
    80002dac:	00148593          	addi	a1,s1,1
    FreeBlock* current = freeHead;
    80002db0:	00093503          	ld	a0,0(s2)
    while(current != nullptr && current->size < neededBlocks){
    80002db4:	00050a63          	beqz	a0,80002dc8 <_ZN15MemoryAllocator6mallocEm+0x48>
    80002db8:	00053783          	ld	a5,0(a0)
    80002dbc:	00b7f663          	bgeu	a5,a1,80002dc8 <_ZN15MemoryAllocator6mallocEm+0x48>
        current = current->next;
    80002dc0:	00853503          	ld	a0,8(a0)
    while(current != nullptr && current->size < neededBlocks){
    80002dc4:	ff1ff06f          	j	80002db4 <_ZN15MemoryAllocator6mallocEm+0x34>
    if (current == nullptr){
    80002dc8:	04050063          	beqz	a0,80002e08 <_ZN15MemoryAllocator6mallocEm+0x88>
    size_t remainingBlocks = current->size - neededBlocks;
    80002dcc:	00053783          	ld	a5,0(a0)
    80002dd0:	40b787b3          	sub	a5,a5,a1
    if (remainingBlocks >= 2){
    80002dd4:	00100713          	li	a4,1
    80002dd8:	04f76463          	bltu	a4,a5,80002e20 <_ZN15MemoryAllocator6mallocEm+0xa0>
    if (current->prev != nullptr){
    80002ddc:	01053783          	ld	a5,16(a0)
    80002de0:	08078663          	beqz	a5,80002e6c <_ZN15MemoryAllocator6mallocEm+0xec>
        current->prev->next = current->next;
    80002de4:	00853703          	ld	a4,8(a0)
    80002de8:	00e7b423          	sd	a4,8(a5)
    if (current->next != nullptr){
    80002dec:	00853783          	ld	a5,8(a0)
    80002df0:	00078663          	beqz	a5,80002dfc <_ZN15MemoryAllocator6mallocEm+0x7c>
        current->next->prev = current->prev;
    80002df4:	01053703          	ld	a4,16(a0)
    80002df8:	00e7b823          	sd	a4,16(a5)
    current->next = nullptr;
    80002dfc:	00053423          	sd	zero,8(a0)
    current->prev = nullptr;
    80002e00:	00053823          	sd	zero,16(a0)
    return (void*) ((char*) current +MEM_BLOCK_SIZE);
    80002e04:	04050513          	addi	a0,a0,64
}
    80002e08:	01813083          	ld	ra,24(sp)
    80002e0c:	01013403          	ld	s0,16(sp)
    80002e10:	00813483          	ld	s1,8(sp)
    80002e14:	00013903          	ld	s2,0(sp)
    80002e18:	02010113          	addi	sp,sp,32
    80002e1c:	00008067          	ret
        FreeBlock* newFree = (FreeBlock*) ((char*) current + neededBlocks * MEM_BLOCK_SIZE);
    80002e20:	00659713          	slli	a4,a1,0x6
    80002e24:	00e50733          	add	a4,a0,a4
        newFree->size = remainingBlocks;
    80002e28:	00f73023          	sd	a5,0(a4)
        newFree->next = current->next;
    80002e2c:	00853783          	ld	a5,8(a0)
    80002e30:	00f73423          	sd	a5,8(a4)
        newFree->prev = current->prev;
    80002e34:	01053783          	ld	a5,16(a0)
    80002e38:	00f73823          	sd	a5,16(a4)
        if (current->prev != nullptr){
    80002e3c:	02078463          	beqz	a5,80002e64 <_ZN15MemoryAllocator6mallocEm+0xe4>
            current->prev->next = newFree;
    80002e40:	00e7b423          	sd	a4,8(a5)
        if (current->next != nullptr){
    80002e44:	00853783          	ld	a5,8(a0)
    80002e48:	00078463          	beqz	a5,80002e50 <_ZN15MemoryAllocator6mallocEm+0xd0>
            current->next->prev = newFree;
    80002e4c:	00e7b823          	sd	a4,16(a5)
        current->size = neededBlocks;
    80002e50:	00b53023          	sd	a1,0(a0)
        current->next = nullptr;
    80002e54:	00053423          	sd	zero,8(a0)
        current->prev = nullptr;
    80002e58:	00053823          	sd	zero,16(a0)
        return (void*) ((char*) current + MEM_BLOCK_SIZE);
    80002e5c:	04050513          	addi	a0,a0,64
    80002e60:	fa9ff06f          	j	80002e08 <_ZN15MemoryAllocator6mallocEm+0x88>
            freeHead = newFree;
    80002e64:	00e93023          	sd	a4,0(s2)
    80002e68:	fddff06f          	j	80002e44 <_ZN15MemoryAllocator6mallocEm+0xc4>
        freeHead = current->next;
    80002e6c:	00853783          	ld	a5,8(a0)
    80002e70:	00f93023          	sd	a5,0(s2)
    80002e74:	f79ff06f          	j	80002dec <_ZN15MemoryAllocator6mallocEm+0x6c>
    if (numBlocks == 0) return nullptr;
    80002e78:	00000513          	li	a0,0
    80002e7c:	f8dff06f          	j	80002e08 <_ZN15MemoryAllocator6mallocEm+0x88>

0000000080002e80 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:
void MemoryAllocator::tryToJoin(FreeBlock *block) {
    80002e80:	ff010113          	addi	sp,sp,-16
    80002e84:	00813423          	sd	s0,8(sp)
    80002e88:	01010413          	addi	s0,sp,16
    if (block == nullptr || block->next == nullptr) return;
    80002e8c:	00058e63          	beqz	a1,80002ea8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    80002e90:	0085b783          	ld	a5,8(a1)
    80002e94:	00078a63          	beqz	a5,80002ea8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    char* endOfBlock = (char*) block + block->size * MEM_BLOCK_SIZE;
    80002e98:	0005b683          	ld	a3,0(a1)
    80002e9c:	00669713          	slli	a4,a3,0x6
    80002ea0:	00e58733          	add	a4,a1,a4
    if (endOfBlock == (char*) block->next){
    80002ea4:	00e78863          	beq	a5,a4,80002eb4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
    80002ea8:	00813403          	ld	s0,8(sp)
    80002eac:	01010113          	addi	sp,sp,16
    80002eb0:	00008067          	ret
        block->size += nextBlock->size;
    80002eb4:	0007b703          	ld	a4,0(a5)
    80002eb8:	00e686b3          	add	a3,a3,a4
    80002ebc:	00d5b023          	sd	a3,0(a1)
        block->next = nextBlock->next;
    80002ec0:	0087b703          	ld	a4,8(a5)
    80002ec4:	00e5b423          	sd	a4,8(a1)
        if (block->next != nullptr){
    80002ec8:	00070463          	beqz	a4,80002ed0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x50>
            block->next->prev = block;
    80002ecc:	00b73823          	sd	a1,16(a4)
        nextBlock->next = nullptr;
    80002ed0:	0007b423          	sd	zero,8(a5)
        nextBlock->prev = nullptr;
    80002ed4:	0007b823          	sd	zero,16(a5)
    80002ed8:	fd1ff06f          	j	80002ea8 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

0000000080002edc <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* ptr){
    80002edc:	fd010113          	addi	sp,sp,-48
    80002ee0:	02113423          	sd	ra,40(sp)
    80002ee4:	02813023          	sd	s0,32(sp)
    80002ee8:	00913c23          	sd	s1,24(sp)
    80002eec:	01213823          	sd	s2,16(sp)
    80002ef0:	01313423          	sd	s3,8(sp)
    80002ef4:	03010413          	addi	s0,sp,48
    80002ef8:	00050993          	mv	s3,a0
    80002efc:	00058913          	mv	s2,a1
    init();
    80002f00:	00000097          	auipc	ra,0x0
    80002f04:	e20080e7          	jalr	-480(ra) # 80002d20 <_ZN15MemoryAllocator4initEv>
    if (ptr == nullptr) return -1;
    80002f08:	0e090863          	beqz	s2,80002ff8 <_ZN15MemoryAllocator4freeEPv+0x11c>
    uint64 heapStart = (uint64)HEAP_START_ADDR;
    80002f0c:	00009797          	auipc	a5,0x9
    80002f10:	f647b783          	ld	a5,-156(a5) # 8000be70 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002f14:	0007b683          	ld	a3,0(a5)
    uint64 heapEnd = (uint64) HEAP_END_ADDR;
    80002f18:	00009797          	auipc	a5,0x9
    80002f1c:	f787b783          	ld	a5,-136(a5) # 8000be90 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002f20:	0007b603          	ld	a2,0(a5)
    if (ptrAddr < heapStart + MEM_BLOCK_SIZE || ptrAddr >= heapEnd){
    80002f24:	04068793          	addi	a5,a3,64
    80002f28:	0cf96c63          	bltu	s2,a5,80003000 <_ZN15MemoryAllocator4freeEPv+0x124>
    80002f2c:	0cc97e63          	bgeu	s2,a2,80003008 <_ZN15MemoryAllocator4freeEPv+0x12c>
    if ((ptrAddr - heapStart) % MEM_BLOCK_SIZE != 0){
    80002f30:	40d907b3          	sub	a5,s2,a3
    80002f34:	03f7f793          	andi	a5,a5,63
    80002f38:	0c079c63          	bnez	a5,80003010 <_ZN15MemoryAllocator4freeEPv+0x134>
    FreeBlock* block = (FreeBlock*) ((char*) ptr - MEM_BLOCK_SIZE);
    80002f3c:	fc090593          	addi	a1,s2,-64
    if (block->size < 2){
    80002f40:	fc093783          	ld	a5,-64(s2)
    80002f44:	00100713          	li	a4,1
    80002f48:	0cf77863          	bgeu	a4,a5,80003018 <_ZN15MemoryAllocator4freeEPv+0x13c>
    if ((uint64) block < heapStart){
    80002f4c:	00058713          	mv	a4,a1
    80002f50:	0cd5e863          	bltu	a1,a3,80003020 <_ZN15MemoryAllocator4freeEPv+0x144>
    if ((uint64) block + block->size * MEM_BLOCK_SIZE > heapEnd){
    80002f54:	00679793          	slli	a5,a5,0x6
    80002f58:	00f586b3          	add	a3,a1,a5
    80002f5c:	0cd66663          	bltu	a2,a3,80003028 <_ZN15MemoryAllocator4freeEPv+0x14c>
    FreeBlock* current = freeHead;
    80002f60:	0009b783          	ld	a5,0(s3)
    FreeBlock* prev = nullptr;
    80002f64:	00000493          	li	s1,0
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f68:	00078a63          	beqz	a5,80002f7c <_ZN15MemoryAllocator4freeEPv+0xa0>
    80002f6c:	00e7f863          	bgeu	a5,a4,80002f7c <_ZN15MemoryAllocator4freeEPv+0xa0>
        prev = current;
    80002f70:	00078493          	mv	s1,a5
        current = current->next;
    80002f74:	0087b783          	ld	a5,8(a5)
    while (current != nullptr && (uint64) current < (uint64) block){
    80002f78:	ff1ff06f          	j	80002f68 <_ZN15MemoryAllocator4freeEPv+0x8c>
    if (prev != nullptr &&
    80002f7c:	00048a63          	beqz	s1,80002f90 <_ZN15MemoryAllocator4freeEPv+0xb4>
        (uint64) prev + prev->size * MEM_BLOCK_SIZE > (uint64) block) {
    80002f80:	0004b603          	ld	a2,0(s1)
    80002f84:	00661613          	slli	a2,a2,0x6
    80002f88:	00c48633          	add	a2,s1,a2
    if (prev != nullptr &&
    80002f8c:	0ac76263          	bltu	a4,a2,80003030 <_ZN15MemoryAllocator4freeEPv+0x154>
    if (current!= nullptr && (uint64)block + block->size * MEM_BLOCK_SIZE > (uint64) current){
    80002f90:	00078463          	beqz	a5,80002f98 <_ZN15MemoryAllocator4freeEPv+0xbc>
    80002f94:	0ad7e263          	bltu	a5,a3,80003038 <_ZN15MemoryAllocator4freeEPv+0x15c>
    block->prev = prev;
    80002f98:	fc993823          	sd	s1,-48(s2)
    block->next = current;
    80002f9c:	fcf93423          	sd	a5,-56(s2)
    if (prev != nullptr){
    80002fa0:	04048863          	beqz	s1,80002ff0 <_ZN15MemoryAllocator4freeEPv+0x114>
        prev->next = block;
    80002fa4:	00b4b423          	sd	a1,8(s1)
    if (current != nullptr){
    80002fa8:	00078463          	beqz	a5,80002fb0 <_ZN15MemoryAllocator4freeEPv+0xd4>
        current->prev = block;
    80002fac:	00b7b823          	sd	a1,16(a5)
    tryToJoin(block);
    80002fb0:	00098513          	mv	a0,s3
    80002fb4:	00000097          	auipc	ra,0x0
    80002fb8:	ecc080e7          	jalr	-308(ra) # 80002e80 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    if (prev != nullptr){
    80002fbc:	08048263          	beqz	s1,80003040 <_ZN15MemoryAllocator4freeEPv+0x164>
        tryToJoin(prev);
    80002fc0:	00048593          	mv	a1,s1
    80002fc4:	00098513          	mv	a0,s3
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	eb8080e7          	jalr	-328(ra) # 80002e80 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
    return 0;
    80002fd0:	00000513          	li	a0,0
}
    80002fd4:	02813083          	ld	ra,40(sp)
    80002fd8:	02013403          	ld	s0,32(sp)
    80002fdc:	01813483          	ld	s1,24(sp)
    80002fe0:	01013903          	ld	s2,16(sp)
    80002fe4:	00813983          	ld	s3,8(sp)
    80002fe8:	03010113          	addi	sp,sp,48
    80002fec:	00008067          	ret
        freeHead = block;
    80002ff0:	00b9b023          	sd	a1,0(s3)
    80002ff4:	fb5ff06f          	j	80002fa8 <_ZN15MemoryAllocator4freeEPv+0xcc>
    if (ptr == nullptr) return -1;
    80002ff8:	fff00513          	li	a0,-1
    80002ffc:	fd9ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003000:	fff00513          	li	a0,-1
    80003004:	fd1ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
    80003008:	fff00513          	li	a0,-1
    8000300c:	fc9ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003010:	fff00513          	li	a0,-1
    80003014:	fc1ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003018:	fff00513          	li	a0,-1
    8000301c:	fb9ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003020:	fff00513          	li	a0,-1
    80003024:	fb1ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003028:	fff00513          	li	a0,-1
    8000302c:	fa9ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003030:	fff00513          	li	a0,-1
    80003034:	fa1ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
        return -1;
    80003038:	fff00513          	li	a0,-1
    8000303c:	f99ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>
    return 0;
    80003040:	00000513          	li	a0,0
    80003044:	f91ff06f          	j	80002fd4 <_ZN15MemoryAllocator4freeEPv+0xf8>

0000000080003048 <_GLOBAL__sub_I__ZN15MemoryAllocatorC2Ev>:
    80003048:	ff010113          	addi	sp,sp,-16
    8000304c:	00113423          	sd	ra,8(sp)
    80003050:	00813023          	sd	s0,0(sp)
    80003054:	01010413          	addi	s0,sp,16
    80003058:	000105b7          	lui	a1,0x10
    8000305c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003060:	00100513          	li	a0,1
    80003064:	00000097          	auipc	ra,0x0
    80003068:	c54080e7          	jalr	-940(ra) # 80002cb8 <_Z41__static_initialization_and_destruction_0ii>
    8000306c:	00813083          	ld	ra,8(sp)
    80003070:	00013403          	ld	s0,0(sp)
    80003074:	01010113          	addi	sp,sp,16
    80003078:	00008067          	ret

000000008000307c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00113c23          	sd	ra,24(sp)
    80003084:	00813823          	sd	s0,16(sp)
    80003088:	00913423          	sd	s1,8(sp)
    8000308c:	01213023          	sd	s2,0(sp)
    80003090:	02010413          	addi	s0,sp,32
    80003094:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003098:	00000913          	li	s2,0
    8000309c:	00c0006f          	j	800030a8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	384080e7          	jalr	900(ra) # 80001424 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	5a4080e7          	jalr	1444(ra) # 8000164c <_Z4getcv>
    800030b0:	0005059b          	sext.w	a1,a0
    800030b4:	01b00793          	li	a5,27
    800030b8:	02f58a63          	beq	a1,a5,800030ec <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800030bc:	0084b503          	ld	a0,8(s1)
    800030c0:	00004097          	auipc	ra,0x4
    800030c4:	85c080e7          	jalr	-1956(ra) # 8000691c <_ZN6Buffer3putEi>
        i++;
    800030c8:	0019071b          	addiw	a4,s2,1
    800030cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800030d0:	0004a683          	lw	a3,0(s1)
    800030d4:	0026979b          	slliw	a5,a3,0x2
    800030d8:	00d787bb          	addw	a5,a5,a3
    800030dc:	0017979b          	slliw	a5,a5,0x1
    800030e0:	02f767bb          	remw	a5,a4,a5
    800030e4:	fc0792e3          	bnez	a5,800030a8 <_ZL16producerKeyboardPv+0x2c>
    800030e8:	fb9ff06f          	j	800030a0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800030ec:	00100793          	li	a5,1
    800030f0:	00009717          	auipc	a4,0x9
    800030f4:	e4f72023          	sw	a5,-448(a4) # 8000bf30 <_ZL9threadEnd>
    data->buffer->put('!');
    800030f8:	02100593          	li	a1,33
    800030fc:	0084b503          	ld	a0,8(s1)
    80003100:	00004097          	auipc	ra,0x4
    80003104:	81c080e7          	jalr	-2020(ra) # 8000691c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003108:	0104b503          	ld	a0,16(s1)
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	428080e7          	jalr	1064(ra) # 80001534 <_Z10sem_signalP4_sem>
}
    80003114:	01813083          	ld	ra,24(sp)
    80003118:	01013403          	ld	s0,16(sp)
    8000311c:	00813483          	ld	s1,8(sp)
    80003120:	00013903          	ld	s2,0(sp)
    80003124:	02010113          	addi	sp,sp,32
    80003128:	00008067          	ret

000000008000312c <_ZL8producerPv>:

static void producer(void *arg) {
    8000312c:	fe010113          	addi	sp,sp,-32
    80003130:	00113c23          	sd	ra,24(sp)
    80003134:	00813823          	sd	s0,16(sp)
    80003138:	00913423          	sd	s1,8(sp)
    8000313c:	01213023          	sd	s2,0(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003148:	00000913          	li	s2,0
    8000314c:	00c0006f          	j	80003158 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	2d4080e7          	jalr	724(ra) # 80001424 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003158:	00009797          	auipc	a5,0x9
    8000315c:	dd87a783          	lw	a5,-552(a5) # 8000bf30 <_ZL9threadEnd>
    80003160:	02079e63          	bnez	a5,8000319c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003164:	0004a583          	lw	a1,0(s1)
    80003168:	0305859b          	addiw	a1,a1,48
    8000316c:	0084b503          	ld	a0,8(s1)
    80003170:	00003097          	auipc	ra,0x3
    80003174:	7ac080e7          	jalr	1964(ra) # 8000691c <_ZN6Buffer3putEi>
        i++;
    80003178:	0019071b          	addiw	a4,s2,1
    8000317c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003180:	0004a683          	lw	a3,0(s1)
    80003184:	0026979b          	slliw	a5,a3,0x2
    80003188:	00d787bb          	addw	a5,a5,a3
    8000318c:	0017979b          	slliw	a5,a5,0x1
    80003190:	02f767bb          	remw	a5,a4,a5
    80003194:	fc0792e3          	bnez	a5,80003158 <_ZL8producerPv+0x2c>
    80003198:	fb9ff06f          	j	80003150 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000319c:	0104b503          	ld	a0,16(s1)
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	394080e7          	jalr	916(ra) # 80001534 <_Z10sem_signalP4_sem>
}
    800031a8:	01813083          	ld	ra,24(sp)
    800031ac:	01013403          	ld	s0,16(sp)
    800031b0:	00813483          	ld	s1,8(sp)
    800031b4:	00013903          	ld	s2,0(sp)
    800031b8:	02010113          	addi	sp,sp,32
    800031bc:	00008067          	ret

00000000800031c0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800031c0:	fd010113          	addi	sp,sp,-48
    800031c4:	02113423          	sd	ra,40(sp)
    800031c8:	02813023          	sd	s0,32(sp)
    800031cc:	00913c23          	sd	s1,24(sp)
    800031d0:	01213823          	sd	s2,16(sp)
    800031d4:	01313423          	sd	s3,8(sp)
    800031d8:	03010413          	addi	s0,sp,48
    800031dc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800031e0:	00000993          	li	s3,0
    800031e4:	01c0006f          	j	80003200 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800031e8:	ffffe097          	auipc	ra,0xffffe
    800031ec:	23c080e7          	jalr	572(ra) # 80001424 <_Z15thread_dispatchv>
    800031f0:	0500006f          	j	80003240 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800031f4:	00a00513          	li	a0,10
    800031f8:	ffffe097          	auipc	ra,0xffffe
    800031fc:	498080e7          	jalr	1176(ra) # 80001690 <_Z4putcc>
    while (!threadEnd) {
    80003200:	00009797          	auipc	a5,0x9
    80003204:	d307a783          	lw	a5,-720(a5) # 8000bf30 <_ZL9threadEnd>
    80003208:	06079063          	bnez	a5,80003268 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000320c:	00893503          	ld	a0,8(s2)
    80003210:	00003097          	auipc	ra,0x3
    80003214:	79c080e7          	jalr	1948(ra) # 800069ac <_ZN6Buffer3getEv>
        i++;
    80003218:	0019849b          	addiw	s1,s3,1
    8000321c:	0004899b          	sext.w	s3,s1
        putc(key);
    80003220:	0ff57513          	andi	a0,a0,255
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	46c080e7          	jalr	1132(ra) # 80001690 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000322c:	00092703          	lw	a4,0(s2)
    80003230:	0027179b          	slliw	a5,a4,0x2
    80003234:	00e787bb          	addw	a5,a5,a4
    80003238:	02f4e7bb          	remw	a5,s1,a5
    8000323c:	fa0786e3          	beqz	a5,800031e8 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80003240:	05000793          	li	a5,80
    80003244:	02f4e4bb          	remw	s1,s1,a5
    80003248:	fa049ce3          	bnez	s1,80003200 <_ZL8consumerPv+0x40>
    8000324c:	fa9ff06f          	j	800031f4 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80003250:	00893503          	ld	a0,8(s2)
    80003254:	00003097          	auipc	ra,0x3
    80003258:	758080e7          	jalr	1880(ra) # 800069ac <_ZN6Buffer3getEv>
        putc(key);
    8000325c:	0ff57513          	andi	a0,a0,255
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	430080e7          	jalr	1072(ra) # 80001690 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80003268:	00893503          	ld	a0,8(s2)
    8000326c:	00003097          	auipc	ra,0x3
    80003270:	7cc080e7          	jalr	1996(ra) # 80006a38 <_ZN6Buffer6getCntEv>
    80003274:	fca04ee3          	bgtz	a0,80003250 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80003278:	01093503          	ld	a0,16(s2)
    8000327c:	ffffe097          	auipc	ra,0xffffe
    80003280:	2b8080e7          	jalr	696(ra) # 80001534 <_Z10sem_signalP4_sem>
}
    80003284:	02813083          	ld	ra,40(sp)
    80003288:	02013403          	ld	s0,32(sp)
    8000328c:	01813483          	ld	s1,24(sp)
    80003290:	01013903          	ld	s2,16(sp)
    80003294:	00813983          	ld	s3,8(sp)
    80003298:	03010113          	addi	sp,sp,48
    8000329c:	00008067          	ret

00000000800032a0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800032a0:	f9010113          	addi	sp,sp,-112
    800032a4:	06113423          	sd	ra,104(sp)
    800032a8:	06813023          	sd	s0,96(sp)
    800032ac:	04913c23          	sd	s1,88(sp)
    800032b0:	05213823          	sd	s2,80(sp)
    800032b4:	05313423          	sd	s3,72(sp)
    800032b8:	05413023          	sd	s4,64(sp)
    800032bc:	03513c23          	sd	s5,56(sp)
    800032c0:	03613823          	sd	s6,48(sp)
    800032c4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800032c8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800032cc:	00006517          	auipc	a0,0x6
    800032d0:	0fc50513          	addi	a0,a0,252 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800032d4:	00002097          	auipc	ra,0x2
    800032d8:	7d0080e7          	jalr	2000(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    800032dc:	01e00593          	li	a1,30
    800032e0:	fa040493          	addi	s1,s0,-96
    800032e4:	00048513          	mv	a0,s1
    800032e8:	00003097          	auipc	ra,0x3
    800032ec:	844080e7          	jalr	-1980(ra) # 80005b2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800032f0:	00048513          	mv	a0,s1
    800032f4:	00003097          	auipc	ra,0x3
    800032f8:	910080e7          	jalr	-1776(ra) # 80005c04 <_Z11stringToIntPKc>
    800032fc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003300:	00006517          	auipc	a0,0x6
    80003304:	0e850513          	addi	a0,a0,232 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003308:	00002097          	auipc	ra,0x2
    8000330c:	79c080e7          	jalr	1948(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    80003310:	01e00593          	li	a1,30
    80003314:	00048513          	mv	a0,s1
    80003318:	00003097          	auipc	ra,0x3
    8000331c:	814080e7          	jalr	-2028(ra) # 80005b2c <_Z9getStringPci>
    n = stringToInt(input);
    80003320:	00048513          	mv	a0,s1
    80003324:	00003097          	auipc	ra,0x3
    80003328:	8e0080e7          	jalr	-1824(ra) # 80005c04 <_Z11stringToIntPKc>
    8000332c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003330:	00006517          	auipc	a0,0x6
    80003334:	0d850513          	addi	a0,a0,216 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003338:	00002097          	auipc	ra,0x2
    8000333c:	76c080e7          	jalr	1900(ra) # 80005aa4 <_Z11printStringPKc>
    80003340:	00000613          	li	a2,0
    80003344:	00a00593          	li	a1,10
    80003348:	00090513          	mv	a0,s2
    8000334c:	00003097          	auipc	ra,0x3
    80003350:	908080e7          	jalr	-1784(ra) # 80005c54 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003354:	00006517          	auipc	a0,0x6
    80003358:	0cc50513          	addi	a0,a0,204 # 80009420 <CONSOLE_STATUS+0x410>
    8000335c:	00002097          	auipc	ra,0x2
    80003360:	748080e7          	jalr	1864(ra) # 80005aa4 <_Z11printStringPKc>
    80003364:	00000613          	li	a2,0
    80003368:	00a00593          	li	a1,10
    8000336c:	00048513          	mv	a0,s1
    80003370:	00003097          	auipc	ra,0x3
    80003374:	8e4080e7          	jalr	-1820(ra) # 80005c54 <_Z8printIntiii>
    printString(".\n");
    80003378:	00006517          	auipc	a0,0x6
    8000337c:	0c050513          	addi	a0,a0,192 # 80009438 <CONSOLE_STATUS+0x428>
    80003380:	00002097          	auipc	ra,0x2
    80003384:	724080e7          	jalr	1828(ra) # 80005aa4 <_Z11printStringPKc>
    if(threadNum > n) {
    80003388:	0324c463          	blt	s1,s2,800033b0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    8000338c:	03205c63          	blez	s2,800033c4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003390:	03800513          	li	a0,56
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	300080e7          	jalr	768(ra) # 80002694 <_Znwm>
    8000339c:	00050a13          	mv	s4,a0
    800033a0:	00048593          	mv	a1,s1
    800033a4:	00003097          	auipc	ra,0x3
    800033a8:	4dc080e7          	jalr	1244(ra) # 80006880 <_ZN6BufferC1Ei>
    800033ac:	0300006f          	j	800033dc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800033b0:	00006517          	auipc	a0,0x6
    800033b4:	09050513          	addi	a0,a0,144 # 80009440 <CONSOLE_STATUS+0x430>
    800033b8:	00002097          	auipc	ra,0x2
    800033bc:	6ec080e7          	jalr	1772(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    800033c0:	0140006f          	j	800033d4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800033c4:	00006517          	auipc	a0,0x6
    800033c8:	0bc50513          	addi	a0,a0,188 # 80009480 <CONSOLE_STATUS+0x470>
    800033cc:	00002097          	auipc	ra,0x2
    800033d0:	6d8080e7          	jalr	1752(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    800033d4:	000b0113          	mv	sp,s6
    800033d8:	1500006f          	j	80003528 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800033dc:	00000593          	li	a1,0
    800033e0:	00009517          	auipc	a0,0x9
    800033e4:	b5850513          	addi	a0,a0,-1192 # 8000bf38 <_ZL10waitForAll>
    800033e8:	ffffe097          	auipc	ra,0xffffe
    800033ec:	07c080e7          	jalr	124(ra) # 80001464 <_Z8sem_openPP4_semj>
    thread_t threads[threadNum];
    800033f0:	00391793          	slli	a5,s2,0x3
    800033f4:	00f78793          	addi	a5,a5,15
    800033f8:	ff07f793          	andi	a5,a5,-16
    800033fc:	40f10133          	sub	sp,sp,a5
    80003400:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003404:	0019071b          	addiw	a4,s2,1
    80003408:	00171793          	slli	a5,a4,0x1
    8000340c:	00e787b3          	add	a5,a5,a4
    80003410:	00379793          	slli	a5,a5,0x3
    80003414:	00f78793          	addi	a5,a5,15
    80003418:	ff07f793          	andi	a5,a5,-16
    8000341c:	40f10133          	sub	sp,sp,a5
    80003420:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003424:	00191613          	slli	a2,s2,0x1
    80003428:	012607b3          	add	a5,a2,s2
    8000342c:	00379793          	slli	a5,a5,0x3
    80003430:	00f987b3          	add	a5,s3,a5
    80003434:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003438:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000343c:	00009717          	auipc	a4,0x9
    80003440:	afc73703          	ld	a4,-1284(a4) # 8000bf38 <_ZL10waitForAll>
    80003444:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003448:	00078613          	mv	a2,a5
    8000344c:	00000597          	auipc	a1,0x0
    80003450:	d7458593          	addi	a1,a1,-652 # 800031c0 <_ZL8consumerPv>
    80003454:	f9840513          	addi	a0,s0,-104
    80003458:	ffffe097          	auipc	ra,0xffffe
    8000345c:	e38080e7          	jalr	-456(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003460:	00000493          	li	s1,0
    80003464:	0280006f          	j	8000348c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80003468:	00000597          	auipc	a1,0x0
    8000346c:	c1458593          	addi	a1,a1,-1004 # 8000307c <_ZL16producerKeyboardPv>
                      data + i);
    80003470:	00179613          	slli	a2,a5,0x1
    80003474:	00f60633          	add	a2,a2,a5
    80003478:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000347c:	00c98633          	add	a2,s3,a2
    80003480:	ffffe097          	auipc	ra,0xffffe
    80003484:	e10080e7          	jalr	-496(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003488:	0014849b          	addiw	s1,s1,1
    8000348c:	0524d263          	bge	s1,s2,800034d0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003490:	00149793          	slli	a5,s1,0x1
    80003494:	009787b3          	add	a5,a5,s1
    80003498:	00379793          	slli	a5,a5,0x3
    8000349c:	00f987b3          	add	a5,s3,a5
    800034a0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800034a4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800034a8:	00009717          	auipc	a4,0x9
    800034ac:	a9073703          	ld	a4,-1392(a4) # 8000bf38 <_ZL10waitForAll>
    800034b0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800034b4:	00048793          	mv	a5,s1
    800034b8:	00349513          	slli	a0,s1,0x3
    800034bc:	00aa8533          	add	a0,s5,a0
    800034c0:	fa9054e3          	blez	s1,80003468 <_Z22producerConsumer_C_APIv+0x1c8>
    800034c4:	00000597          	auipc	a1,0x0
    800034c8:	c6858593          	addi	a1,a1,-920 # 8000312c <_ZL8producerPv>
    800034cc:	fa5ff06f          	j	80003470 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800034d0:	ffffe097          	auipc	ra,0xffffe
    800034d4:	f54080e7          	jalr	-172(ra) # 80001424 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800034d8:	00000493          	li	s1,0
    800034dc:	00994e63          	blt	s2,s1,800034f8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800034e0:	00009517          	auipc	a0,0x9
    800034e4:	a5853503          	ld	a0,-1448(a0) # 8000bf38 <_ZL10waitForAll>
    800034e8:	ffffe097          	auipc	ra,0xffffe
    800034ec:	008080e7          	jalr	8(ra) # 800014f0 <_Z8sem_waitP4_sem>
    for (int i = 0; i <= threadNum; i++) {
    800034f0:	0014849b          	addiw	s1,s1,1
    800034f4:	fe9ff06f          	j	800034dc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    800034f8:	00009517          	auipc	a0,0x9
    800034fc:	a4053503          	ld	a0,-1472(a0) # 8000bf38 <_ZL10waitForAll>
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	fac080e7          	jalr	-84(ra) # 800014ac <_Z9sem_closeP4_sem>
    delete buffer;
    80003508:	000a0e63          	beqz	s4,80003524 <_Z22producerConsumer_C_APIv+0x284>
    8000350c:	000a0513          	mv	a0,s4
    80003510:	00003097          	auipc	ra,0x3
    80003514:	5b0080e7          	jalr	1456(ra) # 80006ac0 <_ZN6BufferD1Ev>
    80003518:	000a0513          	mv	a0,s4
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	1c8080e7          	jalr	456(ra) # 800026e4 <_ZdlPv>
    80003524:	000b0113          	mv	sp,s6

}
    80003528:	f9040113          	addi	sp,s0,-112
    8000352c:	06813083          	ld	ra,104(sp)
    80003530:	06013403          	ld	s0,96(sp)
    80003534:	05813483          	ld	s1,88(sp)
    80003538:	05013903          	ld	s2,80(sp)
    8000353c:	04813983          	ld	s3,72(sp)
    80003540:	04013a03          	ld	s4,64(sp)
    80003544:	03813a83          	ld	s5,56(sp)
    80003548:	03013b03          	ld	s6,48(sp)
    8000354c:	07010113          	addi	sp,sp,112
    80003550:	00008067          	ret
    80003554:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80003558:	000a0513          	mv	a0,s4
    8000355c:	fffff097          	auipc	ra,0xfffff
    80003560:	188080e7          	jalr	392(ra) # 800026e4 <_ZdlPv>
    80003564:	00048513          	mv	a0,s1
    80003568:	0000a097          	auipc	ra,0xa
    8000356c:	ae0080e7          	jalr	-1312(ra) # 8000d048 <_Unwind_Resume>

0000000080003570 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003570:	fe010113          	addi	sp,sp,-32
    80003574:	00113c23          	sd	ra,24(sp)
    80003578:	00813823          	sd	s0,16(sp)
    8000357c:	00913423          	sd	s1,8(sp)
    80003580:	01213023          	sd	s2,0(sp)
    80003584:	02010413          	addi	s0,sp,32
    80003588:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000358c:	00100793          	li	a5,1
    80003590:	02a7f863          	bgeu	a5,a0,800035c0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003594:	00a00793          	li	a5,10
    80003598:	02f577b3          	remu	a5,a0,a5
    8000359c:	02078e63          	beqz	a5,800035d8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800035a0:	fff48513          	addi	a0,s1,-1
    800035a4:	00000097          	auipc	ra,0x0
    800035a8:	fcc080e7          	jalr	-52(ra) # 80003570 <_ZL9fibonaccim>
    800035ac:	00050913          	mv	s2,a0
    800035b0:	ffe48513          	addi	a0,s1,-2
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	fbc080e7          	jalr	-68(ra) # 80003570 <_ZL9fibonaccim>
    800035bc:	00a90533          	add	a0,s2,a0
}
    800035c0:	01813083          	ld	ra,24(sp)
    800035c4:	01013403          	ld	s0,16(sp)
    800035c8:	00813483          	ld	s1,8(sp)
    800035cc:	00013903          	ld	s2,0(sp)
    800035d0:	02010113          	addi	sp,sp,32
    800035d4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	e4c080e7          	jalr	-436(ra) # 80001424 <_Z15thread_dispatchv>
    800035e0:	fc1ff06f          	j	800035a0 <_ZL9fibonaccim+0x30>

00000000800035e4 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800035e4:	fe010113          	addi	sp,sp,-32
    800035e8:	00113c23          	sd	ra,24(sp)
    800035ec:	00813823          	sd	s0,16(sp)
    800035f0:	00913423          	sd	s1,8(sp)
    800035f4:	01213023          	sd	s2,0(sp)
    800035f8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800035fc:	00000913          	li	s2,0
    80003600:	0380006f          	j	80003638 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003604:	ffffe097          	auipc	ra,0xffffe
    80003608:	e20080e7          	jalr	-480(ra) # 80001424 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000360c:	00148493          	addi	s1,s1,1
    80003610:	000027b7          	lui	a5,0x2
    80003614:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003618:	0097ee63          	bltu	a5,s1,80003634 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000361c:	00000713          	li	a4,0
    80003620:	000077b7          	lui	a5,0x7
    80003624:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003628:	fce7eee3          	bltu	a5,a4,80003604 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000362c:	00170713          	addi	a4,a4,1
    80003630:	ff1ff06f          	j	80003620 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003634:	00190913          	addi	s2,s2,1
    80003638:	00900793          	li	a5,9
    8000363c:	0527e063          	bltu	a5,s2,8000367c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003640:	00006517          	auipc	a0,0x6
    80003644:	e7050513          	addi	a0,a0,-400 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003648:	00002097          	auipc	ra,0x2
    8000364c:	45c080e7          	jalr	1116(ra) # 80005aa4 <_Z11printStringPKc>
    80003650:	00000613          	li	a2,0
    80003654:	00a00593          	li	a1,10
    80003658:	0009051b          	sext.w	a0,s2
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	5f8080e7          	jalr	1528(ra) # 80005c54 <_Z8printIntiii>
    80003664:	00006517          	auipc	a0,0x6
    80003668:	c3c50513          	addi	a0,a0,-964 # 800092a0 <CONSOLE_STATUS+0x290>
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	438080e7          	jalr	1080(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003674:	00000493          	li	s1,0
    80003678:	f99ff06f          	j	80003610 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000367c:	00006517          	auipc	a0,0x6
    80003680:	e3c50513          	addi	a0,a0,-452 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80003684:	00002097          	auipc	ra,0x2
    80003688:	420080e7          	jalr	1056(ra) # 80005aa4 <_Z11printStringPKc>
    finishedA = true;
    8000368c:	00100793          	li	a5,1
    80003690:	00009717          	auipc	a4,0x9
    80003694:	8af70823          	sb	a5,-1872(a4) # 8000bf40 <_ZL9finishedA>
}
    80003698:	01813083          	ld	ra,24(sp)
    8000369c:	01013403          	ld	s0,16(sp)
    800036a0:	00813483          	ld	s1,8(sp)
    800036a4:	00013903          	ld	s2,0(sp)
    800036a8:	02010113          	addi	sp,sp,32
    800036ac:	00008067          	ret

00000000800036b0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800036b0:	fe010113          	addi	sp,sp,-32
    800036b4:	00113c23          	sd	ra,24(sp)
    800036b8:	00813823          	sd	s0,16(sp)
    800036bc:	00913423          	sd	s1,8(sp)
    800036c0:	01213023          	sd	s2,0(sp)
    800036c4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800036c8:	00000913          	li	s2,0
    800036cc:	0380006f          	j	80003704 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	d54080e7          	jalr	-684(ra) # 80001424 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800036d8:	00148493          	addi	s1,s1,1
    800036dc:	000027b7          	lui	a5,0x2
    800036e0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036e4:	0097ee63          	bltu	a5,s1,80003700 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036e8:	00000713          	li	a4,0
    800036ec:	000077b7          	lui	a5,0x7
    800036f0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036f4:	fce7eee3          	bltu	a5,a4,800036d0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800036f8:	00170713          	addi	a4,a4,1
    800036fc:	ff1ff06f          	j	800036ec <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003700:	00190913          	addi	s2,s2,1
    80003704:	00f00793          	li	a5,15
    80003708:	0527e063          	bltu	a5,s2,80003748 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000370c:	00006517          	auipc	a0,0x6
    80003710:	dbc50513          	addi	a0,a0,-580 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80003714:	00002097          	auipc	ra,0x2
    80003718:	390080e7          	jalr	912(ra) # 80005aa4 <_Z11printStringPKc>
    8000371c:	00000613          	li	a2,0
    80003720:	00a00593          	li	a1,10
    80003724:	0009051b          	sext.w	a0,s2
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	52c080e7          	jalr	1324(ra) # 80005c54 <_Z8printIntiii>
    80003730:	00006517          	auipc	a0,0x6
    80003734:	b7050513          	addi	a0,a0,-1168 # 800092a0 <CONSOLE_STATUS+0x290>
    80003738:	00002097          	auipc	ra,0x2
    8000373c:	36c080e7          	jalr	876(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003740:	00000493          	li	s1,0
    80003744:	f99ff06f          	j	800036dc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003748:	00006517          	auipc	a0,0x6
    8000374c:	d8850513          	addi	a0,a0,-632 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80003750:	00002097          	auipc	ra,0x2
    80003754:	354080e7          	jalr	852(ra) # 80005aa4 <_Z11printStringPKc>
    finishedB = true;
    80003758:	00100793          	li	a5,1
    8000375c:	00008717          	auipc	a4,0x8
    80003760:	7ef702a3          	sb	a5,2021(a4) # 8000bf41 <_ZL9finishedB>
    thread_dispatch();
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	cc0080e7          	jalr	-832(ra) # 80001424 <_Z15thread_dispatchv>
}
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	00013903          	ld	s2,0(sp)
    8000377c:	02010113          	addi	sp,sp,32
    80003780:	00008067          	ret

0000000080003784 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003784:	fe010113          	addi	sp,sp,-32
    80003788:	00113c23          	sd	ra,24(sp)
    8000378c:	00813823          	sd	s0,16(sp)
    80003790:	00913423          	sd	s1,8(sp)
    80003794:	01213023          	sd	s2,0(sp)
    80003798:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000379c:	00000493          	li	s1,0
    800037a0:	0400006f          	j	800037e0 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800037a4:	00006517          	auipc	a0,0x6
    800037a8:	d3c50513          	addi	a0,a0,-708 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800037ac:	00002097          	auipc	ra,0x2
    800037b0:	2f8080e7          	jalr	760(ra) # 80005aa4 <_Z11printStringPKc>
    800037b4:	00000613          	li	a2,0
    800037b8:	00a00593          	li	a1,10
    800037bc:	00048513          	mv	a0,s1
    800037c0:	00002097          	auipc	ra,0x2
    800037c4:	494080e7          	jalr	1172(ra) # 80005c54 <_Z8printIntiii>
    800037c8:	00006517          	auipc	a0,0x6
    800037cc:	ad850513          	addi	a0,a0,-1320 # 800092a0 <CONSOLE_STATUS+0x290>
    800037d0:	00002097          	auipc	ra,0x2
    800037d4:	2d4080e7          	jalr	724(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800037d8:	0014849b          	addiw	s1,s1,1
    800037dc:	0ff4f493          	andi	s1,s1,255
    800037e0:	00200793          	li	a5,2
    800037e4:	fc97f0e3          	bgeu	a5,s1,800037a4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800037e8:	00006517          	auipc	a0,0x6
    800037ec:	d0050513          	addi	a0,a0,-768 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800037f0:	00002097          	auipc	ra,0x2
    800037f4:	2b4080e7          	jalr	692(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800037f8:	00700313          	li	t1,7
    thread_dispatch();
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	c28080e7          	jalr	-984(ra) # 80001424 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003804:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003808:	00006517          	auipc	a0,0x6
    8000380c:	cf050513          	addi	a0,a0,-784 # 800094f8 <CONSOLE_STATUS+0x4e8>
    80003810:	00002097          	auipc	ra,0x2
    80003814:	294080e7          	jalr	660(ra) # 80005aa4 <_Z11printStringPKc>
    80003818:	00000613          	li	a2,0
    8000381c:	00a00593          	li	a1,10
    80003820:	0009051b          	sext.w	a0,s2
    80003824:	00002097          	auipc	ra,0x2
    80003828:	430080e7          	jalr	1072(ra) # 80005c54 <_Z8printIntiii>
    8000382c:	00006517          	auipc	a0,0x6
    80003830:	a7450513          	addi	a0,a0,-1420 # 800092a0 <CONSOLE_STATUS+0x290>
    80003834:	00002097          	auipc	ra,0x2
    80003838:	270080e7          	jalr	624(ra) # 80005aa4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000383c:	00c00513          	li	a0,12
    80003840:	00000097          	auipc	ra,0x0
    80003844:	d30080e7          	jalr	-720(ra) # 80003570 <_ZL9fibonaccim>
    80003848:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000384c:	00006517          	auipc	a0,0x6
    80003850:	cb450513          	addi	a0,a0,-844 # 80009500 <CONSOLE_STATUS+0x4f0>
    80003854:	00002097          	auipc	ra,0x2
    80003858:	250080e7          	jalr	592(ra) # 80005aa4 <_Z11printStringPKc>
    8000385c:	00000613          	li	a2,0
    80003860:	00a00593          	li	a1,10
    80003864:	0009051b          	sext.w	a0,s2
    80003868:	00002097          	auipc	ra,0x2
    8000386c:	3ec080e7          	jalr	1004(ra) # 80005c54 <_Z8printIntiii>
    80003870:	00006517          	auipc	a0,0x6
    80003874:	a3050513          	addi	a0,a0,-1488 # 800092a0 <CONSOLE_STATUS+0x290>
    80003878:	00002097          	auipc	ra,0x2
    8000387c:	22c080e7          	jalr	556(ra) # 80005aa4 <_Z11printStringPKc>
    80003880:	0400006f          	j	800038c0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003884:	00006517          	auipc	a0,0x6
    80003888:	c5c50513          	addi	a0,a0,-932 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000388c:	00002097          	auipc	ra,0x2
    80003890:	218080e7          	jalr	536(ra) # 80005aa4 <_Z11printStringPKc>
    80003894:	00000613          	li	a2,0
    80003898:	00a00593          	li	a1,10
    8000389c:	00048513          	mv	a0,s1
    800038a0:	00002097          	auipc	ra,0x2
    800038a4:	3b4080e7          	jalr	948(ra) # 80005c54 <_Z8printIntiii>
    800038a8:	00006517          	auipc	a0,0x6
    800038ac:	9f850513          	addi	a0,a0,-1544 # 800092a0 <CONSOLE_STATUS+0x290>
    800038b0:	00002097          	auipc	ra,0x2
    800038b4:	1f4080e7          	jalr	500(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800038b8:	0014849b          	addiw	s1,s1,1
    800038bc:	0ff4f493          	andi	s1,s1,255
    800038c0:	00500793          	li	a5,5
    800038c4:	fc97f0e3          	bgeu	a5,s1,80003884 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800038c8:	00006517          	auipc	a0,0x6
    800038cc:	bf050513          	addi	a0,a0,-1040 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800038d0:	00002097          	auipc	ra,0x2
    800038d4:	1d4080e7          	jalr	468(ra) # 80005aa4 <_Z11printStringPKc>
    finishedC = true;
    800038d8:	00100793          	li	a5,1
    800038dc:	00008717          	auipc	a4,0x8
    800038e0:	66f70323          	sb	a5,1638(a4) # 8000bf42 <_ZL9finishedC>
    thread_dispatch();
    800038e4:	ffffe097          	auipc	ra,0xffffe
    800038e8:	b40080e7          	jalr	-1216(ra) # 80001424 <_Z15thread_dispatchv>
}
    800038ec:	01813083          	ld	ra,24(sp)
    800038f0:	01013403          	ld	s0,16(sp)
    800038f4:	00813483          	ld	s1,8(sp)
    800038f8:	00013903          	ld	s2,0(sp)
    800038fc:	02010113          	addi	sp,sp,32
    80003900:	00008067          	ret

0000000080003904 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003904:	fe010113          	addi	sp,sp,-32
    80003908:	00113c23          	sd	ra,24(sp)
    8000390c:	00813823          	sd	s0,16(sp)
    80003910:	00913423          	sd	s1,8(sp)
    80003914:	01213023          	sd	s2,0(sp)
    80003918:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000391c:	00a00493          	li	s1,10
    80003920:	0400006f          	j	80003960 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003924:	00006517          	auipc	a0,0x6
    80003928:	bec50513          	addi	a0,a0,-1044 # 80009510 <CONSOLE_STATUS+0x500>
    8000392c:	00002097          	auipc	ra,0x2
    80003930:	178080e7          	jalr	376(ra) # 80005aa4 <_Z11printStringPKc>
    80003934:	00000613          	li	a2,0
    80003938:	00a00593          	li	a1,10
    8000393c:	00048513          	mv	a0,s1
    80003940:	00002097          	auipc	ra,0x2
    80003944:	314080e7          	jalr	788(ra) # 80005c54 <_Z8printIntiii>
    80003948:	00006517          	auipc	a0,0x6
    8000394c:	95850513          	addi	a0,a0,-1704 # 800092a0 <CONSOLE_STATUS+0x290>
    80003950:	00002097          	auipc	ra,0x2
    80003954:	154080e7          	jalr	340(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003958:	0014849b          	addiw	s1,s1,1
    8000395c:	0ff4f493          	andi	s1,s1,255
    80003960:	00c00793          	li	a5,12
    80003964:	fc97f0e3          	bgeu	a5,s1,80003924 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003968:	00006517          	auipc	a0,0x6
    8000396c:	bb050513          	addi	a0,a0,-1104 # 80009518 <CONSOLE_STATUS+0x508>
    80003970:	00002097          	auipc	ra,0x2
    80003974:	134080e7          	jalr	308(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003978:	00500313          	li	t1,5
    thread_dispatch();
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	aa8080e7          	jalr	-1368(ra) # 80001424 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003984:	01000513          	li	a0,16
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	be8080e7          	jalr	-1048(ra) # 80003570 <_ZL9fibonaccim>
    80003990:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003994:	00006517          	auipc	a0,0x6
    80003998:	b9450513          	addi	a0,a0,-1132 # 80009528 <CONSOLE_STATUS+0x518>
    8000399c:	00002097          	auipc	ra,0x2
    800039a0:	108080e7          	jalr	264(ra) # 80005aa4 <_Z11printStringPKc>
    800039a4:	00000613          	li	a2,0
    800039a8:	00a00593          	li	a1,10
    800039ac:	0009051b          	sext.w	a0,s2
    800039b0:	00002097          	auipc	ra,0x2
    800039b4:	2a4080e7          	jalr	676(ra) # 80005c54 <_Z8printIntiii>
    800039b8:	00006517          	auipc	a0,0x6
    800039bc:	8e850513          	addi	a0,a0,-1816 # 800092a0 <CONSOLE_STATUS+0x290>
    800039c0:	00002097          	auipc	ra,0x2
    800039c4:	0e4080e7          	jalr	228(ra) # 80005aa4 <_Z11printStringPKc>
    800039c8:	0400006f          	j	80003a08 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800039cc:	00006517          	auipc	a0,0x6
    800039d0:	b4450513          	addi	a0,a0,-1212 # 80009510 <CONSOLE_STATUS+0x500>
    800039d4:	00002097          	auipc	ra,0x2
    800039d8:	0d0080e7          	jalr	208(ra) # 80005aa4 <_Z11printStringPKc>
    800039dc:	00000613          	li	a2,0
    800039e0:	00a00593          	li	a1,10
    800039e4:	00048513          	mv	a0,s1
    800039e8:	00002097          	auipc	ra,0x2
    800039ec:	26c080e7          	jalr	620(ra) # 80005c54 <_Z8printIntiii>
    800039f0:	00006517          	auipc	a0,0x6
    800039f4:	8b050513          	addi	a0,a0,-1872 # 800092a0 <CONSOLE_STATUS+0x290>
    800039f8:	00002097          	auipc	ra,0x2
    800039fc:	0ac080e7          	jalr	172(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003a00:	0014849b          	addiw	s1,s1,1
    80003a04:	0ff4f493          	andi	s1,s1,255
    80003a08:	00f00793          	li	a5,15
    80003a0c:	fc97f0e3          	bgeu	a5,s1,800039cc <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003a10:	00006517          	auipc	a0,0x6
    80003a14:	b2850513          	addi	a0,a0,-1240 # 80009538 <CONSOLE_STATUS+0x528>
    80003a18:	00002097          	auipc	ra,0x2
    80003a1c:	08c080e7          	jalr	140(ra) # 80005aa4 <_Z11printStringPKc>
    finishedD = true;
    80003a20:	00100793          	li	a5,1
    80003a24:	00008717          	auipc	a4,0x8
    80003a28:	50f70fa3          	sb	a5,1311(a4) # 8000bf43 <_ZL9finishedD>
    thread_dispatch();
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	9f8080e7          	jalr	-1544(ra) # 80001424 <_Z15thread_dispatchv>
}
    80003a34:	01813083          	ld	ra,24(sp)
    80003a38:	01013403          	ld	s0,16(sp)
    80003a3c:	00813483          	ld	s1,8(sp)
    80003a40:	00013903          	ld	s2,0(sp)
    80003a44:	02010113          	addi	sp,sp,32
    80003a48:	00008067          	ret

0000000080003a4c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003a4c:	fc010113          	addi	sp,sp,-64
    80003a50:	02113c23          	sd	ra,56(sp)
    80003a54:	02813823          	sd	s0,48(sp)
    80003a58:	02913423          	sd	s1,40(sp)
    80003a5c:	03213023          	sd	s2,32(sp)
    80003a60:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003a64:	02800513          	li	a0,40
    80003a68:	fffff097          	auipc	ra,0xfffff
    80003a6c:	c2c080e7          	jalr	-980(ra) # 80002694 <_Znwm>
    80003a70:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	f38080e7          	jalr	-200(ra) # 800029ac <_ZN6ThreadC1Ev>
    80003a7c:	00008797          	auipc	a5,0x8
    80003a80:	1b478793          	addi	a5,a5,436 # 8000bc30 <_ZTV7WorkerA+0x10>
    80003a84:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003a88:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003a8c:	00006517          	auipc	a0,0x6
    80003a90:	abc50513          	addi	a0,a0,-1348 # 80009548 <CONSOLE_STATUS+0x538>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	010080e7          	jalr	16(ra) # 80005aa4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003a9c:	02800513          	li	a0,40
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	bf4080e7          	jalr	-1036(ra) # 80002694 <_Znwm>
    80003aa8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003aac:	fffff097          	auipc	ra,0xfffff
    80003ab0:	f00080e7          	jalr	-256(ra) # 800029ac <_ZN6ThreadC1Ev>
    80003ab4:	00008797          	auipc	a5,0x8
    80003ab8:	1a478793          	addi	a5,a5,420 # 8000bc58 <_ZTV7WorkerB+0x10>
    80003abc:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003ac0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003ac4:	00006517          	auipc	a0,0x6
    80003ac8:	a9c50513          	addi	a0,a0,-1380 # 80009560 <CONSOLE_STATUS+0x550>
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	fd8080e7          	jalr	-40(ra) # 80005aa4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003ad4:	02800513          	li	a0,40
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	bbc080e7          	jalr	-1092(ra) # 80002694 <_Znwm>
    80003ae0:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003ae4:	fffff097          	auipc	ra,0xfffff
    80003ae8:	ec8080e7          	jalr	-312(ra) # 800029ac <_ZN6ThreadC1Ev>
    80003aec:	00008797          	auipc	a5,0x8
    80003af0:	19478793          	addi	a5,a5,404 # 8000bc80 <_ZTV7WorkerC+0x10>
    80003af4:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003af8:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003afc:	00006517          	auipc	a0,0x6
    80003b00:	a7c50513          	addi	a0,a0,-1412 # 80009578 <CONSOLE_STATUS+0x568>
    80003b04:	00002097          	auipc	ra,0x2
    80003b08:	fa0080e7          	jalr	-96(ra) # 80005aa4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003b0c:	02800513          	li	a0,40
    80003b10:	fffff097          	auipc	ra,0xfffff
    80003b14:	b84080e7          	jalr	-1148(ra) # 80002694 <_Znwm>
    80003b18:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003b1c:	fffff097          	auipc	ra,0xfffff
    80003b20:	e90080e7          	jalr	-368(ra) # 800029ac <_ZN6ThreadC1Ev>
    80003b24:	00008797          	auipc	a5,0x8
    80003b28:	18478793          	addi	a5,a5,388 # 8000bca8 <_ZTV7WorkerD+0x10>
    80003b2c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003b30:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003b34:	00006517          	auipc	a0,0x6
    80003b38:	a5c50513          	addi	a0,a0,-1444 # 80009590 <CONSOLE_STATUS+0x580>
    80003b3c:	00002097          	auipc	ra,0x2
    80003b40:	f68080e7          	jalr	-152(ra) # 80005aa4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003b44:	00000493          	li	s1,0
    80003b48:	00300793          	li	a5,3
    80003b4c:	0297c663          	blt	a5,s1,80003b78 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003b50:	00349793          	slli	a5,s1,0x3
    80003b54:	fe040713          	addi	a4,s0,-32
    80003b58:	00f707b3          	add	a5,a4,a5
    80003b5c:	fe07b503          	ld	a0,-32(a5)
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	eb8080e7          	jalr	-328(ra) # 80002a18 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003b68:	0014849b          	addiw	s1,s1,1
    80003b6c:	fddff06f          	j	80003b48 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003b70:	fffff097          	auipc	ra,0xfffff
    80003b74:	f04080e7          	jalr	-252(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003b78:	00008797          	auipc	a5,0x8
    80003b7c:	3c87c783          	lbu	a5,968(a5) # 8000bf40 <_ZL9finishedA>
    80003b80:	fe0788e3          	beqz	a5,80003b70 <_Z20Threads_CPP_API_testv+0x124>
    80003b84:	00008797          	auipc	a5,0x8
    80003b88:	3bd7c783          	lbu	a5,957(a5) # 8000bf41 <_ZL9finishedB>
    80003b8c:	fe0782e3          	beqz	a5,80003b70 <_Z20Threads_CPP_API_testv+0x124>
    80003b90:	00008797          	auipc	a5,0x8
    80003b94:	3b27c783          	lbu	a5,946(a5) # 8000bf42 <_ZL9finishedC>
    80003b98:	fc078ce3          	beqz	a5,80003b70 <_Z20Threads_CPP_API_testv+0x124>
    80003b9c:	00008797          	auipc	a5,0x8
    80003ba0:	3a77c783          	lbu	a5,935(a5) # 8000bf43 <_ZL9finishedD>
    80003ba4:	fc0786e3          	beqz	a5,80003b70 <_Z20Threads_CPP_API_testv+0x124>
    80003ba8:	fc040493          	addi	s1,s0,-64
    80003bac:	0080006f          	j	80003bb4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003bb0:	00848493          	addi	s1,s1,8
    80003bb4:	fe040793          	addi	a5,s0,-32
    80003bb8:	08f48663          	beq	s1,a5,80003c44 <_Z20Threads_CPP_API_testv+0x1f8>
    80003bbc:	0004b503          	ld	a0,0(s1)
    80003bc0:	fe0508e3          	beqz	a0,80003bb0 <_Z20Threads_CPP_API_testv+0x164>
    80003bc4:	00053783          	ld	a5,0(a0)
    80003bc8:	0087b783          	ld	a5,8(a5)
    80003bcc:	000780e7          	jalr	a5
    80003bd0:	fe1ff06f          	j	80003bb0 <_Z20Threads_CPP_API_testv+0x164>
    80003bd4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003bd8:	00048513          	mv	a0,s1
    80003bdc:	fffff097          	auipc	ra,0xfffff
    80003be0:	b08080e7          	jalr	-1272(ra) # 800026e4 <_ZdlPv>
    80003be4:	00090513          	mv	a0,s2
    80003be8:	00009097          	auipc	ra,0x9
    80003bec:	460080e7          	jalr	1120(ra) # 8000d048 <_Unwind_Resume>
    80003bf0:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003bf4:	00048513          	mv	a0,s1
    80003bf8:	fffff097          	auipc	ra,0xfffff
    80003bfc:	aec080e7          	jalr	-1300(ra) # 800026e4 <_ZdlPv>
    80003c00:	00090513          	mv	a0,s2
    80003c04:	00009097          	auipc	ra,0x9
    80003c08:	444080e7          	jalr	1092(ra) # 8000d048 <_Unwind_Resume>
    80003c0c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003c10:	00048513          	mv	a0,s1
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	ad0080e7          	jalr	-1328(ra) # 800026e4 <_ZdlPv>
    80003c1c:	00090513          	mv	a0,s2
    80003c20:	00009097          	auipc	ra,0x9
    80003c24:	428080e7          	jalr	1064(ra) # 8000d048 <_Unwind_Resume>
    80003c28:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	ab4080e7          	jalr	-1356(ra) # 800026e4 <_ZdlPv>
    80003c38:	00090513          	mv	a0,s2
    80003c3c:	00009097          	auipc	ra,0x9
    80003c40:	40c080e7          	jalr	1036(ra) # 8000d048 <_Unwind_Resume>
}
    80003c44:	03813083          	ld	ra,56(sp)
    80003c48:	03013403          	ld	s0,48(sp)
    80003c4c:	02813483          	ld	s1,40(sp)
    80003c50:	02013903          	ld	s2,32(sp)
    80003c54:	04010113          	addi	sp,sp,64
    80003c58:	00008067          	ret

0000000080003c5c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003c5c:	ff010113          	addi	sp,sp,-16
    80003c60:	00113423          	sd	ra,8(sp)
    80003c64:	00813023          	sd	s0,0(sp)
    80003c68:	01010413          	addi	s0,sp,16
    80003c6c:	00008797          	auipc	a5,0x8
    80003c70:	fc478793          	addi	a5,a5,-60 # 8000bc30 <_ZTV7WorkerA+0x10>
    80003c74:	00f53023          	sd	a5,0(a0)
    80003c78:	fffff097          	auipc	ra,0xfffff
    80003c7c:	bd4080e7          	jalr	-1068(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003c80:	00813083          	ld	ra,8(sp)
    80003c84:	00013403          	ld	s0,0(sp)
    80003c88:	01010113          	addi	sp,sp,16
    80003c8c:	00008067          	ret

0000000080003c90 <_ZN7WorkerAD0Ev>:
    80003c90:	fe010113          	addi	sp,sp,-32
    80003c94:	00113c23          	sd	ra,24(sp)
    80003c98:	00813823          	sd	s0,16(sp)
    80003c9c:	00913423          	sd	s1,8(sp)
    80003ca0:	02010413          	addi	s0,sp,32
    80003ca4:	00050493          	mv	s1,a0
    80003ca8:	00008797          	auipc	a5,0x8
    80003cac:	f8878793          	addi	a5,a5,-120 # 8000bc30 <_ZTV7WorkerA+0x10>
    80003cb0:	00f53023          	sd	a5,0(a0)
    80003cb4:	fffff097          	auipc	ra,0xfffff
    80003cb8:	b98080e7          	jalr	-1128(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003cbc:	00048513          	mv	a0,s1
    80003cc0:	fffff097          	auipc	ra,0xfffff
    80003cc4:	a24080e7          	jalr	-1500(ra) # 800026e4 <_ZdlPv>
    80003cc8:	01813083          	ld	ra,24(sp)
    80003ccc:	01013403          	ld	s0,16(sp)
    80003cd0:	00813483          	ld	s1,8(sp)
    80003cd4:	02010113          	addi	sp,sp,32
    80003cd8:	00008067          	ret

0000000080003cdc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003cdc:	ff010113          	addi	sp,sp,-16
    80003ce0:	00113423          	sd	ra,8(sp)
    80003ce4:	00813023          	sd	s0,0(sp)
    80003ce8:	01010413          	addi	s0,sp,16
    80003cec:	00008797          	auipc	a5,0x8
    80003cf0:	f6c78793          	addi	a5,a5,-148 # 8000bc58 <_ZTV7WorkerB+0x10>
    80003cf4:	00f53023          	sd	a5,0(a0)
    80003cf8:	fffff097          	auipc	ra,0xfffff
    80003cfc:	b54080e7          	jalr	-1196(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003d00:	00813083          	ld	ra,8(sp)
    80003d04:	00013403          	ld	s0,0(sp)
    80003d08:	01010113          	addi	sp,sp,16
    80003d0c:	00008067          	ret

0000000080003d10 <_ZN7WorkerBD0Ev>:
    80003d10:	fe010113          	addi	sp,sp,-32
    80003d14:	00113c23          	sd	ra,24(sp)
    80003d18:	00813823          	sd	s0,16(sp)
    80003d1c:	00913423          	sd	s1,8(sp)
    80003d20:	02010413          	addi	s0,sp,32
    80003d24:	00050493          	mv	s1,a0
    80003d28:	00008797          	auipc	a5,0x8
    80003d2c:	f3078793          	addi	a5,a5,-208 # 8000bc58 <_ZTV7WorkerB+0x10>
    80003d30:	00f53023          	sd	a5,0(a0)
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	b18080e7          	jalr	-1256(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003d3c:	00048513          	mv	a0,s1
    80003d40:	fffff097          	auipc	ra,0xfffff
    80003d44:	9a4080e7          	jalr	-1628(ra) # 800026e4 <_ZdlPv>
    80003d48:	01813083          	ld	ra,24(sp)
    80003d4c:	01013403          	ld	s0,16(sp)
    80003d50:	00813483          	ld	s1,8(sp)
    80003d54:	02010113          	addi	sp,sp,32
    80003d58:	00008067          	ret

0000000080003d5c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003d5c:	ff010113          	addi	sp,sp,-16
    80003d60:	00113423          	sd	ra,8(sp)
    80003d64:	00813023          	sd	s0,0(sp)
    80003d68:	01010413          	addi	s0,sp,16
    80003d6c:	00008797          	auipc	a5,0x8
    80003d70:	f1478793          	addi	a5,a5,-236 # 8000bc80 <_ZTV7WorkerC+0x10>
    80003d74:	00f53023          	sd	a5,0(a0)
    80003d78:	fffff097          	auipc	ra,0xfffff
    80003d7c:	ad4080e7          	jalr	-1324(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003d80:	00813083          	ld	ra,8(sp)
    80003d84:	00013403          	ld	s0,0(sp)
    80003d88:	01010113          	addi	sp,sp,16
    80003d8c:	00008067          	ret

0000000080003d90 <_ZN7WorkerCD0Ev>:
    80003d90:	fe010113          	addi	sp,sp,-32
    80003d94:	00113c23          	sd	ra,24(sp)
    80003d98:	00813823          	sd	s0,16(sp)
    80003d9c:	00913423          	sd	s1,8(sp)
    80003da0:	02010413          	addi	s0,sp,32
    80003da4:	00050493          	mv	s1,a0
    80003da8:	00008797          	auipc	a5,0x8
    80003dac:	ed878793          	addi	a5,a5,-296 # 8000bc80 <_ZTV7WorkerC+0x10>
    80003db0:	00f53023          	sd	a5,0(a0)
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	a98080e7          	jalr	-1384(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003dbc:	00048513          	mv	a0,s1
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	924080e7          	jalr	-1756(ra) # 800026e4 <_ZdlPv>
    80003dc8:	01813083          	ld	ra,24(sp)
    80003dcc:	01013403          	ld	s0,16(sp)
    80003dd0:	00813483          	ld	s1,8(sp)
    80003dd4:	02010113          	addi	sp,sp,32
    80003dd8:	00008067          	ret

0000000080003ddc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003ddc:	ff010113          	addi	sp,sp,-16
    80003de0:	00113423          	sd	ra,8(sp)
    80003de4:	00813023          	sd	s0,0(sp)
    80003de8:	01010413          	addi	s0,sp,16
    80003dec:	00008797          	auipc	a5,0x8
    80003df0:	ebc78793          	addi	a5,a5,-324 # 8000bca8 <_ZTV7WorkerD+0x10>
    80003df4:	00f53023          	sd	a5,0(a0)
    80003df8:	fffff097          	auipc	ra,0xfffff
    80003dfc:	a54080e7          	jalr	-1452(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003e00:	00813083          	ld	ra,8(sp)
    80003e04:	00013403          	ld	s0,0(sp)
    80003e08:	01010113          	addi	sp,sp,16
    80003e0c:	00008067          	ret

0000000080003e10 <_ZN7WorkerDD0Ev>:
    80003e10:	fe010113          	addi	sp,sp,-32
    80003e14:	00113c23          	sd	ra,24(sp)
    80003e18:	00813823          	sd	s0,16(sp)
    80003e1c:	00913423          	sd	s1,8(sp)
    80003e20:	02010413          	addi	s0,sp,32
    80003e24:	00050493          	mv	s1,a0
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	e8078793          	addi	a5,a5,-384 # 8000bca8 <_ZTV7WorkerD+0x10>
    80003e30:	00f53023          	sd	a5,0(a0)
    80003e34:	fffff097          	auipc	ra,0xfffff
    80003e38:	a18080e7          	jalr	-1512(ra) # 8000284c <_ZN6ThreadD1Ev>
    80003e3c:	00048513          	mv	a0,s1
    80003e40:	fffff097          	auipc	ra,0xfffff
    80003e44:	8a4080e7          	jalr	-1884(ra) # 800026e4 <_ZdlPv>
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00008067          	ret

0000000080003e5c <_ZN7WorkerA3runEv>:
    void run() override {
    80003e5c:	ff010113          	addi	sp,sp,-16
    80003e60:	00113423          	sd	ra,8(sp)
    80003e64:	00813023          	sd	s0,0(sp)
    80003e68:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003e6c:	00000593          	li	a1,0
    80003e70:	fffff097          	auipc	ra,0xfffff
    80003e74:	774080e7          	jalr	1908(ra) # 800035e4 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003e78:	00813083          	ld	ra,8(sp)
    80003e7c:	00013403          	ld	s0,0(sp)
    80003e80:	01010113          	addi	sp,sp,16
    80003e84:	00008067          	ret

0000000080003e88 <_ZN7WorkerB3runEv>:
    void run() override {
    80003e88:	ff010113          	addi	sp,sp,-16
    80003e8c:	00113423          	sd	ra,8(sp)
    80003e90:	00813023          	sd	s0,0(sp)
    80003e94:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003e98:	00000593          	li	a1,0
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	814080e7          	jalr	-2028(ra) # 800036b0 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003ea4:	00813083          	ld	ra,8(sp)
    80003ea8:	00013403          	ld	s0,0(sp)
    80003eac:	01010113          	addi	sp,sp,16
    80003eb0:	00008067          	ret

0000000080003eb4 <_ZN7WorkerC3runEv>:
    void run() override {
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003ec4:	00000593          	li	a1,0
    80003ec8:	00000097          	auipc	ra,0x0
    80003ecc:	8bc080e7          	jalr	-1860(ra) # 80003784 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003ed0:	00813083          	ld	ra,8(sp)
    80003ed4:	00013403          	ld	s0,0(sp)
    80003ed8:	01010113          	addi	sp,sp,16
    80003edc:	00008067          	ret

0000000080003ee0 <_ZN7WorkerD3runEv>:
    void run() override {
    80003ee0:	ff010113          	addi	sp,sp,-16
    80003ee4:	00113423          	sd	ra,8(sp)
    80003ee8:	00813023          	sd	s0,0(sp)
    80003eec:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003ef0:	00000593          	li	a1,0
    80003ef4:	00000097          	auipc	ra,0x0
    80003ef8:	a10080e7          	jalr	-1520(ra) # 80003904 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003efc:	00813083          	ld	ra,8(sp)
    80003f00:	00013403          	ld	s0,0(sp)
    80003f04:	01010113          	addi	sp,sp,16
    80003f08:	00008067          	ret

0000000080003f0c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003f0c:	f8010113          	addi	sp,sp,-128
    80003f10:	06113c23          	sd	ra,120(sp)
    80003f14:	06813823          	sd	s0,112(sp)
    80003f18:	06913423          	sd	s1,104(sp)
    80003f1c:	07213023          	sd	s2,96(sp)
    80003f20:	05313c23          	sd	s3,88(sp)
    80003f24:	05413823          	sd	s4,80(sp)
    80003f28:	05513423          	sd	s5,72(sp)
    80003f2c:	05613023          	sd	s6,64(sp)
    80003f30:	03713c23          	sd	s7,56(sp)
    80003f34:	03813823          	sd	s8,48(sp)
    80003f38:	03913423          	sd	s9,40(sp)
    80003f3c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003f40:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003f44:	00005517          	auipc	a0,0x5
    80003f48:	48450513          	addi	a0,a0,1156 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80003f4c:	00002097          	auipc	ra,0x2
    80003f50:	b58080e7          	jalr	-1192(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    80003f54:	01e00593          	li	a1,30
    80003f58:	f8040493          	addi	s1,s0,-128
    80003f5c:	00048513          	mv	a0,s1
    80003f60:	00002097          	auipc	ra,0x2
    80003f64:	bcc080e7          	jalr	-1076(ra) # 80005b2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003f68:	00048513          	mv	a0,s1
    80003f6c:	00002097          	auipc	ra,0x2
    80003f70:	c98080e7          	jalr	-872(ra) # 80005c04 <_Z11stringToIntPKc>
    80003f74:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003f78:	00005517          	auipc	a0,0x5
    80003f7c:	47050513          	addi	a0,a0,1136 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003f80:	00002097          	auipc	ra,0x2
    80003f84:	b24080e7          	jalr	-1244(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    80003f88:	01e00593          	li	a1,30
    80003f8c:	00048513          	mv	a0,s1
    80003f90:	00002097          	auipc	ra,0x2
    80003f94:	b9c080e7          	jalr	-1124(ra) # 80005b2c <_Z9getStringPci>
    n = stringToInt(input);
    80003f98:	00048513          	mv	a0,s1
    80003f9c:	00002097          	auipc	ra,0x2
    80003fa0:	c68080e7          	jalr	-920(ra) # 80005c04 <_Z11stringToIntPKc>
    80003fa4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003fa8:	00005517          	auipc	a0,0x5
    80003fac:	46050513          	addi	a0,a0,1120 # 80009408 <CONSOLE_STATUS+0x3f8>
    80003fb0:	00002097          	auipc	ra,0x2
    80003fb4:	af4080e7          	jalr	-1292(ra) # 80005aa4 <_Z11printStringPKc>
    printInt(threadNum);
    80003fb8:	00000613          	li	a2,0
    80003fbc:	00a00593          	li	a1,10
    80003fc0:	00098513          	mv	a0,s3
    80003fc4:	00002097          	auipc	ra,0x2
    80003fc8:	c90080e7          	jalr	-880(ra) # 80005c54 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003fcc:	00005517          	auipc	a0,0x5
    80003fd0:	45450513          	addi	a0,a0,1108 # 80009420 <CONSOLE_STATUS+0x410>
    80003fd4:	00002097          	auipc	ra,0x2
    80003fd8:	ad0080e7          	jalr	-1328(ra) # 80005aa4 <_Z11printStringPKc>
    printInt(n);
    80003fdc:	00000613          	li	a2,0
    80003fe0:	00a00593          	li	a1,10
    80003fe4:	00048513          	mv	a0,s1
    80003fe8:	00002097          	auipc	ra,0x2
    80003fec:	c6c080e7          	jalr	-916(ra) # 80005c54 <_Z8printIntiii>
    printString(".\n");
    80003ff0:	00005517          	auipc	a0,0x5
    80003ff4:	44850513          	addi	a0,a0,1096 # 80009438 <CONSOLE_STATUS+0x428>
    80003ff8:	00002097          	auipc	ra,0x2
    80003ffc:	aac080e7          	jalr	-1364(ra) # 80005aa4 <_Z11printStringPKc>
    if (threadNum > n) {
    80004000:	0334c463          	blt	s1,s3,80004028 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004004:	03305c63          	blez	s3,8000403c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004008:	03800513          	li	a0,56
    8000400c:	ffffe097          	auipc	ra,0xffffe
    80004010:	688080e7          	jalr	1672(ra) # 80002694 <_Znwm>
    80004014:	00050a93          	mv	s5,a0
    80004018:	00048593          	mv	a1,s1
    8000401c:	00002097          	auipc	ra,0x2
    80004020:	d58080e7          	jalr	-680(ra) # 80005d74 <_ZN9BufferCPPC1Ei>
    80004024:	0300006f          	j	80004054 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004028:	00005517          	auipc	a0,0x5
    8000402c:	41850513          	addi	a0,a0,1048 # 80009440 <CONSOLE_STATUS+0x430>
    80004030:	00002097          	auipc	ra,0x2
    80004034:	a74080e7          	jalr	-1420(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    80004038:	0140006f          	j	8000404c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	44450513          	addi	a0,a0,1092 # 80009480 <CONSOLE_STATUS+0x470>
    80004044:	00002097          	auipc	ra,0x2
    80004048:	a60080e7          	jalr	-1440(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    8000404c:	000c0113          	mv	sp,s8
    80004050:	2140006f          	j	80004264 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004054:	01000513          	li	a0,16
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	63c080e7          	jalr	1596(ra) # 80002694 <_Znwm>
    80004060:	00050913          	mv	s2,a0
    80004064:	00000593          	li	a1,0
    80004068:	fffff097          	auipc	ra,0xfffff
    8000406c:	a5c080e7          	jalr	-1444(ra) # 80002ac4 <_ZN9SemaphoreC1Ej>
    80004070:	00008797          	auipc	a5,0x8
    80004074:	ef27b023          	sd	s2,-288(a5) # 8000bf50 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004078:	00399793          	slli	a5,s3,0x3
    8000407c:	00f78793          	addi	a5,a5,15
    80004080:	ff07f793          	andi	a5,a5,-16
    80004084:	40f10133          	sub	sp,sp,a5
    80004088:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000408c:	0019871b          	addiw	a4,s3,1
    80004090:	00171793          	slli	a5,a4,0x1
    80004094:	00e787b3          	add	a5,a5,a4
    80004098:	00379793          	slli	a5,a5,0x3
    8000409c:	00f78793          	addi	a5,a5,15
    800040a0:	ff07f793          	andi	a5,a5,-16
    800040a4:	40f10133          	sub	sp,sp,a5
    800040a8:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800040ac:	00199493          	slli	s1,s3,0x1
    800040b0:	013484b3          	add	s1,s1,s3
    800040b4:	00349493          	slli	s1,s1,0x3
    800040b8:	009b04b3          	add	s1,s6,s1
    800040bc:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800040c0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800040c4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800040c8:	03000513          	li	a0,48
    800040cc:	ffffe097          	auipc	ra,0xffffe
    800040d0:	5c8080e7          	jalr	1480(ra) # 80002694 <_Znwm>
    800040d4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	8d4080e7          	jalr	-1836(ra) # 800029ac <_ZN6ThreadC1Ev>
    800040e0:	00008797          	auipc	a5,0x8
    800040e4:	c4078793          	addi	a5,a5,-960 # 8000bd20 <_ZTV8Consumer+0x10>
    800040e8:	00fbb023          	sd	a5,0(s7)
    800040ec:	029bb423          	sd	s1,40(s7)
    consumer->start();
    800040f0:	000b8513          	mv	a0,s7
    800040f4:	fffff097          	auipc	ra,0xfffff
    800040f8:	924080e7          	jalr	-1756(ra) # 80002a18 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800040fc:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004100:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004104:	00008797          	auipc	a5,0x8
    80004108:	e4c7b783          	ld	a5,-436(a5) # 8000bf50 <_ZL10waitForAll>
    8000410c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004110:	03000513          	li	a0,48
    80004114:	ffffe097          	auipc	ra,0xffffe
    80004118:	580080e7          	jalr	1408(ra) # 80002694 <_Znwm>
    8000411c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004120:	fffff097          	auipc	ra,0xfffff
    80004124:	88c080e7          	jalr	-1908(ra) # 800029ac <_ZN6ThreadC1Ev>
    80004128:	00008797          	auipc	a5,0x8
    8000412c:	ba878793          	addi	a5,a5,-1112 # 8000bcd0 <_ZTV16ProducerKeyborad+0x10>
    80004130:	00f4b023          	sd	a5,0(s1)
    80004134:	0364b423          	sd	s6,40(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004138:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000413c:	00048513          	mv	a0,s1
    80004140:	fffff097          	auipc	ra,0xfffff
    80004144:	8d8080e7          	jalr	-1832(ra) # 80002a18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004148:	00100913          	li	s2,1
    8000414c:	0300006f          	j	8000417c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004150:	00008797          	auipc	a5,0x8
    80004154:	ba878793          	addi	a5,a5,-1112 # 8000bcf8 <_ZTV8Producer+0x10>
    80004158:	00fcb023          	sd	a5,0(s9)
    8000415c:	029cb423          	sd	s1,40(s9)
        producers[i] = new Producer(&threadData[i]);
    80004160:	00391793          	slli	a5,s2,0x3
    80004164:	00fa07b3          	add	a5,s4,a5
    80004168:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000416c:	000c8513          	mv	a0,s9
    80004170:	fffff097          	auipc	ra,0xfffff
    80004174:	8a8080e7          	jalr	-1880(ra) # 80002a18 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004178:	0019091b          	addiw	s2,s2,1
    8000417c:	05395263          	bge	s2,s3,800041c0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004180:	00191493          	slli	s1,s2,0x1
    80004184:	012484b3          	add	s1,s1,s2
    80004188:	00349493          	slli	s1,s1,0x3
    8000418c:	009b04b3          	add	s1,s6,s1
    80004190:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004194:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004198:	00008797          	auipc	a5,0x8
    8000419c:	db87b783          	ld	a5,-584(a5) # 8000bf50 <_ZL10waitForAll>
    800041a0:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800041a4:	03000513          	li	a0,48
    800041a8:	ffffe097          	auipc	ra,0xffffe
    800041ac:	4ec080e7          	jalr	1260(ra) # 80002694 <_Znwm>
    800041b0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800041b4:	ffffe097          	auipc	ra,0xffffe
    800041b8:	7f8080e7          	jalr	2040(ra) # 800029ac <_ZN6ThreadC1Ev>
    800041bc:	f95ff06f          	j	80004150 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800041c0:	fffff097          	auipc	ra,0xfffff
    800041c4:	8b4080e7          	jalr	-1868(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800041c8:	00000493          	li	s1,0
    800041cc:	0099ce63          	blt	s3,s1,800041e8 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800041d0:	00008517          	auipc	a0,0x8
    800041d4:	d8053503          	ld	a0,-640(a0) # 8000bf50 <_ZL10waitForAll>
    800041d8:	fffff097          	auipc	ra,0xfffff
    800041dc:	928080e7          	jalr	-1752(ra) # 80002b00 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800041e0:	0014849b          	addiw	s1,s1,1
    800041e4:	fe9ff06f          	j	800041cc <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    800041e8:	00008517          	auipc	a0,0x8
    800041ec:	d6853503          	ld	a0,-664(a0) # 8000bf50 <_ZL10waitForAll>
    800041f0:	00050863          	beqz	a0,80004200 <_Z20testConsumerProducerv+0x2f4>
    800041f4:	00053783          	ld	a5,0(a0)
    800041f8:	0087b783          	ld	a5,8(a5)
    800041fc:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80004200:	00000493          	li	s1,0
    80004204:	0080006f          	j	8000420c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004208:	0014849b          	addiw	s1,s1,1
    8000420c:	0334d263          	bge	s1,s3,80004230 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80004210:	00349793          	slli	a5,s1,0x3
    80004214:	00fa07b3          	add	a5,s4,a5
    80004218:	0007b503          	ld	a0,0(a5)
    8000421c:	fe0506e3          	beqz	a0,80004208 <_Z20testConsumerProducerv+0x2fc>
    80004220:	00053783          	ld	a5,0(a0)
    80004224:	0087b783          	ld	a5,8(a5)
    80004228:	000780e7          	jalr	a5
    8000422c:	fddff06f          	j	80004208 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80004230:	000b8a63          	beqz	s7,80004244 <_Z20testConsumerProducerv+0x338>
    80004234:	000bb783          	ld	a5,0(s7)
    80004238:	0087b783          	ld	a5,8(a5)
    8000423c:	000b8513          	mv	a0,s7
    80004240:	000780e7          	jalr	a5
    delete buffer;
    80004244:	000a8e63          	beqz	s5,80004260 <_Z20testConsumerProducerv+0x354>
    80004248:	000a8513          	mv	a0,s5
    8000424c:	00002097          	auipc	ra,0x2
    80004250:	e20080e7          	jalr	-480(ra) # 8000606c <_ZN9BufferCPPD1Ev>
    80004254:	000a8513          	mv	a0,s5
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	48c080e7          	jalr	1164(ra) # 800026e4 <_ZdlPv>
    80004260:	000c0113          	mv	sp,s8
}
    80004264:	f8040113          	addi	sp,s0,-128
    80004268:	07813083          	ld	ra,120(sp)
    8000426c:	07013403          	ld	s0,112(sp)
    80004270:	06813483          	ld	s1,104(sp)
    80004274:	06013903          	ld	s2,96(sp)
    80004278:	05813983          	ld	s3,88(sp)
    8000427c:	05013a03          	ld	s4,80(sp)
    80004280:	04813a83          	ld	s5,72(sp)
    80004284:	04013b03          	ld	s6,64(sp)
    80004288:	03813b83          	ld	s7,56(sp)
    8000428c:	03013c03          	ld	s8,48(sp)
    80004290:	02813c83          	ld	s9,40(sp)
    80004294:	08010113          	addi	sp,sp,128
    80004298:	00008067          	ret
    8000429c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800042a0:	000a8513          	mv	a0,s5
    800042a4:	ffffe097          	auipc	ra,0xffffe
    800042a8:	440080e7          	jalr	1088(ra) # 800026e4 <_ZdlPv>
    800042ac:	00048513          	mv	a0,s1
    800042b0:	00009097          	auipc	ra,0x9
    800042b4:	d98080e7          	jalr	-616(ra) # 8000d048 <_Unwind_Resume>
    800042b8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800042bc:	00090513          	mv	a0,s2
    800042c0:	ffffe097          	auipc	ra,0xffffe
    800042c4:	424080e7          	jalr	1060(ra) # 800026e4 <_ZdlPv>
    800042c8:	00048513          	mv	a0,s1
    800042cc:	00009097          	auipc	ra,0x9
    800042d0:	d7c080e7          	jalr	-644(ra) # 8000d048 <_Unwind_Resume>
    800042d4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800042d8:	000b8513          	mv	a0,s7
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	408080e7          	jalr	1032(ra) # 800026e4 <_ZdlPv>
    800042e4:	00048513          	mv	a0,s1
    800042e8:	00009097          	auipc	ra,0x9
    800042ec:	d60080e7          	jalr	-672(ra) # 8000d048 <_Unwind_Resume>
    800042f0:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800042f4:	00048513          	mv	a0,s1
    800042f8:	ffffe097          	auipc	ra,0xffffe
    800042fc:	3ec080e7          	jalr	1004(ra) # 800026e4 <_ZdlPv>
    80004300:	00090513          	mv	a0,s2
    80004304:	00009097          	auipc	ra,0x9
    80004308:	d44080e7          	jalr	-700(ra) # 8000d048 <_Unwind_Resume>
    8000430c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80004310:	000c8513          	mv	a0,s9
    80004314:	ffffe097          	auipc	ra,0xffffe
    80004318:	3d0080e7          	jalr	976(ra) # 800026e4 <_ZdlPv>
    8000431c:	00048513          	mv	a0,s1
    80004320:	00009097          	auipc	ra,0x9
    80004324:	d28080e7          	jalr	-728(ra) # 8000d048 <_Unwind_Resume>

0000000080004328 <_ZN8Consumer3runEv>:
    void run() override {
    80004328:	fd010113          	addi	sp,sp,-48
    8000432c:	02113423          	sd	ra,40(sp)
    80004330:	02813023          	sd	s0,32(sp)
    80004334:	00913c23          	sd	s1,24(sp)
    80004338:	01213823          	sd	s2,16(sp)
    8000433c:	01313423          	sd	s3,8(sp)
    80004340:	03010413          	addi	s0,sp,48
    80004344:	00050913          	mv	s2,a0
        int i = 0;
    80004348:	00000993          	li	s3,0
    8000434c:	0100006f          	j	8000435c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80004350:	00a00513          	li	a0,10
    80004354:	fffff097          	auipc	ra,0xfffff
    80004358:	894080e7          	jalr	-1900(ra) # 80002be8 <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000435c:	00008797          	auipc	a5,0x8
    80004360:	bec7a783          	lw	a5,-1044(a5) # 8000bf48 <_ZL9threadEnd>
    80004364:	04079a63          	bnez	a5,800043b8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80004368:	02893783          	ld	a5,40(s2)
    8000436c:	0087b503          	ld	a0,8(a5)
    80004370:	00002097          	auipc	ra,0x2
    80004374:	be8080e7          	jalr	-1048(ra) # 80005f58 <_ZN9BufferCPP3getEv>
            i++;
    80004378:	0019849b          	addiw	s1,s3,1
    8000437c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004380:	0ff57513          	andi	a0,a0,255
    80004384:	fffff097          	auipc	ra,0xfffff
    80004388:	864080e7          	jalr	-1948(ra) # 80002be8 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    8000438c:	05000793          	li	a5,80
    80004390:	02f4e4bb          	remw	s1,s1,a5
    80004394:	fc0494e3          	bnez	s1,8000435c <_ZN8Consumer3runEv+0x34>
    80004398:	fb9ff06f          	j	80004350 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    8000439c:	02893783          	ld	a5,40(s2)
    800043a0:	0087b503          	ld	a0,8(a5)
    800043a4:	00002097          	auipc	ra,0x2
    800043a8:	bb4080e7          	jalr	-1100(ra) # 80005f58 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800043ac:	0ff57513          	andi	a0,a0,255
    800043b0:	fffff097          	auipc	ra,0xfffff
    800043b4:	838080e7          	jalr	-1992(ra) # 80002be8 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800043b8:	02893783          	ld	a5,40(s2)
    800043bc:	0087b503          	ld	a0,8(a5)
    800043c0:	00002097          	auipc	ra,0x2
    800043c4:	c24080e7          	jalr	-988(ra) # 80005fe4 <_ZN9BufferCPP6getCntEv>
    800043c8:	fca04ae3          	bgtz	a0,8000439c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800043cc:	02893783          	ld	a5,40(s2)
    800043d0:	0107b503          	ld	a0,16(a5)
    800043d4:	ffffe097          	auipc	ra,0xffffe
    800043d8:	758080e7          	jalr	1880(ra) # 80002b2c <_ZN9Semaphore6signalEv>
    }
    800043dc:	02813083          	ld	ra,40(sp)
    800043e0:	02013403          	ld	s0,32(sp)
    800043e4:	01813483          	ld	s1,24(sp)
    800043e8:	01013903          	ld	s2,16(sp)
    800043ec:	00813983          	ld	s3,8(sp)
    800043f0:	03010113          	addi	sp,sp,48
    800043f4:	00008067          	ret

00000000800043f8 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    800043f8:	ff010113          	addi	sp,sp,-16
    800043fc:	00113423          	sd	ra,8(sp)
    80004400:	00813023          	sd	s0,0(sp)
    80004404:	01010413          	addi	s0,sp,16
    80004408:	00008797          	auipc	a5,0x8
    8000440c:	91878793          	addi	a5,a5,-1768 # 8000bd20 <_ZTV8Consumer+0x10>
    80004410:	00f53023          	sd	a5,0(a0)
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	438080e7          	jalr	1080(ra) # 8000284c <_ZN6ThreadD1Ev>
    8000441c:	00813083          	ld	ra,8(sp)
    80004420:	00013403          	ld	s0,0(sp)
    80004424:	01010113          	addi	sp,sp,16
    80004428:	00008067          	ret

000000008000442c <_ZN8ConsumerD0Ev>:
    8000442c:	fe010113          	addi	sp,sp,-32
    80004430:	00113c23          	sd	ra,24(sp)
    80004434:	00813823          	sd	s0,16(sp)
    80004438:	00913423          	sd	s1,8(sp)
    8000443c:	02010413          	addi	s0,sp,32
    80004440:	00050493          	mv	s1,a0
    80004444:	00008797          	auipc	a5,0x8
    80004448:	8dc78793          	addi	a5,a5,-1828 # 8000bd20 <_ZTV8Consumer+0x10>
    8000444c:	00f53023          	sd	a5,0(a0)
    80004450:	ffffe097          	auipc	ra,0xffffe
    80004454:	3fc080e7          	jalr	1020(ra) # 8000284c <_ZN6ThreadD1Ev>
    80004458:	00048513          	mv	a0,s1
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	288080e7          	jalr	648(ra) # 800026e4 <_ZdlPv>
    80004464:	01813083          	ld	ra,24(sp)
    80004468:	01013403          	ld	s0,16(sp)
    8000446c:	00813483          	ld	s1,8(sp)
    80004470:	02010113          	addi	sp,sp,32
    80004474:	00008067          	ret

0000000080004478 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80004478:	ff010113          	addi	sp,sp,-16
    8000447c:	00113423          	sd	ra,8(sp)
    80004480:	00813023          	sd	s0,0(sp)
    80004484:	01010413          	addi	s0,sp,16
    80004488:	00008797          	auipc	a5,0x8
    8000448c:	84878793          	addi	a5,a5,-1976 # 8000bcd0 <_ZTV16ProducerKeyborad+0x10>
    80004490:	00f53023          	sd	a5,0(a0)
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	3b8080e7          	jalr	952(ra) # 8000284c <_ZN6ThreadD1Ev>
    8000449c:	00813083          	ld	ra,8(sp)
    800044a0:	00013403          	ld	s0,0(sp)
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00008067          	ret

00000000800044ac <_ZN16ProducerKeyboradD0Ev>:
    800044ac:	fe010113          	addi	sp,sp,-32
    800044b0:	00113c23          	sd	ra,24(sp)
    800044b4:	00813823          	sd	s0,16(sp)
    800044b8:	00913423          	sd	s1,8(sp)
    800044bc:	02010413          	addi	s0,sp,32
    800044c0:	00050493          	mv	s1,a0
    800044c4:	00008797          	auipc	a5,0x8
    800044c8:	80c78793          	addi	a5,a5,-2036 # 8000bcd0 <_ZTV16ProducerKeyborad+0x10>
    800044cc:	00f53023          	sd	a5,0(a0)
    800044d0:	ffffe097          	auipc	ra,0xffffe
    800044d4:	37c080e7          	jalr	892(ra) # 8000284c <_ZN6ThreadD1Ev>
    800044d8:	00048513          	mv	a0,s1
    800044dc:	ffffe097          	auipc	ra,0xffffe
    800044e0:	208080e7          	jalr	520(ra) # 800026e4 <_ZdlPv>
    800044e4:	01813083          	ld	ra,24(sp)
    800044e8:	01013403          	ld	s0,16(sp)
    800044ec:	00813483          	ld	s1,8(sp)
    800044f0:	02010113          	addi	sp,sp,32
    800044f4:	00008067          	ret

00000000800044f8 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    800044f8:	ff010113          	addi	sp,sp,-16
    800044fc:	00113423          	sd	ra,8(sp)
    80004500:	00813023          	sd	s0,0(sp)
    80004504:	01010413          	addi	s0,sp,16
    80004508:	00007797          	auipc	a5,0x7
    8000450c:	7f078793          	addi	a5,a5,2032 # 8000bcf8 <_ZTV8Producer+0x10>
    80004510:	00f53023          	sd	a5,0(a0)
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	338080e7          	jalr	824(ra) # 8000284c <_ZN6ThreadD1Ev>
    8000451c:	00813083          	ld	ra,8(sp)
    80004520:	00013403          	ld	s0,0(sp)
    80004524:	01010113          	addi	sp,sp,16
    80004528:	00008067          	ret

000000008000452c <_ZN8ProducerD0Ev>:
    8000452c:	fe010113          	addi	sp,sp,-32
    80004530:	00113c23          	sd	ra,24(sp)
    80004534:	00813823          	sd	s0,16(sp)
    80004538:	00913423          	sd	s1,8(sp)
    8000453c:	02010413          	addi	s0,sp,32
    80004540:	00050493          	mv	s1,a0
    80004544:	00007797          	auipc	a5,0x7
    80004548:	7b478793          	addi	a5,a5,1972 # 8000bcf8 <_ZTV8Producer+0x10>
    8000454c:	00f53023          	sd	a5,0(a0)
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	2fc080e7          	jalr	764(ra) # 8000284c <_ZN6ThreadD1Ev>
    80004558:	00048513          	mv	a0,s1
    8000455c:	ffffe097          	auipc	ra,0xffffe
    80004560:	188080e7          	jalr	392(ra) # 800026e4 <_ZdlPv>
    80004564:	01813083          	ld	ra,24(sp)
    80004568:	01013403          	ld	s0,16(sp)
    8000456c:	00813483          	ld	s1,8(sp)
    80004570:	02010113          	addi	sp,sp,32
    80004574:	00008067          	ret

0000000080004578 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80004578:	fe010113          	addi	sp,sp,-32
    8000457c:	00113c23          	sd	ra,24(sp)
    80004580:	00813823          	sd	s0,16(sp)
    80004584:	00913423          	sd	s1,8(sp)
    80004588:	02010413          	addi	s0,sp,32
    8000458c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004590:	ffffd097          	auipc	ra,0xffffd
    80004594:	0bc080e7          	jalr	188(ra) # 8000164c <_Z4getcv>
    80004598:	0005059b          	sext.w	a1,a0
    8000459c:	01b00793          	li	a5,27
    800045a0:	00f58c63          	beq	a1,a5,800045b8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800045a4:	0284b783          	ld	a5,40(s1)
    800045a8:	0087b503          	ld	a0,8(a5)
    800045ac:	00002097          	auipc	ra,0x2
    800045b0:	91c080e7          	jalr	-1764(ra) # 80005ec8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800045b4:	fddff06f          	j	80004590 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800045b8:	00100793          	li	a5,1
    800045bc:	00008717          	auipc	a4,0x8
    800045c0:	98f72623          	sw	a5,-1652(a4) # 8000bf48 <_ZL9threadEnd>
        td->buffer->put('!');
    800045c4:	0284b783          	ld	a5,40(s1)
    800045c8:	02100593          	li	a1,33
    800045cc:	0087b503          	ld	a0,8(a5)
    800045d0:	00002097          	auipc	ra,0x2
    800045d4:	8f8080e7          	jalr	-1800(ra) # 80005ec8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800045d8:	0284b783          	ld	a5,40(s1)
    800045dc:	0107b503          	ld	a0,16(a5)
    800045e0:	ffffe097          	auipc	ra,0xffffe
    800045e4:	54c080e7          	jalr	1356(ra) # 80002b2c <_ZN9Semaphore6signalEv>
    }
    800045e8:	01813083          	ld	ra,24(sp)
    800045ec:	01013403          	ld	s0,16(sp)
    800045f0:	00813483          	ld	s1,8(sp)
    800045f4:	02010113          	addi	sp,sp,32
    800045f8:	00008067          	ret

00000000800045fc <_ZN8Producer3runEv>:
    void run() override {
    800045fc:	fe010113          	addi	sp,sp,-32
    80004600:	00113c23          	sd	ra,24(sp)
    80004604:	00813823          	sd	s0,16(sp)
    80004608:	00913423          	sd	s1,8(sp)
    8000460c:	01213023          	sd	s2,0(sp)
    80004610:	02010413          	addi	s0,sp,32
    80004614:	00050493          	mv	s1,a0
        int i = 0;
    80004618:	00000913          	li	s2,0
        while (!threadEnd) {
    8000461c:	00008797          	auipc	a5,0x8
    80004620:	92c7a783          	lw	a5,-1748(a5) # 8000bf48 <_ZL9threadEnd>
    80004624:	04079263          	bnez	a5,80004668 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004628:	0284b783          	ld	a5,40(s1)
    8000462c:	0007a583          	lw	a1,0(a5)
    80004630:	0305859b          	addiw	a1,a1,48
    80004634:	0087b503          	ld	a0,8(a5)
    80004638:	00002097          	auipc	ra,0x2
    8000463c:	890080e7          	jalr	-1904(ra) # 80005ec8 <_ZN9BufferCPP3putEi>
            i++;
    80004640:	0019071b          	addiw	a4,s2,1
    80004644:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004648:	0284b783          	ld	a5,40(s1)
    8000464c:	0007a783          	lw	a5,0(a5)
    80004650:	00e787bb          	addw	a5,a5,a4
    80004654:	00500513          	li	a0,5
    80004658:	02a7e53b          	remw	a0,a5,a0
    8000465c:	ffffe097          	auipc	ra,0xffffe
    80004660:	440080e7          	jalr	1088(ra) # 80002a9c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004664:	fb9ff06f          	j	8000461c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004668:	0284b783          	ld	a5,40(s1)
    8000466c:	0107b503          	ld	a0,16(a5)
    80004670:	ffffe097          	auipc	ra,0xffffe
    80004674:	4bc080e7          	jalr	1212(ra) # 80002b2c <_ZN9Semaphore6signalEv>
    }
    80004678:	01813083          	ld	ra,24(sp)
    8000467c:	01013403          	ld	s0,16(sp)
    80004680:	00813483          	ld	s1,8(sp)
    80004684:	00013903          	ld	s2,0(sp)
    80004688:	02010113          	addi	sp,sp,32
    8000468c:	00008067          	ret

0000000080004690 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004690:	fe010113          	addi	sp,sp,-32
    80004694:	00113c23          	sd	ra,24(sp)
    80004698:	00813823          	sd	s0,16(sp)
    8000469c:	00913423          	sd	s1,8(sp)
    800046a0:	01213023          	sd	s2,0(sp)
    800046a4:	02010413          	addi	s0,sp,32
    800046a8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800046ac:	00100793          	li	a5,1
    800046b0:	02a7f863          	bgeu	a5,a0,800046e0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800046b4:	00a00793          	li	a5,10
    800046b8:	02f577b3          	remu	a5,a0,a5
    800046bc:	02078e63          	beqz	a5,800046f8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800046c0:	fff48513          	addi	a0,s1,-1
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	fcc080e7          	jalr	-52(ra) # 80004690 <_ZL9fibonaccim>
    800046cc:	00050913          	mv	s2,a0
    800046d0:	ffe48513          	addi	a0,s1,-2
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	fbc080e7          	jalr	-68(ra) # 80004690 <_ZL9fibonaccim>
    800046dc:	00a90533          	add	a0,s2,a0
}
    800046e0:	01813083          	ld	ra,24(sp)
    800046e4:	01013403          	ld	s0,16(sp)
    800046e8:	00813483          	ld	s1,8(sp)
    800046ec:	00013903          	ld	s2,0(sp)
    800046f0:	02010113          	addi	sp,sp,32
    800046f4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800046f8:	ffffd097          	auipc	ra,0xffffd
    800046fc:	d2c080e7          	jalr	-724(ra) # 80001424 <_Z15thread_dispatchv>
    80004700:	fc1ff06f          	j	800046c0 <_ZL9fibonaccim+0x30>

0000000080004704 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004704:	fe010113          	addi	sp,sp,-32
    80004708:	00113c23          	sd	ra,24(sp)
    8000470c:	00813823          	sd	s0,16(sp)
    80004710:	00913423          	sd	s1,8(sp)
    80004714:	01213023          	sd	s2,0(sp)
    80004718:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000471c:	00a00493          	li	s1,10
    80004720:	0400006f          	j	80004760 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004724:	00005517          	auipc	a0,0x5
    80004728:	dec50513          	addi	a0,a0,-532 # 80009510 <CONSOLE_STATUS+0x500>
    8000472c:	00001097          	auipc	ra,0x1
    80004730:	378080e7          	jalr	888(ra) # 80005aa4 <_Z11printStringPKc>
    80004734:	00000613          	li	a2,0
    80004738:	00a00593          	li	a1,10
    8000473c:	00048513          	mv	a0,s1
    80004740:	00001097          	auipc	ra,0x1
    80004744:	514080e7          	jalr	1300(ra) # 80005c54 <_Z8printIntiii>
    80004748:	00005517          	auipc	a0,0x5
    8000474c:	b5850513          	addi	a0,a0,-1192 # 800092a0 <CONSOLE_STATUS+0x290>
    80004750:	00001097          	auipc	ra,0x1
    80004754:	354080e7          	jalr	852(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004758:	0014849b          	addiw	s1,s1,1
    8000475c:	0ff4f493          	andi	s1,s1,255
    80004760:	00c00793          	li	a5,12
    80004764:	fc97f0e3          	bgeu	a5,s1,80004724 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004768:	00005517          	auipc	a0,0x5
    8000476c:	db050513          	addi	a0,a0,-592 # 80009518 <CONSOLE_STATUS+0x508>
    80004770:	00001097          	auipc	ra,0x1
    80004774:	334080e7          	jalr	820(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004778:	00500313          	li	t1,5
    thread_dispatch();
    8000477c:	ffffd097          	auipc	ra,0xffffd
    80004780:	ca8080e7          	jalr	-856(ra) # 80001424 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004784:	01000513          	li	a0,16
    80004788:	00000097          	auipc	ra,0x0
    8000478c:	f08080e7          	jalr	-248(ra) # 80004690 <_ZL9fibonaccim>
    80004790:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004794:	00005517          	auipc	a0,0x5
    80004798:	d9450513          	addi	a0,a0,-620 # 80009528 <CONSOLE_STATUS+0x518>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	308080e7          	jalr	776(ra) # 80005aa4 <_Z11printStringPKc>
    800047a4:	00000613          	li	a2,0
    800047a8:	00a00593          	li	a1,10
    800047ac:	0009051b          	sext.w	a0,s2
    800047b0:	00001097          	auipc	ra,0x1
    800047b4:	4a4080e7          	jalr	1188(ra) # 80005c54 <_Z8printIntiii>
    800047b8:	00005517          	auipc	a0,0x5
    800047bc:	ae850513          	addi	a0,a0,-1304 # 800092a0 <CONSOLE_STATUS+0x290>
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	2e4080e7          	jalr	740(ra) # 80005aa4 <_Z11printStringPKc>
    800047c8:	0400006f          	j	80004808 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800047cc:	00005517          	auipc	a0,0x5
    800047d0:	d4450513          	addi	a0,a0,-700 # 80009510 <CONSOLE_STATUS+0x500>
    800047d4:	00001097          	auipc	ra,0x1
    800047d8:	2d0080e7          	jalr	720(ra) # 80005aa4 <_Z11printStringPKc>
    800047dc:	00000613          	li	a2,0
    800047e0:	00a00593          	li	a1,10
    800047e4:	00048513          	mv	a0,s1
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	46c080e7          	jalr	1132(ra) # 80005c54 <_Z8printIntiii>
    800047f0:	00005517          	auipc	a0,0x5
    800047f4:	ab050513          	addi	a0,a0,-1360 # 800092a0 <CONSOLE_STATUS+0x290>
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	2ac080e7          	jalr	684(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004800:	0014849b          	addiw	s1,s1,1
    80004804:	0ff4f493          	andi	s1,s1,255
    80004808:	00f00793          	li	a5,15
    8000480c:	fc97f0e3          	bgeu	a5,s1,800047cc <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004810:	00005517          	auipc	a0,0x5
    80004814:	d2850513          	addi	a0,a0,-728 # 80009538 <CONSOLE_STATUS+0x528>
    80004818:	00001097          	auipc	ra,0x1
    8000481c:	28c080e7          	jalr	652(ra) # 80005aa4 <_Z11printStringPKc>
    finishedD = true;
    80004820:	00100793          	li	a5,1
    80004824:	00007717          	auipc	a4,0x7
    80004828:	72f70a23          	sb	a5,1844(a4) # 8000bf58 <_ZL9finishedD>
    thread_dispatch();
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	bf8080e7          	jalr	-1032(ra) # 80001424 <_Z15thread_dispatchv>
}
    80004834:	01813083          	ld	ra,24(sp)
    80004838:	01013403          	ld	s0,16(sp)
    8000483c:	00813483          	ld	s1,8(sp)
    80004840:	00013903          	ld	s2,0(sp)
    80004844:	02010113          	addi	sp,sp,32
    80004848:	00008067          	ret

000000008000484c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000484c:	fe010113          	addi	sp,sp,-32
    80004850:	00113c23          	sd	ra,24(sp)
    80004854:	00813823          	sd	s0,16(sp)
    80004858:	00913423          	sd	s1,8(sp)
    8000485c:	01213023          	sd	s2,0(sp)
    80004860:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004864:	00000493          	li	s1,0
    80004868:	0400006f          	j	800048a8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000486c:	00005517          	auipc	a0,0x5
    80004870:	c7450513          	addi	a0,a0,-908 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004874:	00001097          	auipc	ra,0x1
    80004878:	230080e7          	jalr	560(ra) # 80005aa4 <_Z11printStringPKc>
    8000487c:	00000613          	li	a2,0
    80004880:	00a00593          	li	a1,10
    80004884:	00048513          	mv	a0,s1
    80004888:	00001097          	auipc	ra,0x1
    8000488c:	3cc080e7          	jalr	972(ra) # 80005c54 <_Z8printIntiii>
    80004890:	00005517          	auipc	a0,0x5
    80004894:	a1050513          	addi	a0,a0,-1520 # 800092a0 <CONSOLE_STATUS+0x290>
    80004898:	00001097          	auipc	ra,0x1
    8000489c:	20c080e7          	jalr	524(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800048a0:	0014849b          	addiw	s1,s1,1
    800048a4:	0ff4f493          	andi	s1,s1,255
    800048a8:	00200793          	li	a5,2
    800048ac:	fc97f0e3          	bgeu	a5,s1,8000486c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800048b0:	00005517          	auipc	a0,0x5
    800048b4:	c3850513          	addi	a0,a0,-968 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800048b8:	00001097          	auipc	ra,0x1
    800048bc:	1ec080e7          	jalr	492(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800048c0:	00700313          	li	t1,7
    thread_dispatch();
    800048c4:	ffffd097          	auipc	ra,0xffffd
    800048c8:	b60080e7          	jalr	-1184(ra) # 80001424 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800048cc:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800048d0:	00005517          	auipc	a0,0x5
    800048d4:	c2850513          	addi	a0,a0,-984 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800048d8:	00001097          	auipc	ra,0x1
    800048dc:	1cc080e7          	jalr	460(ra) # 80005aa4 <_Z11printStringPKc>
    800048e0:	00000613          	li	a2,0
    800048e4:	00a00593          	li	a1,10
    800048e8:	0009051b          	sext.w	a0,s2
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	368080e7          	jalr	872(ra) # 80005c54 <_Z8printIntiii>
    800048f4:	00005517          	auipc	a0,0x5
    800048f8:	9ac50513          	addi	a0,a0,-1620 # 800092a0 <CONSOLE_STATUS+0x290>
    800048fc:	00001097          	auipc	ra,0x1
    80004900:	1a8080e7          	jalr	424(ra) # 80005aa4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004904:	00c00513          	li	a0,12
    80004908:	00000097          	auipc	ra,0x0
    8000490c:	d88080e7          	jalr	-632(ra) # 80004690 <_ZL9fibonaccim>
    80004910:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004914:	00005517          	auipc	a0,0x5
    80004918:	bec50513          	addi	a0,a0,-1044 # 80009500 <CONSOLE_STATUS+0x4f0>
    8000491c:	00001097          	auipc	ra,0x1
    80004920:	188080e7          	jalr	392(ra) # 80005aa4 <_Z11printStringPKc>
    80004924:	00000613          	li	a2,0
    80004928:	00a00593          	li	a1,10
    8000492c:	0009051b          	sext.w	a0,s2
    80004930:	00001097          	auipc	ra,0x1
    80004934:	324080e7          	jalr	804(ra) # 80005c54 <_Z8printIntiii>
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	96850513          	addi	a0,a0,-1688 # 800092a0 <CONSOLE_STATUS+0x290>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	164080e7          	jalr	356(ra) # 80005aa4 <_Z11printStringPKc>
    80004948:	0400006f          	j	80004988 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000494c:	00005517          	auipc	a0,0x5
    80004950:	b9450513          	addi	a0,a0,-1132 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80004954:	00001097          	auipc	ra,0x1
    80004958:	150080e7          	jalr	336(ra) # 80005aa4 <_Z11printStringPKc>
    8000495c:	00000613          	li	a2,0
    80004960:	00a00593          	li	a1,10
    80004964:	00048513          	mv	a0,s1
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	2ec080e7          	jalr	748(ra) # 80005c54 <_Z8printIntiii>
    80004970:	00005517          	auipc	a0,0x5
    80004974:	93050513          	addi	a0,a0,-1744 # 800092a0 <CONSOLE_STATUS+0x290>
    80004978:	00001097          	auipc	ra,0x1
    8000497c:	12c080e7          	jalr	300(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004980:	0014849b          	addiw	s1,s1,1
    80004984:	0ff4f493          	andi	s1,s1,255
    80004988:	00500793          	li	a5,5
    8000498c:	fc97f0e3          	bgeu	a5,s1,8000494c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004990:	00005517          	auipc	a0,0x5
    80004994:	b2850513          	addi	a0,a0,-1240 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80004998:	00001097          	auipc	ra,0x1
    8000499c:	10c080e7          	jalr	268(ra) # 80005aa4 <_Z11printStringPKc>
    finishedC = true;
    800049a0:	00100793          	li	a5,1
    800049a4:	00007717          	auipc	a4,0x7
    800049a8:	5af70aa3          	sb	a5,1461(a4) # 8000bf59 <_ZL9finishedC>
    thread_dispatch();
    800049ac:	ffffd097          	auipc	ra,0xffffd
    800049b0:	a78080e7          	jalr	-1416(ra) # 80001424 <_Z15thread_dispatchv>
}
    800049b4:	01813083          	ld	ra,24(sp)
    800049b8:	01013403          	ld	s0,16(sp)
    800049bc:	00813483          	ld	s1,8(sp)
    800049c0:	00013903          	ld	s2,0(sp)
    800049c4:	02010113          	addi	sp,sp,32
    800049c8:	00008067          	ret

00000000800049cc <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800049cc:	fe010113          	addi	sp,sp,-32
    800049d0:	00113c23          	sd	ra,24(sp)
    800049d4:	00813823          	sd	s0,16(sp)
    800049d8:	00913423          	sd	s1,8(sp)
    800049dc:	01213023          	sd	s2,0(sp)
    800049e0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800049e4:	00000913          	li	s2,0
    800049e8:	0380006f          	j	80004a20 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800049ec:	ffffd097          	auipc	ra,0xffffd
    800049f0:	a38080e7          	jalr	-1480(ra) # 80001424 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800049f4:	00148493          	addi	s1,s1,1
    800049f8:	000027b7          	lui	a5,0x2
    800049fc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004a00:	0097ee63          	bltu	a5,s1,80004a1c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004a04:	00000713          	li	a4,0
    80004a08:	000077b7          	lui	a5,0x7
    80004a0c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004a10:	fce7eee3          	bltu	a5,a4,800049ec <_ZL11workerBodyBPv+0x20>
    80004a14:	00170713          	addi	a4,a4,1
    80004a18:	ff1ff06f          	j	80004a08 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004a1c:	00190913          	addi	s2,s2,1
    80004a20:	00f00793          	li	a5,15
    80004a24:	0527e063          	bltu	a5,s2,80004a64 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004a28:	00005517          	auipc	a0,0x5
    80004a2c:	aa050513          	addi	a0,a0,-1376 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	074080e7          	jalr	116(ra) # 80005aa4 <_Z11printStringPKc>
    80004a38:	00000613          	li	a2,0
    80004a3c:	00a00593          	li	a1,10
    80004a40:	0009051b          	sext.w	a0,s2
    80004a44:	00001097          	auipc	ra,0x1
    80004a48:	210080e7          	jalr	528(ra) # 80005c54 <_Z8printIntiii>
    80004a4c:	00005517          	auipc	a0,0x5
    80004a50:	85450513          	addi	a0,a0,-1964 # 800092a0 <CONSOLE_STATUS+0x290>
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	050080e7          	jalr	80(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004a5c:	00000493          	li	s1,0
    80004a60:	f99ff06f          	j	800049f8 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004a64:	00005517          	auipc	a0,0x5
    80004a68:	a6c50513          	addi	a0,a0,-1428 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80004a6c:	00001097          	auipc	ra,0x1
    80004a70:	038080e7          	jalr	56(ra) # 80005aa4 <_Z11printStringPKc>
    finishedB = true;
    80004a74:	00100793          	li	a5,1
    80004a78:	00007717          	auipc	a4,0x7
    80004a7c:	4ef70123          	sb	a5,1250(a4) # 8000bf5a <_ZL9finishedB>
    thread_dispatch();
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	9a4080e7          	jalr	-1628(ra) # 80001424 <_Z15thread_dispatchv>
}
    80004a88:	01813083          	ld	ra,24(sp)
    80004a8c:	01013403          	ld	s0,16(sp)
    80004a90:	00813483          	ld	s1,8(sp)
    80004a94:	00013903          	ld	s2,0(sp)
    80004a98:	02010113          	addi	sp,sp,32
    80004a9c:	00008067          	ret

0000000080004aa0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004aa0:	fe010113          	addi	sp,sp,-32
    80004aa4:	00113c23          	sd	ra,24(sp)
    80004aa8:	00813823          	sd	s0,16(sp)
    80004aac:	00913423          	sd	s1,8(sp)
    80004ab0:	01213023          	sd	s2,0(sp)
    80004ab4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004ab8:	00000913          	li	s2,0
    80004abc:	0380006f          	j	80004af4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004ac0:	ffffd097          	auipc	ra,0xffffd
    80004ac4:	964080e7          	jalr	-1692(ra) # 80001424 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004ac8:	00148493          	addi	s1,s1,1
    80004acc:	000027b7          	lui	a5,0x2
    80004ad0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ad4:	0097ee63          	bltu	a5,s1,80004af0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ad8:	00000713          	li	a4,0
    80004adc:	000077b7          	lui	a5,0x7
    80004ae0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004ae4:	fce7eee3          	bltu	a5,a4,80004ac0 <_ZL11workerBodyAPv+0x20>
    80004ae8:	00170713          	addi	a4,a4,1
    80004aec:	ff1ff06f          	j	80004adc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004af0:	00190913          	addi	s2,s2,1
    80004af4:	00900793          	li	a5,9
    80004af8:	0527e063          	bltu	a5,s2,80004b38 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004afc:	00005517          	auipc	a0,0x5
    80004b00:	9b450513          	addi	a0,a0,-1612 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80004b04:	00001097          	auipc	ra,0x1
    80004b08:	fa0080e7          	jalr	-96(ra) # 80005aa4 <_Z11printStringPKc>
    80004b0c:	00000613          	li	a2,0
    80004b10:	00a00593          	li	a1,10
    80004b14:	0009051b          	sext.w	a0,s2
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	13c080e7          	jalr	316(ra) # 80005c54 <_Z8printIntiii>
    80004b20:	00004517          	auipc	a0,0x4
    80004b24:	78050513          	addi	a0,a0,1920 # 800092a0 <CONSOLE_STATUS+0x290>
    80004b28:	00001097          	auipc	ra,0x1
    80004b2c:	f7c080e7          	jalr	-132(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004b30:	00000493          	li	s1,0
    80004b34:	f99ff06f          	j	80004acc <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004b38:	00005517          	auipc	a0,0x5
    80004b3c:	98050513          	addi	a0,a0,-1664 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80004b40:	00001097          	auipc	ra,0x1
    80004b44:	f64080e7          	jalr	-156(ra) # 80005aa4 <_Z11printStringPKc>
    finishedA = true;
    80004b48:	00100793          	li	a5,1
    80004b4c:	00007717          	auipc	a4,0x7
    80004b50:	40f707a3          	sb	a5,1039(a4) # 8000bf5b <_ZL9finishedA>
}
    80004b54:	01813083          	ld	ra,24(sp)
    80004b58:	01013403          	ld	s0,16(sp)
    80004b5c:	00813483          	ld	s1,8(sp)
    80004b60:	00013903          	ld	s2,0(sp)
    80004b64:	02010113          	addi	sp,sp,32
    80004b68:	00008067          	ret

0000000080004b6c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004b6c:	fd010113          	addi	sp,sp,-48
    80004b70:	02113423          	sd	ra,40(sp)
    80004b74:	02813023          	sd	s0,32(sp)
    80004b78:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004b7c:	00000613          	li	a2,0
    80004b80:	00000597          	auipc	a1,0x0
    80004b84:	f2058593          	addi	a1,a1,-224 # 80004aa0 <_ZL11workerBodyAPv>
    80004b88:	fd040513          	addi	a0,s0,-48
    80004b8c:	ffffc097          	auipc	ra,0xffffc
    80004b90:	704080e7          	jalr	1796(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    80004b94:	00005517          	auipc	a0,0x5
    80004b98:	9b450513          	addi	a0,a0,-1612 # 80009548 <CONSOLE_STATUS+0x538>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	f08080e7          	jalr	-248(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ba4:	00000613          	li	a2,0
    80004ba8:	00000597          	auipc	a1,0x0
    80004bac:	e2458593          	addi	a1,a1,-476 # 800049cc <_ZL11workerBodyBPv>
    80004bb0:	fd840513          	addi	a0,s0,-40
    80004bb4:	ffffc097          	auipc	ra,0xffffc
    80004bb8:	6dc080e7          	jalr	1756(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80004bbc:	00005517          	auipc	a0,0x5
    80004bc0:	9a450513          	addi	a0,a0,-1628 # 80009560 <CONSOLE_STATUS+0x550>
    80004bc4:	00001097          	auipc	ra,0x1
    80004bc8:	ee0080e7          	jalr	-288(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004bcc:	00000613          	li	a2,0
    80004bd0:	00000597          	auipc	a1,0x0
    80004bd4:	c7c58593          	addi	a1,a1,-900 # 8000484c <_ZL11workerBodyCPv>
    80004bd8:	fe040513          	addi	a0,s0,-32
    80004bdc:	ffffc097          	auipc	ra,0xffffc
    80004be0:	6b4080e7          	jalr	1716(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80004be4:	00005517          	auipc	a0,0x5
    80004be8:	99450513          	addi	a0,a0,-1644 # 80009578 <CONSOLE_STATUS+0x568>
    80004bec:	00001097          	auipc	ra,0x1
    80004bf0:	eb8080e7          	jalr	-328(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004bf4:	00000613          	li	a2,0
    80004bf8:	00000597          	auipc	a1,0x0
    80004bfc:	b0c58593          	addi	a1,a1,-1268 # 80004704 <_ZL11workerBodyDPv>
    80004c00:	fe840513          	addi	a0,s0,-24
    80004c04:	ffffc097          	auipc	ra,0xffffc
    80004c08:	68c080e7          	jalr	1676(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80004c0c:	00005517          	auipc	a0,0x5
    80004c10:	98450513          	addi	a0,a0,-1660 # 80009590 <CONSOLE_STATUS+0x580>
    80004c14:	00001097          	auipc	ra,0x1
    80004c18:	e90080e7          	jalr	-368(ra) # 80005aa4 <_Z11printStringPKc>
    80004c1c:	00c0006f          	j	80004c28 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004c20:	ffffd097          	auipc	ra,0xffffd
    80004c24:	804080e7          	jalr	-2044(ra) # 80001424 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004c28:	00007797          	auipc	a5,0x7
    80004c2c:	3337c783          	lbu	a5,819(a5) # 8000bf5b <_ZL9finishedA>
    80004c30:	fe0788e3          	beqz	a5,80004c20 <_Z18Threads_C_API_testv+0xb4>
    80004c34:	00007797          	auipc	a5,0x7
    80004c38:	3267c783          	lbu	a5,806(a5) # 8000bf5a <_ZL9finishedB>
    80004c3c:	fe0782e3          	beqz	a5,80004c20 <_Z18Threads_C_API_testv+0xb4>
    80004c40:	00007797          	auipc	a5,0x7
    80004c44:	3197c783          	lbu	a5,793(a5) # 8000bf59 <_ZL9finishedC>
    80004c48:	fc078ce3          	beqz	a5,80004c20 <_Z18Threads_C_API_testv+0xb4>
    80004c4c:	00007797          	auipc	a5,0x7
    80004c50:	30c7c783          	lbu	a5,780(a5) # 8000bf58 <_ZL9finishedD>
    80004c54:	fc0786e3          	beqz	a5,80004c20 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004c58:	02813083          	ld	ra,40(sp)
    80004c5c:	02013403          	ld	s0,32(sp)
    80004c60:	03010113          	addi	sp,sp,48
    80004c64:	00008067          	ret

0000000080004c68 <_ZL4workPKc>:
static volatile bool highFinished = false;
static volatile bool mediumFinished = false;
static volatile bool lowFinished = false;
static volatile bool testFinished = false;

static void work(const char* name) {
    80004c68:	fe010113          	addi	sp,sp,-32
    80004c6c:	00113c23          	sd	ra,24(sp)
    80004c70:	00813823          	sd	s0,16(sp)
    80004c74:	00913423          	sd	s1,8(sp)
    80004c78:	01213023          	sd	s2,0(sp)
    80004c7c:	02010413          	addi	s0,sp,32
    80004c80:	00050913          	mv	s2,a0
    for (int i = 0; i < 5; i++) {
    80004c84:	00000493          	li	s1,0
    80004c88:	00400793          	li	a5,4
    80004c8c:	0497ca63          	blt	a5,s1,80004ce0 <_ZL4workPKc+0x78>
        printString(name);
    80004c90:	00090513          	mv	a0,s2
    80004c94:	00001097          	auipc	ra,0x1
    80004c98:	e10080e7          	jalr	-496(ra) # 80005aa4 <_Z11printStringPKc>
        printString(": i=");
    80004c9c:	00005517          	auipc	a0,0x5
    80004ca0:	94450513          	addi	a0,a0,-1724 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	e00080e7          	jalr	-512(ra) # 80005aa4 <_Z11printStringPKc>
        printInt(i);
    80004cac:	00000613          	li	a2,0
    80004cb0:	00a00593          	li	a1,10
    80004cb4:	00048513          	mv	a0,s1
    80004cb8:	00001097          	auipc	ra,0x1
    80004cbc:	f9c080e7          	jalr	-100(ra) # 80005c54 <_Z8printIntiii>
        printString("\n");
    80004cc0:	00004517          	auipc	a0,0x4
    80004cc4:	5e050513          	addi	a0,a0,1504 # 800092a0 <CONSOLE_STATUS+0x290>
    80004cc8:	00001097          	auipc	ra,0x1
    80004ccc:	ddc080e7          	jalr	-548(ra) # 80005aa4 <_Z11printStringPKc>

        Thread::dispatch();
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	da4080e7          	jalr	-604(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    for (int i = 0; i < 5; i++) {
    80004cd8:	0014849b          	addiw	s1,s1,1
    80004cdc:	fadff06f          	j	80004c88 <_ZL4workPKc+0x20>
    }
}
    80004ce0:	01813083          	ld	ra,24(sp)
    80004ce4:	01013403          	ld	s0,16(sp)
    80004ce8:	00813483          	ld	s1,8(sp)
    80004cec:	00013903          	ld	s2,0(sp)
    80004cf0:	02010113          	addi	sp,sp,32
    80004cf4:	00008067          	ret

0000000080004cf8 <_Z12PriorityTestv>:

        testFinished = true;
    }
};

void PriorityTest() {
    80004cf8:	fe010113          	addi	sp,sp,-32
    80004cfc:	00113c23          	sd	ra,24(sp)
    80004d00:	00813823          	sd	s0,16(sp)
    80004d04:	00913423          	sd	s1,8(sp)
    80004d08:	01213023          	sd	s2,0(sp)
    80004d0c:	02010413          	addi	s0,sp,32
    Thread* test = new PriorityMainThread();
    80004d10:	02800513          	li	a0,40
    80004d14:	ffffe097          	auipc	ra,0xffffe
    80004d18:	980080e7          	jalr	-1664(ra) # 80002694 <_Znwm>
    80004d1c:	00050493          	mv	s1,a0
    PriorityMainThread() : Thread(LOW) {}
    80004d20:	00200593          	li	a1,2
    80004d24:	ffffe097          	auipc	ra,0xffffe
    80004d28:	cc0080e7          	jalr	-832(ra) # 800029e4 <_ZN6ThreadC1E14ThreadPriority>
    80004d2c:	00007797          	auipc	a5,0x7
    80004d30:	09478793          	addi	a5,a5,148 # 8000bdc0 <_ZTV18PriorityMainThread+0x10>
    80004d34:	00f4b023          	sd	a5,0(s1)

    test->start();
    80004d38:	00048513          	mv	a0,s1
    80004d3c:	ffffe097          	auipc	ra,0xffffe
    80004d40:	cdc080e7          	jalr	-804(ra) # 80002a18 <_ZN6Thread5startEv>

    while (!testFinished) {
    80004d44:	00007797          	auipc	a5,0x7
    80004d48:	21b7c783          	lbu	a5,539(a5) # 8000bf5f <_ZL12testFinished>
    80004d4c:	00079863          	bnez	a5,80004d5c <_Z12PriorityTestv+0x64>
        Thread::dispatch();
    80004d50:	ffffe097          	auipc	ra,0xffffe
    80004d54:	d24080e7          	jalr	-732(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    while (!testFinished) {
    80004d58:	fedff06f          	j	80004d44 <_Z12PriorityTestv+0x4c>
    }

    delete test;
    80004d5c:	00048a63          	beqz	s1,80004d70 <_Z12PriorityTestv+0x78>
    80004d60:	0004b783          	ld	a5,0(s1)
    80004d64:	0087b783          	ld	a5,8(a5)
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	000780e7          	jalr	a5
    80004d70:	01813083          	ld	ra,24(sp)
    80004d74:	01013403          	ld	s0,16(sp)
    80004d78:	00813483          	ld	s1,8(sp)
    80004d7c:	00013903          	ld	s2,0(sp)
    80004d80:	02010113          	addi	sp,sp,32
    80004d84:	00008067          	ret
    80004d88:	00050913          	mv	s2,a0
    Thread* test = new PriorityMainThread();
    80004d8c:	00048513          	mv	a0,s1
    80004d90:	ffffe097          	auipc	ra,0xffffe
    80004d94:	954080e7          	jalr	-1708(ra) # 800026e4 <_ZdlPv>
    80004d98:	00090513          	mv	a0,s2
    80004d9c:	00008097          	auipc	ra,0x8
    80004da0:	2ac080e7          	jalr	684(ra) # 8000d048 <_Unwind_Resume>

0000000080004da4 <_ZN18PriorityMainThread3runEv>:
    void run() override {
    80004da4:	fd010113          	addi	sp,sp,-48
    80004da8:	02113423          	sd	ra,40(sp)
    80004dac:	02813023          	sd	s0,32(sp)
    80004db0:	00913c23          	sd	s1,24(sp)
    80004db4:	01213823          	sd	s2,16(sp)
    80004db8:	01313423          	sd	s3,8(sp)
    80004dbc:	03010413          	addi	s0,sp,48
        Thread* low = new LowThread();
    80004dc0:	02800513          	li	a0,40
    80004dc4:	ffffe097          	auipc	ra,0xffffe
    80004dc8:	8d0080e7          	jalr	-1840(ra) # 80002694 <_Znwm>
    80004dcc:	00050993          	mv	s3,a0
    LowThread() : Thread(LOW) {}
    80004dd0:	00200593          	li	a1,2
    80004dd4:	ffffe097          	auipc	ra,0xffffe
    80004dd8:	c10080e7          	jalr	-1008(ra) # 800029e4 <_ZN6ThreadC1E14ThreadPriority>
    80004ddc:	00007797          	auipc	a5,0x7
    80004de0:	fbc78793          	addi	a5,a5,-68 # 8000bd98 <_ZTV9LowThread+0x10>
    80004de4:	00f9b023          	sd	a5,0(s3)
        Thread* medium = new MediumThread();
    80004de8:	02800513          	li	a0,40
    80004dec:	ffffe097          	auipc	ra,0xffffe
    80004df0:	8a8080e7          	jalr	-1880(ra) # 80002694 <_Znwm>
    80004df4:	00050913          	mv	s2,a0
    MediumThread() : Thread(MEDIUM) {}
    80004df8:	00100593          	li	a1,1
    80004dfc:	ffffe097          	auipc	ra,0xffffe
    80004e00:	be8080e7          	jalr	-1048(ra) # 800029e4 <_ZN6ThreadC1E14ThreadPriority>
    80004e04:	00007797          	auipc	a5,0x7
    80004e08:	f6c78793          	addi	a5,a5,-148 # 8000bd70 <_ZTV12MediumThread+0x10>
    80004e0c:	00f93023          	sd	a5,0(s2)
        Thread* high = new HighThread();
    80004e10:	02800513          	li	a0,40
    80004e14:	ffffe097          	auipc	ra,0xffffe
    80004e18:	880080e7          	jalr	-1920(ra) # 80002694 <_Znwm>
    80004e1c:	00050493          	mv	s1,a0
    HighThread() : Thread(HIGH) {}
    80004e20:	00000593          	li	a1,0
    80004e24:	ffffe097          	auipc	ra,0xffffe
    80004e28:	bc0080e7          	jalr	-1088(ra) # 800029e4 <_ZN6ThreadC1E14ThreadPriority>
    80004e2c:	00007797          	auipc	a5,0x7
    80004e30:	f1c78793          	addi	a5,a5,-228 # 8000bd48 <_ZTV10HighThread+0x10>
    80004e34:	00f4b023          	sd	a5,0(s1)
        printString("Priority threads created\n");
    80004e38:	00004517          	auipc	a0,0x4
    80004e3c:	77050513          	addi	a0,a0,1904 # 800095a8 <CONSOLE_STATUS+0x598>
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	c64080e7          	jalr	-924(ra) # 80005aa4 <_Z11printStringPKc>
        low->start();
    80004e48:	00098513          	mv	a0,s3
    80004e4c:	ffffe097          	auipc	ra,0xffffe
    80004e50:	bcc080e7          	jalr	-1076(ra) # 80002a18 <_ZN6Thread5startEv>
        medium->start();
    80004e54:	00090513          	mv	a0,s2
    80004e58:	ffffe097          	auipc	ra,0xffffe
    80004e5c:	bc0080e7          	jalr	-1088(ra) # 80002a18 <_ZN6Thread5startEv>
        high->start();
    80004e60:	00048513          	mv	a0,s1
    80004e64:	ffffe097          	auipc	ra,0xffffe
    80004e68:	bb4080e7          	jalr	-1100(ra) # 80002a18 <_ZN6Thread5startEv>
    80004e6c:	00c0006f          	j	80004e78 <_ZN18PriorityMainThread3runEv+0xd4>
            Thread::dispatch();
    80004e70:	ffffe097          	auipc	ra,0xffffe
    80004e74:	c04080e7          	jalr	-1020(ra) # 80002a74 <_ZN6Thread8dispatchEv>
        while (!(highFinished && mediumFinished && lowFinished)) {
    80004e78:	00007797          	auipc	a5,0x7
    80004e7c:	0e47c783          	lbu	a5,228(a5) # 8000bf5c <_ZL12highFinished>
    80004e80:	fe0788e3          	beqz	a5,80004e70 <_ZN18PriorityMainThread3runEv+0xcc>
    80004e84:	00007797          	auipc	a5,0x7
    80004e88:	0d97c783          	lbu	a5,217(a5) # 8000bf5d <_ZL14mediumFinished>
    80004e8c:	fe0782e3          	beqz	a5,80004e70 <_ZN18PriorityMainThread3runEv+0xcc>
    80004e90:	00007797          	auipc	a5,0x7
    80004e94:	0ce7c783          	lbu	a5,206(a5) # 8000bf5e <_ZL11lowFinished>
    80004e98:	fc078ce3          	beqz	a5,80004e70 <_ZN18PriorityMainThread3runEv+0xcc>
        delete low;
    80004e9c:	00098a63          	beqz	s3,80004eb0 <_ZN18PriorityMainThread3runEv+0x10c>
    80004ea0:	0009b783          	ld	a5,0(s3)
    80004ea4:	0087b783          	ld	a5,8(a5)
    80004ea8:	00098513          	mv	a0,s3
    80004eac:	000780e7          	jalr	a5
        delete medium;
    80004eb0:	00090a63          	beqz	s2,80004ec4 <_ZN18PriorityMainThread3runEv+0x120>
    80004eb4:	00093783          	ld	a5,0(s2)
    80004eb8:	0087b783          	ld	a5,8(a5)
    80004ebc:	00090513          	mv	a0,s2
    80004ec0:	000780e7          	jalr	a5
        delete high;
    80004ec4:	00048a63          	beqz	s1,80004ed8 <_ZN18PriorityMainThread3runEv+0x134>
    80004ec8:	0004b783          	ld	a5,0(s1)
    80004ecc:	0087b783          	ld	a5,8(a5)
    80004ed0:	00048513          	mv	a0,s1
    80004ed4:	000780e7          	jalr	a5
        printString("PRIORITY TEST FINISHED\n");
    80004ed8:	00004517          	auipc	a0,0x4
    80004edc:	6f050513          	addi	a0,a0,1776 # 800095c8 <CONSOLE_STATUS+0x5b8>
    80004ee0:	00001097          	auipc	ra,0x1
    80004ee4:	bc4080e7          	jalr	-1084(ra) # 80005aa4 <_Z11printStringPKc>
        testFinished = true;
    80004ee8:	00100793          	li	a5,1
    80004eec:	00007717          	auipc	a4,0x7
    80004ef0:	06f709a3          	sb	a5,115(a4) # 8000bf5f <_ZL12testFinished>
    }
    80004ef4:	02813083          	ld	ra,40(sp)
    80004ef8:	02013403          	ld	s0,32(sp)
    80004efc:	01813483          	ld	s1,24(sp)
    80004f00:	01013903          	ld	s2,16(sp)
    80004f04:	00813983          	ld	s3,8(sp)
    80004f08:	03010113          	addi	sp,sp,48
    80004f0c:	00008067          	ret
    80004f10:	00050493          	mv	s1,a0
        Thread* low = new LowThread();
    80004f14:	00098513          	mv	a0,s3
    80004f18:	ffffd097          	auipc	ra,0xffffd
    80004f1c:	7cc080e7          	jalr	1996(ra) # 800026e4 <_ZdlPv>
    80004f20:	00048513          	mv	a0,s1
    80004f24:	00008097          	auipc	ra,0x8
    80004f28:	124080e7          	jalr	292(ra) # 8000d048 <_Unwind_Resume>
    80004f2c:	00050493          	mv	s1,a0
        Thread* medium = new MediumThread();
    80004f30:	00090513          	mv	a0,s2
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	7b0080e7          	jalr	1968(ra) # 800026e4 <_ZdlPv>
    80004f3c:	00048513          	mv	a0,s1
    80004f40:	00008097          	auipc	ra,0x8
    80004f44:	108080e7          	jalr	264(ra) # 8000d048 <_Unwind_Resume>
    80004f48:	00050913          	mv	s2,a0
        Thread* high = new HighThread();
    80004f4c:	00048513          	mv	a0,s1
    80004f50:	ffffd097          	auipc	ra,0xffffd
    80004f54:	794080e7          	jalr	1940(ra) # 800026e4 <_ZdlPv>
    80004f58:	00090513          	mv	a0,s2
    80004f5c:	00008097          	auipc	ra,0x8
    80004f60:	0ec080e7          	jalr	236(ra) # 8000d048 <_Unwind_Resume>

0000000080004f64 <_ZN9LowThread3runEv>:
    void run() override {
    80004f64:	ff010113          	addi	sp,sp,-16
    80004f68:	00113423          	sd	ra,8(sp)
    80004f6c:	00813023          	sd	s0,0(sp)
    80004f70:	01010413          	addi	s0,sp,16
        work("LOW");
    80004f74:	00004517          	auipc	a0,0x4
    80004f78:	67450513          	addi	a0,a0,1652 # 800095e8 <CONSOLE_STATUS+0x5d8>
    80004f7c:	00000097          	auipc	ra,0x0
    80004f80:	cec080e7          	jalr	-788(ra) # 80004c68 <_ZL4workPKc>
        lowFinished = true;
    80004f84:	00100793          	li	a5,1
    80004f88:	00007717          	auipc	a4,0x7
    80004f8c:	fcf70b23          	sb	a5,-42(a4) # 8000bf5e <_ZL11lowFinished>
    }
    80004f90:	00813083          	ld	ra,8(sp)
    80004f94:	00013403          	ld	s0,0(sp)
    80004f98:	01010113          	addi	sp,sp,16
    80004f9c:	00008067          	ret

0000000080004fa0 <_ZN12MediumThread3runEv>:
    void run() override {
    80004fa0:	ff010113          	addi	sp,sp,-16
    80004fa4:	00113423          	sd	ra,8(sp)
    80004fa8:	00813023          	sd	s0,0(sp)
    80004fac:	01010413          	addi	s0,sp,16
        work("MEDIUM");
    80004fb0:	00004517          	auipc	a0,0x4
    80004fb4:	64050513          	addi	a0,a0,1600 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	cb0080e7          	jalr	-848(ra) # 80004c68 <_ZL4workPKc>
        mediumFinished = true;
    80004fc0:	00100793          	li	a5,1
    80004fc4:	00007717          	auipc	a4,0x7
    80004fc8:	f8f70ca3          	sb	a5,-103(a4) # 8000bf5d <_ZL14mediumFinished>
    }
    80004fcc:	00813083          	ld	ra,8(sp)
    80004fd0:	00013403          	ld	s0,0(sp)
    80004fd4:	01010113          	addi	sp,sp,16
    80004fd8:	00008067          	ret

0000000080004fdc <_ZN10HighThread3runEv>:
    void run() override {
    80004fdc:	ff010113          	addi	sp,sp,-16
    80004fe0:	00113423          	sd	ra,8(sp)
    80004fe4:	00813023          	sd	s0,0(sp)
    80004fe8:	01010413          	addi	s0,sp,16
        work("HIGH");
    80004fec:	00004517          	auipc	a0,0x4
    80004ff0:	60c50513          	addi	a0,a0,1548 # 800095f8 <CONSOLE_STATUS+0x5e8>
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	c74080e7          	jalr	-908(ra) # 80004c68 <_ZL4workPKc>
        highFinished = true;
    80004ffc:	00100793          	li	a5,1
    80005000:	00007717          	auipc	a4,0x7
    80005004:	f4f70e23          	sb	a5,-164(a4) # 8000bf5c <_ZL12highFinished>
    }
    80005008:	00813083          	ld	ra,8(sp)
    8000500c:	00013403          	ld	s0,0(sp)
    80005010:	01010113          	addi	sp,sp,16
    80005014:	00008067          	ret

0000000080005018 <_ZN9LowThreadD1Ev>:
class LowThread : public Thread {
    80005018:	ff010113          	addi	sp,sp,-16
    8000501c:	00113423          	sd	ra,8(sp)
    80005020:	00813023          	sd	s0,0(sp)
    80005024:	01010413          	addi	s0,sp,16
    80005028:	00007797          	auipc	a5,0x7
    8000502c:	d7078793          	addi	a5,a5,-656 # 8000bd98 <_ZTV9LowThread+0x10>
    80005030:	00f53023          	sd	a5,0(a0)
    80005034:	ffffe097          	auipc	ra,0xffffe
    80005038:	818080e7          	jalr	-2024(ra) # 8000284c <_ZN6ThreadD1Ev>
    8000503c:	00813083          	ld	ra,8(sp)
    80005040:	00013403          	ld	s0,0(sp)
    80005044:	01010113          	addi	sp,sp,16
    80005048:	00008067          	ret

000000008000504c <_ZN9LowThreadD0Ev>:
    8000504c:	fe010113          	addi	sp,sp,-32
    80005050:	00113c23          	sd	ra,24(sp)
    80005054:	00813823          	sd	s0,16(sp)
    80005058:	00913423          	sd	s1,8(sp)
    8000505c:	02010413          	addi	s0,sp,32
    80005060:	00050493          	mv	s1,a0
    80005064:	00007797          	auipc	a5,0x7
    80005068:	d3478793          	addi	a5,a5,-716 # 8000bd98 <_ZTV9LowThread+0x10>
    8000506c:	00f53023          	sd	a5,0(a0)
    80005070:	ffffd097          	auipc	ra,0xffffd
    80005074:	7dc080e7          	jalr	2012(ra) # 8000284c <_ZN6ThreadD1Ev>
    80005078:	00048513          	mv	a0,s1
    8000507c:	ffffd097          	auipc	ra,0xffffd
    80005080:	668080e7          	jalr	1640(ra) # 800026e4 <_ZdlPv>
    80005084:	01813083          	ld	ra,24(sp)
    80005088:	01013403          	ld	s0,16(sp)
    8000508c:	00813483          	ld	s1,8(sp)
    80005090:	02010113          	addi	sp,sp,32
    80005094:	00008067          	ret

0000000080005098 <_ZN12MediumThreadD1Ev>:
class MediumThread : public Thread {
    80005098:	ff010113          	addi	sp,sp,-16
    8000509c:	00113423          	sd	ra,8(sp)
    800050a0:	00813023          	sd	s0,0(sp)
    800050a4:	01010413          	addi	s0,sp,16
    800050a8:	00007797          	auipc	a5,0x7
    800050ac:	cc878793          	addi	a5,a5,-824 # 8000bd70 <_ZTV12MediumThread+0x10>
    800050b0:	00f53023          	sd	a5,0(a0)
    800050b4:	ffffd097          	auipc	ra,0xffffd
    800050b8:	798080e7          	jalr	1944(ra) # 8000284c <_ZN6ThreadD1Ev>
    800050bc:	00813083          	ld	ra,8(sp)
    800050c0:	00013403          	ld	s0,0(sp)
    800050c4:	01010113          	addi	sp,sp,16
    800050c8:	00008067          	ret

00000000800050cc <_ZN12MediumThreadD0Ev>:
    800050cc:	fe010113          	addi	sp,sp,-32
    800050d0:	00113c23          	sd	ra,24(sp)
    800050d4:	00813823          	sd	s0,16(sp)
    800050d8:	00913423          	sd	s1,8(sp)
    800050dc:	02010413          	addi	s0,sp,32
    800050e0:	00050493          	mv	s1,a0
    800050e4:	00007797          	auipc	a5,0x7
    800050e8:	c8c78793          	addi	a5,a5,-884 # 8000bd70 <_ZTV12MediumThread+0x10>
    800050ec:	00f53023          	sd	a5,0(a0)
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	75c080e7          	jalr	1884(ra) # 8000284c <_ZN6ThreadD1Ev>
    800050f8:	00048513          	mv	a0,s1
    800050fc:	ffffd097          	auipc	ra,0xffffd
    80005100:	5e8080e7          	jalr	1512(ra) # 800026e4 <_ZdlPv>
    80005104:	01813083          	ld	ra,24(sp)
    80005108:	01013403          	ld	s0,16(sp)
    8000510c:	00813483          	ld	s1,8(sp)
    80005110:	02010113          	addi	sp,sp,32
    80005114:	00008067          	ret

0000000080005118 <_ZN10HighThreadD1Ev>:
class HighThread : public Thread {
    80005118:	ff010113          	addi	sp,sp,-16
    8000511c:	00113423          	sd	ra,8(sp)
    80005120:	00813023          	sd	s0,0(sp)
    80005124:	01010413          	addi	s0,sp,16
    80005128:	00007797          	auipc	a5,0x7
    8000512c:	c2078793          	addi	a5,a5,-992 # 8000bd48 <_ZTV10HighThread+0x10>
    80005130:	00f53023          	sd	a5,0(a0)
    80005134:	ffffd097          	auipc	ra,0xffffd
    80005138:	718080e7          	jalr	1816(ra) # 8000284c <_ZN6ThreadD1Ev>
    8000513c:	00813083          	ld	ra,8(sp)
    80005140:	00013403          	ld	s0,0(sp)
    80005144:	01010113          	addi	sp,sp,16
    80005148:	00008067          	ret

000000008000514c <_ZN10HighThreadD0Ev>:
    8000514c:	fe010113          	addi	sp,sp,-32
    80005150:	00113c23          	sd	ra,24(sp)
    80005154:	00813823          	sd	s0,16(sp)
    80005158:	00913423          	sd	s1,8(sp)
    8000515c:	02010413          	addi	s0,sp,32
    80005160:	00050493          	mv	s1,a0
    80005164:	00007797          	auipc	a5,0x7
    80005168:	be478793          	addi	a5,a5,-1052 # 8000bd48 <_ZTV10HighThread+0x10>
    8000516c:	00f53023          	sd	a5,0(a0)
    80005170:	ffffd097          	auipc	ra,0xffffd
    80005174:	6dc080e7          	jalr	1756(ra) # 8000284c <_ZN6ThreadD1Ev>
    80005178:	00048513          	mv	a0,s1
    8000517c:	ffffd097          	auipc	ra,0xffffd
    80005180:	568080e7          	jalr	1384(ra) # 800026e4 <_ZdlPv>
    80005184:	01813083          	ld	ra,24(sp)
    80005188:	01013403          	ld	s0,16(sp)
    8000518c:	00813483          	ld	s1,8(sp)
    80005190:	02010113          	addi	sp,sp,32
    80005194:	00008067          	ret

0000000080005198 <_ZN18PriorityMainThreadD1Ev>:
class PriorityMainThread : public Thread {
    80005198:	ff010113          	addi	sp,sp,-16
    8000519c:	00113423          	sd	ra,8(sp)
    800051a0:	00813023          	sd	s0,0(sp)
    800051a4:	01010413          	addi	s0,sp,16
    800051a8:	00007797          	auipc	a5,0x7
    800051ac:	c1878793          	addi	a5,a5,-1000 # 8000bdc0 <_ZTV18PriorityMainThread+0x10>
    800051b0:	00f53023          	sd	a5,0(a0)
    800051b4:	ffffd097          	auipc	ra,0xffffd
    800051b8:	698080e7          	jalr	1688(ra) # 8000284c <_ZN6ThreadD1Ev>
    800051bc:	00813083          	ld	ra,8(sp)
    800051c0:	00013403          	ld	s0,0(sp)
    800051c4:	01010113          	addi	sp,sp,16
    800051c8:	00008067          	ret

00000000800051cc <_ZN18PriorityMainThreadD0Ev>:
    800051cc:	fe010113          	addi	sp,sp,-32
    800051d0:	00113c23          	sd	ra,24(sp)
    800051d4:	00813823          	sd	s0,16(sp)
    800051d8:	00913423          	sd	s1,8(sp)
    800051dc:	02010413          	addi	s0,sp,32
    800051e0:	00050493          	mv	s1,a0
    800051e4:	00007797          	auipc	a5,0x7
    800051e8:	bdc78793          	addi	a5,a5,-1060 # 8000bdc0 <_ZTV18PriorityMainThread+0x10>
    800051ec:	00f53023          	sd	a5,0(a0)
    800051f0:	ffffd097          	auipc	ra,0xffffd
    800051f4:	65c080e7          	jalr	1628(ra) # 8000284c <_ZN6ThreadD1Ev>
    800051f8:	00048513          	mv	a0,s1
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	4e8080e7          	jalr	1256(ra) # 800026e4 <_ZdlPv>
    80005204:	01813083          	ld	ra,24(sp)
    80005208:	01013403          	ld	s0,16(sp)
    8000520c:	00813483          	ld	s1,8(sp)
    80005210:	02010113          	addi	sp,sp,32
    80005214:	00008067          	ret

0000000080005218 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005218:	fd010113          	addi	sp,sp,-48
    8000521c:	02113423          	sd	ra,40(sp)
    80005220:	02813023          	sd	s0,32(sp)
    80005224:	00913c23          	sd	s1,24(sp)
    80005228:	01213823          	sd	s2,16(sp)
    8000522c:	01313423          	sd	s3,8(sp)
    80005230:	03010413          	addi	s0,sp,48
    80005234:	00050993          	mv	s3,a0
    80005238:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000523c:	00000913          	li	s2,0
    80005240:	00c0006f          	j	8000524c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005244:	ffffe097          	auipc	ra,0xffffe
    80005248:	830080e7          	jalr	-2000(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000524c:	ffffc097          	auipc	ra,0xffffc
    80005250:	400080e7          	jalr	1024(ra) # 8000164c <_Z4getcv>
    80005254:	0005059b          	sext.w	a1,a0
    80005258:	01b00793          	li	a5,27
    8000525c:	02f58a63          	beq	a1,a5,80005290 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005260:	0084b503          	ld	a0,8(s1)
    80005264:	00001097          	auipc	ra,0x1
    80005268:	c64080e7          	jalr	-924(ra) # 80005ec8 <_ZN9BufferCPP3putEi>
        i++;
    8000526c:	0019071b          	addiw	a4,s2,1
    80005270:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005274:	0004a683          	lw	a3,0(s1)
    80005278:	0026979b          	slliw	a5,a3,0x2
    8000527c:	00d787bb          	addw	a5,a5,a3
    80005280:	0017979b          	slliw	a5,a5,0x1
    80005284:	02f767bb          	remw	a5,a4,a5
    80005288:	fc0792e3          	bnez	a5,8000524c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000528c:	fb9ff06f          	j	80005244 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005290:	00100793          	li	a5,1
    80005294:	00007717          	auipc	a4,0x7
    80005298:	ccf72623          	sw	a5,-820(a4) # 8000bf60 <_ZL9threadEnd>
    td->buffer->put('!');
    8000529c:	0289b783          	ld	a5,40(s3)
    800052a0:	02100593          	li	a1,33
    800052a4:	0087b503          	ld	a0,8(a5)
    800052a8:	00001097          	auipc	ra,0x1
    800052ac:	c20080e7          	jalr	-992(ra) # 80005ec8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800052b0:	0104b503          	ld	a0,16(s1)
    800052b4:	ffffe097          	auipc	ra,0xffffe
    800052b8:	878080e7          	jalr	-1928(ra) # 80002b2c <_ZN9Semaphore6signalEv>
}
    800052bc:	02813083          	ld	ra,40(sp)
    800052c0:	02013403          	ld	s0,32(sp)
    800052c4:	01813483          	ld	s1,24(sp)
    800052c8:	01013903          	ld	s2,16(sp)
    800052cc:	00813983          	ld	s3,8(sp)
    800052d0:	03010113          	addi	sp,sp,48
    800052d4:	00008067          	ret

00000000800052d8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800052d8:	fe010113          	addi	sp,sp,-32
    800052dc:	00113c23          	sd	ra,24(sp)
    800052e0:	00813823          	sd	s0,16(sp)
    800052e4:	00913423          	sd	s1,8(sp)
    800052e8:	01213023          	sd	s2,0(sp)
    800052ec:	02010413          	addi	s0,sp,32
    800052f0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800052f4:	00000913          	li	s2,0
    800052f8:	00c0006f          	j	80005304 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	778080e7          	jalr	1912(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005304:	00007797          	auipc	a5,0x7
    80005308:	c5c7a783          	lw	a5,-932(a5) # 8000bf60 <_ZL9threadEnd>
    8000530c:	02079e63          	bnez	a5,80005348 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005310:	0004a583          	lw	a1,0(s1)
    80005314:	0305859b          	addiw	a1,a1,48
    80005318:	0084b503          	ld	a0,8(s1)
    8000531c:	00001097          	auipc	ra,0x1
    80005320:	bac080e7          	jalr	-1108(ra) # 80005ec8 <_ZN9BufferCPP3putEi>
        i++;
    80005324:	0019071b          	addiw	a4,s2,1
    80005328:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000532c:	0004a683          	lw	a3,0(s1)
    80005330:	0026979b          	slliw	a5,a3,0x2
    80005334:	00d787bb          	addw	a5,a5,a3
    80005338:	0017979b          	slliw	a5,a5,0x1
    8000533c:	02f767bb          	remw	a5,a4,a5
    80005340:	fc0792e3          	bnez	a5,80005304 <_ZN12ProducerSync8producerEPv+0x2c>
    80005344:	fb9ff06f          	j	800052fc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005348:	0104b503          	ld	a0,16(s1)
    8000534c:	ffffd097          	auipc	ra,0xffffd
    80005350:	7e0080e7          	jalr	2016(ra) # 80002b2c <_ZN9Semaphore6signalEv>
}
    80005354:	01813083          	ld	ra,24(sp)
    80005358:	01013403          	ld	s0,16(sp)
    8000535c:	00813483          	ld	s1,8(sp)
    80005360:	00013903          	ld	s2,0(sp)
    80005364:	02010113          	addi	sp,sp,32
    80005368:	00008067          	ret

000000008000536c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000536c:	fd010113          	addi	sp,sp,-48
    80005370:	02113423          	sd	ra,40(sp)
    80005374:	02813023          	sd	s0,32(sp)
    80005378:	00913c23          	sd	s1,24(sp)
    8000537c:	01213823          	sd	s2,16(sp)
    80005380:	01313423          	sd	s3,8(sp)
    80005384:	01413023          	sd	s4,0(sp)
    80005388:	03010413          	addi	s0,sp,48
    8000538c:	00050993          	mv	s3,a0
    80005390:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005394:	00000a13          	li	s4,0
    80005398:	01c0006f          	j	800053b4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000539c:	ffffd097          	auipc	ra,0xffffd
    800053a0:	6d8080e7          	jalr	1752(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    800053a4:	0500006f          	j	800053f4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800053a8:	00a00513          	li	a0,10
    800053ac:	ffffc097          	auipc	ra,0xffffc
    800053b0:	2e4080e7          	jalr	740(ra) # 80001690 <_Z4putcc>
    while (!threadEnd) {
    800053b4:	00007797          	auipc	a5,0x7
    800053b8:	bac7a783          	lw	a5,-1108(a5) # 8000bf60 <_ZL9threadEnd>
    800053bc:	06079263          	bnez	a5,80005420 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800053c0:	00893503          	ld	a0,8(s2)
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	b94080e7          	jalr	-1132(ra) # 80005f58 <_ZN9BufferCPP3getEv>
        i++;
    800053cc:	001a049b          	addiw	s1,s4,1
    800053d0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800053d4:	0ff57513          	andi	a0,a0,255
    800053d8:	ffffc097          	auipc	ra,0xffffc
    800053dc:	2b8080e7          	jalr	696(ra) # 80001690 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800053e0:	00092703          	lw	a4,0(s2)
    800053e4:	0027179b          	slliw	a5,a4,0x2
    800053e8:	00e787bb          	addw	a5,a5,a4
    800053ec:	02f4e7bb          	remw	a5,s1,a5
    800053f0:	fa0786e3          	beqz	a5,8000539c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800053f4:	05000793          	li	a5,80
    800053f8:	02f4e4bb          	remw	s1,s1,a5
    800053fc:	fa049ce3          	bnez	s1,800053b4 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005400:	fa9ff06f          	j	800053a8 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005404:	0289b783          	ld	a5,40(s3)
    80005408:	0087b503          	ld	a0,8(a5)
    8000540c:	00001097          	auipc	ra,0x1
    80005410:	b4c080e7          	jalr	-1204(ra) # 80005f58 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005414:	0ff57513          	andi	a0,a0,255
    80005418:	ffffd097          	auipc	ra,0xffffd
    8000541c:	7d0080e7          	jalr	2000(ra) # 80002be8 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005420:	0289b783          	ld	a5,40(s3)
    80005424:	0087b503          	ld	a0,8(a5)
    80005428:	00001097          	auipc	ra,0x1
    8000542c:	bbc080e7          	jalr	-1092(ra) # 80005fe4 <_ZN9BufferCPP6getCntEv>
    80005430:	fca04ae3          	bgtz	a0,80005404 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005434:	01093503          	ld	a0,16(s2)
    80005438:	ffffd097          	auipc	ra,0xffffd
    8000543c:	6f4080e7          	jalr	1780(ra) # 80002b2c <_ZN9Semaphore6signalEv>
}
    80005440:	02813083          	ld	ra,40(sp)
    80005444:	02013403          	ld	s0,32(sp)
    80005448:	01813483          	ld	s1,24(sp)
    8000544c:	01013903          	ld	s2,16(sp)
    80005450:	00813983          	ld	s3,8(sp)
    80005454:	00013a03          	ld	s4,0(sp)
    80005458:	03010113          	addi	sp,sp,48
    8000545c:	00008067          	ret

0000000080005460 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005460:	f8010113          	addi	sp,sp,-128
    80005464:	06113c23          	sd	ra,120(sp)
    80005468:	06813823          	sd	s0,112(sp)
    8000546c:	06913423          	sd	s1,104(sp)
    80005470:	07213023          	sd	s2,96(sp)
    80005474:	05313c23          	sd	s3,88(sp)
    80005478:	05413823          	sd	s4,80(sp)
    8000547c:	05513423          	sd	s5,72(sp)
    80005480:	05613023          	sd	s6,64(sp)
    80005484:	03713c23          	sd	s7,56(sp)
    80005488:	03813823          	sd	s8,48(sp)
    8000548c:	03913423          	sd	s9,40(sp)
    80005490:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005494:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005498:	00004517          	auipc	a0,0x4
    8000549c:	f3050513          	addi	a0,a0,-208 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800054a0:	00000097          	auipc	ra,0x0
    800054a4:	604080e7          	jalr	1540(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    800054a8:	01e00593          	li	a1,30
    800054ac:	f8040493          	addi	s1,s0,-128
    800054b0:	00048513          	mv	a0,s1
    800054b4:	00000097          	auipc	ra,0x0
    800054b8:	678080e7          	jalr	1656(ra) # 80005b2c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800054bc:	00048513          	mv	a0,s1
    800054c0:	00000097          	auipc	ra,0x0
    800054c4:	744080e7          	jalr	1860(ra) # 80005c04 <_Z11stringToIntPKc>
    800054c8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800054cc:	00004517          	auipc	a0,0x4
    800054d0:	f1c50513          	addi	a0,a0,-228 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800054d4:	00000097          	auipc	ra,0x0
    800054d8:	5d0080e7          	jalr	1488(ra) # 80005aa4 <_Z11printStringPKc>
    getString(input, 30);
    800054dc:	01e00593          	li	a1,30
    800054e0:	00048513          	mv	a0,s1
    800054e4:	00000097          	auipc	ra,0x0
    800054e8:	648080e7          	jalr	1608(ra) # 80005b2c <_Z9getStringPci>
    n = stringToInt(input);
    800054ec:	00048513          	mv	a0,s1
    800054f0:	00000097          	auipc	ra,0x0
    800054f4:	714080e7          	jalr	1812(ra) # 80005c04 <_Z11stringToIntPKc>
    800054f8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800054fc:	00004517          	auipc	a0,0x4
    80005500:	f0c50513          	addi	a0,a0,-244 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005504:	00000097          	auipc	ra,0x0
    80005508:	5a0080e7          	jalr	1440(ra) # 80005aa4 <_Z11printStringPKc>
    8000550c:	00000613          	li	a2,0
    80005510:	00a00593          	li	a1,10
    80005514:	00090513          	mv	a0,s2
    80005518:	00000097          	auipc	ra,0x0
    8000551c:	73c080e7          	jalr	1852(ra) # 80005c54 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005520:	00004517          	auipc	a0,0x4
    80005524:	f0050513          	addi	a0,a0,-256 # 80009420 <CONSOLE_STATUS+0x410>
    80005528:	00000097          	auipc	ra,0x0
    8000552c:	57c080e7          	jalr	1404(ra) # 80005aa4 <_Z11printStringPKc>
    80005530:	00000613          	li	a2,0
    80005534:	00a00593          	li	a1,10
    80005538:	00048513          	mv	a0,s1
    8000553c:	00000097          	auipc	ra,0x0
    80005540:	718080e7          	jalr	1816(ra) # 80005c54 <_Z8printIntiii>
    printString(".\n");
    80005544:	00004517          	auipc	a0,0x4
    80005548:	ef450513          	addi	a0,a0,-268 # 80009438 <CONSOLE_STATUS+0x428>
    8000554c:	00000097          	auipc	ra,0x0
    80005550:	558080e7          	jalr	1368(ra) # 80005aa4 <_Z11printStringPKc>
    if(threadNum > n) {
    80005554:	0324c463          	blt	s1,s2,8000557c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005558:	03205c63          	blez	s2,80005590 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000555c:	03800513          	li	a0,56
    80005560:	ffffd097          	auipc	ra,0xffffd
    80005564:	134080e7          	jalr	308(ra) # 80002694 <_Znwm>
    80005568:	00050a93          	mv	s5,a0
    8000556c:	00048593          	mv	a1,s1
    80005570:	00001097          	auipc	ra,0x1
    80005574:	804080e7          	jalr	-2044(ra) # 80005d74 <_ZN9BufferCPPC1Ei>
    80005578:	0300006f          	j	800055a8 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000557c:	00004517          	auipc	a0,0x4
    80005580:	ec450513          	addi	a0,a0,-316 # 80009440 <CONSOLE_STATUS+0x430>
    80005584:	00000097          	auipc	ra,0x0
    80005588:	520080e7          	jalr	1312(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    8000558c:	0140006f          	j	800055a0 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005590:	00004517          	auipc	a0,0x4
    80005594:	ef050513          	addi	a0,a0,-272 # 80009480 <CONSOLE_STATUS+0x470>
    80005598:	00000097          	auipc	ra,0x0
    8000559c:	50c080e7          	jalr	1292(ra) # 80005aa4 <_Z11printStringPKc>
        return;
    800055a0:	000b8113          	mv	sp,s7
    800055a4:	2380006f          	j	800057dc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800055a8:	01000513          	li	a0,16
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	0e8080e7          	jalr	232(ra) # 80002694 <_Znwm>
    800055b4:	00050493          	mv	s1,a0
    800055b8:	00000593          	li	a1,0
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	508080e7          	jalr	1288(ra) # 80002ac4 <_ZN9SemaphoreC1Ej>
    800055c4:	00007797          	auipc	a5,0x7
    800055c8:	9a97b223          	sd	s1,-1628(a5) # 8000bf68 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800055cc:	00391793          	slli	a5,s2,0x3
    800055d0:	00f78793          	addi	a5,a5,15
    800055d4:	ff07f793          	andi	a5,a5,-16
    800055d8:	40f10133          	sub	sp,sp,a5
    800055dc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800055e0:	0019071b          	addiw	a4,s2,1
    800055e4:	00171793          	slli	a5,a4,0x1
    800055e8:	00e787b3          	add	a5,a5,a4
    800055ec:	00379793          	slli	a5,a5,0x3
    800055f0:	00f78793          	addi	a5,a5,15
    800055f4:	ff07f793          	andi	a5,a5,-16
    800055f8:	40f10133          	sub	sp,sp,a5
    800055fc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005600:	00191c13          	slli	s8,s2,0x1
    80005604:	012c07b3          	add	a5,s8,s2
    80005608:	00379793          	slli	a5,a5,0x3
    8000560c:	00fa07b3          	add	a5,s4,a5
    80005610:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005614:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005618:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000561c:	03000513          	li	a0,48
    80005620:	ffffd097          	auipc	ra,0xffffd
    80005624:	074080e7          	jalr	116(ra) # 80002694 <_Znwm>
    80005628:	00050b13          	mv	s6,a0
    8000562c:	012c0c33          	add	s8,s8,s2
    80005630:	003c1c13          	slli	s8,s8,0x3
    80005634:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005638:	ffffd097          	auipc	ra,0xffffd
    8000563c:	374080e7          	jalr	884(ra) # 800029ac <_ZN6ThreadC1Ev>
    80005640:	00006797          	auipc	a5,0x6
    80005644:	7f878793          	addi	a5,a5,2040 # 8000be38 <_ZTV12ConsumerSync+0x10>
    80005648:	00fb3023          	sd	a5,0(s6)
    8000564c:	038b3423          	sd	s8,40(s6)
    consumerThread->start();
    80005650:	000b0513          	mv	a0,s6
    80005654:	ffffd097          	auipc	ra,0xffffd
    80005658:	3c4080e7          	jalr	964(ra) # 80002a18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000565c:	00000493          	li	s1,0
    80005660:	0380006f          	j	80005698 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005664:	00006797          	auipc	a5,0x6
    80005668:	7ac78793          	addi	a5,a5,1964 # 8000be10 <_ZTV12ProducerSync+0x10>
    8000566c:	00fcb023          	sd	a5,0(s9)
    80005670:	038cb423          	sd	s8,40(s9)
            threads[i] = new ProducerSync(data+i);
    80005674:	00349793          	slli	a5,s1,0x3
    80005678:	00f987b3          	add	a5,s3,a5
    8000567c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005680:	00349793          	slli	a5,s1,0x3
    80005684:	00f987b3          	add	a5,s3,a5
    80005688:	0007b503          	ld	a0,0(a5)
    8000568c:	ffffd097          	auipc	ra,0xffffd
    80005690:	38c080e7          	jalr	908(ra) # 80002a18 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005694:	0014849b          	addiw	s1,s1,1
    80005698:	0b24d063          	bge	s1,s2,80005738 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000569c:	00149793          	slli	a5,s1,0x1
    800056a0:	009787b3          	add	a5,a5,s1
    800056a4:	00379793          	slli	a5,a5,0x3
    800056a8:	00fa07b3          	add	a5,s4,a5
    800056ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800056b0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800056b4:	00007717          	auipc	a4,0x7
    800056b8:	8b473703          	ld	a4,-1868(a4) # 8000bf68 <_ZL10waitForAll>
    800056bc:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800056c0:	02905863          	blez	s1,800056f0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800056c4:	03000513          	li	a0,48
    800056c8:	ffffd097          	auipc	ra,0xffffd
    800056cc:	fcc080e7          	jalr	-52(ra) # 80002694 <_Znwm>
    800056d0:	00050c93          	mv	s9,a0
    800056d4:	00149c13          	slli	s8,s1,0x1
    800056d8:	009c0c33          	add	s8,s8,s1
    800056dc:	003c1c13          	slli	s8,s8,0x3
    800056e0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800056e4:	ffffd097          	auipc	ra,0xffffd
    800056e8:	2c8080e7          	jalr	712(ra) # 800029ac <_ZN6ThreadC1Ev>
    800056ec:	f79ff06f          	j	80005664 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800056f0:	03000513          	li	a0,48
    800056f4:	ffffd097          	auipc	ra,0xffffd
    800056f8:	fa0080e7          	jalr	-96(ra) # 80002694 <_Znwm>
    800056fc:	00050c93          	mv	s9,a0
    80005700:	00149c13          	slli	s8,s1,0x1
    80005704:	009c0c33          	add	s8,s8,s1
    80005708:	003c1c13          	slli	s8,s8,0x3
    8000570c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005710:	ffffd097          	auipc	ra,0xffffd
    80005714:	29c080e7          	jalr	668(ra) # 800029ac <_ZN6ThreadC1Ev>
    80005718:	00006797          	auipc	a5,0x6
    8000571c:	6d078793          	addi	a5,a5,1744 # 8000bde8 <_ZTV16ProducerKeyboard+0x10>
    80005720:	00fcb023          	sd	a5,0(s9)
    80005724:	038cb423          	sd	s8,40(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005728:	00349793          	slli	a5,s1,0x3
    8000572c:	00f987b3          	add	a5,s3,a5
    80005730:	0197b023          	sd	s9,0(a5)
    80005734:	f4dff06f          	j	80005680 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005738:	ffffd097          	auipc	ra,0xffffd
    8000573c:	33c080e7          	jalr	828(ra) # 80002a74 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005740:	00000493          	li	s1,0
    80005744:	00994e63          	blt	s2,s1,80005760 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005748:	00007517          	auipc	a0,0x7
    8000574c:	82053503          	ld	a0,-2016(a0) # 8000bf68 <_ZL10waitForAll>
    80005750:	ffffd097          	auipc	ra,0xffffd
    80005754:	3b0080e7          	jalr	944(ra) # 80002b00 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005758:	0014849b          	addiw	s1,s1,1
    8000575c:	fe9ff06f          	j	80005744 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005760:	00000493          	li	s1,0
    80005764:	0080006f          	j	8000576c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005768:	0014849b          	addiw	s1,s1,1
    8000576c:	0324d263          	bge	s1,s2,80005790 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005770:	00349793          	slli	a5,s1,0x3
    80005774:	00f987b3          	add	a5,s3,a5
    80005778:	0007b503          	ld	a0,0(a5)
    8000577c:	fe0506e3          	beqz	a0,80005768 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005780:	00053783          	ld	a5,0(a0)
    80005784:	0087b783          	ld	a5,8(a5)
    80005788:	000780e7          	jalr	a5
    8000578c:	fddff06f          	j	80005768 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005790:	000b0a63          	beqz	s6,800057a4 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005794:	000b3783          	ld	a5,0(s6)
    80005798:	0087b783          	ld	a5,8(a5)
    8000579c:	000b0513          	mv	a0,s6
    800057a0:	000780e7          	jalr	a5
    delete waitForAll;
    800057a4:	00006517          	auipc	a0,0x6
    800057a8:	7c453503          	ld	a0,1988(a0) # 8000bf68 <_ZL10waitForAll>
    800057ac:	00050863          	beqz	a0,800057bc <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800057b0:	00053783          	ld	a5,0(a0)
    800057b4:	0087b783          	ld	a5,8(a5)
    800057b8:	000780e7          	jalr	a5
    delete buffer;
    800057bc:	000a8e63          	beqz	s5,800057d8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800057c0:	000a8513          	mv	a0,s5
    800057c4:	00001097          	auipc	ra,0x1
    800057c8:	8a8080e7          	jalr	-1880(ra) # 8000606c <_ZN9BufferCPPD1Ev>
    800057cc:	000a8513          	mv	a0,s5
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	f14080e7          	jalr	-236(ra) # 800026e4 <_ZdlPv>
    800057d8:	000b8113          	mv	sp,s7

}
    800057dc:	f8040113          	addi	sp,s0,-128
    800057e0:	07813083          	ld	ra,120(sp)
    800057e4:	07013403          	ld	s0,112(sp)
    800057e8:	06813483          	ld	s1,104(sp)
    800057ec:	06013903          	ld	s2,96(sp)
    800057f0:	05813983          	ld	s3,88(sp)
    800057f4:	05013a03          	ld	s4,80(sp)
    800057f8:	04813a83          	ld	s5,72(sp)
    800057fc:	04013b03          	ld	s6,64(sp)
    80005800:	03813b83          	ld	s7,56(sp)
    80005804:	03013c03          	ld	s8,48(sp)
    80005808:	02813c83          	ld	s9,40(sp)
    8000580c:	08010113          	addi	sp,sp,128
    80005810:	00008067          	ret
    80005814:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005818:	000a8513          	mv	a0,s5
    8000581c:	ffffd097          	auipc	ra,0xffffd
    80005820:	ec8080e7          	jalr	-312(ra) # 800026e4 <_ZdlPv>
    80005824:	00048513          	mv	a0,s1
    80005828:	00008097          	auipc	ra,0x8
    8000582c:	820080e7          	jalr	-2016(ra) # 8000d048 <_Unwind_Resume>
    80005830:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005834:	00048513          	mv	a0,s1
    80005838:	ffffd097          	auipc	ra,0xffffd
    8000583c:	eac080e7          	jalr	-340(ra) # 800026e4 <_ZdlPv>
    80005840:	00090513          	mv	a0,s2
    80005844:	00008097          	auipc	ra,0x8
    80005848:	804080e7          	jalr	-2044(ra) # 8000d048 <_Unwind_Resume>
    8000584c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005850:	000b0513          	mv	a0,s6
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	e90080e7          	jalr	-368(ra) # 800026e4 <_ZdlPv>
    8000585c:	00048513          	mv	a0,s1
    80005860:	00007097          	auipc	ra,0x7
    80005864:	7e8080e7          	jalr	2024(ra) # 8000d048 <_Unwind_Resume>
    80005868:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    8000586c:	000c8513          	mv	a0,s9
    80005870:	ffffd097          	auipc	ra,0xffffd
    80005874:	e74080e7          	jalr	-396(ra) # 800026e4 <_ZdlPv>
    80005878:	00048513          	mv	a0,s1
    8000587c:	00007097          	auipc	ra,0x7
    80005880:	7cc080e7          	jalr	1996(ra) # 8000d048 <_Unwind_Resume>
    80005884:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005888:	000c8513          	mv	a0,s9
    8000588c:	ffffd097          	auipc	ra,0xffffd
    80005890:	e58080e7          	jalr	-424(ra) # 800026e4 <_ZdlPv>
    80005894:	00048513          	mv	a0,s1
    80005898:	00007097          	auipc	ra,0x7
    8000589c:	7b0080e7          	jalr	1968(ra) # 8000d048 <_Unwind_Resume>

00000000800058a0 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800058a0:	ff010113          	addi	sp,sp,-16
    800058a4:	00113423          	sd	ra,8(sp)
    800058a8:	00813023          	sd	s0,0(sp)
    800058ac:	01010413          	addi	s0,sp,16
    800058b0:	00006797          	auipc	a5,0x6
    800058b4:	58878793          	addi	a5,a5,1416 # 8000be38 <_ZTV12ConsumerSync+0x10>
    800058b8:	00f53023          	sd	a5,0(a0)
    800058bc:	ffffd097          	auipc	ra,0xffffd
    800058c0:	f90080e7          	jalr	-112(ra) # 8000284c <_ZN6ThreadD1Ev>
    800058c4:	00813083          	ld	ra,8(sp)
    800058c8:	00013403          	ld	s0,0(sp)
    800058cc:	01010113          	addi	sp,sp,16
    800058d0:	00008067          	ret

00000000800058d4 <_ZN12ConsumerSyncD0Ev>:
    800058d4:	fe010113          	addi	sp,sp,-32
    800058d8:	00113c23          	sd	ra,24(sp)
    800058dc:	00813823          	sd	s0,16(sp)
    800058e0:	00913423          	sd	s1,8(sp)
    800058e4:	02010413          	addi	s0,sp,32
    800058e8:	00050493          	mv	s1,a0
    800058ec:	00006797          	auipc	a5,0x6
    800058f0:	54c78793          	addi	a5,a5,1356 # 8000be38 <_ZTV12ConsumerSync+0x10>
    800058f4:	00f53023          	sd	a5,0(a0)
    800058f8:	ffffd097          	auipc	ra,0xffffd
    800058fc:	f54080e7          	jalr	-172(ra) # 8000284c <_ZN6ThreadD1Ev>
    80005900:	00048513          	mv	a0,s1
    80005904:	ffffd097          	auipc	ra,0xffffd
    80005908:	de0080e7          	jalr	-544(ra) # 800026e4 <_ZdlPv>
    8000590c:	01813083          	ld	ra,24(sp)
    80005910:	01013403          	ld	s0,16(sp)
    80005914:	00813483          	ld	s1,8(sp)
    80005918:	02010113          	addi	sp,sp,32
    8000591c:	00008067          	ret

0000000080005920 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005920:	ff010113          	addi	sp,sp,-16
    80005924:	00113423          	sd	ra,8(sp)
    80005928:	00813023          	sd	s0,0(sp)
    8000592c:	01010413          	addi	s0,sp,16
    80005930:	00006797          	auipc	a5,0x6
    80005934:	4e078793          	addi	a5,a5,1248 # 8000be10 <_ZTV12ProducerSync+0x10>
    80005938:	00f53023          	sd	a5,0(a0)
    8000593c:	ffffd097          	auipc	ra,0xffffd
    80005940:	f10080e7          	jalr	-240(ra) # 8000284c <_ZN6ThreadD1Ev>
    80005944:	00813083          	ld	ra,8(sp)
    80005948:	00013403          	ld	s0,0(sp)
    8000594c:	01010113          	addi	sp,sp,16
    80005950:	00008067          	ret

0000000080005954 <_ZN12ProducerSyncD0Ev>:
    80005954:	fe010113          	addi	sp,sp,-32
    80005958:	00113c23          	sd	ra,24(sp)
    8000595c:	00813823          	sd	s0,16(sp)
    80005960:	00913423          	sd	s1,8(sp)
    80005964:	02010413          	addi	s0,sp,32
    80005968:	00050493          	mv	s1,a0
    8000596c:	00006797          	auipc	a5,0x6
    80005970:	4a478793          	addi	a5,a5,1188 # 8000be10 <_ZTV12ProducerSync+0x10>
    80005974:	00f53023          	sd	a5,0(a0)
    80005978:	ffffd097          	auipc	ra,0xffffd
    8000597c:	ed4080e7          	jalr	-300(ra) # 8000284c <_ZN6ThreadD1Ev>
    80005980:	00048513          	mv	a0,s1
    80005984:	ffffd097          	auipc	ra,0xffffd
    80005988:	d60080e7          	jalr	-672(ra) # 800026e4 <_ZdlPv>
    8000598c:	01813083          	ld	ra,24(sp)
    80005990:	01013403          	ld	s0,16(sp)
    80005994:	00813483          	ld	s1,8(sp)
    80005998:	02010113          	addi	sp,sp,32
    8000599c:	00008067          	ret

00000000800059a0 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800059a0:	ff010113          	addi	sp,sp,-16
    800059a4:	00113423          	sd	ra,8(sp)
    800059a8:	00813023          	sd	s0,0(sp)
    800059ac:	01010413          	addi	s0,sp,16
    800059b0:	00006797          	auipc	a5,0x6
    800059b4:	43878793          	addi	a5,a5,1080 # 8000bde8 <_ZTV16ProducerKeyboard+0x10>
    800059b8:	00f53023          	sd	a5,0(a0)
    800059bc:	ffffd097          	auipc	ra,0xffffd
    800059c0:	e90080e7          	jalr	-368(ra) # 8000284c <_ZN6ThreadD1Ev>
    800059c4:	00813083          	ld	ra,8(sp)
    800059c8:	00013403          	ld	s0,0(sp)
    800059cc:	01010113          	addi	sp,sp,16
    800059d0:	00008067          	ret

00000000800059d4 <_ZN16ProducerKeyboardD0Ev>:
    800059d4:	fe010113          	addi	sp,sp,-32
    800059d8:	00113c23          	sd	ra,24(sp)
    800059dc:	00813823          	sd	s0,16(sp)
    800059e0:	00913423          	sd	s1,8(sp)
    800059e4:	02010413          	addi	s0,sp,32
    800059e8:	00050493          	mv	s1,a0
    800059ec:	00006797          	auipc	a5,0x6
    800059f0:	3fc78793          	addi	a5,a5,1020 # 8000bde8 <_ZTV16ProducerKeyboard+0x10>
    800059f4:	00f53023          	sd	a5,0(a0)
    800059f8:	ffffd097          	auipc	ra,0xffffd
    800059fc:	e54080e7          	jalr	-428(ra) # 8000284c <_ZN6ThreadD1Ev>
    80005a00:	00048513          	mv	a0,s1
    80005a04:	ffffd097          	auipc	ra,0xffffd
    80005a08:	ce0080e7          	jalr	-800(ra) # 800026e4 <_ZdlPv>
    80005a0c:	01813083          	ld	ra,24(sp)
    80005a10:	01013403          	ld	s0,16(sp)
    80005a14:	00813483          	ld	s1,8(sp)
    80005a18:	02010113          	addi	sp,sp,32
    80005a1c:	00008067          	ret

0000000080005a20 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005a20:	ff010113          	addi	sp,sp,-16
    80005a24:	00113423          	sd	ra,8(sp)
    80005a28:	00813023          	sd	s0,0(sp)
    80005a2c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005a30:	02853583          	ld	a1,40(a0)
    80005a34:	fffff097          	auipc	ra,0xfffff
    80005a38:	7e4080e7          	jalr	2020(ra) # 80005218 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005a3c:	00813083          	ld	ra,8(sp)
    80005a40:	00013403          	ld	s0,0(sp)
    80005a44:	01010113          	addi	sp,sp,16
    80005a48:	00008067          	ret

0000000080005a4c <_ZN12ProducerSync3runEv>:
    void run() override {
    80005a4c:	ff010113          	addi	sp,sp,-16
    80005a50:	00113423          	sd	ra,8(sp)
    80005a54:	00813023          	sd	s0,0(sp)
    80005a58:	01010413          	addi	s0,sp,16
        producer(td);
    80005a5c:	02853583          	ld	a1,40(a0)
    80005a60:	00000097          	auipc	ra,0x0
    80005a64:	878080e7          	jalr	-1928(ra) # 800052d8 <_ZN12ProducerSync8producerEPv>
    }
    80005a68:	00813083          	ld	ra,8(sp)
    80005a6c:	00013403          	ld	s0,0(sp)
    80005a70:	01010113          	addi	sp,sp,16
    80005a74:	00008067          	ret

0000000080005a78 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005a78:	ff010113          	addi	sp,sp,-16
    80005a7c:	00113423          	sd	ra,8(sp)
    80005a80:	00813023          	sd	s0,0(sp)
    80005a84:	01010413          	addi	s0,sp,16
        consumer(td);
    80005a88:	02853583          	ld	a1,40(a0)
    80005a8c:	00000097          	auipc	ra,0x0
    80005a90:	8e0080e7          	jalr	-1824(ra) # 8000536c <_ZN12ConsumerSync8consumerEPv>
    }
    80005a94:	00813083          	ld	ra,8(sp)
    80005a98:	00013403          	ld	s0,0(sp)
    80005a9c:	01010113          	addi	sp,sp,16
    80005aa0:	00008067          	ret

0000000080005aa4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005aa4:	fe010113          	addi	sp,sp,-32
    80005aa8:	00113c23          	sd	ra,24(sp)
    80005aac:	00813823          	sd	s0,16(sp)
    80005ab0:	00913423          	sd	s1,8(sp)
    80005ab4:	02010413          	addi	s0,sp,32
    80005ab8:	00050493          	mv	s1,a0
    LOCK();
    80005abc:	00100613          	li	a2,1
    80005ac0:	00000593          	li	a1,0
    80005ac4:	00006517          	auipc	a0,0x6
    80005ac8:	4ac50513          	addi	a0,a0,1196 # 8000bf70 <lockPrint>
    80005acc:	ffffb097          	auipc	ra,0xffffb
    80005ad0:	6d8080e7          	jalr	1752(ra) # 800011a4 <copy_and_swap>
    80005ad4:	00050863          	beqz	a0,80005ae4 <_Z11printStringPKc+0x40>
    80005ad8:	ffffc097          	auipc	ra,0xffffc
    80005adc:	94c080e7          	jalr	-1716(ra) # 80001424 <_Z15thread_dispatchv>
    80005ae0:	fddff06f          	j	80005abc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80005ae4:	0004c503          	lbu	a0,0(s1)
    80005ae8:	00050a63          	beqz	a0,80005afc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	ba4080e7          	jalr	-1116(ra) # 80001690 <_Z4putcc>
        string++;
    80005af4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80005af8:	fedff06f          	j	80005ae4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80005afc:	00000613          	li	a2,0
    80005b00:	00100593          	li	a1,1
    80005b04:	00006517          	auipc	a0,0x6
    80005b08:	46c50513          	addi	a0,a0,1132 # 8000bf70 <lockPrint>
    80005b0c:	ffffb097          	auipc	ra,0xffffb
    80005b10:	698080e7          	jalr	1688(ra) # 800011a4 <copy_and_swap>
    80005b14:	fe0514e3          	bnez	a0,80005afc <_Z11printStringPKc+0x58>
}
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	00813483          	ld	s1,8(sp)
    80005b24:	02010113          	addi	sp,sp,32
    80005b28:	00008067          	ret

0000000080005b2c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005b2c:	fd010113          	addi	sp,sp,-48
    80005b30:	02113423          	sd	ra,40(sp)
    80005b34:	02813023          	sd	s0,32(sp)
    80005b38:	00913c23          	sd	s1,24(sp)
    80005b3c:	01213823          	sd	s2,16(sp)
    80005b40:	01313423          	sd	s3,8(sp)
    80005b44:	01413023          	sd	s4,0(sp)
    80005b48:	03010413          	addi	s0,sp,48
    80005b4c:	00050993          	mv	s3,a0
    80005b50:	00058a13          	mv	s4,a1
    LOCK();
    80005b54:	00100613          	li	a2,1
    80005b58:	00000593          	li	a1,0
    80005b5c:	00006517          	auipc	a0,0x6
    80005b60:	41450513          	addi	a0,a0,1044 # 8000bf70 <lockPrint>
    80005b64:	ffffb097          	auipc	ra,0xffffb
    80005b68:	640080e7          	jalr	1600(ra) # 800011a4 <copy_and_swap>
    80005b6c:	00050863          	beqz	a0,80005b7c <_Z9getStringPci+0x50>
    80005b70:	ffffc097          	auipc	ra,0xffffc
    80005b74:	8b4080e7          	jalr	-1868(ra) # 80001424 <_Z15thread_dispatchv>
    80005b78:	fddff06f          	j	80005b54 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005b7c:	00000913          	li	s2,0
    80005b80:	00090493          	mv	s1,s2
    80005b84:	0019091b          	addiw	s2,s2,1
    80005b88:	03495a63          	bge	s2,s4,80005bbc <_Z9getStringPci+0x90>
        cc = getc();
    80005b8c:	ffffc097          	auipc	ra,0xffffc
    80005b90:	ac0080e7          	jalr	-1344(ra) # 8000164c <_Z4getcv>
        if(cc < 1)
    80005b94:	02050463          	beqz	a0,80005bbc <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005b98:	009984b3          	add	s1,s3,s1
    80005b9c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005ba0:	00a00793          	li	a5,10
    80005ba4:	00f50a63          	beq	a0,a5,80005bb8 <_Z9getStringPci+0x8c>
    80005ba8:	00d00793          	li	a5,13
    80005bac:	fcf51ae3          	bne	a0,a5,80005b80 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80005bb0:	00090493          	mv	s1,s2
    80005bb4:	0080006f          	j	80005bbc <_Z9getStringPci+0x90>
    80005bb8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005bbc:	009984b3          	add	s1,s3,s1
    80005bc0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005bc4:	00000613          	li	a2,0
    80005bc8:	00100593          	li	a1,1
    80005bcc:	00006517          	auipc	a0,0x6
    80005bd0:	3a450513          	addi	a0,a0,932 # 8000bf70 <lockPrint>
    80005bd4:	ffffb097          	auipc	ra,0xffffb
    80005bd8:	5d0080e7          	jalr	1488(ra) # 800011a4 <copy_and_swap>
    80005bdc:	fe0514e3          	bnez	a0,80005bc4 <_Z9getStringPci+0x98>
    return buf;
}
    80005be0:	00098513          	mv	a0,s3
    80005be4:	02813083          	ld	ra,40(sp)
    80005be8:	02013403          	ld	s0,32(sp)
    80005bec:	01813483          	ld	s1,24(sp)
    80005bf0:	01013903          	ld	s2,16(sp)
    80005bf4:	00813983          	ld	s3,8(sp)
    80005bf8:	00013a03          	ld	s4,0(sp)
    80005bfc:	03010113          	addi	sp,sp,48
    80005c00:	00008067          	ret

0000000080005c04 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80005c04:	ff010113          	addi	sp,sp,-16
    80005c08:	00813423          	sd	s0,8(sp)
    80005c0c:	01010413          	addi	s0,sp,16
    80005c10:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005c14:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80005c18:	0006c603          	lbu	a2,0(a3)
    80005c1c:	fd06071b          	addiw	a4,a2,-48
    80005c20:	0ff77713          	andi	a4,a4,255
    80005c24:	00900793          	li	a5,9
    80005c28:	02e7e063          	bltu	a5,a4,80005c48 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005c2c:	0025179b          	slliw	a5,a0,0x2
    80005c30:	00a787bb          	addw	a5,a5,a0
    80005c34:	0017979b          	slliw	a5,a5,0x1
    80005c38:	00168693          	addi	a3,a3,1
    80005c3c:	00c787bb          	addw	a5,a5,a2
    80005c40:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005c44:	fd5ff06f          	j	80005c18 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005c48:	00813403          	ld	s0,8(sp)
    80005c4c:	01010113          	addi	sp,sp,16
    80005c50:	00008067          	ret

0000000080005c54 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005c54:	fc010113          	addi	sp,sp,-64
    80005c58:	02113c23          	sd	ra,56(sp)
    80005c5c:	02813823          	sd	s0,48(sp)
    80005c60:	02913423          	sd	s1,40(sp)
    80005c64:	03213023          	sd	s2,32(sp)
    80005c68:	01313c23          	sd	s3,24(sp)
    80005c6c:	04010413          	addi	s0,sp,64
    80005c70:	00050493          	mv	s1,a0
    80005c74:	00058913          	mv	s2,a1
    80005c78:	00060993          	mv	s3,a2
    LOCK();
    80005c7c:	00100613          	li	a2,1
    80005c80:	00000593          	li	a1,0
    80005c84:	00006517          	auipc	a0,0x6
    80005c88:	2ec50513          	addi	a0,a0,748 # 8000bf70 <lockPrint>
    80005c8c:	ffffb097          	auipc	ra,0xffffb
    80005c90:	518080e7          	jalr	1304(ra) # 800011a4 <copy_and_swap>
    80005c94:	00050863          	beqz	a0,80005ca4 <_Z8printIntiii+0x50>
    80005c98:	ffffb097          	auipc	ra,0xffffb
    80005c9c:	78c080e7          	jalr	1932(ra) # 80001424 <_Z15thread_dispatchv>
    80005ca0:	fddff06f          	j	80005c7c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005ca4:	00098463          	beqz	s3,80005cac <_Z8printIntiii+0x58>
    80005ca8:	0804c463          	bltz	s1,80005d30 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005cac:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005cb0:	00000593          	li	a1,0
    }

    i = 0;
    80005cb4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005cb8:	0009079b          	sext.w	a5,s2
    80005cbc:	0325773b          	remuw	a4,a0,s2
    80005cc0:	00048613          	mv	a2,s1
    80005cc4:	0014849b          	addiw	s1,s1,1
    80005cc8:	02071693          	slli	a3,a4,0x20
    80005ccc:	0206d693          	srli	a3,a3,0x20
    80005cd0:	00006717          	auipc	a4,0x6
    80005cd4:	18070713          	addi	a4,a4,384 # 8000be50 <digits>
    80005cd8:	00d70733          	add	a4,a4,a3
    80005cdc:	00074683          	lbu	a3,0(a4)
    80005ce0:	fd040713          	addi	a4,s0,-48
    80005ce4:	00c70733          	add	a4,a4,a2
    80005ce8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005cec:	0005071b          	sext.w	a4,a0
    80005cf0:	0325553b          	divuw	a0,a0,s2
    80005cf4:	fcf772e3          	bgeu	a4,a5,80005cb8 <_Z8printIntiii+0x64>
    if(neg)
    80005cf8:	00058c63          	beqz	a1,80005d10 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005cfc:	fd040793          	addi	a5,s0,-48
    80005d00:	009784b3          	add	s1,a5,s1
    80005d04:	02d00793          	li	a5,45
    80005d08:	fef48823          	sb	a5,-16(s1)
    80005d0c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005d10:	fff4849b          	addiw	s1,s1,-1
    80005d14:	0204c463          	bltz	s1,80005d3c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005d18:	fd040793          	addi	a5,s0,-48
    80005d1c:	009787b3          	add	a5,a5,s1
    80005d20:	ff07c503          	lbu	a0,-16(a5)
    80005d24:	ffffc097          	auipc	ra,0xffffc
    80005d28:	96c080e7          	jalr	-1684(ra) # 80001690 <_Z4putcc>
    80005d2c:	fe5ff06f          	j	80005d10 <_Z8printIntiii+0xbc>
        x = -xx;
    80005d30:	4090053b          	negw	a0,s1
        neg = 1;
    80005d34:	00100593          	li	a1,1
        x = -xx;
    80005d38:	f7dff06f          	j	80005cb4 <_Z8printIntiii+0x60>

    UNLOCK();
    80005d3c:	00000613          	li	a2,0
    80005d40:	00100593          	li	a1,1
    80005d44:	00006517          	auipc	a0,0x6
    80005d48:	22c50513          	addi	a0,a0,556 # 8000bf70 <lockPrint>
    80005d4c:	ffffb097          	auipc	ra,0xffffb
    80005d50:	458080e7          	jalr	1112(ra) # 800011a4 <copy_and_swap>
    80005d54:	fe0514e3          	bnez	a0,80005d3c <_Z8printIntiii+0xe8>
    80005d58:	03813083          	ld	ra,56(sp)
    80005d5c:	03013403          	ld	s0,48(sp)
    80005d60:	02813483          	ld	s1,40(sp)
    80005d64:	02013903          	ld	s2,32(sp)
    80005d68:	01813983          	ld	s3,24(sp)
    80005d6c:	04010113          	addi	sp,sp,64
    80005d70:	00008067          	ret

0000000080005d74 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005d74:	fd010113          	addi	sp,sp,-48
    80005d78:	02113423          	sd	ra,40(sp)
    80005d7c:	02813023          	sd	s0,32(sp)
    80005d80:	00913c23          	sd	s1,24(sp)
    80005d84:	01213823          	sd	s2,16(sp)
    80005d88:	01313423          	sd	s3,8(sp)
    80005d8c:	03010413          	addi	s0,sp,48
    80005d90:	00050493          	mv	s1,a0
    80005d94:	00058913          	mv	s2,a1
    80005d98:	0015879b          	addiw	a5,a1,1
    80005d9c:	0007851b          	sext.w	a0,a5
    80005da0:	00f4a023          	sw	a5,0(s1)
    80005da4:	0004a823          	sw	zero,16(s1)
    80005da8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005dac:	00251513          	slli	a0,a0,0x2
    80005db0:	ffffb097          	auipc	ra,0xffffb
    80005db4:	44c080e7          	jalr	1100(ra) # 800011fc <_Z9mem_allocm>
    80005db8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005dbc:	01000513          	li	a0,16
    80005dc0:	ffffd097          	auipc	ra,0xffffd
    80005dc4:	8d4080e7          	jalr	-1836(ra) # 80002694 <_Znwm>
    80005dc8:	00050993          	mv	s3,a0
    80005dcc:	00000593          	li	a1,0
    80005dd0:	ffffd097          	auipc	ra,0xffffd
    80005dd4:	cf4080e7          	jalr	-780(ra) # 80002ac4 <_ZN9SemaphoreC1Ej>
    80005dd8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ddc:	01000513          	li	a0,16
    80005de0:	ffffd097          	auipc	ra,0xffffd
    80005de4:	8b4080e7          	jalr	-1868(ra) # 80002694 <_Znwm>
    80005de8:	00050993          	mv	s3,a0
    80005dec:	00090593          	mv	a1,s2
    80005df0:	ffffd097          	auipc	ra,0xffffd
    80005df4:	cd4080e7          	jalr	-812(ra) # 80002ac4 <_ZN9SemaphoreC1Ej>
    80005df8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005dfc:	01000513          	li	a0,16
    80005e00:	ffffd097          	auipc	ra,0xffffd
    80005e04:	894080e7          	jalr	-1900(ra) # 80002694 <_Znwm>
    80005e08:	00050913          	mv	s2,a0
    80005e0c:	00100593          	li	a1,1
    80005e10:	ffffd097          	auipc	ra,0xffffd
    80005e14:	cb4080e7          	jalr	-844(ra) # 80002ac4 <_ZN9SemaphoreC1Ej>
    80005e18:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005e1c:	01000513          	li	a0,16
    80005e20:	ffffd097          	auipc	ra,0xffffd
    80005e24:	874080e7          	jalr	-1932(ra) # 80002694 <_Znwm>
    80005e28:	00050913          	mv	s2,a0
    80005e2c:	00100593          	li	a1,1
    80005e30:	ffffd097          	auipc	ra,0xffffd
    80005e34:	c94080e7          	jalr	-876(ra) # 80002ac4 <_ZN9SemaphoreC1Ej>
    80005e38:	0324b823          	sd	s2,48(s1)
}
    80005e3c:	02813083          	ld	ra,40(sp)
    80005e40:	02013403          	ld	s0,32(sp)
    80005e44:	01813483          	ld	s1,24(sp)
    80005e48:	01013903          	ld	s2,16(sp)
    80005e4c:	00813983          	ld	s3,8(sp)
    80005e50:	03010113          	addi	sp,sp,48
    80005e54:	00008067          	ret
    80005e58:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005e5c:	00098513          	mv	a0,s3
    80005e60:	ffffd097          	auipc	ra,0xffffd
    80005e64:	884080e7          	jalr	-1916(ra) # 800026e4 <_ZdlPv>
    80005e68:	00048513          	mv	a0,s1
    80005e6c:	00007097          	auipc	ra,0x7
    80005e70:	1dc080e7          	jalr	476(ra) # 8000d048 <_Unwind_Resume>
    80005e74:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005e78:	00098513          	mv	a0,s3
    80005e7c:	ffffd097          	auipc	ra,0xffffd
    80005e80:	868080e7          	jalr	-1944(ra) # 800026e4 <_ZdlPv>
    80005e84:	00048513          	mv	a0,s1
    80005e88:	00007097          	auipc	ra,0x7
    80005e8c:	1c0080e7          	jalr	448(ra) # 8000d048 <_Unwind_Resume>
    80005e90:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005e94:	00090513          	mv	a0,s2
    80005e98:	ffffd097          	auipc	ra,0xffffd
    80005e9c:	84c080e7          	jalr	-1972(ra) # 800026e4 <_ZdlPv>
    80005ea0:	00048513          	mv	a0,s1
    80005ea4:	00007097          	auipc	ra,0x7
    80005ea8:	1a4080e7          	jalr	420(ra) # 8000d048 <_Unwind_Resume>
    80005eac:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005eb0:	00090513          	mv	a0,s2
    80005eb4:	ffffd097          	auipc	ra,0xffffd
    80005eb8:	830080e7          	jalr	-2000(ra) # 800026e4 <_ZdlPv>
    80005ebc:	00048513          	mv	a0,s1
    80005ec0:	00007097          	auipc	ra,0x7
    80005ec4:	188080e7          	jalr	392(ra) # 8000d048 <_Unwind_Resume>

0000000080005ec8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005ec8:	fe010113          	addi	sp,sp,-32
    80005ecc:	00113c23          	sd	ra,24(sp)
    80005ed0:	00813823          	sd	s0,16(sp)
    80005ed4:	00913423          	sd	s1,8(sp)
    80005ed8:	01213023          	sd	s2,0(sp)
    80005edc:	02010413          	addi	s0,sp,32
    80005ee0:	00050493          	mv	s1,a0
    80005ee4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005ee8:	01853503          	ld	a0,24(a0)
    80005eec:	ffffd097          	auipc	ra,0xffffd
    80005ef0:	c14080e7          	jalr	-1004(ra) # 80002b00 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005ef4:	0304b503          	ld	a0,48(s1)
    80005ef8:	ffffd097          	auipc	ra,0xffffd
    80005efc:	c08080e7          	jalr	-1016(ra) # 80002b00 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005f00:	0084b783          	ld	a5,8(s1)
    80005f04:	0144a703          	lw	a4,20(s1)
    80005f08:	00271713          	slli	a4,a4,0x2
    80005f0c:	00e787b3          	add	a5,a5,a4
    80005f10:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005f14:	0144a783          	lw	a5,20(s1)
    80005f18:	0017879b          	addiw	a5,a5,1
    80005f1c:	0004a703          	lw	a4,0(s1)
    80005f20:	02e7e7bb          	remw	a5,a5,a4
    80005f24:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005f28:	0304b503          	ld	a0,48(s1)
    80005f2c:	ffffd097          	auipc	ra,0xffffd
    80005f30:	c00080e7          	jalr	-1024(ra) # 80002b2c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005f34:	0204b503          	ld	a0,32(s1)
    80005f38:	ffffd097          	auipc	ra,0xffffd
    80005f3c:	bf4080e7          	jalr	-1036(ra) # 80002b2c <_ZN9Semaphore6signalEv>

}
    80005f40:	01813083          	ld	ra,24(sp)
    80005f44:	01013403          	ld	s0,16(sp)
    80005f48:	00813483          	ld	s1,8(sp)
    80005f4c:	00013903          	ld	s2,0(sp)
    80005f50:	02010113          	addi	sp,sp,32
    80005f54:	00008067          	ret

0000000080005f58 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005f58:	fe010113          	addi	sp,sp,-32
    80005f5c:	00113c23          	sd	ra,24(sp)
    80005f60:	00813823          	sd	s0,16(sp)
    80005f64:	00913423          	sd	s1,8(sp)
    80005f68:	01213023          	sd	s2,0(sp)
    80005f6c:	02010413          	addi	s0,sp,32
    80005f70:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005f74:	02053503          	ld	a0,32(a0)
    80005f78:	ffffd097          	auipc	ra,0xffffd
    80005f7c:	b88080e7          	jalr	-1144(ra) # 80002b00 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005f80:	0284b503          	ld	a0,40(s1)
    80005f84:	ffffd097          	auipc	ra,0xffffd
    80005f88:	b7c080e7          	jalr	-1156(ra) # 80002b00 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005f8c:	0084b703          	ld	a4,8(s1)
    80005f90:	0104a783          	lw	a5,16(s1)
    80005f94:	00279693          	slli	a3,a5,0x2
    80005f98:	00d70733          	add	a4,a4,a3
    80005f9c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005fa0:	0017879b          	addiw	a5,a5,1
    80005fa4:	0004a703          	lw	a4,0(s1)
    80005fa8:	02e7e7bb          	remw	a5,a5,a4
    80005fac:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005fb0:	0284b503          	ld	a0,40(s1)
    80005fb4:	ffffd097          	auipc	ra,0xffffd
    80005fb8:	b78080e7          	jalr	-1160(ra) # 80002b2c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005fbc:	0184b503          	ld	a0,24(s1)
    80005fc0:	ffffd097          	auipc	ra,0xffffd
    80005fc4:	b6c080e7          	jalr	-1172(ra) # 80002b2c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005fc8:	00090513          	mv	a0,s2
    80005fcc:	01813083          	ld	ra,24(sp)
    80005fd0:	01013403          	ld	s0,16(sp)
    80005fd4:	00813483          	ld	s1,8(sp)
    80005fd8:	00013903          	ld	s2,0(sp)
    80005fdc:	02010113          	addi	sp,sp,32
    80005fe0:	00008067          	ret

0000000080005fe4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005fe4:	fe010113          	addi	sp,sp,-32
    80005fe8:	00113c23          	sd	ra,24(sp)
    80005fec:	00813823          	sd	s0,16(sp)
    80005ff0:	00913423          	sd	s1,8(sp)
    80005ff4:	01213023          	sd	s2,0(sp)
    80005ff8:	02010413          	addi	s0,sp,32
    80005ffc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80006000:	02853503          	ld	a0,40(a0)
    80006004:	ffffd097          	auipc	ra,0xffffd
    80006008:	afc080e7          	jalr	-1284(ra) # 80002b00 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000600c:	0304b503          	ld	a0,48(s1)
    80006010:	ffffd097          	auipc	ra,0xffffd
    80006014:	af0080e7          	jalr	-1296(ra) # 80002b00 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006018:	0144a783          	lw	a5,20(s1)
    8000601c:	0104a903          	lw	s2,16(s1)
    80006020:	0327ce63          	blt	a5,s2,8000605c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006024:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006028:	0304b503          	ld	a0,48(s1)
    8000602c:	ffffd097          	auipc	ra,0xffffd
    80006030:	b00080e7          	jalr	-1280(ra) # 80002b2c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006034:	0284b503          	ld	a0,40(s1)
    80006038:	ffffd097          	auipc	ra,0xffffd
    8000603c:	af4080e7          	jalr	-1292(ra) # 80002b2c <_ZN9Semaphore6signalEv>

    return ret;
}
    80006040:	00090513          	mv	a0,s2
    80006044:	01813083          	ld	ra,24(sp)
    80006048:	01013403          	ld	s0,16(sp)
    8000604c:	00813483          	ld	s1,8(sp)
    80006050:	00013903          	ld	s2,0(sp)
    80006054:	02010113          	addi	sp,sp,32
    80006058:	00008067          	ret
        ret = cap - head + tail;
    8000605c:	0004a703          	lw	a4,0(s1)
    80006060:	4127093b          	subw	s2,a4,s2
    80006064:	00f9093b          	addw	s2,s2,a5
    80006068:	fc1ff06f          	j	80006028 <_ZN9BufferCPP6getCntEv+0x44>

000000008000606c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000606c:	fe010113          	addi	sp,sp,-32
    80006070:	00113c23          	sd	ra,24(sp)
    80006074:	00813823          	sd	s0,16(sp)
    80006078:	00913423          	sd	s1,8(sp)
    8000607c:	02010413          	addi	s0,sp,32
    80006080:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006084:	00a00513          	li	a0,10
    80006088:	ffffd097          	auipc	ra,0xffffd
    8000608c:	b60080e7          	jalr	-1184(ra) # 80002be8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006090:	00003517          	auipc	a0,0x3
    80006094:	57050513          	addi	a0,a0,1392 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006098:	00000097          	auipc	ra,0x0
    8000609c:	a0c080e7          	jalr	-1524(ra) # 80005aa4 <_Z11printStringPKc>
    while (getCnt()) {
    800060a0:	00048513          	mv	a0,s1
    800060a4:	00000097          	auipc	ra,0x0
    800060a8:	f40080e7          	jalr	-192(ra) # 80005fe4 <_ZN9BufferCPP6getCntEv>
    800060ac:	02050c63          	beqz	a0,800060e4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800060b0:	0084b783          	ld	a5,8(s1)
    800060b4:	0104a703          	lw	a4,16(s1)
    800060b8:	00271713          	slli	a4,a4,0x2
    800060bc:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800060c0:	0007c503          	lbu	a0,0(a5)
    800060c4:	ffffd097          	auipc	ra,0xffffd
    800060c8:	b24080e7          	jalr	-1244(ra) # 80002be8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800060cc:	0104a783          	lw	a5,16(s1)
    800060d0:	0017879b          	addiw	a5,a5,1
    800060d4:	0004a703          	lw	a4,0(s1)
    800060d8:	02e7e7bb          	remw	a5,a5,a4
    800060dc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800060e0:	fc1ff06f          	j	800060a0 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800060e4:	02100513          	li	a0,33
    800060e8:	ffffd097          	auipc	ra,0xffffd
    800060ec:	b00080e7          	jalr	-1280(ra) # 80002be8 <_ZN7Console4putcEc>
    Console::putc('\n');
    800060f0:	00a00513          	li	a0,10
    800060f4:	ffffd097          	auipc	ra,0xffffd
    800060f8:	af4080e7          	jalr	-1292(ra) # 80002be8 <_ZN7Console4putcEc>
    mem_free(buffer);
    800060fc:	0084b503          	ld	a0,8(s1)
    80006100:	ffffb097          	auipc	ra,0xffffb
    80006104:	14c080e7          	jalr	332(ra) # 8000124c <_Z8mem_freePv>
    delete itemAvailable;
    80006108:	0204b503          	ld	a0,32(s1)
    8000610c:	00050863          	beqz	a0,8000611c <_ZN9BufferCPPD1Ev+0xb0>
    80006110:	00053783          	ld	a5,0(a0)
    80006114:	0087b783          	ld	a5,8(a5)
    80006118:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000611c:	0184b503          	ld	a0,24(s1)
    80006120:	00050863          	beqz	a0,80006130 <_ZN9BufferCPPD1Ev+0xc4>
    80006124:	00053783          	ld	a5,0(a0)
    80006128:	0087b783          	ld	a5,8(a5)
    8000612c:	000780e7          	jalr	a5
    delete mutexTail;
    80006130:	0304b503          	ld	a0,48(s1)
    80006134:	00050863          	beqz	a0,80006144 <_ZN9BufferCPPD1Ev+0xd8>
    80006138:	00053783          	ld	a5,0(a0)
    8000613c:	0087b783          	ld	a5,8(a5)
    80006140:	000780e7          	jalr	a5
    delete mutexHead;
    80006144:	0284b503          	ld	a0,40(s1)
    80006148:	00050863          	beqz	a0,80006158 <_ZN9BufferCPPD1Ev+0xec>
    8000614c:	00053783          	ld	a5,0(a0)
    80006150:	0087b783          	ld	a5,8(a5)
    80006154:	000780e7          	jalr	a5
}
    80006158:	01813083          	ld	ra,24(sp)
    8000615c:	01013403          	ld	s0,16(sp)
    80006160:	00813483          	ld	s1,8(sp)
    80006164:	02010113          	addi	sp,sp,32
    80006168:	00008067          	ret

000000008000616c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000616c:	fe010113          	addi	sp,sp,-32
    80006170:	00113c23          	sd	ra,24(sp)
    80006174:	00813823          	sd	s0,16(sp)
    80006178:	00913423          	sd	s1,8(sp)
    8000617c:	01213023          	sd	s2,0(sp)
    80006180:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80006184:	00053903          	ld	s2,0(a0)
    int i = 6;
    80006188:	00600493          	li	s1,6
    while (--i > 0) {
    8000618c:	fff4849b          	addiw	s1,s1,-1
    80006190:	04905463          	blez	s1,800061d8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006194:	00003517          	auipc	a0,0x3
    80006198:	48450513          	addi	a0,a0,1156 # 80009618 <CONSOLE_STATUS+0x608>
    8000619c:	00000097          	auipc	ra,0x0
    800061a0:	908080e7          	jalr	-1784(ra) # 80005aa4 <_Z11printStringPKc>
        printInt(sleep_time);
    800061a4:	00000613          	li	a2,0
    800061a8:	00a00593          	li	a1,10
    800061ac:	0009051b          	sext.w	a0,s2
    800061b0:	00000097          	auipc	ra,0x0
    800061b4:	aa4080e7          	jalr	-1372(ra) # 80005c54 <_Z8printIntiii>
        printString(" !\n");
    800061b8:	00003517          	auipc	a0,0x3
    800061bc:	46850513          	addi	a0,a0,1128 # 80009620 <CONSOLE_STATUS+0x610>
    800061c0:	00000097          	auipc	ra,0x0
    800061c4:	8e4080e7          	jalr	-1820(ra) # 80005aa4 <_Z11printStringPKc>
        time_sleep(sleep_time);
    800061c8:	00090513          	mv	a0,s2
    800061cc:	ffffb097          	auipc	ra,0xffffb
    800061d0:	43c080e7          	jalr	1084(ra) # 80001608 <_Z10time_sleepm>
    while (--i > 0) {
    800061d4:	fb9ff06f          	j	8000618c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800061d8:	00a00793          	li	a5,10
    800061dc:	02f95933          	divu	s2,s2,a5
    800061e0:	fff90913          	addi	s2,s2,-1
    800061e4:	00006797          	auipc	a5,0x6
    800061e8:	d9478793          	addi	a5,a5,-620 # 8000bf78 <_ZL8finished>
    800061ec:	01278933          	add	s2,a5,s2
    800061f0:	00100793          	li	a5,1
    800061f4:	00f90023          	sb	a5,0(s2)
}
    800061f8:	01813083          	ld	ra,24(sp)
    800061fc:	01013403          	ld	s0,16(sp)
    80006200:	00813483          	ld	s1,8(sp)
    80006204:	00013903          	ld	s2,0(sp)
    80006208:	02010113          	addi	sp,sp,32
    8000620c:	00008067          	ret

0000000080006210 <_Z12testSleepingv>:

void testSleeping() {
    80006210:	fc010113          	addi	sp,sp,-64
    80006214:	02113c23          	sd	ra,56(sp)
    80006218:	02813823          	sd	s0,48(sp)
    8000621c:	02913423          	sd	s1,40(sp)
    80006220:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006224:	00a00793          	li	a5,10
    80006228:	fcf43823          	sd	a5,-48(s0)
    8000622c:	01400793          	li	a5,20
    80006230:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006234:	00000493          	li	s1,0
    80006238:	02c0006f          	j	80006264 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000623c:	00349793          	slli	a5,s1,0x3
    80006240:	fd040613          	addi	a2,s0,-48
    80006244:	00f60633          	add	a2,a2,a5
    80006248:	00000597          	auipc	a1,0x0
    8000624c:	f2458593          	addi	a1,a1,-220 # 8000616c <_ZL9sleepyRunPv>
    80006250:	fc040513          	addi	a0,s0,-64
    80006254:	00f50533          	add	a0,a0,a5
    80006258:	ffffb097          	auipc	ra,0xffffb
    8000625c:	038080e7          	jalr	56(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006260:	0014849b          	addiw	s1,s1,1
    80006264:	00100793          	li	a5,1
    80006268:	fc97dae3          	bge	a5,s1,8000623c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000626c:	00006797          	auipc	a5,0x6
    80006270:	d0c7c783          	lbu	a5,-756(a5) # 8000bf78 <_ZL8finished>
    80006274:	fe078ce3          	beqz	a5,8000626c <_Z12testSleepingv+0x5c>
    80006278:	00006797          	auipc	a5,0x6
    8000627c:	d017c783          	lbu	a5,-767(a5) # 8000bf79 <_ZL8finished+0x1>
    80006280:	fe0786e3          	beqz	a5,8000626c <_Z12testSleepingv+0x5c>
}
    80006284:	03813083          	ld	ra,56(sp)
    80006288:	03013403          	ld	s0,48(sp)
    8000628c:	02813483          	ld	s1,40(sp)
    80006290:	04010113          	addi	sp,sp,64
    80006294:	00008067          	ret

0000000080006298 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006298:	fe010113          	addi	sp,sp,-32
    8000629c:	00113c23          	sd	ra,24(sp)
    800062a0:	00813823          	sd	s0,16(sp)
    800062a4:	00913423          	sd	s1,8(sp)
    800062a8:	01213023          	sd	s2,0(sp)
    800062ac:	02010413          	addi	s0,sp,32
    800062b0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800062b4:	00100793          	li	a5,1
    800062b8:	02a7f863          	bgeu	a5,a0,800062e8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800062bc:	00a00793          	li	a5,10
    800062c0:	02f577b3          	remu	a5,a0,a5
    800062c4:	02078e63          	beqz	a5,80006300 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800062c8:	fff48513          	addi	a0,s1,-1
    800062cc:	00000097          	auipc	ra,0x0
    800062d0:	fcc080e7          	jalr	-52(ra) # 80006298 <_ZL9fibonaccim>
    800062d4:	00050913          	mv	s2,a0
    800062d8:	ffe48513          	addi	a0,s1,-2
    800062dc:	00000097          	auipc	ra,0x0
    800062e0:	fbc080e7          	jalr	-68(ra) # 80006298 <_ZL9fibonaccim>
    800062e4:	00a90533          	add	a0,s2,a0
}
    800062e8:	01813083          	ld	ra,24(sp)
    800062ec:	01013403          	ld	s0,16(sp)
    800062f0:	00813483          	ld	s1,8(sp)
    800062f4:	00013903          	ld	s2,0(sp)
    800062f8:	02010113          	addi	sp,sp,32
    800062fc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006300:	ffffb097          	auipc	ra,0xffffb
    80006304:	124080e7          	jalr	292(ra) # 80001424 <_Z15thread_dispatchv>
    80006308:	fc1ff06f          	j	800062c8 <_ZL9fibonaccim+0x30>

000000008000630c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000630c:	fe010113          	addi	sp,sp,-32
    80006310:	00113c23          	sd	ra,24(sp)
    80006314:	00813823          	sd	s0,16(sp)
    80006318:	00913423          	sd	s1,8(sp)
    8000631c:	01213023          	sd	s2,0(sp)
    80006320:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006324:	00a00493          	li	s1,10
    80006328:	0400006f          	j	80006368 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000632c:	00003517          	auipc	a0,0x3
    80006330:	1e450513          	addi	a0,a0,484 # 80009510 <CONSOLE_STATUS+0x500>
    80006334:	fffff097          	auipc	ra,0xfffff
    80006338:	770080e7          	jalr	1904(ra) # 80005aa4 <_Z11printStringPKc>
    8000633c:	00000613          	li	a2,0
    80006340:	00a00593          	li	a1,10
    80006344:	00048513          	mv	a0,s1
    80006348:	00000097          	auipc	ra,0x0
    8000634c:	90c080e7          	jalr	-1780(ra) # 80005c54 <_Z8printIntiii>
    80006350:	00003517          	auipc	a0,0x3
    80006354:	f5050513          	addi	a0,a0,-176 # 800092a0 <CONSOLE_STATUS+0x290>
    80006358:	fffff097          	auipc	ra,0xfffff
    8000635c:	74c080e7          	jalr	1868(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006360:	0014849b          	addiw	s1,s1,1
    80006364:	0ff4f493          	andi	s1,s1,255
    80006368:	00c00793          	li	a5,12
    8000636c:	fc97f0e3          	bgeu	a5,s1,8000632c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006370:	00003517          	auipc	a0,0x3
    80006374:	1a850513          	addi	a0,a0,424 # 80009518 <CONSOLE_STATUS+0x508>
    80006378:	fffff097          	auipc	ra,0xfffff
    8000637c:	72c080e7          	jalr	1836(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006380:	00500313          	li	t1,5
    thread_dispatch();
    80006384:	ffffb097          	auipc	ra,0xffffb
    80006388:	0a0080e7          	jalr	160(ra) # 80001424 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000638c:	01000513          	li	a0,16
    80006390:	00000097          	auipc	ra,0x0
    80006394:	f08080e7          	jalr	-248(ra) # 80006298 <_ZL9fibonaccim>
    80006398:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	18c50513          	addi	a0,a0,396 # 80009528 <CONSOLE_STATUS+0x518>
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	700080e7          	jalr	1792(ra) # 80005aa4 <_Z11printStringPKc>
    800063ac:	00000613          	li	a2,0
    800063b0:	00a00593          	li	a1,10
    800063b4:	0009051b          	sext.w	a0,s2
    800063b8:	00000097          	auipc	ra,0x0
    800063bc:	89c080e7          	jalr	-1892(ra) # 80005c54 <_Z8printIntiii>
    800063c0:	00003517          	auipc	a0,0x3
    800063c4:	ee050513          	addi	a0,a0,-288 # 800092a0 <CONSOLE_STATUS+0x290>
    800063c8:	fffff097          	auipc	ra,0xfffff
    800063cc:	6dc080e7          	jalr	1756(ra) # 80005aa4 <_Z11printStringPKc>
    800063d0:	0400006f          	j	80006410 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800063d4:	00003517          	auipc	a0,0x3
    800063d8:	13c50513          	addi	a0,a0,316 # 80009510 <CONSOLE_STATUS+0x500>
    800063dc:	fffff097          	auipc	ra,0xfffff
    800063e0:	6c8080e7          	jalr	1736(ra) # 80005aa4 <_Z11printStringPKc>
    800063e4:	00000613          	li	a2,0
    800063e8:	00a00593          	li	a1,10
    800063ec:	00048513          	mv	a0,s1
    800063f0:	00000097          	auipc	ra,0x0
    800063f4:	864080e7          	jalr	-1948(ra) # 80005c54 <_Z8printIntiii>
    800063f8:	00003517          	auipc	a0,0x3
    800063fc:	ea850513          	addi	a0,a0,-344 # 800092a0 <CONSOLE_STATUS+0x290>
    80006400:	fffff097          	auipc	ra,0xfffff
    80006404:	6a4080e7          	jalr	1700(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006408:	0014849b          	addiw	s1,s1,1
    8000640c:	0ff4f493          	andi	s1,s1,255
    80006410:	00f00793          	li	a5,15
    80006414:	fc97f0e3          	bgeu	a5,s1,800063d4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006418:	00003517          	auipc	a0,0x3
    8000641c:	12050513          	addi	a0,a0,288 # 80009538 <CONSOLE_STATUS+0x528>
    80006420:	fffff097          	auipc	ra,0xfffff
    80006424:	684080e7          	jalr	1668(ra) # 80005aa4 <_Z11printStringPKc>
    finishedD = true;
    80006428:	00100793          	li	a5,1
    8000642c:	00006717          	auipc	a4,0x6
    80006430:	b4f70723          	sb	a5,-1202(a4) # 8000bf7a <_ZL9finishedD>
    thread_dispatch();
    80006434:	ffffb097          	auipc	ra,0xffffb
    80006438:	ff0080e7          	jalr	-16(ra) # 80001424 <_Z15thread_dispatchv>
}
    8000643c:	01813083          	ld	ra,24(sp)
    80006440:	01013403          	ld	s0,16(sp)
    80006444:	00813483          	ld	s1,8(sp)
    80006448:	00013903          	ld	s2,0(sp)
    8000644c:	02010113          	addi	sp,sp,32
    80006450:	00008067          	ret

0000000080006454 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006454:	fe010113          	addi	sp,sp,-32
    80006458:	00113c23          	sd	ra,24(sp)
    8000645c:	00813823          	sd	s0,16(sp)
    80006460:	00913423          	sd	s1,8(sp)
    80006464:	01213023          	sd	s2,0(sp)
    80006468:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000646c:	00000493          	li	s1,0
    80006470:	0400006f          	j	800064b0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006474:	00003517          	auipc	a0,0x3
    80006478:	06c50513          	addi	a0,a0,108 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000647c:	fffff097          	auipc	ra,0xfffff
    80006480:	628080e7          	jalr	1576(ra) # 80005aa4 <_Z11printStringPKc>
    80006484:	00000613          	li	a2,0
    80006488:	00a00593          	li	a1,10
    8000648c:	00048513          	mv	a0,s1
    80006490:	fffff097          	auipc	ra,0xfffff
    80006494:	7c4080e7          	jalr	1988(ra) # 80005c54 <_Z8printIntiii>
    80006498:	00003517          	auipc	a0,0x3
    8000649c:	e0850513          	addi	a0,a0,-504 # 800092a0 <CONSOLE_STATUS+0x290>
    800064a0:	fffff097          	auipc	ra,0xfffff
    800064a4:	604080e7          	jalr	1540(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800064a8:	0014849b          	addiw	s1,s1,1
    800064ac:	0ff4f493          	andi	s1,s1,255
    800064b0:	00200793          	li	a5,2
    800064b4:	fc97f0e3          	bgeu	a5,s1,80006474 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800064b8:	00003517          	auipc	a0,0x3
    800064bc:	03050513          	addi	a0,a0,48 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800064c0:	fffff097          	auipc	ra,0xfffff
    800064c4:	5e4080e7          	jalr	1508(ra) # 80005aa4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800064c8:	00700313          	li	t1,7
    thread_dispatch();
    800064cc:	ffffb097          	auipc	ra,0xffffb
    800064d0:	f58080e7          	jalr	-168(ra) # 80001424 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800064d4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800064d8:	00003517          	auipc	a0,0x3
    800064dc:	02050513          	addi	a0,a0,32 # 800094f8 <CONSOLE_STATUS+0x4e8>
    800064e0:	fffff097          	auipc	ra,0xfffff
    800064e4:	5c4080e7          	jalr	1476(ra) # 80005aa4 <_Z11printStringPKc>
    800064e8:	00000613          	li	a2,0
    800064ec:	00a00593          	li	a1,10
    800064f0:	0009051b          	sext.w	a0,s2
    800064f4:	fffff097          	auipc	ra,0xfffff
    800064f8:	760080e7          	jalr	1888(ra) # 80005c54 <_Z8printIntiii>
    800064fc:	00003517          	auipc	a0,0x3
    80006500:	da450513          	addi	a0,a0,-604 # 800092a0 <CONSOLE_STATUS+0x290>
    80006504:	fffff097          	auipc	ra,0xfffff
    80006508:	5a0080e7          	jalr	1440(ra) # 80005aa4 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000650c:	00c00513          	li	a0,12
    80006510:	00000097          	auipc	ra,0x0
    80006514:	d88080e7          	jalr	-632(ra) # 80006298 <_ZL9fibonaccim>
    80006518:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000651c:	00003517          	auipc	a0,0x3
    80006520:	fe450513          	addi	a0,a0,-28 # 80009500 <CONSOLE_STATUS+0x4f0>
    80006524:	fffff097          	auipc	ra,0xfffff
    80006528:	580080e7          	jalr	1408(ra) # 80005aa4 <_Z11printStringPKc>
    8000652c:	00000613          	li	a2,0
    80006530:	00a00593          	li	a1,10
    80006534:	0009051b          	sext.w	a0,s2
    80006538:	fffff097          	auipc	ra,0xfffff
    8000653c:	71c080e7          	jalr	1820(ra) # 80005c54 <_Z8printIntiii>
    80006540:	00003517          	auipc	a0,0x3
    80006544:	d6050513          	addi	a0,a0,-672 # 800092a0 <CONSOLE_STATUS+0x290>
    80006548:	fffff097          	auipc	ra,0xfffff
    8000654c:	55c080e7          	jalr	1372(ra) # 80005aa4 <_Z11printStringPKc>
    80006550:	0400006f          	j	80006590 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006554:	00003517          	auipc	a0,0x3
    80006558:	f8c50513          	addi	a0,a0,-116 # 800094e0 <CONSOLE_STATUS+0x4d0>
    8000655c:	fffff097          	auipc	ra,0xfffff
    80006560:	548080e7          	jalr	1352(ra) # 80005aa4 <_Z11printStringPKc>
    80006564:	00000613          	li	a2,0
    80006568:	00a00593          	li	a1,10
    8000656c:	00048513          	mv	a0,s1
    80006570:	fffff097          	auipc	ra,0xfffff
    80006574:	6e4080e7          	jalr	1764(ra) # 80005c54 <_Z8printIntiii>
    80006578:	00003517          	auipc	a0,0x3
    8000657c:	d2850513          	addi	a0,a0,-728 # 800092a0 <CONSOLE_STATUS+0x290>
    80006580:	fffff097          	auipc	ra,0xfffff
    80006584:	524080e7          	jalr	1316(ra) # 80005aa4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006588:	0014849b          	addiw	s1,s1,1
    8000658c:	0ff4f493          	andi	s1,s1,255
    80006590:	00500793          	li	a5,5
    80006594:	fc97f0e3          	bgeu	a5,s1,80006554 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006598:	00003517          	auipc	a0,0x3
    8000659c:	f2050513          	addi	a0,a0,-224 # 800094b8 <CONSOLE_STATUS+0x4a8>
    800065a0:	fffff097          	auipc	ra,0xfffff
    800065a4:	504080e7          	jalr	1284(ra) # 80005aa4 <_Z11printStringPKc>
    finishedC = true;
    800065a8:	00100793          	li	a5,1
    800065ac:	00006717          	auipc	a4,0x6
    800065b0:	9cf707a3          	sb	a5,-1585(a4) # 8000bf7b <_ZL9finishedC>
    thread_dispatch();
    800065b4:	ffffb097          	auipc	ra,0xffffb
    800065b8:	e70080e7          	jalr	-400(ra) # 80001424 <_Z15thread_dispatchv>
}
    800065bc:	01813083          	ld	ra,24(sp)
    800065c0:	01013403          	ld	s0,16(sp)
    800065c4:	00813483          	ld	s1,8(sp)
    800065c8:	00013903          	ld	s2,0(sp)
    800065cc:	02010113          	addi	sp,sp,32
    800065d0:	00008067          	ret

00000000800065d4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800065d4:	fe010113          	addi	sp,sp,-32
    800065d8:	00113c23          	sd	ra,24(sp)
    800065dc:	00813823          	sd	s0,16(sp)
    800065e0:	00913423          	sd	s1,8(sp)
    800065e4:	01213023          	sd	s2,0(sp)
    800065e8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800065ec:	00000913          	li	s2,0
    800065f0:	0400006f          	j	80006630 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800065f4:	ffffb097          	auipc	ra,0xffffb
    800065f8:	e30080e7          	jalr	-464(ra) # 80001424 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800065fc:	00148493          	addi	s1,s1,1
    80006600:	000027b7          	lui	a5,0x2
    80006604:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006608:	0097ee63          	bltu	a5,s1,80006624 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000660c:	00000713          	li	a4,0
    80006610:	000077b7          	lui	a5,0x7
    80006614:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006618:	fce7eee3          	bltu	a5,a4,800065f4 <_ZL11workerBodyBPv+0x20>
    8000661c:	00170713          	addi	a4,a4,1
    80006620:	ff1ff06f          	j	80006610 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006624:	00a00793          	li	a5,10
    80006628:	04f90663          	beq	s2,a5,80006674 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000662c:	00190913          	addi	s2,s2,1
    80006630:	00f00793          	li	a5,15
    80006634:	0527e463          	bltu	a5,s2,8000667c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006638:	00003517          	auipc	a0,0x3
    8000663c:	e9050513          	addi	a0,a0,-368 # 800094c8 <CONSOLE_STATUS+0x4b8>
    80006640:	fffff097          	auipc	ra,0xfffff
    80006644:	464080e7          	jalr	1124(ra) # 80005aa4 <_Z11printStringPKc>
    80006648:	00000613          	li	a2,0
    8000664c:	00a00593          	li	a1,10
    80006650:	0009051b          	sext.w	a0,s2
    80006654:	fffff097          	auipc	ra,0xfffff
    80006658:	600080e7          	jalr	1536(ra) # 80005c54 <_Z8printIntiii>
    8000665c:	00003517          	auipc	a0,0x3
    80006660:	c4450513          	addi	a0,a0,-956 # 800092a0 <CONSOLE_STATUS+0x290>
    80006664:	fffff097          	auipc	ra,0xfffff
    80006668:	440080e7          	jalr	1088(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000666c:	00000493          	li	s1,0
    80006670:	f91ff06f          	j	80006600 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006674:	14102ff3          	csrr	t6,sepc
    80006678:	fb5ff06f          	j	8000662c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000667c:	00003517          	auipc	a0,0x3
    80006680:	e5450513          	addi	a0,a0,-428 # 800094d0 <CONSOLE_STATUS+0x4c0>
    80006684:	fffff097          	auipc	ra,0xfffff
    80006688:	420080e7          	jalr	1056(ra) # 80005aa4 <_Z11printStringPKc>
    finishedB = true;
    8000668c:	00100793          	li	a5,1
    80006690:	00006717          	auipc	a4,0x6
    80006694:	8ef70623          	sb	a5,-1812(a4) # 8000bf7c <_ZL9finishedB>
    thread_dispatch();
    80006698:	ffffb097          	auipc	ra,0xffffb
    8000669c:	d8c080e7          	jalr	-628(ra) # 80001424 <_Z15thread_dispatchv>
}
    800066a0:	01813083          	ld	ra,24(sp)
    800066a4:	01013403          	ld	s0,16(sp)
    800066a8:	00813483          	ld	s1,8(sp)
    800066ac:	00013903          	ld	s2,0(sp)
    800066b0:	02010113          	addi	sp,sp,32
    800066b4:	00008067          	ret

00000000800066b8 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800066b8:	fe010113          	addi	sp,sp,-32
    800066bc:	00113c23          	sd	ra,24(sp)
    800066c0:	00813823          	sd	s0,16(sp)
    800066c4:	00913423          	sd	s1,8(sp)
    800066c8:	01213023          	sd	s2,0(sp)
    800066cc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800066d0:	00000913          	li	s2,0
    800066d4:	0380006f          	j	8000670c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800066d8:	ffffb097          	auipc	ra,0xffffb
    800066dc:	d4c080e7          	jalr	-692(ra) # 80001424 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800066e0:	00148493          	addi	s1,s1,1
    800066e4:	000027b7          	lui	a5,0x2
    800066e8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800066ec:	0097ee63          	bltu	a5,s1,80006708 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800066f0:	00000713          	li	a4,0
    800066f4:	000077b7          	lui	a5,0x7
    800066f8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800066fc:	fce7eee3          	bltu	a5,a4,800066d8 <_ZL11workerBodyAPv+0x20>
    80006700:	00170713          	addi	a4,a4,1
    80006704:	ff1ff06f          	j	800066f4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006708:	00190913          	addi	s2,s2,1
    8000670c:	00900793          	li	a5,9
    80006710:	0527e063          	bltu	a5,s2,80006750 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006714:	00003517          	auipc	a0,0x3
    80006718:	d9c50513          	addi	a0,a0,-612 # 800094b0 <CONSOLE_STATUS+0x4a0>
    8000671c:	fffff097          	auipc	ra,0xfffff
    80006720:	388080e7          	jalr	904(ra) # 80005aa4 <_Z11printStringPKc>
    80006724:	00000613          	li	a2,0
    80006728:	00a00593          	li	a1,10
    8000672c:	0009051b          	sext.w	a0,s2
    80006730:	fffff097          	auipc	ra,0xfffff
    80006734:	524080e7          	jalr	1316(ra) # 80005c54 <_Z8printIntiii>
    80006738:	00003517          	auipc	a0,0x3
    8000673c:	b6850513          	addi	a0,a0,-1176 # 800092a0 <CONSOLE_STATUS+0x290>
    80006740:	fffff097          	auipc	ra,0xfffff
    80006744:	364080e7          	jalr	868(ra) # 80005aa4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006748:	00000493          	li	s1,0
    8000674c:	f99ff06f          	j	800066e4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006750:	00003517          	auipc	a0,0x3
    80006754:	d6850513          	addi	a0,a0,-664 # 800094b8 <CONSOLE_STATUS+0x4a8>
    80006758:	fffff097          	auipc	ra,0xfffff
    8000675c:	34c080e7          	jalr	844(ra) # 80005aa4 <_Z11printStringPKc>
    finishedA = true;
    80006760:	00100793          	li	a5,1
    80006764:	00006717          	auipc	a4,0x6
    80006768:	80f70ca3          	sb	a5,-2023(a4) # 8000bf7d <_ZL9finishedA>
}
    8000676c:	01813083          	ld	ra,24(sp)
    80006770:	01013403          	ld	s0,16(sp)
    80006774:	00813483          	ld	s1,8(sp)
    80006778:	00013903          	ld	s2,0(sp)
    8000677c:	02010113          	addi	sp,sp,32
    80006780:	00008067          	ret

0000000080006784 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006784:	fd010113          	addi	sp,sp,-48
    80006788:	02113423          	sd	ra,40(sp)
    8000678c:	02813023          	sd	s0,32(sp)
    80006790:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006794:	00000613          	li	a2,0
    80006798:	00000597          	auipc	a1,0x0
    8000679c:	f2058593          	addi	a1,a1,-224 # 800066b8 <_ZL11workerBodyAPv>
    800067a0:	fd040513          	addi	a0,s0,-48
    800067a4:	ffffb097          	auipc	ra,0xffffb
    800067a8:	aec080e7          	jalr	-1300(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800067ac:	00003517          	auipc	a0,0x3
    800067b0:	d9c50513          	addi	a0,a0,-612 # 80009548 <CONSOLE_STATUS+0x538>
    800067b4:	fffff097          	auipc	ra,0xfffff
    800067b8:	2f0080e7          	jalr	752(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800067bc:	00000613          	li	a2,0
    800067c0:	00000597          	auipc	a1,0x0
    800067c4:	e1458593          	addi	a1,a1,-492 # 800065d4 <_ZL11workerBodyBPv>
    800067c8:	fd840513          	addi	a0,s0,-40
    800067cc:	ffffb097          	auipc	ra,0xffffb
    800067d0:	ac4080e7          	jalr	-1340(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    800067d4:	00003517          	auipc	a0,0x3
    800067d8:	d8c50513          	addi	a0,a0,-628 # 80009560 <CONSOLE_STATUS+0x550>
    800067dc:	fffff097          	auipc	ra,0xfffff
    800067e0:	2c8080e7          	jalr	712(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800067e4:	00000613          	li	a2,0
    800067e8:	00000597          	auipc	a1,0x0
    800067ec:	c6c58593          	addi	a1,a1,-916 # 80006454 <_ZL11workerBodyCPv>
    800067f0:	fe040513          	addi	a0,s0,-32
    800067f4:	ffffb097          	auipc	ra,0xffffb
    800067f8:	a9c080e7          	jalr	-1380(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    800067fc:	00003517          	auipc	a0,0x3
    80006800:	d7c50513          	addi	a0,a0,-644 # 80009578 <CONSOLE_STATUS+0x568>
    80006804:	fffff097          	auipc	ra,0xfffff
    80006808:	2a0080e7          	jalr	672(ra) # 80005aa4 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000680c:	00000613          	li	a2,0
    80006810:	00000597          	auipc	a1,0x0
    80006814:	afc58593          	addi	a1,a1,-1284 # 8000630c <_ZL11workerBodyDPv>
    80006818:	fe840513          	addi	a0,s0,-24
    8000681c:	ffffb097          	auipc	ra,0xffffb
    80006820:	a74080e7          	jalr	-1420(ra) # 80001290 <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80006824:	00003517          	auipc	a0,0x3
    80006828:	d6c50513          	addi	a0,a0,-660 # 80009590 <CONSOLE_STATUS+0x580>
    8000682c:	fffff097          	auipc	ra,0xfffff
    80006830:	278080e7          	jalr	632(ra) # 80005aa4 <_Z11printStringPKc>
    80006834:	00c0006f          	j	80006840 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006838:	ffffb097          	auipc	ra,0xffffb
    8000683c:	bec080e7          	jalr	-1044(ra) # 80001424 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006840:	00005797          	auipc	a5,0x5
    80006844:	73d7c783          	lbu	a5,1853(a5) # 8000bf7d <_ZL9finishedA>
    80006848:	fe0788e3          	beqz	a5,80006838 <_Z16System_Mode_testv+0xb4>
    8000684c:	00005797          	auipc	a5,0x5
    80006850:	7307c783          	lbu	a5,1840(a5) # 8000bf7c <_ZL9finishedB>
    80006854:	fe0782e3          	beqz	a5,80006838 <_Z16System_Mode_testv+0xb4>
    80006858:	00005797          	auipc	a5,0x5
    8000685c:	7237c783          	lbu	a5,1827(a5) # 8000bf7b <_ZL9finishedC>
    80006860:	fc078ce3          	beqz	a5,80006838 <_Z16System_Mode_testv+0xb4>
    80006864:	00005797          	auipc	a5,0x5
    80006868:	7167c783          	lbu	a5,1814(a5) # 8000bf7a <_ZL9finishedD>
    8000686c:	fc0786e3          	beqz	a5,80006838 <_Z16System_Mode_testv+0xb4>
    }

}
    80006870:	02813083          	ld	ra,40(sp)
    80006874:	02013403          	ld	s0,32(sp)
    80006878:	03010113          	addi	sp,sp,48
    8000687c:	00008067          	ret

0000000080006880 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006880:	fe010113          	addi	sp,sp,-32
    80006884:	00113c23          	sd	ra,24(sp)
    80006888:	00813823          	sd	s0,16(sp)
    8000688c:	00913423          	sd	s1,8(sp)
    80006890:	01213023          	sd	s2,0(sp)
    80006894:	02010413          	addi	s0,sp,32
    80006898:	00050493          	mv	s1,a0
    8000689c:	00058913          	mv	s2,a1
    800068a0:	0015879b          	addiw	a5,a1,1
    800068a4:	0007851b          	sext.w	a0,a5
    800068a8:	00f4a023          	sw	a5,0(s1)
    800068ac:	0004a823          	sw	zero,16(s1)
    800068b0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800068b4:	00251513          	slli	a0,a0,0x2
    800068b8:	ffffb097          	auipc	ra,0xffffb
    800068bc:	944080e7          	jalr	-1724(ra) # 800011fc <_Z9mem_allocm>
    800068c0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800068c4:	00000593          	li	a1,0
    800068c8:	02048513          	addi	a0,s1,32
    800068cc:	ffffb097          	auipc	ra,0xffffb
    800068d0:	b98080e7          	jalr	-1128(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800068d4:	00090593          	mv	a1,s2
    800068d8:	01848513          	addi	a0,s1,24
    800068dc:	ffffb097          	auipc	ra,0xffffb
    800068e0:	b88080e7          	jalr	-1144(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800068e4:	00100593          	li	a1,1
    800068e8:	02848513          	addi	a0,s1,40
    800068ec:	ffffb097          	auipc	ra,0xffffb
    800068f0:	b78080e7          	jalr	-1160(ra) # 80001464 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800068f4:	00100593          	li	a1,1
    800068f8:	03048513          	addi	a0,s1,48
    800068fc:	ffffb097          	auipc	ra,0xffffb
    80006900:	b68080e7          	jalr	-1176(ra) # 80001464 <_Z8sem_openPP4_semj>
}
    80006904:	01813083          	ld	ra,24(sp)
    80006908:	01013403          	ld	s0,16(sp)
    8000690c:	00813483          	ld	s1,8(sp)
    80006910:	00013903          	ld	s2,0(sp)
    80006914:	02010113          	addi	sp,sp,32
    80006918:	00008067          	ret

000000008000691c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000691c:	fe010113          	addi	sp,sp,-32
    80006920:	00113c23          	sd	ra,24(sp)
    80006924:	00813823          	sd	s0,16(sp)
    80006928:	00913423          	sd	s1,8(sp)
    8000692c:	01213023          	sd	s2,0(sp)
    80006930:	02010413          	addi	s0,sp,32
    80006934:	00050493          	mv	s1,a0
    80006938:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    8000693c:	01853503          	ld	a0,24(a0)
    80006940:	ffffb097          	auipc	ra,0xffffb
    80006944:	bb0080e7          	jalr	-1104(ra) # 800014f0 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80006948:	0304b503          	ld	a0,48(s1)
    8000694c:	ffffb097          	auipc	ra,0xffffb
    80006950:	ba4080e7          	jalr	-1116(ra) # 800014f0 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80006954:	0084b783          	ld	a5,8(s1)
    80006958:	0144a703          	lw	a4,20(s1)
    8000695c:	00271713          	slli	a4,a4,0x2
    80006960:	00e787b3          	add	a5,a5,a4
    80006964:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006968:	0144a783          	lw	a5,20(s1)
    8000696c:	0017879b          	addiw	a5,a5,1
    80006970:	0004a703          	lw	a4,0(s1)
    80006974:	02e7e7bb          	remw	a5,a5,a4
    80006978:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000697c:	0304b503          	ld	a0,48(s1)
    80006980:	ffffb097          	auipc	ra,0xffffb
    80006984:	bb4080e7          	jalr	-1100(ra) # 80001534 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80006988:	0204b503          	ld	a0,32(s1)
    8000698c:	ffffb097          	auipc	ra,0xffffb
    80006990:	ba8080e7          	jalr	-1112(ra) # 80001534 <_Z10sem_signalP4_sem>

}
    80006994:	01813083          	ld	ra,24(sp)
    80006998:	01013403          	ld	s0,16(sp)
    8000699c:	00813483          	ld	s1,8(sp)
    800069a0:	00013903          	ld	s2,0(sp)
    800069a4:	02010113          	addi	sp,sp,32
    800069a8:	00008067          	ret

00000000800069ac <_ZN6Buffer3getEv>:

int Buffer::get() {
    800069ac:	fe010113          	addi	sp,sp,-32
    800069b0:	00113c23          	sd	ra,24(sp)
    800069b4:	00813823          	sd	s0,16(sp)
    800069b8:	00913423          	sd	s1,8(sp)
    800069bc:	01213023          	sd	s2,0(sp)
    800069c0:	02010413          	addi	s0,sp,32
    800069c4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800069c8:	02053503          	ld	a0,32(a0)
    800069cc:	ffffb097          	auipc	ra,0xffffb
    800069d0:	b24080e7          	jalr	-1244(ra) # 800014f0 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800069d4:	0284b503          	ld	a0,40(s1)
    800069d8:	ffffb097          	auipc	ra,0xffffb
    800069dc:	b18080e7          	jalr	-1256(ra) # 800014f0 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800069e0:	0084b703          	ld	a4,8(s1)
    800069e4:	0104a783          	lw	a5,16(s1)
    800069e8:	00279693          	slli	a3,a5,0x2
    800069ec:	00d70733          	add	a4,a4,a3
    800069f0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800069f4:	0017879b          	addiw	a5,a5,1
    800069f8:	0004a703          	lw	a4,0(s1)
    800069fc:	02e7e7bb          	remw	a5,a5,a4
    80006a00:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80006a04:	0284b503          	ld	a0,40(s1)
    80006a08:	ffffb097          	auipc	ra,0xffffb
    80006a0c:	b2c080e7          	jalr	-1236(ra) # 80001534 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80006a10:	0184b503          	ld	a0,24(s1)
    80006a14:	ffffb097          	auipc	ra,0xffffb
    80006a18:	b20080e7          	jalr	-1248(ra) # 80001534 <_Z10sem_signalP4_sem>

    return ret;
}
    80006a1c:	00090513          	mv	a0,s2
    80006a20:	01813083          	ld	ra,24(sp)
    80006a24:	01013403          	ld	s0,16(sp)
    80006a28:	00813483          	ld	s1,8(sp)
    80006a2c:	00013903          	ld	s2,0(sp)
    80006a30:	02010113          	addi	sp,sp,32
    80006a34:	00008067          	ret

0000000080006a38 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006a38:	fe010113          	addi	sp,sp,-32
    80006a3c:	00113c23          	sd	ra,24(sp)
    80006a40:	00813823          	sd	s0,16(sp)
    80006a44:	00913423          	sd	s1,8(sp)
    80006a48:	01213023          	sd	s2,0(sp)
    80006a4c:	02010413          	addi	s0,sp,32
    80006a50:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80006a54:	02853503          	ld	a0,40(a0)
    80006a58:	ffffb097          	auipc	ra,0xffffb
    80006a5c:	a98080e7          	jalr	-1384(ra) # 800014f0 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80006a60:	0304b503          	ld	a0,48(s1)
    80006a64:	ffffb097          	auipc	ra,0xffffb
    80006a68:	a8c080e7          	jalr	-1396(ra) # 800014f0 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80006a6c:	0144a783          	lw	a5,20(s1)
    80006a70:	0104a903          	lw	s2,16(s1)
    80006a74:	0327ce63          	blt	a5,s2,80006ab0 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006a78:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006a7c:	0304b503          	ld	a0,48(s1)
    80006a80:	ffffb097          	auipc	ra,0xffffb
    80006a84:	ab4080e7          	jalr	-1356(ra) # 80001534 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80006a88:	0284b503          	ld	a0,40(s1)
    80006a8c:	ffffb097          	auipc	ra,0xffffb
    80006a90:	aa8080e7          	jalr	-1368(ra) # 80001534 <_Z10sem_signalP4_sem>

    return ret;
}
    80006a94:	00090513          	mv	a0,s2
    80006a98:	01813083          	ld	ra,24(sp)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	00813483          	ld	s1,8(sp)
    80006aa4:	00013903          	ld	s2,0(sp)
    80006aa8:	02010113          	addi	sp,sp,32
    80006aac:	00008067          	ret
        ret = cap - head + tail;
    80006ab0:	0004a703          	lw	a4,0(s1)
    80006ab4:	4127093b          	subw	s2,a4,s2
    80006ab8:	00f9093b          	addw	s2,s2,a5
    80006abc:	fc1ff06f          	j	80006a7c <_ZN6Buffer6getCntEv+0x44>

0000000080006ac0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006ac0:	fe010113          	addi	sp,sp,-32
    80006ac4:	00113c23          	sd	ra,24(sp)
    80006ac8:	00813823          	sd	s0,16(sp)
    80006acc:	00913423          	sd	s1,8(sp)
    80006ad0:	02010413          	addi	s0,sp,32
    80006ad4:	00050493          	mv	s1,a0
    putc('\n');
    80006ad8:	00a00513          	li	a0,10
    80006adc:	ffffb097          	auipc	ra,0xffffb
    80006ae0:	bb4080e7          	jalr	-1100(ra) # 80001690 <_Z4putcc>
    printString("Buffer deleted!\n");
    80006ae4:	00003517          	auipc	a0,0x3
    80006ae8:	b1c50513          	addi	a0,a0,-1252 # 80009600 <CONSOLE_STATUS+0x5f0>
    80006aec:	fffff097          	auipc	ra,0xfffff
    80006af0:	fb8080e7          	jalr	-72(ra) # 80005aa4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80006af4:	00048513          	mv	a0,s1
    80006af8:	00000097          	auipc	ra,0x0
    80006afc:	f40080e7          	jalr	-192(ra) # 80006a38 <_ZN6Buffer6getCntEv>
    80006b00:	02a05c63          	blez	a0,80006b38 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80006b04:	0084b783          	ld	a5,8(s1)
    80006b08:	0104a703          	lw	a4,16(s1)
    80006b0c:	00271713          	slli	a4,a4,0x2
    80006b10:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80006b14:	0007c503          	lbu	a0,0(a5)
    80006b18:	ffffb097          	auipc	ra,0xffffb
    80006b1c:	b78080e7          	jalr	-1160(ra) # 80001690 <_Z4putcc>
        head = (head + 1) % cap;
    80006b20:	0104a783          	lw	a5,16(s1)
    80006b24:	0017879b          	addiw	a5,a5,1
    80006b28:	0004a703          	lw	a4,0(s1)
    80006b2c:	02e7e7bb          	remw	a5,a5,a4
    80006b30:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80006b34:	fc1ff06f          	j	80006af4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006b38:	02100513          	li	a0,33
    80006b3c:	ffffb097          	auipc	ra,0xffffb
    80006b40:	b54080e7          	jalr	-1196(ra) # 80001690 <_Z4putcc>
    putc('\n');
    80006b44:	00a00513          	li	a0,10
    80006b48:	ffffb097          	auipc	ra,0xffffb
    80006b4c:	b48080e7          	jalr	-1208(ra) # 80001690 <_Z4putcc>
    mem_free(buffer);
    80006b50:	0084b503          	ld	a0,8(s1)
    80006b54:	ffffa097          	auipc	ra,0xffffa
    80006b58:	6f8080e7          	jalr	1784(ra) # 8000124c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006b5c:	0204b503          	ld	a0,32(s1)
    80006b60:	ffffb097          	auipc	ra,0xffffb
    80006b64:	94c080e7          	jalr	-1716(ra) # 800014ac <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80006b68:	0184b503          	ld	a0,24(s1)
    80006b6c:	ffffb097          	auipc	ra,0xffffb
    80006b70:	940080e7          	jalr	-1728(ra) # 800014ac <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80006b74:	0304b503          	ld	a0,48(s1)
    80006b78:	ffffb097          	auipc	ra,0xffffb
    80006b7c:	934080e7          	jalr	-1740(ra) # 800014ac <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80006b80:	0284b503          	ld	a0,40(s1)
    80006b84:	ffffb097          	auipc	ra,0xffffb
    80006b88:	928080e7          	jalr	-1752(ra) # 800014ac <_Z9sem_closeP4_sem>
}
    80006b8c:	01813083          	ld	ra,24(sp)
    80006b90:	01013403          	ld	s0,16(sp)
    80006b94:	00813483          	ld	s1,8(sp)
    80006b98:	02010113          	addi	sp,sp,32
    80006b9c:	00008067          	ret

0000000080006ba0 <start>:
    80006ba0:	ff010113          	addi	sp,sp,-16
    80006ba4:	00813423          	sd	s0,8(sp)
    80006ba8:	01010413          	addi	s0,sp,16
    80006bac:	300027f3          	csrr	a5,mstatus
    80006bb0:	ffffe737          	lui	a4,0xffffe
    80006bb4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff161f>
    80006bb8:	00e7f7b3          	and	a5,a5,a4
    80006bbc:	00001737          	lui	a4,0x1
    80006bc0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006bc4:	00e7e7b3          	or	a5,a5,a4
    80006bc8:	30079073          	csrw	mstatus,a5
    80006bcc:	00000797          	auipc	a5,0x0
    80006bd0:	16078793          	addi	a5,a5,352 # 80006d2c <system_main>
    80006bd4:	34179073          	csrw	mepc,a5
    80006bd8:	00000793          	li	a5,0
    80006bdc:	18079073          	csrw	satp,a5
    80006be0:	000107b7          	lui	a5,0x10
    80006be4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006be8:	30279073          	csrw	medeleg,a5
    80006bec:	30379073          	csrw	mideleg,a5
    80006bf0:	104027f3          	csrr	a5,sie
    80006bf4:	2227e793          	ori	a5,a5,546
    80006bf8:	10479073          	csrw	sie,a5
    80006bfc:	fff00793          	li	a5,-1
    80006c00:	00a7d793          	srli	a5,a5,0xa
    80006c04:	3b079073          	csrw	pmpaddr0,a5
    80006c08:	00f00793          	li	a5,15
    80006c0c:	3a079073          	csrw	pmpcfg0,a5
    80006c10:	f14027f3          	csrr	a5,mhartid
    80006c14:	0200c737          	lui	a4,0x200c
    80006c18:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006c1c:	0007869b          	sext.w	a3,a5
    80006c20:	00269713          	slli	a4,a3,0x2
    80006c24:	000f4637          	lui	a2,0xf4
    80006c28:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006c2c:	00d70733          	add	a4,a4,a3
    80006c30:	0037979b          	slliw	a5,a5,0x3
    80006c34:	020046b7          	lui	a3,0x2004
    80006c38:	00d787b3          	add	a5,a5,a3
    80006c3c:	00c585b3          	add	a1,a1,a2
    80006c40:	00371693          	slli	a3,a4,0x3
    80006c44:	00005717          	auipc	a4,0x5
    80006c48:	33c70713          	addi	a4,a4,828 # 8000bf80 <timer_scratch>
    80006c4c:	00b7b023          	sd	a1,0(a5)
    80006c50:	00d70733          	add	a4,a4,a3
    80006c54:	00f73c23          	sd	a5,24(a4)
    80006c58:	02c73023          	sd	a2,32(a4)
    80006c5c:	34071073          	csrw	mscratch,a4
    80006c60:	00000797          	auipc	a5,0x0
    80006c64:	6e078793          	addi	a5,a5,1760 # 80007340 <timervec>
    80006c68:	30579073          	csrw	mtvec,a5
    80006c6c:	300027f3          	csrr	a5,mstatus
    80006c70:	0087e793          	ori	a5,a5,8
    80006c74:	30079073          	csrw	mstatus,a5
    80006c78:	304027f3          	csrr	a5,mie
    80006c7c:	0807e793          	ori	a5,a5,128
    80006c80:	30479073          	csrw	mie,a5
    80006c84:	f14027f3          	csrr	a5,mhartid
    80006c88:	0007879b          	sext.w	a5,a5
    80006c8c:	00078213          	mv	tp,a5
    80006c90:	30200073          	mret
    80006c94:	00813403          	ld	s0,8(sp)
    80006c98:	01010113          	addi	sp,sp,16
    80006c9c:	00008067          	ret

0000000080006ca0 <timerinit>:
    80006ca0:	ff010113          	addi	sp,sp,-16
    80006ca4:	00813423          	sd	s0,8(sp)
    80006ca8:	01010413          	addi	s0,sp,16
    80006cac:	f14027f3          	csrr	a5,mhartid
    80006cb0:	0200c737          	lui	a4,0x200c
    80006cb4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006cb8:	0007869b          	sext.w	a3,a5
    80006cbc:	00269713          	slli	a4,a3,0x2
    80006cc0:	000f4637          	lui	a2,0xf4
    80006cc4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006cc8:	00d70733          	add	a4,a4,a3
    80006ccc:	0037979b          	slliw	a5,a5,0x3
    80006cd0:	020046b7          	lui	a3,0x2004
    80006cd4:	00d787b3          	add	a5,a5,a3
    80006cd8:	00c585b3          	add	a1,a1,a2
    80006cdc:	00371693          	slli	a3,a4,0x3
    80006ce0:	00005717          	auipc	a4,0x5
    80006ce4:	2a070713          	addi	a4,a4,672 # 8000bf80 <timer_scratch>
    80006ce8:	00b7b023          	sd	a1,0(a5)
    80006cec:	00d70733          	add	a4,a4,a3
    80006cf0:	00f73c23          	sd	a5,24(a4)
    80006cf4:	02c73023          	sd	a2,32(a4)
    80006cf8:	34071073          	csrw	mscratch,a4
    80006cfc:	00000797          	auipc	a5,0x0
    80006d00:	64478793          	addi	a5,a5,1604 # 80007340 <timervec>
    80006d04:	30579073          	csrw	mtvec,a5
    80006d08:	300027f3          	csrr	a5,mstatus
    80006d0c:	0087e793          	ori	a5,a5,8
    80006d10:	30079073          	csrw	mstatus,a5
    80006d14:	304027f3          	csrr	a5,mie
    80006d18:	0807e793          	ori	a5,a5,128
    80006d1c:	30479073          	csrw	mie,a5
    80006d20:	00813403          	ld	s0,8(sp)
    80006d24:	01010113          	addi	sp,sp,16
    80006d28:	00008067          	ret

0000000080006d2c <system_main>:
    80006d2c:	fe010113          	addi	sp,sp,-32
    80006d30:	00813823          	sd	s0,16(sp)
    80006d34:	00913423          	sd	s1,8(sp)
    80006d38:	00113c23          	sd	ra,24(sp)
    80006d3c:	02010413          	addi	s0,sp,32
    80006d40:	00000097          	auipc	ra,0x0
    80006d44:	0c4080e7          	jalr	196(ra) # 80006e04 <cpuid>
    80006d48:	00005497          	auipc	s1,0x5
    80006d4c:	16848493          	addi	s1,s1,360 # 8000beb0 <started>
    80006d50:	02050263          	beqz	a0,80006d74 <system_main+0x48>
    80006d54:	0004a783          	lw	a5,0(s1)
    80006d58:	0007879b          	sext.w	a5,a5
    80006d5c:	fe078ce3          	beqz	a5,80006d54 <system_main+0x28>
    80006d60:	0ff0000f          	fence
    80006d64:	00003517          	auipc	a0,0x3
    80006d68:	8f450513          	addi	a0,a0,-1804 # 80009658 <CONSOLE_STATUS+0x648>
    80006d6c:	00001097          	auipc	ra,0x1
    80006d70:	a70080e7          	jalr	-1424(ra) # 800077dc <panic>
    80006d74:	00001097          	auipc	ra,0x1
    80006d78:	9c4080e7          	jalr	-1596(ra) # 80007738 <consoleinit>
    80006d7c:	00001097          	auipc	ra,0x1
    80006d80:	150080e7          	jalr	336(ra) # 80007ecc <printfinit>
    80006d84:	00002517          	auipc	a0,0x2
    80006d88:	51c50513          	addi	a0,a0,1308 # 800092a0 <CONSOLE_STATUS+0x290>
    80006d8c:	00001097          	auipc	ra,0x1
    80006d90:	aac080e7          	jalr	-1364(ra) # 80007838 <__printf>
    80006d94:	00003517          	auipc	a0,0x3
    80006d98:	89450513          	addi	a0,a0,-1900 # 80009628 <CONSOLE_STATUS+0x618>
    80006d9c:	00001097          	auipc	ra,0x1
    80006da0:	a9c080e7          	jalr	-1380(ra) # 80007838 <__printf>
    80006da4:	00002517          	auipc	a0,0x2
    80006da8:	4fc50513          	addi	a0,a0,1276 # 800092a0 <CONSOLE_STATUS+0x290>
    80006dac:	00001097          	auipc	ra,0x1
    80006db0:	a8c080e7          	jalr	-1396(ra) # 80007838 <__printf>
    80006db4:	00001097          	auipc	ra,0x1
    80006db8:	4a4080e7          	jalr	1188(ra) # 80008258 <kinit>
    80006dbc:	00000097          	auipc	ra,0x0
    80006dc0:	148080e7          	jalr	328(ra) # 80006f04 <trapinit>
    80006dc4:	00000097          	auipc	ra,0x0
    80006dc8:	16c080e7          	jalr	364(ra) # 80006f30 <trapinithart>
    80006dcc:	00000097          	auipc	ra,0x0
    80006dd0:	5b4080e7          	jalr	1460(ra) # 80007380 <plicinit>
    80006dd4:	00000097          	auipc	ra,0x0
    80006dd8:	5d4080e7          	jalr	1492(ra) # 800073a8 <plicinithart>
    80006ddc:	00000097          	auipc	ra,0x0
    80006de0:	078080e7          	jalr	120(ra) # 80006e54 <userinit>
    80006de4:	0ff0000f          	fence
    80006de8:	00100793          	li	a5,1
    80006dec:	00003517          	auipc	a0,0x3
    80006df0:	85450513          	addi	a0,a0,-1964 # 80009640 <CONSOLE_STATUS+0x630>
    80006df4:	00f4a023          	sw	a5,0(s1)
    80006df8:	00001097          	auipc	ra,0x1
    80006dfc:	a40080e7          	jalr	-1472(ra) # 80007838 <__printf>
    80006e00:	0000006f          	j	80006e00 <system_main+0xd4>

0000000080006e04 <cpuid>:
    80006e04:	ff010113          	addi	sp,sp,-16
    80006e08:	00813423          	sd	s0,8(sp)
    80006e0c:	01010413          	addi	s0,sp,16
    80006e10:	00020513          	mv	a0,tp
    80006e14:	00813403          	ld	s0,8(sp)
    80006e18:	0005051b          	sext.w	a0,a0
    80006e1c:	01010113          	addi	sp,sp,16
    80006e20:	00008067          	ret

0000000080006e24 <mycpu>:
    80006e24:	ff010113          	addi	sp,sp,-16
    80006e28:	00813423          	sd	s0,8(sp)
    80006e2c:	01010413          	addi	s0,sp,16
    80006e30:	00020793          	mv	a5,tp
    80006e34:	00813403          	ld	s0,8(sp)
    80006e38:	0007879b          	sext.w	a5,a5
    80006e3c:	00779793          	slli	a5,a5,0x7
    80006e40:	00006517          	auipc	a0,0x6
    80006e44:	17050513          	addi	a0,a0,368 # 8000cfb0 <cpus>
    80006e48:	00f50533          	add	a0,a0,a5
    80006e4c:	01010113          	addi	sp,sp,16
    80006e50:	00008067          	ret

0000000080006e54 <userinit>:
    80006e54:	ff010113          	addi	sp,sp,-16
    80006e58:	00813423          	sd	s0,8(sp)
    80006e5c:	01010413          	addi	s0,sp,16
    80006e60:	00813403          	ld	s0,8(sp)
    80006e64:	01010113          	addi	sp,sp,16
    80006e68:	ffffc317          	auipc	t1,0xffffc
    80006e6c:	90830067          	jr	-1784(t1) # 80002770 <main>

0000000080006e70 <either_copyout>:
    80006e70:	ff010113          	addi	sp,sp,-16
    80006e74:	00813023          	sd	s0,0(sp)
    80006e78:	00113423          	sd	ra,8(sp)
    80006e7c:	01010413          	addi	s0,sp,16
    80006e80:	02051663          	bnez	a0,80006eac <either_copyout+0x3c>
    80006e84:	00058513          	mv	a0,a1
    80006e88:	00060593          	mv	a1,a2
    80006e8c:	0006861b          	sext.w	a2,a3
    80006e90:	00002097          	auipc	ra,0x2
    80006e94:	c54080e7          	jalr	-940(ra) # 80008ae4 <__memmove>
    80006e98:	00813083          	ld	ra,8(sp)
    80006e9c:	00013403          	ld	s0,0(sp)
    80006ea0:	00000513          	li	a0,0
    80006ea4:	01010113          	addi	sp,sp,16
    80006ea8:	00008067          	ret
    80006eac:	00002517          	auipc	a0,0x2
    80006eb0:	7d450513          	addi	a0,a0,2004 # 80009680 <CONSOLE_STATUS+0x670>
    80006eb4:	00001097          	auipc	ra,0x1
    80006eb8:	928080e7          	jalr	-1752(ra) # 800077dc <panic>

0000000080006ebc <either_copyin>:
    80006ebc:	ff010113          	addi	sp,sp,-16
    80006ec0:	00813023          	sd	s0,0(sp)
    80006ec4:	00113423          	sd	ra,8(sp)
    80006ec8:	01010413          	addi	s0,sp,16
    80006ecc:	02059463          	bnez	a1,80006ef4 <either_copyin+0x38>
    80006ed0:	00060593          	mv	a1,a2
    80006ed4:	0006861b          	sext.w	a2,a3
    80006ed8:	00002097          	auipc	ra,0x2
    80006edc:	c0c080e7          	jalr	-1012(ra) # 80008ae4 <__memmove>
    80006ee0:	00813083          	ld	ra,8(sp)
    80006ee4:	00013403          	ld	s0,0(sp)
    80006ee8:	00000513          	li	a0,0
    80006eec:	01010113          	addi	sp,sp,16
    80006ef0:	00008067          	ret
    80006ef4:	00002517          	auipc	a0,0x2
    80006ef8:	7b450513          	addi	a0,a0,1972 # 800096a8 <CONSOLE_STATUS+0x698>
    80006efc:	00001097          	auipc	ra,0x1
    80006f00:	8e0080e7          	jalr	-1824(ra) # 800077dc <panic>

0000000080006f04 <trapinit>:
    80006f04:	ff010113          	addi	sp,sp,-16
    80006f08:	00813423          	sd	s0,8(sp)
    80006f0c:	01010413          	addi	s0,sp,16
    80006f10:	00813403          	ld	s0,8(sp)
    80006f14:	00002597          	auipc	a1,0x2
    80006f18:	7bc58593          	addi	a1,a1,1980 # 800096d0 <CONSOLE_STATUS+0x6c0>
    80006f1c:	00006517          	auipc	a0,0x6
    80006f20:	11450513          	addi	a0,a0,276 # 8000d030 <tickslock>
    80006f24:	01010113          	addi	sp,sp,16
    80006f28:	00001317          	auipc	t1,0x1
    80006f2c:	5c030067          	jr	1472(t1) # 800084e8 <initlock>

0000000080006f30 <trapinithart>:
    80006f30:	ff010113          	addi	sp,sp,-16
    80006f34:	00813423          	sd	s0,8(sp)
    80006f38:	01010413          	addi	s0,sp,16
    80006f3c:	00000797          	auipc	a5,0x0
    80006f40:	2f478793          	addi	a5,a5,756 # 80007230 <kernelvec>
    80006f44:	10579073          	csrw	stvec,a5
    80006f48:	00813403          	ld	s0,8(sp)
    80006f4c:	01010113          	addi	sp,sp,16
    80006f50:	00008067          	ret

0000000080006f54 <usertrap>:
    80006f54:	ff010113          	addi	sp,sp,-16
    80006f58:	00813423          	sd	s0,8(sp)
    80006f5c:	01010413          	addi	s0,sp,16
    80006f60:	00813403          	ld	s0,8(sp)
    80006f64:	01010113          	addi	sp,sp,16
    80006f68:	00008067          	ret

0000000080006f6c <usertrapret>:
    80006f6c:	ff010113          	addi	sp,sp,-16
    80006f70:	00813423          	sd	s0,8(sp)
    80006f74:	01010413          	addi	s0,sp,16
    80006f78:	00813403          	ld	s0,8(sp)
    80006f7c:	01010113          	addi	sp,sp,16
    80006f80:	00008067          	ret

0000000080006f84 <kerneltrap>:
    80006f84:	fe010113          	addi	sp,sp,-32
    80006f88:	00813823          	sd	s0,16(sp)
    80006f8c:	00113c23          	sd	ra,24(sp)
    80006f90:	00913423          	sd	s1,8(sp)
    80006f94:	02010413          	addi	s0,sp,32
    80006f98:	142025f3          	csrr	a1,scause
    80006f9c:	100027f3          	csrr	a5,sstatus
    80006fa0:	0027f793          	andi	a5,a5,2
    80006fa4:	10079c63          	bnez	a5,800070bc <kerneltrap+0x138>
    80006fa8:	142027f3          	csrr	a5,scause
    80006fac:	0207ce63          	bltz	a5,80006fe8 <kerneltrap+0x64>
    80006fb0:	00002517          	auipc	a0,0x2
    80006fb4:	76850513          	addi	a0,a0,1896 # 80009718 <CONSOLE_STATUS+0x708>
    80006fb8:	00001097          	auipc	ra,0x1
    80006fbc:	880080e7          	jalr	-1920(ra) # 80007838 <__printf>
    80006fc0:	141025f3          	csrr	a1,sepc
    80006fc4:	14302673          	csrr	a2,stval
    80006fc8:	00002517          	auipc	a0,0x2
    80006fcc:	76050513          	addi	a0,a0,1888 # 80009728 <CONSOLE_STATUS+0x718>
    80006fd0:	00001097          	auipc	ra,0x1
    80006fd4:	868080e7          	jalr	-1944(ra) # 80007838 <__printf>
    80006fd8:	00002517          	auipc	a0,0x2
    80006fdc:	76850513          	addi	a0,a0,1896 # 80009740 <CONSOLE_STATUS+0x730>
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	7fc080e7          	jalr	2044(ra) # 800077dc <panic>
    80006fe8:	0ff7f713          	andi	a4,a5,255
    80006fec:	00900693          	li	a3,9
    80006ff0:	04d70063          	beq	a4,a3,80007030 <kerneltrap+0xac>
    80006ff4:	fff00713          	li	a4,-1
    80006ff8:	03f71713          	slli	a4,a4,0x3f
    80006ffc:	00170713          	addi	a4,a4,1
    80007000:	fae798e3          	bne	a5,a4,80006fb0 <kerneltrap+0x2c>
    80007004:	00000097          	auipc	ra,0x0
    80007008:	e00080e7          	jalr	-512(ra) # 80006e04 <cpuid>
    8000700c:	06050663          	beqz	a0,80007078 <kerneltrap+0xf4>
    80007010:	144027f3          	csrr	a5,sip
    80007014:	ffd7f793          	andi	a5,a5,-3
    80007018:	14479073          	csrw	sip,a5
    8000701c:	01813083          	ld	ra,24(sp)
    80007020:	01013403          	ld	s0,16(sp)
    80007024:	00813483          	ld	s1,8(sp)
    80007028:	02010113          	addi	sp,sp,32
    8000702c:	00008067          	ret
    80007030:	00000097          	auipc	ra,0x0
    80007034:	3c4080e7          	jalr	964(ra) # 800073f4 <plic_claim>
    80007038:	00a00793          	li	a5,10
    8000703c:	00050493          	mv	s1,a0
    80007040:	06f50863          	beq	a0,a5,800070b0 <kerneltrap+0x12c>
    80007044:	fc050ce3          	beqz	a0,8000701c <kerneltrap+0x98>
    80007048:	00050593          	mv	a1,a0
    8000704c:	00002517          	auipc	a0,0x2
    80007050:	6ac50513          	addi	a0,a0,1708 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80007054:	00000097          	auipc	ra,0x0
    80007058:	7e4080e7          	jalr	2020(ra) # 80007838 <__printf>
    8000705c:	01013403          	ld	s0,16(sp)
    80007060:	01813083          	ld	ra,24(sp)
    80007064:	00048513          	mv	a0,s1
    80007068:	00813483          	ld	s1,8(sp)
    8000706c:	02010113          	addi	sp,sp,32
    80007070:	00000317          	auipc	t1,0x0
    80007074:	3bc30067          	jr	956(t1) # 8000742c <plic_complete>
    80007078:	00006517          	auipc	a0,0x6
    8000707c:	fb850513          	addi	a0,a0,-72 # 8000d030 <tickslock>
    80007080:	00001097          	auipc	ra,0x1
    80007084:	48c080e7          	jalr	1164(ra) # 8000850c <acquire>
    80007088:	00005717          	auipc	a4,0x5
    8000708c:	e2c70713          	addi	a4,a4,-468 # 8000beb4 <ticks>
    80007090:	00072783          	lw	a5,0(a4)
    80007094:	00006517          	auipc	a0,0x6
    80007098:	f9c50513          	addi	a0,a0,-100 # 8000d030 <tickslock>
    8000709c:	0017879b          	addiw	a5,a5,1
    800070a0:	00f72023          	sw	a5,0(a4)
    800070a4:	00001097          	auipc	ra,0x1
    800070a8:	534080e7          	jalr	1332(ra) # 800085d8 <release>
    800070ac:	f65ff06f          	j	80007010 <kerneltrap+0x8c>
    800070b0:	00001097          	auipc	ra,0x1
    800070b4:	090080e7          	jalr	144(ra) # 80008140 <uartintr>
    800070b8:	fa5ff06f          	j	8000705c <kerneltrap+0xd8>
    800070bc:	00002517          	auipc	a0,0x2
    800070c0:	61c50513          	addi	a0,a0,1564 # 800096d8 <CONSOLE_STATUS+0x6c8>
    800070c4:	00000097          	auipc	ra,0x0
    800070c8:	718080e7          	jalr	1816(ra) # 800077dc <panic>

00000000800070cc <clockintr>:
    800070cc:	fe010113          	addi	sp,sp,-32
    800070d0:	00813823          	sd	s0,16(sp)
    800070d4:	00913423          	sd	s1,8(sp)
    800070d8:	00113c23          	sd	ra,24(sp)
    800070dc:	02010413          	addi	s0,sp,32
    800070e0:	00006497          	auipc	s1,0x6
    800070e4:	f5048493          	addi	s1,s1,-176 # 8000d030 <tickslock>
    800070e8:	00048513          	mv	a0,s1
    800070ec:	00001097          	auipc	ra,0x1
    800070f0:	420080e7          	jalr	1056(ra) # 8000850c <acquire>
    800070f4:	00005717          	auipc	a4,0x5
    800070f8:	dc070713          	addi	a4,a4,-576 # 8000beb4 <ticks>
    800070fc:	00072783          	lw	a5,0(a4)
    80007100:	01013403          	ld	s0,16(sp)
    80007104:	01813083          	ld	ra,24(sp)
    80007108:	00048513          	mv	a0,s1
    8000710c:	0017879b          	addiw	a5,a5,1
    80007110:	00813483          	ld	s1,8(sp)
    80007114:	00f72023          	sw	a5,0(a4)
    80007118:	02010113          	addi	sp,sp,32
    8000711c:	00001317          	auipc	t1,0x1
    80007120:	4bc30067          	jr	1212(t1) # 800085d8 <release>

0000000080007124 <devintr>:
    80007124:	142027f3          	csrr	a5,scause
    80007128:	00000513          	li	a0,0
    8000712c:	0007c463          	bltz	a5,80007134 <devintr+0x10>
    80007130:	00008067          	ret
    80007134:	fe010113          	addi	sp,sp,-32
    80007138:	00813823          	sd	s0,16(sp)
    8000713c:	00113c23          	sd	ra,24(sp)
    80007140:	00913423          	sd	s1,8(sp)
    80007144:	02010413          	addi	s0,sp,32
    80007148:	0ff7f713          	andi	a4,a5,255
    8000714c:	00900693          	li	a3,9
    80007150:	04d70c63          	beq	a4,a3,800071a8 <devintr+0x84>
    80007154:	fff00713          	li	a4,-1
    80007158:	03f71713          	slli	a4,a4,0x3f
    8000715c:	00170713          	addi	a4,a4,1
    80007160:	00e78c63          	beq	a5,a4,80007178 <devintr+0x54>
    80007164:	01813083          	ld	ra,24(sp)
    80007168:	01013403          	ld	s0,16(sp)
    8000716c:	00813483          	ld	s1,8(sp)
    80007170:	02010113          	addi	sp,sp,32
    80007174:	00008067          	ret
    80007178:	00000097          	auipc	ra,0x0
    8000717c:	c8c080e7          	jalr	-884(ra) # 80006e04 <cpuid>
    80007180:	06050663          	beqz	a0,800071ec <devintr+0xc8>
    80007184:	144027f3          	csrr	a5,sip
    80007188:	ffd7f793          	andi	a5,a5,-3
    8000718c:	14479073          	csrw	sip,a5
    80007190:	01813083          	ld	ra,24(sp)
    80007194:	01013403          	ld	s0,16(sp)
    80007198:	00813483          	ld	s1,8(sp)
    8000719c:	00200513          	li	a0,2
    800071a0:	02010113          	addi	sp,sp,32
    800071a4:	00008067          	ret
    800071a8:	00000097          	auipc	ra,0x0
    800071ac:	24c080e7          	jalr	588(ra) # 800073f4 <plic_claim>
    800071b0:	00a00793          	li	a5,10
    800071b4:	00050493          	mv	s1,a0
    800071b8:	06f50663          	beq	a0,a5,80007224 <devintr+0x100>
    800071bc:	00100513          	li	a0,1
    800071c0:	fa0482e3          	beqz	s1,80007164 <devintr+0x40>
    800071c4:	00048593          	mv	a1,s1
    800071c8:	00002517          	auipc	a0,0x2
    800071cc:	53050513          	addi	a0,a0,1328 # 800096f8 <CONSOLE_STATUS+0x6e8>
    800071d0:	00000097          	auipc	ra,0x0
    800071d4:	668080e7          	jalr	1640(ra) # 80007838 <__printf>
    800071d8:	00048513          	mv	a0,s1
    800071dc:	00000097          	auipc	ra,0x0
    800071e0:	250080e7          	jalr	592(ra) # 8000742c <plic_complete>
    800071e4:	00100513          	li	a0,1
    800071e8:	f7dff06f          	j	80007164 <devintr+0x40>
    800071ec:	00006517          	auipc	a0,0x6
    800071f0:	e4450513          	addi	a0,a0,-444 # 8000d030 <tickslock>
    800071f4:	00001097          	auipc	ra,0x1
    800071f8:	318080e7          	jalr	792(ra) # 8000850c <acquire>
    800071fc:	00005717          	auipc	a4,0x5
    80007200:	cb870713          	addi	a4,a4,-840 # 8000beb4 <ticks>
    80007204:	00072783          	lw	a5,0(a4)
    80007208:	00006517          	auipc	a0,0x6
    8000720c:	e2850513          	addi	a0,a0,-472 # 8000d030 <tickslock>
    80007210:	0017879b          	addiw	a5,a5,1
    80007214:	00f72023          	sw	a5,0(a4)
    80007218:	00001097          	auipc	ra,0x1
    8000721c:	3c0080e7          	jalr	960(ra) # 800085d8 <release>
    80007220:	f65ff06f          	j	80007184 <devintr+0x60>
    80007224:	00001097          	auipc	ra,0x1
    80007228:	f1c080e7          	jalr	-228(ra) # 80008140 <uartintr>
    8000722c:	fadff06f          	j	800071d8 <devintr+0xb4>

0000000080007230 <kernelvec>:
    80007230:	f0010113          	addi	sp,sp,-256
    80007234:	00113023          	sd	ra,0(sp)
    80007238:	00213423          	sd	sp,8(sp)
    8000723c:	00313823          	sd	gp,16(sp)
    80007240:	00413c23          	sd	tp,24(sp)
    80007244:	02513023          	sd	t0,32(sp)
    80007248:	02613423          	sd	t1,40(sp)
    8000724c:	02713823          	sd	t2,48(sp)
    80007250:	02813c23          	sd	s0,56(sp)
    80007254:	04913023          	sd	s1,64(sp)
    80007258:	04a13423          	sd	a0,72(sp)
    8000725c:	04b13823          	sd	a1,80(sp)
    80007260:	04c13c23          	sd	a2,88(sp)
    80007264:	06d13023          	sd	a3,96(sp)
    80007268:	06e13423          	sd	a4,104(sp)
    8000726c:	06f13823          	sd	a5,112(sp)
    80007270:	07013c23          	sd	a6,120(sp)
    80007274:	09113023          	sd	a7,128(sp)
    80007278:	09213423          	sd	s2,136(sp)
    8000727c:	09313823          	sd	s3,144(sp)
    80007280:	09413c23          	sd	s4,152(sp)
    80007284:	0b513023          	sd	s5,160(sp)
    80007288:	0b613423          	sd	s6,168(sp)
    8000728c:	0b713823          	sd	s7,176(sp)
    80007290:	0b813c23          	sd	s8,184(sp)
    80007294:	0d913023          	sd	s9,192(sp)
    80007298:	0da13423          	sd	s10,200(sp)
    8000729c:	0db13823          	sd	s11,208(sp)
    800072a0:	0dc13c23          	sd	t3,216(sp)
    800072a4:	0fd13023          	sd	t4,224(sp)
    800072a8:	0fe13423          	sd	t5,232(sp)
    800072ac:	0ff13823          	sd	t6,240(sp)
    800072b0:	cd5ff0ef          	jal	ra,80006f84 <kerneltrap>
    800072b4:	00013083          	ld	ra,0(sp)
    800072b8:	00813103          	ld	sp,8(sp)
    800072bc:	01013183          	ld	gp,16(sp)
    800072c0:	02013283          	ld	t0,32(sp)
    800072c4:	02813303          	ld	t1,40(sp)
    800072c8:	03013383          	ld	t2,48(sp)
    800072cc:	03813403          	ld	s0,56(sp)
    800072d0:	04013483          	ld	s1,64(sp)
    800072d4:	04813503          	ld	a0,72(sp)
    800072d8:	05013583          	ld	a1,80(sp)
    800072dc:	05813603          	ld	a2,88(sp)
    800072e0:	06013683          	ld	a3,96(sp)
    800072e4:	06813703          	ld	a4,104(sp)
    800072e8:	07013783          	ld	a5,112(sp)
    800072ec:	07813803          	ld	a6,120(sp)
    800072f0:	08013883          	ld	a7,128(sp)
    800072f4:	08813903          	ld	s2,136(sp)
    800072f8:	09013983          	ld	s3,144(sp)
    800072fc:	09813a03          	ld	s4,152(sp)
    80007300:	0a013a83          	ld	s5,160(sp)
    80007304:	0a813b03          	ld	s6,168(sp)
    80007308:	0b013b83          	ld	s7,176(sp)
    8000730c:	0b813c03          	ld	s8,184(sp)
    80007310:	0c013c83          	ld	s9,192(sp)
    80007314:	0c813d03          	ld	s10,200(sp)
    80007318:	0d013d83          	ld	s11,208(sp)
    8000731c:	0d813e03          	ld	t3,216(sp)
    80007320:	0e013e83          	ld	t4,224(sp)
    80007324:	0e813f03          	ld	t5,232(sp)
    80007328:	0f013f83          	ld	t6,240(sp)
    8000732c:	10010113          	addi	sp,sp,256
    80007330:	10200073          	sret
    80007334:	00000013          	nop
    80007338:	00000013          	nop
    8000733c:	00000013          	nop

0000000080007340 <timervec>:
    80007340:	34051573          	csrrw	a0,mscratch,a0
    80007344:	00b53023          	sd	a1,0(a0)
    80007348:	00c53423          	sd	a2,8(a0)
    8000734c:	00d53823          	sd	a3,16(a0)
    80007350:	01853583          	ld	a1,24(a0)
    80007354:	02053603          	ld	a2,32(a0)
    80007358:	0005b683          	ld	a3,0(a1)
    8000735c:	00c686b3          	add	a3,a3,a2
    80007360:	00d5b023          	sd	a3,0(a1)
    80007364:	00200593          	li	a1,2
    80007368:	14459073          	csrw	sip,a1
    8000736c:	01053683          	ld	a3,16(a0)
    80007370:	00853603          	ld	a2,8(a0)
    80007374:	00053583          	ld	a1,0(a0)
    80007378:	34051573          	csrrw	a0,mscratch,a0
    8000737c:	30200073          	mret

0000000080007380 <plicinit>:
    80007380:	ff010113          	addi	sp,sp,-16
    80007384:	00813423          	sd	s0,8(sp)
    80007388:	01010413          	addi	s0,sp,16
    8000738c:	00813403          	ld	s0,8(sp)
    80007390:	0c0007b7          	lui	a5,0xc000
    80007394:	00100713          	li	a4,1
    80007398:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000739c:	00e7a223          	sw	a4,4(a5)
    800073a0:	01010113          	addi	sp,sp,16
    800073a4:	00008067          	ret

00000000800073a8 <plicinithart>:
    800073a8:	ff010113          	addi	sp,sp,-16
    800073ac:	00813023          	sd	s0,0(sp)
    800073b0:	00113423          	sd	ra,8(sp)
    800073b4:	01010413          	addi	s0,sp,16
    800073b8:	00000097          	auipc	ra,0x0
    800073bc:	a4c080e7          	jalr	-1460(ra) # 80006e04 <cpuid>
    800073c0:	0085171b          	slliw	a4,a0,0x8
    800073c4:	0c0027b7          	lui	a5,0xc002
    800073c8:	00e787b3          	add	a5,a5,a4
    800073cc:	40200713          	li	a4,1026
    800073d0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800073d4:	00813083          	ld	ra,8(sp)
    800073d8:	00013403          	ld	s0,0(sp)
    800073dc:	00d5151b          	slliw	a0,a0,0xd
    800073e0:	0c2017b7          	lui	a5,0xc201
    800073e4:	00a78533          	add	a0,a5,a0
    800073e8:	00052023          	sw	zero,0(a0)
    800073ec:	01010113          	addi	sp,sp,16
    800073f0:	00008067          	ret

00000000800073f4 <plic_claim>:
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00813023          	sd	s0,0(sp)
    800073fc:	00113423          	sd	ra,8(sp)
    80007400:	01010413          	addi	s0,sp,16
    80007404:	00000097          	auipc	ra,0x0
    80007408:	a00080e7          	jalr	-1536(ra) # 80006e04 <cpuid>
    8000740c:	00813083          	ld	ra,8(sp)
    80007410:	00013403          	ld	s0,0(sp)
    80007414:	00d5151b          	slliw	a0,a0,0xd
    80007418:	0c2017b7          	lui	a5,0xc201
    8000741c:	00a78533          	add	a0,a5,a0
    80007420:	00452503          	lw	a0,4(a0)
    80007424:	01010113          	addi	sp,sp,16
    80007428:	00008067          	ret

000000008000742c <plic_complete>:
    8000742c:	fe010113          	addi	sp,sp,-32
    80007430:	00813823          	sd	s0,16(sp)
    80007434:	00913423          	sd	s1,8(sp)
    80007438:	00113c23          	sd	ra,24(sp)
    8000743c:	02010413          	addi	s0,sp,32
    80007440:	00050493          	mv	s1,a0
    80007444:	00000097          	auipc	ra,0x0
    80007448:	9c0080e7          	jalr	-1600(ra) # 80006e04 <cpuid>
    8000744c:	01813083          	ld	ra,24(sp)
    80007450:	01013403          	ld	s0,16(sp)
    80007454:	00d5179b          	slliw	a5,a0,0xd
    80007458:	0c201737          	lui	a4,0xc201
    8000745c:	00f707b3          	add	a5,a4,a5
    80007460:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80007464:	00813483          	ld	s1,8(sp)
    80007468:	02010113          	addi	sp,sp,32
    8000746c:	00008067          	ret

0000000080007470 <consolewrite>:
    80007470:	fb010113          	addi	sp,sp,-80
    80007474:	04813023          	sd	s0,64(sp)
    80007478:	04113423          	sd	ra,72(sp)
    8000747c:	02913c23          	sd	s1,56(sp)
    80007480:	03213823          	sd	s2,48(sp)
    80007484:	03313423          	sd	s3,40(sp)
    80007488:	03413023          	sd	s4,32(sp)
    8000748c:	01513c23          	sd	s5,24(sp)
    80007490:	05010413          	addi	s0,sp,80
    80007494:	06c05c63          	blez	a2,8000750c <consolewrite+0x9c>
    80007498:	00060993          	mv	s3,a2
    8000749c:	00050a13          	mv	s4,a0
    800074a0:	00058493          	mv	s1,a1
    800074a4:	00000913          	li	s2,0
    800074a8:	fff00a93          	li	s5,-1
    800074ac:	01c0006f          	j	800074c8 <consolewrite+0x58>
    800074b0:	fbf44503          	lbu	a0,-65(s0)
    800074b4:	0019091b          	addiw	s2,s2,1
    800074b8:	00148493          	addi	s1,s1,1
    800074bc:	00001097          	auipc	ra,0x1
    800074c0:	a9c080e7          	jalr	-1380(ra) # 80007f58 <uartputc>
    800074c4:	03298063          	beq	s3,s2,800074e4 <consolewrite+0x74>
    800074c8:	00048613          	mv	a2,s1
    800074cc:	00100693          	li	a3,1
    800074d0:	000a0593          	mv	a1,s4
    800074d4:	fbf40513          	addi	a0,s0,-65
    800074d8:	00000097          	auipc	ra,0x0
    800074dc:	9e4080e7          	jalr	-1564(ra) # 80006ebc <either_copyin>
    800074e0:	fd5518e3          	bne	a0,s5,800074b0 <consolewrite+0x40>
    800074e4:	04813083          	ld	ra,72(sp)
    800074e8:	04013403          	ld	s0,64(sp)
    800074ec:	03813483          	ld	s1,56(sp)
    800074f0:	02813983          	ld	s3,40(sp)
    800074f4:	02013a03          	ld	s4,32(sp)
    800074f8:	01813a83          	ld	s5,24(sp)
    800074fc:	00090513          	mv	a0,s2
    80007500:	03013903          	ld	s2,48(sp)
    80007504:	05010113          	addi	sp,sp,80
    80007508:	00008067          	ret
    8000750c:	00000913          	li	s2,0
    80007510:	fd5ff06f          	j	800074e4 <consolewrite+0x74>

0000000080007514 <consoleread>:
    80007514:	f9010113          	addi	sp,sp,-112
    80007518:	06813023          	sd	s0,96(sp)
    8000751c:	04913c23          	sd	s1,88(sp)
    80007520:	05213823          	sd	s2,80(sp)
    80007524:	05313423          	sd	s3,72(sp)
    80007528:	05413023          	sd	s4,64(sp)
    8000752c:	03513c23          	sd	s5,56(sp)
    80007530:	03613823          	sd	s6,48(sp)
    80007534:	03713423          	sd	s7,40(sp)
    80007538:	03813023          	sd	s8,32(sp)
    8000753c:	06113423          	sd	ra,104(sp)
    80007540:	01913c23          	sd	s9,24(sp)
    80007544:	07010413          	addi	s0,sp,112
    80007548:	00060b93          	mv	s7,a2
    8000754c:	00050913          	mv	s2,a0
    80007550:	00058c13          	mv	s8,a1
    80007554:	00060b1b          	sext.w	s6,a2
    80007558:	00006497          	auipc	s1,0x6
    8000755c:	b0048493          	addi	s1,s1,-1280 # 8000d058 <cons>
    80007560:	00400993          	li	s3,4
    80007564:	fff00a13          	li	s4,-1
    80007568:	00a00a93          	li	s5,10
    8000756c:	05705e63          	blez	s7,800075c8 <consoleread+0xb4>
    80007570:	09c4a703          	lw	a4,156(s1)
    80007574:	0984a783          	lw	a5,152(s1)
    80007578:	0007071b          	sext.w	a4,a4
    8000757c:	08e78463          	beq	a5,a4,80007604 <consoleread+0xf0>
    80007580:	07f7f713          	andi	a4,a5,127
    80007584:	00e48733          	add	a4,s1,a4
    80007588:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000758c:	0017869b          	addiw	a3,a5,1
    80007590:	08d4ac23          	sw	a3,152(s1)
    80007594:	00070c9b          	sext.w	s9,a4
    80007598:	0b370663          	beq	a4,s3,80007644 <consoleread+0x130>
    8000759c:	00100693          	li	a3,1
    800075a0:	f9f40613          	addi	a2,s0,-97
    800075a4:	000c0593          	mv	a1,s8
    800075a8:	00090513          	mv	a0,s2
    800075ac:	f8e40fa3          	sb	a4,-97(s0)
    800075b0:	00000097          	auipc	ra,0x0
    800075b4:	8c0080e7          	jalr	-1856(ra) # 80006e70 <either_copyout>
    800075b8:	01450863          	beq	a0,s4,800075c8 <consoleread+0xb4>
    800075bc:	001c0c13          	addi	s8,s8,1
    800075c0:	fffb8b9b          	addiw	s7,s7,-1
    800075c4:	fb5c94e3          	bne	s9,s5,8000756c <consoleread+0x58>
    800075c8:	000b851b          	sext.w	a0,s7
    800075cc:	06813083          	ld	ra,104(sp)
    800075d0:	06013403          	ld	s0,96(sp)
    800075d4:	05813483          	ld	s1,88(sp)
    800075d8:	05013903          	ld	s2,80(sp)
    800075dc:	04813983          	ld	s3,72(sp)
    800075e0:	04013a03          	ld	s4,64(sp)
    800075e4:	03813a83          	ld	s5,56(sp)
    800075e8:	02813b83          	ld	s7,40(sp)
    800075ec:	02013c03          	ld	s8,32(sp)
    800075f0:	01813c83          	ld	s9,24(sp)
    800075f4:	40ab053b          	subw	a0,s6,a0
    800075f8:	03013b03          	ld	s6,48(sp)
    800075fc:	07010113          	addi	sp,sp,112
    80007600:	00008067          	ret
    80007604:	00001097          	auipc	ra,0x1
    80007608:	1d8080e7          	jalr	472(ra) # 800087dc <push_on>
    8000760c:	0984a703          	lw	a4,152(s1)
    80007610:	09c4a783          	lw	a5,156(s1)
    80007614:	0007879b          	sext.w	a5,a5
    80007618:	fef70ce3          	beq	a4,a5,80007610 <consoleread+0xfc>
    8000761c:	00001097          	auipc	ra,0x1
    80007620:	234080e7          	jalr	564(ra) # 80008850 <pop_on>
    80007624:	0984a783          	lw	a5,152(s1)
    80007628:	07f7f713          	andi	a4,a5,127
    8000762c:	00e48733          	add	a4,s1,a4
    80007630:	01874703          	lbu	a4,24(a4)
    80007634:	0017869b          	addiw	a3,a5,1
    80007638:	08d4ac23          	sw	a3,152(s1)
    8000763c:	00070c9b          	sext.w	s9,a4
    80007640:	f5371ee3          	bne	a4,s3,8000759c <consoleread+0x88>
    80007644:	000b851b          	sext.w	a0,s7
    80007648:	f96bf2e3          	bgeu	s7,s6,800075cc <consoleread+0xb8>
    8000764c:	08f4ac23          	sw	a5,152(s1)
    80007650:	f7dff06f          	j	800075cc <consoleread+0xb8>

0000000080007654 <consputc>:
    80007654:	10000793          	li	a5,256
    80007658:	00f50663          	beq	a0,a5,80007664 <consputc+0x10>
    8000765c:	00001317          	auipc	t1,0x1
    80007660:	9f430067          	jr	-1548(t1) # 80008050 <uartputc_sync>
    80007664:	ff010113          	addi	sp,sp,-16
    80007668:	00113423          	sd	ra,8(sp)
    8000766c:	00813023          	sd	s0,0(sp)
    80007670:	01010413          	addi	s0,sp,16
    80007674:	00800513          	li	a0,8
    80007678:	00001097          	auipc	ra,0x1
    8000767c:	9d8080e7          	jalr	-1576(ra) # 80008050 <uartputc_sync>
    80007680:	02000513          	li	a0,32
    80007684:	00001097          	auipc	ra,0x1
    80007688:	9cc080e7          	jalr	-1588(ra) # 80008050 <uartputc_sync>
    8000768c:	00013403          	ld	s0,0(sp)
    80007690:	00813083          	ld	ra,8(sp)
    80007694:	00800513          	li	a0,8
    80007698:	01010113          	addi	sp,sp,16
    8000769c:	00001317          	auipc	t1,0x1
    800076a0:	9b430067          	jr	-1612(t1) # 80008050 <uartputc_sync>

00000000800076a4 <consoleintr>:
    800076a4:	fe010113          	addi	sp,sp,-32
    800076a8:	00813823          	sd	s0,16(sp)
    800076ac:	00913423          	sd	s1,8(sp)
    800076b0:	01213023          	sd	s2,0(sp)
    800076b4:	00113c23          	sd	ra,24(sp)
    800076b8:	02010413          	addi	s0,sp,32
    800076bc:	00006917          	auipc	s2,0x6
    800076c0:	99c90913          	addi	s2,s2,-1636 # 8000d058 <cons>
    800076c4:	00050493          	mv	s1,a0
    800076c8:	00090513          	mv	a0,s2
    800076cc:	00001097          	auipc	ra,0x1
    800076d0:	e40080e7          	jalr	-448(ra) # 8000850c <acquire>
    800076d4:	02048c63          	beqz	s1,8000770c <consoleintr+0x68>
    800076d8:	0a092783          	lw	a5,160(s2)
    800076dc:	09892703          	lw	a4,152(s2)
    800076e0:	07f00693          	li	a3,127
    800076e4:	40e7873b          	subw	a4,a5,a4
    800076e8:	02e6e263          	bltu	a3,a4,8000770c <consoleintr+0x68>
    800076ec:	00d00713          	li	a4,13
    800076f0:	04e48063          	beq	s1,a4,80007730 <consoleintr+0x8c>
    800076f4:	07f7f713          	andi	a4,a5,127
    800076f8:	00e90733          	add	a4,s2,a4
    800076fc:	0017879b          	addiw	a5,a5,1
    80007700:	0af92023          	sw	a5,160(s2)
    80007704:	00970c23          	sb	s1,24(a4)
    80007708:	08f92e23          	sw	a5,156(s2)
    8000770c:	01013403          	ld	s0,16(sp)
    80007710:	01813083          	ld	ra,24(sp)
    80007714:	00813483          	ld	s1,8(sp)
    80007718:	00013903          	ld	s2,0(sp)
    8000771c:	00006517          	auipc	a0,0x6
    80007720:	93c50513          	addi	a0,a0,-1732 # 8000d058 <cons>
    80007724:	02010113          	addi	sp,sp,32
    80007728:	00001317          	auipc	t1,0x1
    8000772c:	eb030067          	jr	-336(t1) # 800085d8 <release>
    80007730:	00a00493          	li	s1,10
    80007734:	fc1ff06f          	j	800076f4 <consoleintr+0x50>

0000000080007738 <consoleinit>:
    80007738:	fe010113          	addi	sp,sp,-32
    8000773c:	00113c23          	sd	ra,24(sp)
    80007740:	00813823          	sd	s0,16(sp)
    80007744:	00913423          	sd	s1,8(sp)
    80007748:	02010413          	addi	s0,sp,32
    8000774c:	00006497          	auipc	s1,0x6
    80007750:	90c48493          	addi	s1,s1,-1780 # 8000d058 <cons>
    80007754:	00048513          	mv	a0,s1
    80007758:	00002597          	auipc	a1,0x2
    8000775c:	ff858593          	addi	a1,a1,-8 # 80009750 <CONSOLE_STATUS+0x740>
    80007760:	00001097          	auipc	ra,0x1
    80007764:	d88080e7          	jalr	-632(ra) # 800084e8 <initlock>
    80007768:	00000097          	auipc	ra,0x0
    8000776c:	7ac080e7          	jalr	1964(ra) # 80007f14 <uartinit>
    80007770:	01813083          	ld	ra,24(sp)
    80007774:	01013403          	ld	s0,16(sp)
    80007778:	00000797          	auipc	a5,0x0
    8000777c:	d9c78793          	addi	a5,a5,-612 # 80007514 <consoleread>
    80007780:	0af4bc23          	sd	a5,184(s1)
    80007784:	00000797          	auipc	a5,0x0
    80007788:	cec78793          	addi	a5,a5,-788 # 80007470 <consolewrite>
    8000778c:	0cf4b023          	sd	a5,192(s1)
    80007790:	00813483          	ld	s1,8(sp)
    80007794:	02010113          	addi	sp,sp,32
    80007798:	00008067          	ret

000000008000779c <console_read>:
    8000779c:	ff010113          	addi	sp,sp,-16
    800077a0:	00813423          	sd	s0,8(sp)
    800077a4:	01010413          	addi	s0,sp,16
    800077a8:	00813403          	ld	s0,8(sp)
    800077ac:	00006317          	auipc	t1,0x6
    800077b0:	96433303          	ld	t1,-1692(t1) # 8000d110 <devsw+0x10>
    800077b4:	01010113          	addi	sp,sp,16
    800077b8:	00030067          	jr	t1

00000000800077bc <console_write>:
    800077bc:	ff010113          	addi	sp,sp,-16
    800077c0:	00813423          	sd	s0,8(sp)
    800077c4:	01010413          	addi	s0,sp,16
    800077c8:	00813403          	ld	s0,8(sp)
    800077cc:	00006317          	auipc	t1,0x6
    800077d0:	94c33303          	ld	t1,-1716(t1) # 8000d118 <devsw+0x18>
    800077d4:	01010113          	addi	sp,sp,16
    800077d8:	00030067          	jr	t1

00000000800077dc <panic>:
    800077dc:	fe010113          	addi	sp,sp,-32
    800077e0:	00113c23          	sd	ra,24(sp)
    800077e4:	00813823          	sd	s0,16(sp)
    800077e8:	00913423          	sd	s1,8(sp)
    800077ec:	02010413          	addi	s0,sp,32
    800077f0:	00050493          	mv	s1,a0
    800077f4:	00002517          	auipc	a0,0x2
    800077f8:	f6450513          	addi	a0,a0,-156 # 80009758 <CONSOLE_STATUS+0x748>
    800077fc:	00006797          	auipc	a5,0x6
    80007800:	9a07ae23          	sw	zero,-1604(a5) # 8000d1b8 <pr+0x18>
    80007804:	00000097          	auipc	ra,0x0
    80007808:	034080e7          	jalr	52(ra) # 80007838 <__printf>
    8000780c:	00048513          	mv	a0,s1
    80007810:	00000097          	auipc	ra,0x0
    80007814:	028080e7          	jalr	40(ra) # 80007838 <__printf>
    80007818:	00002517          	auipc	a0,0x2
    8000781c:	a8850513          	addi	a0,a0,-1400 # 800092a0 <CONSOLE_STATUS+0x290>
    80007820:	00000097          	auipc	ra,0x0
    80007824:	018080e7          	jalr	24(ra) # 80007838 <__printf>
    80007828:	00100793          	li	a5,1
    8000782c:	00004717          	auipc	a4,0x4
    80007830:	68f72623          	sw	a5,1676(a4) # 8000beb8 <panicked>
    80007834:	0000006f          	j	80007834 <panic+0x58>

0000000080007838 <__printf>:
    80007838:	f3010113          	addi	sp,sp,-208
    8000783c:	08813023          	sd	s0,128(sp)
    80007840:	07313423          	sd	s3,104(sp)
    80007844:	09010413          	addi	s0,sp,144
    80007848:	05813023          	sd	s8,64(sp)
    8000784c:	08113423          	sd	ra,136(sp)
    80007850:	06913c23          	sd	s1,120(sp)
    80007854:	07213823          	sd	s2,112(sp)
    80007858:	07413023          	sd	s4,96(sp)
    8000785c:	05513c23          	sd	s5,88(sp)
    80007860:	05613823          	sd	s6,80(sp)
    80007864:	05713423          	sd	s7,72(sp)
    80007868:	03913c23          	sd	s9,56(sp)
    8000786c:	03a13823          	sd	s10,48(sp)
    80007870:	03b13423          	sd	s11,40(sp)
    80007874:	00006317          	auipc	t1,0x6
    80007878:	92c30313          	addi	t1,t1,-1748 # 8000d1a0 <pr>
    8000787c:	01832c03          	lw	s8,24(t1)
    80007880:	00b43423          	sd	a1,8(s0)
    80007884:	00c43823          	sd	a2,16(s0)
    80007888:	00d43c23          	sd	a3,24(s0)
    8000788c:	02e43023          	sd	a4,32(s0)
    80007890:	02f43423          	sd	a5,40(s0)
    80007894:	03043823          	sd	a6,48(s0)
    80007898:	03143c23          	sd	a7,56(s0)
    8000789c:	00050993          	mv	s3,a0
    800078a0:	4a0c1663          	bnez	s8,80007d4c <__printf+0x514>
    800078a4:	60098c63          	beqz	s3,80007ebc <__printf+0x684>
    800078a8:	0009c503          	lbu	a0,0(s3)
    800078ac:	00840793          	addi	a5,s0,8
    800078b0:	f6f43c23          	sd	a5,-136(s0)
    800078b4:	00000493          	li	s1,0
    800078b8:	22050063          	beqz	a0,80007ad8 <__printf+0x2a0>
    800078bc:	00002a37          	lui	s4,0x2
    800078c0:	00018ab7          	lui	s5,0x18
    800078c4:	000f4b37          	lui	s6,0xf4
    800078c8:	00989bb7          	lui	s7,0x989
    800078cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800078d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800078d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800078d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800078dc:	00148c9b          	addiw	s9,s1,1
    800078e0:	02500793          	li	a5,37
    800078e4:	01998933          	add	s2,s3,s9
    800078e8:	38f51263          	bne	a0,a5,80007c6c <__printf+0x434>
    800078ec:	00094783          	lbu	a5,0(s2)
    800078f0:	00078c9b          	sext.w	s9,a5
    800078f4:	1e078263          	beqz	a5,80007ad8 <__printf+0x2a0>
    800078f8:	0024849b          	addiw	s1,s1,2
    800078fc:	07000713          	li	a4,112
    80007900:	00998933          	add	s2,s3,s1
    80007904:	38e78a63          	beq	a5,a4,80007c98 <__printf+0x460>
    80007908:	20f76863          	bltu	a4,a5,80007b18 <__printf+0x2e0>
    8000790c:	42a78863          	beq	a5,a0,80007d3c <__printf+0x504>
    80007910:	06400713          	li	a4,100
    80007914:	40e79663          	bne	a5,a4,80007d20 <__printf+0x4e8>
    80007918:	f7843783          	ld	a5,-136(s0)
    8000791c:	0007a603          	lw	a2,0(a5)
    80007920:	00878793          	addi	a5,a5,8
    80007924:	f6f43c23          	sd	a5,-136(s0)
    80007928:	42064a63          	bltz	a2,80007d5c <__printf+0x524>
    8000792c:	00a00713          	li	a4,10
    80007930:	02e677bb          	remuw	a5,a2,a4
    80007934:	00002d97          	auipc	s11,0x2
    80007938:	e4cd8d93          	addi	s11,s11,-436 # 80009780 <digits>
    8000793c:	00900593          	li	a1,9
    80007940:	0006051b          	sext.w	a0,a2
    80007944:	00000c93          	li	s9,0
    80007948:	02079793          	slli	a5,a5,0x20
    8000794c:	0207d793          	srli	a5,a5,0x20
    80007950:	00fd87b3          	add	a5,s11,a5
    80007954:	0007c783          	lbu	a5,0(a5)
    80007958:	02e656bb          	divuw	a3,a2,a4
    8000795c:	f8f40023          	sb	a5,-128(s0)
    80007960:	14c5d863          	bge	a1,a2,80007ab0 <__printf+0x278>
    80007964:	06300593          	li	a1,99
    80007968:	00100c93          	li	s9,1
    8000796c:	02e6f7bb          	remuw	a5,a3,a4
    80007970:	02079793          	slli	a5,a5,0x20
    80007974:	0207d793          	srli	a5,a5,0x20
    80007978:	00fd87b3          	add	a5,s11,a5
    8000797c:	0007c783          	lbu	a5,0(a5)
    80007980:	02e6d73b          	divuw	a4,a3,a4
    80007984:	f8f400a3          	sb	a5,-127(s0)
    80007988:	12a5f463          	bgeu	a1,a0,80007ab0 <__printf+0x278>
    8000798c:	00a00693          	li	a3,10
    80007990:	00900593          	li	a1,9
    80007994:	02d777bb          	remuw	a5,a4,a3
    80007998:	02079793          	slli	a5,a5,0x20
    8000799c:	0207d793          	srli	a5,a5,0x20
    800079a0:	00fd87b3          	add	a5,s11,a5
    800079a4:	0007c503          	lbu	a0,0(a5)
    800079a8:	02d757bb          	divuw	a5,a4,a3
    800079ac:	f8a40123          	sb	a0,-126(s0)
    800079b0:	48e5f263          	bgeu	a1,a4,80007e34 <__printf+0x5fc>
    800079b4:	06300513          	li	a0,99
    800079b8:	02d7f5bb          	remuw	a1,a5,a3
    800079bc:	02059593          	slli	a1,a1,0x20
    800079c0:	0205d593          	srli	a1,a1,0x20
    800079c4:	00bd85b3          	add	a1,s11,a1
    800079c8:	0005c583          	lbu	a1,0(a1)
    800079cc:	02d7d7bb          	divuw	a5,a5,a3
    800079d0:	f8b401a3          	sb	a1,-125(s0)
    800079d4:	48e57263          	bgeu	a0,a4,80007e58 <__printf+0x620>
    800079d8:	3e700513          	li	a0,999
    800079dc:	02d7f5bb          	remuw	a1,a5,a3
    800079e0:	02059593          	slli	a1,a1,0x20
    800079e4:	0205d593          	srli	a1,a1,0x20
    800079e8:	00bd85b3          	add	a1,s11,a1
    800079ec:	0005c583          	lbu	a1,0(a1)
    800079f0:	02d7d7bb          	divuw	a5,a5,a3
    800079f4:	f8b40223          	sb	a1,-124(s0)
    800079f8:	46e57663          	bgeu	a0,a4,80007e64 <__printf+0x62c>
    800079fc:	02d7f5bb          	remuw	a1,a5,a3
    80007a00:	02059593          	slli	a1,a1,0x20
    80007a04:	0205d593          	srli	a1,a1,0x20
    80007a08:	00bd85b3          	add	a1,s11,a1
    80007a0c:	0005c583          	lbu	a1,0(a1)
    80007a10:	02d7d7bb          	divuw	a5,a5,a3
    80007a14:	f8b402a3          	sb	a1,-123(s0)
    80007a18:	46ea7863          	bgeu	s4,a4,80007e88 <__printf+0x650>
    80007a1c:	02d7f5bb          	remuw	a1,a5,a3
    80007a20:	02059593          	slli	a1,a1,0x20
    80007a24:	0205d593          	srli	a1,a1,0x20
    80007a28:	00bd85b3          	add	a1,s11,a1
    80007a2c:	0005c583          	lbu	a1,0(a1)
    80007a30:	02d7d7bb          	divuw	a5,a5,a3
    80007a34:	f8b40323          	sb	a1,-122(s0)
    80007a38:	3eeaf863          	bgeu	s5,a4,80007e28 <__printf+0x5f0>
    80007a3c:	02d7f5bb          	remuw	a1,a5,a3
    80007a40:	02059593          	slli	a1,a1,0x20
    80007a44:	0205d593          	srli	a1,a1,0x20
    80007a48:	00bd85b3          	add	a1,s11,a1
    80007a4c:	0005c583          	lbu	a1,0(a1)
    80007a50:	02d7d7bb          	divuw	a5,a5,a3
    80007a54:	f8b403a3          	sb	a1,-121(s0)
    80007a58:	42eb7e63          	bgeu	s6,a4,80007e94 <__printf+0x65c>
    80007a5c:	02d7f5bb          	remuw	a1,a5,a3
    80007a60:	02059593          	slli	a1,a1,0x20
    80007a64:	0205d593          	srli	a1,a1,0x20
    80007a68:	00bd85b3          	add	a1,s11,a1
    80007a6c:	0005c583          	lbu	a1,0(a1)
    80007a70:	02d7d7bb          	divuw	a5,a5,a3
    80007a74:	f8b40423          	sb	a1,-120(s0)
    80007a78:	42ebfc63          	bgeu	s7,a4,80007eb0 <__printf+0x678>
    80007a7c:	02079793          	slli	a5,a5,0x20
    80007a80:	0207d793          	srli	a5,a5,0x20
    80007a84:	00fd8db3          	add	s11,s11,a5
    80007a88:	000dc703          	lbu	a4,0(s11)
    80007a8c:	00a00793          	li	a5,10
    80007a90:	00900c93          	li	s9,9
    80007a94:	f8e404a3          	sb	a4,-119(s0)
    80007a98:	00065c63          	bgez	a2,80007ab0 <__printf+0x278>
    80007a9c:	f9040713          	addi	a4,s0,-112
    80007aa0:	00f70733          	add	a4,a4,a5
    80007aa4:	02d00693          	li	a3,45
    80007aa8:	fed70823          	sb	a3,-16(a4)
    80007aac:	00078c93          	mv	s9,a5
    80007ab0:	f8040793          	addi	a5,s0,-128
    80007ab4:	01978cb3          	add	s9,a5,s9
    80007ab8:	f7f40d13          	addi	s10,s0,-129
    80007abc:	000cc503          	lbu	a0,0(s9)
    80007ac0:	fffc8c93          	addi	s9,s9,-1
    80007ac4:	00000097          	auipc	ra,0x0
    80007ac8:	b90080e7          	jalr	-1136(ra) # 80007654 <consputc>
    80007acc:	ffac98e3          	bne	s9,s10,80007abc <__printf+0x284>
    80007ad0:	00094503          	lbu	a0,0(s2)
    80007ad4:	e00514e3          	bnez	a0,800078dc <__printf+0xa4>
    80007ad8:	1a0c1663          	bnez	s8,80007c84 <__printf+0x44c>
    80007adc:	08813083          	ld	ra,136(sp)
    80007ae0:	08013403          	ld	s0,128(sp)
    80007ae4:	07813483          	ld	s1,120(sp)
    80007ae8:	07013903          	ld	s2,112(sp)
    80007aec:	06813983          	ld	s3,104(sp)
    80007af0:	06013a03          	ld	s4,96(sp)
    80007af4:	05813a83          	ld	s5,88(sp)
    80007af8:	05013b03          	ld	s6,80(sp)
    80007afc:	04813b83          	ld	s7,72(sp)
    80007b00:	04013c03          	ld	s8,64(sp)
    80007b04:	03813c83          	ld	s9,56(sp)
    80007b08:	03013d03          	ld	s10,48(sp)
    80007b0c:	02813d83          	ld	s11,40(sp)
    80007b10:	0d010113          	addi	sp,sp,208
    80007b14:	00008067          	ret
    80007b18:	07300713          	li	a4,115
    80007b1c:	1ce78a63          	beq	a5,a4,80007cf0 <__printf+0x4b8>
    80007b20:	07800713          	li	a4,120
    80007b24:	1ee79e63          	bne	a5,a4,80007d20 <__printf+0x4e8>
    80007b28:	f7843783          	ld	a5,-136(s0)
    80007b2c:	0007a703          	lw	a4,0(a5)
    80007b30:	00878793          	addi	a5,a5,8
    80007b34:	f6f43c23          	sd	a5,-136(s0)
    80007b38:	28074263          	bltz	a4,80007dbc <__printf+0x584>
    80007b3c:	00002d97          	auipc	s11,0x2
    80007b40:	c44d8d93          	addi	s11,s11,-956 # 80009780 <digits>
    80007b44:	00f77793          	andi	a5,a4,15
    80007b48:	00fd87b3          	add	a5,s11,a5
    80007b4c:	0007c683          	lbu	a3,0(a5)
    80007b50:	00f00613          	li	a2,15
    80007b54:	0007079b          	sext.w	a5,a4
    80007b58:	f8d40023          	sb	a3,-128(s0)
    80007b5c:	0047559b          	srliw	a1,a4,0x4
    80007b60:	0047569b          	srliw	a3,a4,0x4
    80007b64:	00000c93          	li	s9,0
    80007b68:	0ee65063          	bge	a2,a4,80007c48 <__printf+0x410>
    80007b6c:	00f6f693          	andi	a3,a3,15
    80007b70:	00dd86b3          	add	a3,s11,a3
    80007b74:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007b78:	0087d79b          	srliw	a5,a5,0x8
    80007b7c:	00100c93          	li	s9,1
    80007b80:	f8d400a3          	sb	a3,-127(s0)
    80007b84:	0cb67263          	bgeu	a2,a1,80007c48 <__printf+0x410>
    80007b88:	00f7f693          	andi	a3,a5,15
    80007b8c:	00dd86b3          	add	a3,s11,a3
    80007b90:	0006c583          	lbu	a1,0(a3)
    80007b94:	00f00613          	li	a2,15
    80007b98:	0047d69b          	srliw	a3,a5,0x4
    80007b9c:	f8b40123          	sb	a1,-126(s0)
    80007ba0:	0047d593          	srli	a1,a5,0x4
    80007ba4:	28f67e63          	bgeu	a2,a5,80007e40 <__printf+0x608>
    80007ba8:	00f6f693          	andi	a3,a3,15
    80007bac:	00dd86b3          	add	a3,s11,a3
    80007bb0:	0006c503          	lbu	a0,0(a3)
    80007bb4:	0087d813          	srli	a6,a5,0x8
    80007bb8:	0087d69b          	srliw	a3,a5,0x8
    80007bbc:	f8a401a3          	sb	a0,-125(s0)
    80007bc0:	28b67663          	bgeu	a2,a1,80007e4c <__printf+0x614>
    80007bc4:	00f6f693          	andi	a3,a3,15
    80007bc8:	00dd86b3          	add	a3,s11,a3
    80007bcc:	0006c583          	lbu	a1,0(a3)
    80007bd0:	00c7d513          	srli	a0,a5,0xc
    80007bd4:	00c7d69b          	srliw	a3,a5,0xc
    80007bd8:	f8b40223          	sb	a1,-124(s0)
    80007bdc:	29067a63          	bgeu	a2,a6,80007e70 <__printf+0x638>
    80007be0:	00f6f693          	andi	a3,a3,15
    80007be4:	00dd86b3          	add	a3,s11,a3
    80007be8:	0006c583          	lbu	a1,0(a3)
    80007bec:	0107d813          	srli	a6,a5,0x10
    80007bf0:	0107d69b          	srliw	a3,a5,0x10
    80007bf4:	f8b402a3          	sb	a1,-123(s0)
    80007bf8:	28a67263          	bgeu	a2,a0,80007e7c <__printf+0x644>
    80007bfc:	00f6f693          	andi	a3,a3,15
    80007c00:	00dd86b3          	add	a3,s11,a3
    80007c04:	0006c683          	lbu	a3,0(a3)
    80007c08:	0147d79b          	srliw	a5,a5,0x14
    80007c0c:	f8d40323          	sb	a3,-122(s0)
    80007c10:	21067663          	bgeu	a2,a6,80007e1c <__printf+0x5e4>
    80007c14:	02079793          	slli	a5,a5,0x20
    80007c18:	0207d793          	srli	a5,a5,0x20
    80007c1c:	00fd8db3          	add	s11,s11,a5
    80007c20:	000dc683          	lbu	a3,0(s11)
    80007c24:	00800793          	li	a5,8
    80007c28:	00700c93          	li	s9,7
    80007c2c:	f8d403a3          	sb	a3,-121(s0)
    80007c30:	00075c63          	bgez	a4,80007c48 <__printf+0x410>
    80007c34:	f9040713          	addi	a4,s0,-112
    80007c38:	00f70733          	add	a4,a4,a5
    80007c3c:	02d00693          	li	a3,45
    80007c40:	fed70823          	sb	a3,-16(a4)
    80007c44:	00078c93          	mv	s9,a5
    80007c48:	f8040793          	addi	a5,s0,-128
    80007c4c:	01978cb3          	add	s9,a5,s9
    80007c50:	f7f40d13          	addi	s10,s0,-129
    80007c54:	000cc503          	lbu	a0,0(s9)
    80007c58:	fffc8c93          	addi	s9,s9,-1
    80007c5c:	00000097          	auipc	ra,0x0
    80007c60:	9f8080e7          	jalr	-1544(ra) # 80007654 <consputc>
    80007c64:	ff9d18e3          	bne	s10,s9,80007c54 <__printf+0x41c>
    80007c68:	0100006f          	j	80007c78 <__printf+0x440>
    80007c6c:	00000097          	auipc	ra,0x0
    80007c70:	9e8080e7          	jalr	-1560(ra) # 80007654 <consputc>
    80007c74:	000c8493          	mv	s1,s9
    80007c78:	00094503          	lbu	a0,0(s2)
    80007c7c:	c60510e3          	bnez	a0,800078dc <__printf+0xa4>
    80007c80:	e40c0ee3          	beqz	s8,80007adc <__printf+0x2a4>
    80007c84:	00005517          	auipc	a0,0x5
    80007c88:	51c50513          	addi	a0,a0,1308 # 8000d1a0 <pr>
    80007c8c:	00001097          	auipc	ra,0x1
    80007c90:	94c080e7          	jalr	-1716(ra) # 800085d8 <release>
    80007c94:	e49ff06f          	j	80007adc <__printf+0x2a4>
    80007c98:	f7843783          	ld	a5,-136(s0)
    80007c9c:	03000513          	li	a0,48
    80007ca0:	01000d13          	li	s10,16
    80007ca4:	00878713          	addi	a4,a5,8
    80007ca8:	0007bc83          	ld	s9,0(a5)
    80007cac:	f6e43c23          	sd	a4,-136(s0)
    80007cb0:	00000097          	auipc	ra,0x0
    80007cb4:	9a4080e7          	jalr	-1628(ra) # 80007654 <consputc>
    80007cb8:	07800513          	li	a0,120
    80007cbc:	00000097          	auipc	ra,0x0
    80007cc0:	998080e7          	jalr	-1640(ra) # 80007654 <consputc>
    80007cc4:	00002d97          	auipc	s11,0x2
    80007cc8:	abcd8d93          	addi	s11,s11,-1348 # 80009780 <digits>
    80007ccc:	03ccd793          	srli	a5,s9,0x3c
    80007cd0:	00fd87b3          	add	a5,s11,a5
    80007cd4:	0007c503          	lbu	a0,0(a5)
    80007cd8:	fffd0d1b          	addiw	s10,s10,-1
    80007cdc:	004c9c93          	slli	s9,s9,0x4
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	974080e7          	jalr	-1676(ra) # 80007654 <consputc>
    80007ce8:	fe0d12e3          	bnez	s10,80007ccc <__printf+0x494>
    80007cec:	f8dff06f          	j	80007c78 <__printf+0x440>
    80007cf0:	f7843783          	ld	a5,-136(s0)
    80007cf4:	0007bc83          	ld	s9,0(a5)
    80007cf8:	00878793          	addi	a5,a5,8
    80007cfc:	f6f43c23          	sd	a5,-136(s0)
    80007d00:	000c9a63          	bnez	s9,80007d14 <__printf+0x4dc>
    80007d04:	1080006f          	j	80007e0c <__printf+0x5d4>
    80007d08:	001c8c93          	addi	s9,s9,1
    80007d0c:	00000097          	auipc	ra,0x0
    80007d10:	948080e7          	jalr	-1720(ra) # 80007654 <consputc>
    80007d14:	000cc503          	lbu	a0,0(s9)
    80007d18:	fe0518e3          	bnez	a0,80007d08 <__printf+0x4d0>
    80007d1c:	f5dff06f          	j	80007c78 <__printf+0x440>
    80007d20:	02500513          	li	a0,37
    80007d24:	00000097          	auipc	ra,0x0
    80007d28:	930080e7          	jalr	-1744(ra) # 80007654 <consputc>
    80007d2c:	000c8513          	mv	a0,s9
    80007d30:	00000097          	auipc	ra,0x0
    80007d34:	924080e7          	jalr	-1756(ra) # 80007654 <consputc>
    80007d38:	f41ff06f          	j	80007c78 <__printf+0x440>
    80007d3c:	02500513          	li	a0,37
    80007d40:	00000097          	auipc	ra,0x0
    80007d44:	914080e7          	jalr	-1772(ra) # 80007654 <consputc>
    80007d48:	f31ff06f          	j	80007c78 <__printf+0x440>
    80007d4c:	00030513          	mv	a0,t1
    80007d50:	00000097          	auipc	ra,0x0
    80007d54:	7bc080e7          	jalr	1980(ra) # 8000850c <acquire>
    80007d58:	b4dff06f          	j	800078a4 <__printf+0x6c>
    80007d5c:	40c0053b          	negw	a0,a2
    80007d60:	00a00713          	li	a4,10
    80007d64:	02e576bb          	remuw	a3,a0,a4
    80007d68:	00002d97          	auipc	s11,0x2
    80007d6c:	a18d8d93          	addi	s11,s11,-1512 # 80009780 <digits>
    80007d70:	ff700593          	li	a1,-9
    80007d74:	02069693          	slli	a3,a3,0x20
    80007d78:	0206d693          	srli	a3,a3,0x20
    80007d7c:	00dd86b3          	add	a3,s11,a3
    80007d80:	0006c683          	lbu	a3,0(a3)
    80007d84:	02e557bb          	divuw	a5,a0,a4
    80007d88:	f8d40023          	sb	a3,-128(s0)
    80007d8c:	10b65e63          	bge	a2,a1,80007ea8 <__printf+0x670>
    80007d90:	06300593          	li	a1,99
    80007d94:	02e7f6bb          	remuw	a3,a5,a4
    80007d98:	02069693          	slli	a3,a3,0x20
    80007d9c:	0206d693          	srli	a3,a3,0x20
    80007da0:	00dd86b3          	add	a3,s11,a3
    80007da4:	0006c683          	lbu	a3,0(a3)
    80007da8:	02e7d73b          	divuw	a4,a5,a4
    80007dac:	00200793          	li	a5,2
    80007db0:	f8d400a3          	sb	a3,-127(s0)
    80007db4:	bca5ece3          	bltu	a1,a0,8000798c <__printf+0x154>
    80007db8:	ce5ff06f          	j	80007a9c <__printf+0x264>
    80007dbc:	40e007bb          	negw	a5,a4
    80007dc0:	00002d97          	auipc	s11,0x2
    80007dc4:	9c0d8d93          	addi	s11,s11,-1600 # 80009780 <digits>
    80007dc8:	00f7f693          	andi	a3,a5,15
    80007dcc:	00dd86b3          	add	a3,s11,a3
    80007dd0:	0006c583          	lbu	a1,0(a3)
    80007dd4:	ff100613          	li	a2,-15
    80007dd8:	0047d69b          	srliw	a3,a5,0x4
    80007ddc:	f8b40023          	sb	a1,-128(s0)
    80007de0:	0047d59b          	srliw	a1,a5,0x4
    80007de4:	0ac75e63          	bge	a4,a2,80007ea0 <__printf+0x668>
    80007de8:	00f6f693          	andi	a3,a3,15
    80007dec:	00dd86b3          	add	a3,s11,a3
    80007df0:	0006c603          	lbu	a2,0(a3)
    80007df4:	00f00693          	li	a3,15
    80007df8:	0087d79b          	srliw	a5,a5,0x8
    80007dfc:	f8c400a3          	sb	a2,-127(s0)
    80007e00:	d8b6e4e3          	bltu	a3,a1,80007b88 <__printf+0x350>
    80007e04:	00200793          	li	a5,2
    80007e08:	e2dff06f          	j	80007c34 <__printf+0x3fc>
    80007e0c:	00002c97          	auipc	s9,0x2
    80007e10:	954c8c93          	addi	s9,s9,-1708 # 80009760 <CONSOLE_STATUS+0x750>
    80007e14:	02800513          	li	a0,40
    80007e18:	ef1ff06f          	j	80007d08 <__printf+0x4d0>
    80007e1c:	00700793          	li	a5,7
    80007e20:	00600c93          	li	s9,6
    80007e24:	e0dff06f          	j	80007c30 <__printf+0x3f8>
    80007e28:	00700793          	li	a5,7
    80007e2c:	00600c93          	li	s9,6
    80007e30:	c69ff06f          	j	80007a98 <__printf+0x260>
    80007e34:	00300793          	li	a5,3
    80007e38:	00200c93          	li	s9,2
    80007e3c:	c5dff06f          	j	80007a98 <__printf+0x260>
    80007e40:	00300793          	li	a5,3
    80007e44:	00200c93          	li	s9,2
    80007e48:	de9ff06f          	j	80007c30 <__printf+0x3f8>
    80007e4c:	00400793          	li	a5,4
    80007e50:	00300c93          	li	s9,3
    80007e54:	dddff06f          	j	80007c30 <__printf+0x3f8>
    80007e58:	00400793          	li	a5,4
    80007e5c:	00300c93          	li	s9,3
    80007e60:	c39ff06f          	j	80007a98 <__printf+0x260>
    80007e64:	00500793          	li	a5,5
    80007e68:	00400c93          	li	s9,4
    80007e6c:	c2dff06f          	j	80007a98 <__printf+0x260>
    80007e70:	00500793          	li	a5,5
    80007e74:	00400c93          	li	s9,4
    80007e78:	db9ff06f          	j	80007c30 <__printf+0x3f8>
    80007e7c:	00600793          	li	a5,6
    80007e80:	00500c93          	li	s9,5
    80007e84:	dadff06f          	j	80007c30 <__printf+0x3f8>
    80007e88:	00600793          	li	a5,6
    80007e8c:	00500c93          	li	s9,5
    80007e90:	c09ff06f          	j	80007a98 <__printf+0x260>
    80007e94:	00800793          	li	a5,8
    80007e98:	00700c93          	li	s9,7
    80007e9c:	bfdff06f          	j	80007a98 <__printf+0x260>
    80007ea0:	00100793          	li	a5,1
    80007ea4:	d91ff06f          	j	80007c34 <__printf+0x3fc>
    80007ea8:	00100793          	li	a5,1
    80007eac:	bf1ff06f          	j	80007a9c <__printf+0x264>
    80007eb0:	00900793          	li	a5,9
    80007eb4:	00800c93          	li	s9,8
    80007eb8:	be1ff06f          	j	80007a98 <__printf+0x260>
    80007ebc:	00002517          	auipc	a0,0x2
    80007ec0:	8ac50513          	addi	a0,a0,-1876 # 80009768 <CONSOLE_STATUS+0x758>
    80007ec4:	00000097          	auipc	ra,0x0
    80007ec8:	918080e7          	jalr	-1768(ra) # 800077dc <panic>

0000000080007ecc <printfinit>:
    80007ecc:	fe010113          	addi	sp,sp,-32
    80007ed0:	00813823          	sd	s0,16(sp)
    80007ed4:	00913423          	sd	s1,8(sp)
    80007ed8:	00113c23          	sd	ra,24(sp)
    80007edc:	02010413          	addi	s0,sp,32
    80007ee0:	00005497          	auipc	s1,0x5
    80007ee4:	2c048493          	addi	s1,s1,704 # 8000d1a0 <pr>
    80007ee8:	00048513          	mv	a0,s1
    80007eec:	00002597          	auipc	a1,0x2
    80007ef0:	88c58593          	addi	a1,a1,-1908 # 80009778 <CONSOLE_STATUS+0x768>
    80007ef4:	00000097          	auipc	ra,0x0
    80007ef8:	5f4080e7          	jalr	1524(ra) # 800084e8 <initlock>
    80007efc:	01813083          	ld	ra,24(sp)
    80007f00:	01013403          	ld	s0,16(sp)
    80007f04:	0004ac23          	sw	zero,24(s1)
    80007f08:	00813483          	ld	s1,8(sp)
    80007f0c:	02010113          	addi	sp,sp,32
    80007f10:	00008067          	ret

0000000080007f14 <uartinit>:
    80007f14:	ff010113          	addi	sp,sp,-16
    80007f18:	00813423          	sd	s0,8(sp)
    80007f1c:	01010413          	addi	s0,sp,16
    80007f20:	100007b7          	lui	a5,0x10000
    80007f24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007f28:	f8000713          	li	a4,-128
    80007f2c:	00e781a3          	sb	a4,3(a5)
    80007f30:	00300713          	li	a4,3
    80007f34:	00e78023          	sb	a4,0(a5)
    80007f38:	000780a3          	sb	zero,1(a5)
    80007f3c:	00e781a3          	sb	a4,3(a5)
    80007f40:	00700693          	li	a3,7
    80007f44:	00d78123          	sb	a3,2(a5)
    80007f48:	00e780a3          	sb	a4,1(a5)
    80007f4c:	00813403          	ld	s0,8(sp)
    80007f50:	01010113          	addi	sp,sp,16
    80007f54:	00008067          	ret

0000000080007f58 <uartputc>:
    80007f58:	00004797          	auipc	a5,0x4
    80007f5c:	f607a783          	lw	a5,-160(a5) # 8000beb8 <panicked>
    80007f60:	00078463          	beqz	a5,80007f68 <uartputc+0x10>
    80007f64:	0000006f          	j	80007f64 <uartputc+0xc>
    80007f68:	fd010113          	addi	sp,sp,-48
    80007f6c:	02813023          	sd	s0,32(sp)
    80007f70:	00913c23          	sd	s1,24(sp)
    80007f74:	01213823          	sd	s2,16(sp)
    80007f78:	01313423          	sd	s3,8(sp)
    80007f7c:	02113423          	sd	ra,40(sp)
    80007f80:	03010413          	addi	s0,sp,48
    80007f84:	00004917          	auipc	s2,0x4
    80007f88:	f3c90913          	addi	s2,s2,-196 # 8000bec0 <uart_tx_r>
    80007f8c:	00093783          	ld	a5,0(s2)
    80007f90:	00004497          	auipc	s1,0x4
    80007f94:	f3848493          	addi	s1,s1,-200 # 8000bec8 <uart_tx_w>
    80007f98:	0004b703          	ld	a4,0(s1)
    80007f9c:	02078693          	addi	a3,a5,32
    80007fa0:	00050993          	mv	s3,a0
    80007fa4:	02e69c63          	bne	a3,a4,80007fdc <uartputc+0x84>
    80007fa8:	00001097          	auipc	ra,0x1
    80007fac:	834080e7          	jalr	-1996(ra) # 800087dc <push_on>
    80007fb0:	00093783          	ld	a5,0(s2)
    80007fb4:	0004b703          	ld	a4,0(s1)
    80007fb8:	02078793          	addi	a5,a5,32
    80007fbc:	00e79463          	bne	a5,a4,80007fc4 <uartputc+0x6c>
    80007fc0:	0000006f          	j	80007fc0 <uartputc+0x68>
    80007fc4:	00001097          	auipc	ra,0x1
    80007fc8:	88c080e7          	jalr	-1908(ra) # 80008850 <pop_on>
    80007fcc:	00093783          	ld	a5,0(s2)
    80007fd0:	0004b703          	ld	a4,0(s1)
    80007fd4:	02078693          	addi	a3,a5,32
    80007fd8:	fce688e3          	beq	a3,a4,80007fa8 <uartputc+0x50>
    80007fdc:	01f77693          	andi	a3,a4,31
    80007fe0:	00005597          	auipc	a1,0x5
    80007fe4:	1e058593          	addi	a1,a1,480 # 8000d1c0 <uart_tx_buf>
    80007fe8:	00d586b3          	add	a3,a1,a3
    80007fec:	00170713          	addi	a4,a4,1
    80007ff0:	01368023          	sb	s3,0(a3)
    80007ff4:	00e4b023          	sd	a4,0(s1)
    80007ff8:	10000637          	lui	a2,0x10000
    80007ffc:	02f71063          	bne	a4,a5,8000801c <uartputc+0xc4>
    80008000:	0340006f          	j	80008034 <uartputc+0xdc>
    80008004:	00074703          	lbu	a4,0(a4)
    80008008:	00f93023          	sd	a5,0(s2)
    8000800c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008010:	00093783          	ld	a5,0(s2)
    80008014:	0004b703          	ld	a4,0(s1)
    80008018:	00f70e63          	beq	a4,a5,80008034 <uartputc+0xdc>
    8000801c:	00564683          	lbu	a3,5(a2)
    80008020:	01f7f713          	andi	a4,a5,31
    80008024:	00e58733          	add	a4,a1,a4
    80008028:	0206f693          	andi	a3,a3,32
    8000802c:	00178793          	addi	a5,a5,1
    80008030:	fc069ae3          	bnez	a3,80008004 <uartputc+0xac>
    80008034:	02813083          	ld	ra,40(sp)
    80008038:	02013403          	ld	s0,32(sp)
    8000803c:	01813483          	ld	s1,24(sp)
    80008040:	01013903          	ld	s2,16(sp)
    80008044:	00813983          	ld	s3,8(sp)
    80008048:	03010113          	addi	sp,sp,48
    8000804c:	00008067          	ret

0000000080008050 <uartputc_sync>:
    80008050:	ff010113          	addi	sp,sp,-16
    80008054:	00813423          	sd	s0,8(sp)
    80008058:	01010413          	addi	s0,sp,16
    8000805c:	00004717          	auipc	a4,0x4
    80008060:	e5c72703          	lw	a4,-420(a4) # 8000beb8 <panicked>
    80008064:	02071663          	bnez	a4,80008090 <uartputc_sync+0x40>
    80008068:	00050793          	mv	a5,a0
    8000806c:	100006b7          	lui	a3,0x10000
    80008070:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008074:	02077713          	andi	a4,a4,32
    80008078:	fe070ce3          	beqz	a4,80008070 <uartputc_sync+0x20>
    8000807c:	0ff7f793          	andi	a5,a5,255
    80008080:	00f68023          	sb	a5,0(a3)
    80008084:	00813403          	ld	s0,8(sp)
    80008088:	01010113          	addi	sp,sp,16
    8000808c:	00008067          	ret
    80008090:	0000006f          	j	80008090 <uartputc_sync+0x40>

0000000080008094 <uartstart>:
    80008094:	ff010113          	addi	sp,sp,-16
    80008098:	00813423          	sd	s0,8(sp)
    8000809c:	01010413          	addi	s0,sp,16
    800080a0:	00004617          	auipc	a2,0x4
    800080a4:	e2060613          	addi	a2,a2,-480 # 8000bec0 <uart_tx_r>
    800080a8:	00004517          	auipc	a0,0x4
    800080ac:	e2050513          	addi	a0,a0,-480 # 8000bec8 <uart_tx_w>
    800080b0:	00063783          	ld	a5,0(a2)
    800080b4:	00053703          	ld	a4,0(a0)
    800080b8:	04f70263          	beq	a4,a5,800080fc <uartstart+0x68>
    800080bc:	100005b7          	lui	a1,0x10000
    800080c0:	00005817          	auipc	a6,0x5
    800080c4:	10080813          	addi	a6,a6,256 # 8000d1c0 <uart_tx_buf>
    800080c8:	01c0006f          	j	800080e4 <uartstart+0x50>
    800080cc:	0006c703          	lbu	a4,0(a3)
    800080d0:	00f63023          	sd	a5,0(a2)
    800080d4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800080d8:	00063783          	ld	a5,0(a2)
    800080dc:	00053703          	ld	a4,0(a0)
    800080e0:	00f70e63          	beq	a4,a5,800080fc <uartstart+0x68>
    800080e4:	01f7f713          	andi	a4,a5,31
    800080e8:	00e806b3          	add	a3,a6,a4
    800080ec:	0055c703          	lbu	a4,5(a1)
    800080f0:	00178793          	addi	a5,a5,1
    800080f4:	02077713          	andi	a4,a4,32
    800080f8:	fc071ae3          	bnez	a4,800080cc <uartstart+0x38>
    800080fc:	00813403          	ld	s0,8(sp)
    80008100:	01010113          	addi	sp,sp,16
    80008104:	00008067          	ret

0000000080008108 <uartgetc>:
    80008108:	ff010113          	addi	sp,sp,-16
    8000810c:	00813423          	sd	s0,8(sp)
    80008110:	01010413          	addi	s0,sp,16
    80008114:	10000737          	lui	a4,0x10000
    80008118:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000811c:	0017f793          	andi	a5,a5,1
    80008120:	00078c63          	beqz	a5,80008138 <uartgetc+0x30>
    80008124:	00074503          	lbu	a0,0(a4)
    80008128:	0ff57513          	andi	a0,a0,255
    8000812c:	00813403          	ld	s0,8(sp)
    80008130:	01010113          	addi	sp,sp,16
    80008134:	00008067          	ret
    80008138:	fff00513          	li	a0,-1
    8000813c:	ff1ff06f          	j	8000812c <uartgetc+0x24>

0000000080008140 <uartintr>:
    80008140:	100007b7          	lui	a5,0x10000
    80008144:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008148:	0017f793          	andi	a5,a5,1
    8000814c:	0a078463          	beqz	a5,800081f4 <uartintr+0xb4>
    80008150:	fe010113          	addi	sp,sp,-32
    80008154:	00813823          	sd	s0,16(sp)
    80008158:	00913423          	sd	s1,8(sp)
    8000815c:	00113c23          	sd	ra,24(sp)
    80008160:	02010413          	addi	s0,sp,32
    80008164:	100004b7          	lui	s1,0x10000
    80008168:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000816c:	0ff57513          	andi	a0,a0,255
    80008170:	fffff097          	auipc	ra,0xfffff
    80008174:	534080e7          	jalr	1332(ra) # 800076a4 <consoleintr>
    80008178:	0054c783          	lbu	a5,5(s1)
    8000817c:	0017f793          	andi	a5,a5,1
    80008180:	fe0794e3          	bnez	a5,80008168 <uartintr+0x28>
    80008184:	00004617          	auipc	a2,0x4
    80008188:	d3c60613          	addi	a2,a2,-708 # 8000bec0 <uart_tx_r>
    8000818c:	00004517          	auipc	a0,0x4
    80008190:	d3c50513          	addi	a0,a0,-708 # 8000bec8 <uart_tx_w>
    80008194:	00063783          	ld	a5,0(a2)
    80008198:	00053703          	ld	a4,0(a0)
    8000819c:	04f70263          	beq	a4,a5,800081e0 <uartintr+0xa0>
    800081a0:	100005b7          	lui	a1,0x10000
    800081a4:	00005817          	auipc	a6,0x5
    800081a8:	01c80813          	addi	a6,a6,28 # 8000d1c0 <uart_tx_buf>
    800081ac:	01c0006f          	j	800081c8 <uartintr+0x88>
    800081b0:	0006c703          	lbu	a4,0(a3)
    800081b4:	00f63023          	sd	a5,0(a2)
    800081b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800081bc:	00063783          	ld	a5,0(a2)
    800081c0:	00053703          	ld	a4,0(a0)
    800081c4:	00f70e63          	beq	a4,a5,800081e0 <uartintr+0xa0>
    800081c8:	01f7f713          	andi	a4,a5,31
    800081cc:	00e806b3          	add	a3,a6,a4
    800081d0:	0055c703          	lbu	a4,5(a1)
    800081d4:	00178793          	addi	a5,a5,1
    800081d8:	02077713          	andi	a4,a4,32
    800081dc:	fc071ae3          	bnez	a4,800081b0 <uartintr+0x70>
    800081e0:	01813083          	ld	ra,24(sp)
    800081e4:	01013403          	ld	s0,16(sp)
    800081e8:	00813483          	ld	s1,8(sp)
    800081ec:	02010113          	addi	sp,sp,32
    800081f0:	00008067          	ret
    800081f4:	00004617          	auipc	a2,0x4
    800081f8:	ccc60613          	addi	a2,a2,-820 # 8000bec0 <uart_tx_r>
    800081fc:	00004517          	auipc	a0,0x4
    80008200:	ccc50513          	addi	a0,a0,-820 # 8000bec8 <uart_tx_w>
    80008204:	00063783          	ld	a5,0(a2)
    80008208:	00053703          	ld	a4,0(a0)
    8000820c:	04f70263          	beq	a4,a5,80008250 <uartintr+0x110>
    80008210:	100005b7          	lui	a1,0x10000
    80008214:	00005817          	auipc	a6,0x5
    80008218:	fac80813          	addi	a6,a6,-84 # 8000d1c0 <uart_tx_buf>
    8000821c:	01c0006f          	j	80008238 <uartintr+0xf8>
    80008220:	0006c703          	lbu	a4,0(a3)
    80008224:	00f63023          	sd	a5,0(a2)
    80008228:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000822c:	00063783          	ld	a5,0(a2)
    80008230:	00053703          	ld	a4,0(a0)
    80008234:	02f70063          	beq	a4,a5,80008254 <uartintr+0x114>
    80008238:	01f7f713          	andi	a4,a5,31
    8000823c:	00e806b3          	add	a3,a6,a4
    80008240:	0055c703          	lbu	a4,5(a1)
    80008244:	00178793          	addi	a5,a5,1
    80008248:	02077713          	andi	a4,a4,32
    8000824c:	fc071ae3          	bnez	a4,80008220 <uartintr+0xe0>
    80008250:	00008067          	ret
    80008254:	00008067          	ret

0000000080008258 <kinit>:
    80008258:	fc010113          	addi	sp,sp,-64
    8000825c:	02913423          	sd	s1,40(sp)
    80008260:	fffff7b7          	lui	a5,0xfffff
    80008264:	00006497          	auipc	s1,0x6
    80008268:	f7b48493          	addi	s1,s1,-133 # 8000e1df <end+0xfff>
    8000826c:	02813823          	sd	s0,48(sp)
    80008270:	01313c23          	sd	s3,24(sp)
    80008274:	00f4f4b3          	and	s1,s1,a5
    80008278:	02113c23          	sd	ra,56(sp)
    8000827c:	03213023          	sd	s2,32(sp)
    80008280:	01413823          	sd	s4,16(sp)
    80008284:	01513423          	sd	s5,8(sp)
    80008288:	04010413          	addi	s0,sp,64
    8000828c:	000017b7          	lui	a5,0x1
    80008290:	01100993          	li	s3,17
    80008294:	00f487b3          	add	a5,s1,a5
    80008298:	01b99993          	slli	s3,s3,0x1b
    8000829c:	06f9e063          	bltu	s3,a5,800082fc <kinit+0xa4>
    800082a0:	00005a97          	auipc	s5,0x5
    800082a4:	f40a8a93          	addi	s5,s5,-192 # 8000d1e0 <end>
    800082a8:	0754ec63          	bltu	s1,s5,80008320 <kinit+0xc8>
    800082ac:	0734fa63          	bgeu	s1,s3,80008320 <kinit+0xc8>
    800082b0:	00088a37          	lui	s4,0x88
    800082b4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800082b8:	00004917          	auipc	s2,0x4
    800082bc:	c1890913          	addi	s2,s2,-1000 # 8000bed0 <kmem>
    800082c0:	00ca1a13          	slli	s4,s4,0xc
    800082c4:	0140006f          	j	800082d8 <kinit+0x80>
    800082c8:	000017b7          	lui	a5,0x1
    800082cc:	00f484b3          	add	s1,s1,a5
    800082d0:	0554e863          	bltu	s1,s5,80008320 <kinit+0xc8>
    800082d4:	0534f663          	bgeu	s1,s3,80008320 <kinit+0xc8>
    800082d8:	00001637          	lui	a2,0x1
    800082dc:	00100593          	li	a1,1
    800082e0:	00048513          	mv	a0,s1
    800082e4:	00000097          	auipc	ra,0x0
    800082e8:	5e4080e7          	jalr	1508(ra) # 800088c8 <__memset>
    800082ec:	00093783          	ld	a5,0(s2)
    800082f0:	00f4b023          	sd	a5,0(s1)
    800082f4:	00993023          	sd	s1,0(s2)
    800082f8:	fd4498e3          	bne	s1,s4,800082c8 <kinit+0x70>
    800082fc:	03813083          	ld	ra,56(sp)
    80008300:	03013403          	ld	s0,48(sp)
    80008304:	02813483          	ld	s1,40(sp)
    80008308:	02013903          	ld	s2,32(sp)
    8000830c:	01813983          	ld	s3,24(sp)
    80008310:	01013a03          	ld	s4,16(sp)
    80008314:	00813a83          	ld	s5,8(sp)
    80008318:	04010113          	addi	sp,sp,64
    8000831c:	00008067          	ret
    80008320:	00001517          	auipc	a0,0x1
    80008324:	47850513          	addi	a0,a0,1144 # 80009798 <digits+0x18>
    80008328:	fffff097          	auipc	ra,0xfffff
    8000832c:	4b4080e7          	jalr	1204(ra) # 800077dc <panic>

0000000080008330 <freerange>:
    80008330:	fc010113          	addi	sp,sp,-64
    80008334:	000017b7          	lui	a5,0x1
    80008338:	02913423          	sd	s1,40(sp)
    8000833c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008340:	009504b3          	add	s1,a0,s1
    80008344:	fffff537          	lui	a0,0xfffff
    80008348:	02813823          	sd	s0,48(sp)
    8000834c:	02113c23          	sd	ra,56(sp)
    80008350:	03213023          	sd	s2,32(sp)
    80008354:	01313c23          	sd	s3,24(sp)
    80008358:	01413823          	sd	s4,16(sp)
    8000835c:	01513423          	sd	s5,8(sp)
    80008360:	01613023          	sd	s6,0(sp)
    80008364:	04010413          	addi	s0,sp,64
    80008368:	00a4f4b3          	and	s1,s1,a0
    8000836c:	00f487b3          	add	a5,s1,a5
    80008370:	06f5e463          	bltu	a1,a5,800083d8 <freerange+0xa8>
    80008374:	00005a97          	auipc	s5,0x5
    80008378:	e6ca8a93          	addi	s5,s5,-404 # 8000d1e0 <end>
    8000837c:	0954e263          	bltu	s1,s5,80008400 <freerange+0xd0>
    80008380:	01100993          	li	s3,17
    80008384:	01b99993          	slli	s3,s3,0x1b
    80008388:	0734fc63          	bgeu	s1,s3,80008400 <freerange+0xd0>
    8000838c:	00058a13          	mv	s4,a1
    80008390:	00004917          	auipc	s2,0x4
    80008394:	b4090913          	addi	s2,s2,-1216 # 8000bed0 <kmem>
    80008398:	00002b37          	lui	s6,0x2
    8000839c:	0140006f          	j	800083b0 <freerange+0x80>
    800083a0:	000017b7          	lui	a5,0x1
    800083a4:	00f484b3          	add	s1,s1,a5
    800083a8:	0554ec63          	bltu	s1,s5,80008400 <freerange+0xd0>
    800083ac:	0534fa63          	bgeu	s1,s3,80008400 <freerange+0xd0>
    800083b0:	00001637          	lui	a2,0x1
    800083b4:	00100593          	li	a1,1
    800083b8:	00048513          	mv	a0,s1
    800083bc:	00000097          	auipc	ra,0x0
    800083c0:	50c080e7          	jalr	1292(ra) # 800088c8 <__memset>
    800083c4:	00093703          	ld	a4,0(s2)
    800083c8:	016487b3          	add	a5,s1,s6
    800083cc:	00e4b023          	sd	a4,0(s1)
    800083d0:	00993023          	sd	s1,0(s2)
    800083d4:	fcfa76e3          	bgeu	s4,a5,800083a0 <freerange+0x70>
    800083d8:	03813083          	ld	ra,56(sp)
    800083dc:	03013403          	ld	s0,48(sp)
    800083e0:	02813483          	ld	s1,40(sp)
    800083e4:	02013903          	ld	s2,32(sp)
    800083e8:	01813983          	ld	s3,24(sp)
    800083ec:	01013a03          	ld	s4,16(sp)
    800083f0:	00813a83          	ld	s5,8(sp)
    800083f4:	00013b03          	ld	s6,0(sp)
    800083f8:	04010113          	addi	sp,sp,64
    800083fc:	00008067          	ret
    80008400:	00001517          	auipc	a0,0x1
    80008404:	39850513          	addi	a0,a0,920 # 80009798 <digits+0x18>
    80008408:	fffff097          	auipc	ra,0xfffff
    8000840c:	3d4080e7          	jalr	980(ra) # 800077dc <panic>

0000000080008410 <kfree>:
    80008410:	fe010113          	addi	sp,sp,-32
    80008414:	00813823          	sd	s0,16(sp)
    80008418:	00113c23          	sd	ra,24(sp)
    8000841c:	00913423          	sd	s1,8(sp)
    80008420:	02010413          	addi	s0,sp,32
    80008424:	03451793          	slli	a5,a0,0x34
    80008428:	04079c63          	bnez	a5,80008480 <kfree+0x70>
    8000842c:	00005797          	auipc	a5,0x5
    80008430:	db478793          	addi	a5,a5,-588 # 8000d1e0 <end>
    80008434:	00050493          	mv	s1,a0
    80008438:	04f56463          	bltu	a0,a5,80008480 <kfree+0x70>
    8000843c:	01100793          	li	a5,17
    80008440:	01b79793          	slli	a5,a5,0x1b
    80008444:	02f57e63          	bgeu	a0,a5,80008480 <kfree+0x70>
    80008448:	00001637          	lui	a2,0x1
    8000844c:	00100593          	li	a1,1
    80008450:	00000097          	auipc	ra,0x0
    80008454:	478080e7          	jalr	1144(ra) # 800088c8 <__memset>
    80008458:	00004797          	auipc	a5,0x4
    8000845c:	a7878793          	addi	a5,a5,-1416 # 8000bed0 <kmem>
    80008460:	0007b703          	ld	a4,0(a5)
    80008464:	01813083          	ld	ra,24(sp)
    80008468:	01013403          	ld	s0,16(sp)
    8000846c:	00e4b023          	sd	a4,0(s1)
    80008470:	0097b023          	sd	s1,0(a5)
    80008474:	00813483          	ld	s1,8(sp)
    80008478:	02010113          	addi	sp,sp,32
    8000847c:	00008067          	ret
    80008480:	00001517          	auipc	a0,0x1
    80008484:	31850513          	addi	a0,a0,792 # 80009798 <digits+0x18>
    80008488:	fffff097          	auipc	ra,0xfffff
    8000848c:	354080e7          	jalr	852(ra) # 800077dc <panic>

0000000080008490 <kalloc>:
    80008490:	fe010113          	addi	sp,sp,-32
    80008494:	00813823          	sd	s0,16(sp)
    80008498:	00913423          	sd	s1,8(sp)
    8000849c:	00113c23          	sd	ra,24(sp)
    800084a0:	02010413          	addi	s0,sp,32
    800084a4:	00004797          	auipc	a5,0x4
    800084a8:	a2c78793          	addi	a5,a5,-1492 # 8000bed0 <kmem>
    800084ac:	0007b483          	ld	s1,0(a5)
    800084b0:	02048063          	beqz	s1,800084d0 <kalloc+0x40>
    800084b4:	0004b703          	ld	a4,0(s1)
    800084b8:	00001637          	lui	a2,0x1
    800084bc:	00500593          	li	a1,5
    800084c0:	00048513          	mv	a0,s1
    800084c4:	00e7b023          	sd	a4,0(a5)
    800084c8:	00000097          	auipc	ra,0x0
    800084cc:	400080e7          	jalr	1024(ra) # 800088c8 <__memset>
    800084d0:	01813083          	ld	ra,24(sp)
    800084d4:	01013403          	ld	s0,16(sp)
    800084d8:	00048513          	mv	a0,s1
    800084dc:	00813483          	ld	s1,8(sp)
    800084e0:	02010113          	addi	sp,sp,32
    800084e4:	00008067          	ret

00000000800084e8 <initlock>:
    800084e8:	ff010113          	addi	sp,sp,-16
    800084ec:	00813423          	sd	s0,8(sp)
    800084f0:	01010413          	addi	s0,sp,16
    800084f4:	00813403          	ld	s0,8(sp)
    800084f8:	00b53423          	sd	a1,8(a0)
    800084fc:	00052023          	sw	zero,0(a0)
    80008500:	00053823          	sd	zero,16(a0)
    80008504:	01010113          	addi	sp,sp,16
    80008508:	00008067          	ret

000000008000850c <acquire>:
    8000850c:	fe010113          	addi	sp,sp,-32
    80008510:	00813823          	sd	s0,16(sp)
    80008514:	00913423          	sd	s1,8(sp)
    80008518:	00113c23          	sd	ra,24(sp)
    8000851c:	01213023          	sd	s2,0(sp)
    80008520:	02010413          	addi	s0,sp,32
    80008524:	00050493          	mv	s1,a0
    80008528:	10002973          	csrr	s2,sstatus
    8000852c:	100027f3          	csrr	a5,sstatus
    80008530:	ffd7f793          	andi	a5,a5,-3
    80008534:	10079073          	csrw	sstatus,a5
    80008538:	fffff097          	auipc	ra,0xfffff
    8000853c:	8ec080e7          	jalr	-1812(ra) # 80006e24 <mycpu>
    80008540:	07852783          	lw	a5,120(a0)
    80008544:	06078e63          	beqz	a5,800085c0 <acquire+0xb4>
    80008548:	fffff097          	auipc	ra,0xfffff
    8000854c:	8dc080e7          	jalr	-1828(ra) # 80006e24 <mycpu>
    80008550:	07852783          	lw	a5,120(a0)
    80008554:	0004a703          	lw	a4,0(s1)
    80008558:	0017879b          	addiw	a5,a5,1
    8000855c:	06f52c23          	sw	a5,120(a0)
    80008560:	04071063          	bnez	a4,800085a0 <acquire+0x94>
    80008564:	00100713          	li	a4,1
    80008568:	00070793          	mv	a5,a4
    8000856c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80008570:	0007879b          	sext.w	a5,a5
    80008574:	fe079ae3          	bnez	a5,80008568 <acquire+0x5c>
    80008578:	0ff0000f          	fence
    8000857c:	fffff097          	auipc	ra,0xfffff
    80008580:	8a8080e7          	jalr	-1880(ra) # 80006e24 <mycpu>
    80008584:	01813083          	ld	ra,24(sp)
    80008588:	01013403          	ld	s0,16(sp)
    8000858c:	00a4b823          	sd	a0,16(s1)
    80008590:	00013903          	ld	s2,0(sp)
    80008594:	00813483          	ld	s1,8(sp)
    80008598:	02010113          	addi	sp,sp,32
    8000859c:	00008067          	ret
    800085a0:	0104b903          	ld	s2,16(s1)
    800085a4:	fffff097          	auipc	ra,0xfffff
    800085a8:	880080e7          	jalr	-1920(ra) # 80006e24 <mycpu>
    800085ac:	faa91ce3          	bne	s2,a0,80008564 <acquire+0x58>
    800085b0:	00001517          	auipc	a0,0x1
    800085b4:	1f050513          	addi	a0,a0,496 # 800097a0 <digits+0x20>
    800085b8:	fffff097          	auipc	ra,0xfffff
    800085bc:	224080e7          	jalr	548(ra) # 800077dc <panic>
    800085c0:	00195913          	srli	s2,s2,0x1
    800085c4:	fffff097          	auipc	ra,0xfffff
    800085c8:	860080e7          	jalr	-1952(ra) # 80006e24 <mycpu>
    800085cc:	00197913          	andi	s2,s2,1
    800085d0:	07252e23          	sw	s2,124(a0)
    800085d4:	f75ff06f          	j	80008548 <acquire+0x3c>

00000000800085d8 <release>:
    800085d8:	fe010113          	addi	sp,sp,-32
    800085dc:	00813823          	sd	s0,16(sp)
    800085e0:	00113c23          	sd	ra,24(sp)
    800085e4:	00913423          	sd	s1,8(sp)
    800085e8:	01213023          	sd	s2,0(sp)
    800085ec:	02010413          	addi	s0,sp,32
    800085f0:	00052783          	lw	a5,0(a0)
    800085f4:	00079a63          	bnez	a5,80008608 <release+0x30>
    800085f8:	00001517          	auipc	a0,0x1
    800085fc:	1b050513          	addi	a0,a0,432 # 800097a8 <digits+0x28>
    80008600:	fffff097          	auipc	ra,0xfffff
    80008604:	1dc080e7          	jalr	476(ra) # 800077dc <panic>
    80008608:	01053903          	ld	s2,16(a0)
    8000860c:	00050493          	mv	s1,a0
    80008610:	fffff097          	auipc	ra,0xfffff
    80008614:	814080e7          	jalr	-2028(ra) # 80006e24 <mycpu>
    80008618:	fea910e3          	bne	s2,a0,800085f8 <release+0x20>
    8000861c:	0004b823          	sd	zero,16(s1)
    80008620:	0ff0000f          	fence
    80008624:	0f50000f          	fence	iorw,ow
    80008628:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000862c:	ffffe097          	auipc	ra,0xffffe
    80008630:	7f8080e7          	jalr	2040(ra) # 80006e24 <mycpu>
    80008634:	100027f3          	csrr	a5,sstatus
    80008638:	0027f793          	andi	a5,a5,2
    8000863c:	04079a63          	bnez	a5,80008690 <release+0xb8>
    80008640:	07852783          	lw	a5,120(a0)
    80008644:	02f05e63          	blez	a5,80008680 <release+0xa8>
    80008648:	fff7871b          	addiw	a4,a5,-1
    8000864c:	06e52c23          	sw	a4,120(a0)
    80008650:	00071c63          	bnez	a4,80008668 <release+0x90>
    80008654:	07c52783          	lw	a5,124(a0)
    80008658:	00078863          	beqz	a5,80008668 <release+0x90>
    8000865c:	100027f3          	csrr	a5,sstatus
    80008660:	0027e793          	ori	a5,a5,2
    80008664:	10079073          	csrw	sstatus,a5
    80008668:	01813083          	ld	ra,24(sp)
    8000866c:	01013403          	ld	s0,16(sp)
    80008670:	00813483          	ld	s1,8(sp)
    80008674:	00013903          	ld	s2,0(sp)
    80008678:	02010113          	addi	sp,sp,32
    8000867c:	00008067          	ret
    80008680:	00001517          	auipc	a0,0x1
    80008684:	14850513          	addi	a0,a0,328 # 800097c8 <digits+0x48>
    80008688:	fffff097          	auipc	ra,0xfffff
    8000868c:	154080e7          	jalr	340(ra) # 800077dc <panic>
    80008690:	00001517          	auipc	a0,0x1
    80008694:	12050513          	addi	a0,a0,288 # 800097b0 <digits+0x30>
    80008698:	fffff097          	auipc	ra,0xfffff
    8000869c:	144080e7          	jalr	324(ra) # 800077dc <panic>

00000000800086a0 <holding>:
    800086a0:	00052783          	lw	a5,0(a0)
    800086a4:	00079663          	bnez	a5,800086b0 <holding+0x10>
    800086a8:	00000513          	li	a0,0
    800086ac:	00008067          	ret
    800086b0:	fe010113          	addi	sp,sp,-32
    800086b4:	00813823          	sd	s0,16(sp)
    800086b8:	00913423          	sd	s1,8(sp)
    800086bc:	00113c23          	sd	ra,24(sp)
    800086c0:	02010413          	addi	s0,sp,32
    800086c4:	01053483          	ld	s1,16(a0)
    800086c8:	ffffe097          	auipc	ra,0xffffe
    800086cc:	75c080e7          	jalr	1884(ra) # 80006e24 <mycpu>
    800086d0:	01813083          	ld	ra,24(sp)
    800086d4:	01013403          	ld	s0,16(sp)
    800086d8:	40a48533          	sub	a0,s1,a0
    800086dc:	00153513          	seqz	a0,a0
    800086e0:	00813483          	ld	s1,8(sp)
    800086e4:	02010113          	addi	sp,sp,32
    800086e8:	00008067          	ret

00000000800086ec <push_off>:
    800086ec:	fe010113          	addi	sp,sp,-32
    800086f0:	00813823          	sd	s0,16(sp)
    800086f4:	00113c23          	sd	ra,24(sp)
    800086f8:	00913423          	sd	s1,8(sp)
    800086fc:	02010413          	addi	s0,sp,32
    80008700:	100024f3          	csrr	s1,sstatus
    80008704:	100027f3          	csrr	a5,sstatus
    80008708:	ffd7f793          	andi	a5,a5,-3
    8000870c:	10079073          	csrw	sstatus,a5
    80008710:	ffffe097          	auipc	ra,0xffffe
    80008714:	714080e7          	jalr	1812(ra) # 80006e24 <mycpu>
    80008718:	07852783          	lw	a5,120(a0)
    8000871c:	02078663          	beqz	a5,80008748 <push_off+0x5c>
    80008720:	ffffe097          	auipc	ra,0xffffe
    80008724:	704080e7          	jalr	1796(ra) # 80006e24 <mycpu>
    80008728:	07852783          	lw	a5,120(a0)
    8000872c:	01813083          	ld	ra,24(sp)
    80008730:	01013403          	ld	s0,16(sp)
    80008734:	0017879b          	addiw	a5,a5,1
    80008738:	06f52c23          	sw	a5,120(a0)
    8000873c:	00813483          	ld	s1,8(sp)
    80008740:	02010113          	addi	sp,sp,32
    80008744:	00008067          	ret
    80008748:	0014d493          	srli	s1,s1,0x1
    8000874c:	ffffe097          	auipc	ra,0xffffe
    80008750:	6d8080e7          	jalr	1752(ra) # 80006e24 <mycpu>
    80008754:	0014f493          	andi	s1,s1,1
    80008758:	06952e23          	sw	s1,124(a0)
    8000875c:	fc5ff06f          	j	80008720 <push_off+0x34>

0000000080008760 <pop_off>:
    80008760:	ff010113          	addi	sp,sp,-16
    80008764:	00813023          	sd	s0,0(sp)
    80008768:	00113423          	sd	ra,8(sp)
    8000876c:	01010413          	addi	s0,sp,16
    80008770:	ffffe097          	auipc	ra,0xffffe
    80008774:	6b4080e7          	jalr	1716(ra) # 80006e24 <mycpu>
    80008778:	100027f3          	csrr	a5,sstatus
    8000877c:	0027f793          	andi	a5,a5,2
    80008780:	04079663          	bnez	a5,800087cc <pop_off+0x6c>
    80008784:	07852783          	lw	a5,120(a0)
    80008788:	02f05a63          	blez	a5,800087bc <pop_off+0x5c>
    8000878c:	fff7871b          	addiw	a4,a5,-1
    80008790:	06e52c23          	sw	a4,120(a0)
    80008794:	00071c63          	bnez	a4,800087ac <pop_off+0x4c>
    80008798:	07c52783          	lw	a5,124(a0)
    8000879c:	00078863          	beqz	a5,800087ac <pop_off+0x4c>
    800087a0:	100027f3          	csrr	a5,sstatus
    800087a4:	0027e793          	ori	a5,a5,2
    800087a8:	10079073          	csrw	sstatus,a5
    800087ac:	00813083          	ld	ra,8(sp)
    800087b0:	00013403          	ld	s0,0(sp)
    800087b4:	01010113          	addi	sp,sp,16
    800087b8:	00008067          	ret
    800087bc:	00001517          	auipc	a0,0x1
    800087c0:	00c50513          	addi	a0,a0,12 # 800097c8 <digits+0x48>
    800087c4:	fffff097          	auipc	ra,0xfffff
    800087c8:	018080e7          	jalr	24(ra) # 800077dc <panic>
    800087cc:	00001517          	auipc	a0,0x1
    800087d0:	fe450513          	addi	a0,a0,-28 # 800097b0 <digits+0x30>
    800087d4:	fffff097          	auipc	ra,0xfffff
    800087d8:	008080e7          	jalr	8(ra) # 800077dc <panic>

00000000800087dc <push_on>:
    800087dc:	fe010113          	addi	sp,sp,-32
    800087e0:	00813823          	sd	s0,16(sp)
    800087e4:	00113c23          	sd	ra,24(sp)
    800087e8:	00913423          	sd	s1,8(sp)
    800087ec:	02010413          	addi	s0,sp,32
    800087f0:	100024f3          	csrr	s1,sstatus
    800087f4:	100027f3          	csrr	a5,sstatus
    800087f8:	0027e793          	ori	a5,a5,2
    800087fc:	10079073          	csrw	sstatus,a5
    80008800:	ffffe097          	auipc	ra,0xffffe
    80008804:	624080e7          	jalr	1572(ra) # 80006e24 <mycpu>
    80008808:	07852783          	lw	a5,120(a0)
    8000880c:	02078663          	beqz	a5,80008838 <push_on+0x5c>
    80008810:	ffffe097          	auipc	ra,0xffffe
    80008814:	614080e7          	jalr	1556(ra) # 80006e24 <mycpu>
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
    80008840:	5e8080e7          	jalr	1512(ra) # 80006e24 <mycpu>
    80008844:	0014f493          	andi	s1,s1,1
    80008848:	06952e23          	sw	s1,124(a0)
    8000884c:	fc5ff06f          	j	80008810 <push_on+0x34>

0000000080008850 <pop_on>:
    80008850:	ff010113          	addi	sp,sp,-16
    80008854:	00813023          	sd	s0,0(sp)
    80008858:	00113423          	sd	ra,8(sp)
    8000885c:	01010413          	addi	s0,sp,16
    80008860:	ffffe097          	auipc	ra,0xffffe
    80008864:	5c4080e7          	jalr	1476(ra) # 80006e24 <mycpu>
    80008868:	100027f3          	csrr	a5,sstatus
    8000886c:	0027f793          	andi	a5,a5,2
    80008870:	04078463          	beqz	a5,800088b8 <pop_on+0x68>
    80008874:	07852783          	lw	a5,120(a0)
    80008878:	02f05863          	blez	a5,800088a8 <pop_on+0x58>
    8000887c:	fff7879b          	addiw	a5,a5,-1
    80008880:	06f52c23          	sw	a5,120(a0)
    80008884:	07853783          	ld	a5,120(a0)
    80008888:	00079863          	bnez	a5,80008898 <pop_on+0x48>
    8000888c:	100027f3          	csrr	a5,sstatus
    80008890:	ffd7f793          	andi	a5,a5,-3
    80008894:	10079073          	csrw	sstatus,a5
    80008898:	00813083          	ld	ra,8(sp)
    8000889c:	00013403          	ld	s0,0(sp)
    800088a0:	01010113          	addi	sp,sp,16
    800088a4:	00008067          	ret
    800088a8:	00001517          	auipc	a0,0x1
    800088ac:	f4850513          	addi	a0,a0,-184 # 800097f0 <digits+0x70>
    800088b0:	fffff097          	auipc	ra,0xfffff
    800088b4:	f2c080e7          	jalr	-212(ra) # 800077dc <panic>
    800088b8:	00001517          	auipc	a0,0x1
    800088bc:	f1850513          	addi	a0,a0,-232 # 800097d0 <digits+0x50>
    800088c0:	fffff097          	auipc	ra,0xfffff
    800088c4:	f1c080e7          	jalr	-228(ra) # 800077dc <panic>

00000000800088c8 <__memset>:
    800088c8:	ff010113          	addi	sp,sp,-16
    800088cc:	00813423          	sd	s0,8(sp)
    800088d0:	01010413          	addi	s0,sp,16
    800088d4:	1a060e63          	beqz	a2,80008a90 <__memset+0x1c8>
    800088d8:	40a007b3          	neg	a5,a0
    800088dc:	0077f793          	andi	a5,a5,7
    800088e0:	00778693          	addi	a3,a5,7
    800088e4:	00b00813          	li	a6,11
    800088e8:	0ff5f593          	andi	a1,a1,255
    800088ec:	fff6071b          	addiw	a4,a2,-1
    800088f0:	1b06e663          	bltu	a3,a6,80008a9c <__memset+0x1d4>
    800088f4:	1cd76463          	bltu	a4,a3,80008abc <__memset+0x1f4>
    800088f8:	1a078e63          	beqz	a5,80008ab4 <__memset+0x1ec>
    800088fc:	00b50023          	sb	a1,0(a0)
    80008900:	00100713          	li	a4,1
    80008904:	1ae78463          	beq	a5,a4,80008aac <__memset+0x1e4>
    80008908:	00b500a3          	sb	a1,1(a0)
    8000890c:	00200713          	li	a4,2
    80008910:	1ae78a63          	beq	a5,a4,80008ac4 <__memset+0x1fc>
    80008914:	00b50123          	sb	a1,2(a0)
    80008918:	00300713          	li	a4,3
    8000891c:	18e78463          	beq	a5,a4,80008aa4 <__memset+0x1dc>
    80008920:	00b501a3          	sb	a1,3(a0)
    80008924:	00400713          	li	a4,4
    80008928:	1ae78263          	beq	a5,a4,80008acc <__memset+0x204>
    8000892c:	00b50223          	sb	a1,4(a0)
    80008930:	00500713          	li	a4,5
    80008934:	1ae78063          	beq	a5,a4,80008ad4 <__memset+0x20c>
    80008938:	00b502a3          	sb	a1,5(a0)
    8000893c:	00700713          	li	a4,7
    80008940:	18e79e63          	bne	a5,a4,80008adc <__memset+0x214>
    80008944:	00b50323          	sb	a1,6(a0)
    80008948:	00700e93          	li	t4,7
    8000894c:	00859713          	slli	a4,a1,0x8
    80008950:	00e5e733          	or	a4,a1,a4
    80008954:	01059e13          	slli	t3,a1,0x10
    80008958:	01c76e33          	or	t3,a4,t3
    8000895c:	01859313          	slli	t1,a1,0x18
    80008960:	006e6333          	or	t1,t3,t1
    80008964:	02059893          	slli	a7,a1,0x20
    80008968:	40f60e3b          	subw	t3,a2,a5
    8000896c:	011368b3          	or	a7,t1,a7
    80008970:	02859813          	slli	a6,a1,0x28
    80008974:	0108e833          	or	a6,a7,a6
    80008978:	03059693          	slli	a3,a1,0x30
    8000897c:	003e589b          	srliw	a7,t3,0x3
    80008980:	00d866b3          	or	a3,a6,a3
    80008984:	03859713          	slli	a4,a1,0x38
    80008988:	00389813          	slli	a6,a7,0x3
    8000898c:	00f507b3          	add	a5,a0,a5
    80008990:	00e6e733          	or	a4,a3,a4
    80008994:	000e089b          	sext.w	a7,t3
    80008998:	00f806b3          	add	a3,a6,a5
    8000899c:	00e7b023          	sd	a4,0(a5)
    800089a0:	00878793          	addi	a5,a5,8
    800089a4:	fed79ce3          	bne	a5,a3,8000899c <__memset+0xd4>
    800089a8:	ff8e7793          	andi	a5,t3,-8
    800089ac:	0007871b          	sext.w	a4,a5
    800089b0:	01d787bb          	addw	a5,a5,t4
    800089b4:	0ce88e63          	beq	a7,a4,80008a90 <__memset+0x1c8>
    800089b8:	00f50733          	add	a4,a0,a5
    800089bc:	00b70023          	sb	a1,0(a4)
    800089c0:	0017871b          	addiw	a4,a5,1
    800089c4:	0cc77663          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    800089c8:	00e50733          	add	a4,a0,a4
    800089cc:	00b70023          	sb	a1,0(a4)
    800089d0:	0027871b          	addiw	a4,a5,2
    800089d4:	0ac77e63          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    800089d8:	00e50733          	add	a4,a0,a4
    800089dc:	00b70023          	sb	a1,0(a4)
    800089e0:	0037871b          	addiw	a4,a5,3
    800089e4:	0ac77663          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    800089e8:	00e50733          	add	a4,a0,a4
    800089ec:	00b70023          	sb	a1,0(a4)
    800089f0:	0047871b          	addiw	a4,a5,4
    800089f4:	08c77e63          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    800089f8:	00e50733          	add	a4,a0,a4
    800089fc:	00b70023          	sb	a1,0(a4)
    80008a00:	0057871b          	addiw	a4,a5,5
    80008a04:	08c77663          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a08:	00e50733          	add	a4,a0,a4
    80008a0c:	00b70023          	sb	a1,0(a4)
    80008a10:	0067871b          	addiw	a4,a5,6
    80008a14:	06c77e63          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a18:	00e50733          	add	a4,a0,a4
    80008a1c:	00b70023          	sb	a1,0(a4)
    80008a20:	0077871b          	addiw	a4,a5,7
    80008a24:	06c77663          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a28:	00e50733          	add	a4,a0,a4
    80008a2c:	00b70023          	sb	a1,0(a4)
    80008a30:	0087871b          	addiw	a4,a5,8
    80008a34:	04c77e63          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a38:	00e50733          	add	a4,a0,a4
    80008a3c:	00b70023          	sb	a1,0(a4)
    80008a40:	0097871b          	addiw	a4,a5,9
    80008a44:	04c77663          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a48:	00e50733          	add	a4,a0,a4
    80008a4c:	00b70023          	sb	a1,0(a4)
    80008a50:	00a7871b          	addiw	a4,a5,10
    80008a54:	02c77e63          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00b70023          	sb	a1,0(a4)
    80008a60:	00b7871b          	addiw	a4,a5,11
    80008a64:	02c77663          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a68:	00e50733          	add	a4,a0,a4
    80008a6c:	00b70023          	sb	a1,0(a4)
    80008a70:	00c7871b          	addiw	a4,a5,12
    80008a74:	00c77e63          	bgeu	a4,a2,80008a90 <__memset+0x1c8>
    80008a78:	00e50733          	add	a4,a0,a4
    80008a7c:	00b70023          	sb	a1,0(a4)
    80008a80:	00d7879b          	addiw	a5,a5,13
    80008a84:	00c7f663          	bgeu	a5,a2,80008a90 <__memset+0x1c8>
    80008a88:	00f507b3          	add	a5,a0,a5
    80008a8c:	00b78023          	sb	a1,0(a5)
    80008a90:	00813403          	ld	s0,8(sp)
    80008a94:	01010113          	addi	sp,sp,16
    80008a98:	00008067          	ret
    80008a9c:	00b00693          	li	a3,11
    80008aa0:	e55ff06f          	j	800088f4 <__memset+0x2c>
    80008aa4:	00300e93          	li	t4,3
    80008aa8:	ea5ff06f          	j	8000894c <__memset+0x84>
    80008aac:	00100e93          	li	t4,1
    80008ab0:	e9dff06f          	j	8000894c <__memset+0x84>
    80008ab4:	00000e93          	li	t4,0
    80008ab8:	e95ff06f          	j	8000894c <__memset+0x84>
    80008abc:	00000793          	li	a5,0
    80008ac0:	ef9ff06f          	j	800089b8 <__memset+0xf0>
    80008ac4:	00200e93          	li	t4,2
    80008ac8:	e85ff06f          	j	8000894c <__memset+0x84>
    80008acc:	00400e93          	li	t4,4
    80008ad0:	e7dff06f          	j	8000894c <__memset+0x84>
    80008ad4:	00500e93          	li	t4,5
    80008ad8:	e75ff06f          	j	8000894c <__memset+0x84>
    80008adc:	00600e93          	li	t4,6
    80008ae0:	e6dff06f          	j	8000894c <__memset+0x84>

0000000080008ae4 <__memmove>:
    80008ae4:	ff010113          	addi	sp,sp,-16
    80008ae8:	00813423          	sd	s0,8(sp)
    80008aec:	01010413          	addi	s0,sp,16
    80008af0:	0e060863          	beqz	a2,80008be0 <__memmove+0xfc>
    80008af4:	fff6069b          	addiw	a3,a2,-1
    80008af8:	0006881b          	sext.w	a6,a3
    80008afc:	0ea5e863          	bltu	a1,a0,80008bec <__memmove+0x108>
    80008b00:	00758713          	addi	a4,a1,7
    80008b04:	00a5e7b3          	or	a5,a1,a0
    80008b08:	40a70733          	sub	a4,a4,a0
    80008b0c:	0077f793          	andi	a5,a5,7
    80008b10:	00f73713          	sltiu	a4,a4,15
    80008b14:	00174713          	xori	a4,a4,1
    80008b18:	0017b793          	seqz	a5,a5
    80008b1c:	00e7f7b3          	and	a5,a5,a4
    80008b20:	10078863          	beqz	a5,80008c30 <__memmove+0x14c>
    80008b24:	00900793          	li	a5,9
    80008b28:	1107f463          	bgeu	a5,a6,80008c30 <__memmove+0x14c>
    80008b2c:	0036581b          	srliw	a6,a2,0x3
    80008b30:	fff8081b          	addiw	a6,a6,-1
    80008b34:	02081813          	slli	a6,a6,0x20
    80008b38:	01d85893          	srli	a7,a6,0x1d
    80008b3c:	00858813          	addi	a6,a1,8
    80008b40:	00058793          	mv	a5,a1
    80008b44:	00050713          	mv	a4,a0
    80008b48:	01088833          	add	a6,a7,a6
    80008b4c:	0007b883          	ld	a7,0(a5)
    80008b50:	00878793          	addi	a5,a5,8
    80008b54:	00870713          	addi	a4,a4,8
    80008b58:	ff173c23          	sd	a7,-8(a4)
    80008b5c:	ff0798e3          	bne	a5,a6,80008b4c <__memmove+0x68>
    80008b60:	ff867713          	andi	a4,a2,-8
    80008b64:	02071793          	slli	a5,a4,0x20
    80008b68:	0207d793          	srli	a5,a5,0x20
    80008b6c:	00f585b3          	add	a1,a1,a5
    80008b70:	40e686bb          	subw	a3,a3,a4
    80008b74:	00f507b3          	add	a5,a0,a5
    80008b78:	06e60463          	beq	a2,a4,80008be0 <__memmove+0xfc>
    80008b7c:	0005c703          	lbu	a4,0(a1)
    80008b80:	00e78023          	sb	a4,0(a5)
    80008b84:	04068e63          	beqz	a3,80008be0 <__memmove+0xfc>
    80008b88:	0015c603          	lbu	a2,1(a1)
    80008b8c:	00100713          	li	a4,1
    80008b90:	00c780a3          	sb	a2,1(a5)
    80008b94:	04e68663          	beq	a3,a4,80008be0 <__memmove+0xfc>
    80008b98:	0025c603          	lbu	a2,2(a1)
    80008b9c:	00200713          	li	a4,2
    80008ba0:	00c78123          	sb	a2,2(a5)
    80008ba4:	02e68e63          	beq	a3,a4,80008be0 <__memmove+0xfc>
    80008ba8:	0035c603          	lbu	a2,3(a1)
    80008bac:	00300713          	li	a4,3
    80008bb0:	00c781a3          	sb	a2,3(a5)
    80008bb4:	02e68663          	beq	a3,a4,80008be0 <__memmove+0xfc>
    80008bb8:	0045c603          	lbu	a2,4(a1)
    80008bbc:	00400713          	li	a4,4
    80008bc0:	00c78223          	sb	a2,4(a5)
    80008bc4:	00e68e63          	beq	a3,a4,80008be0 <__memmove+0xfc>
    80008bc8:	0055c603          	lbu	a2,5(a1)
    80008bcc:	00500713          	li	a4,5
    80008bd0:	00c782a3          	sb	a2,5(a5)
    80008bd4:	00e68663          	beq	a3,a4,80008be0 <__memmove+0xfc>
    80008bd8:	0065c703          	lbu	a4,6(a1)
    80008bdc:	00e78323          	sb	a4,6(a5)
    80008be0:	00813403          	ld	s0,8(sp)
    80008be4:	01010113          	addi	sp,sp,16
    80008be8:	00008067          	ret
    80008bec:	02061713          	slli	a4,a2,0x20
    80008bf0:	02075713          	srli	a4,a4,0x20
    80008bf4:	00e587b3          	add	a5,a1,a4
    80008bf8:	f0f574e3          	bgeu	a0,a5,80008b00 <__memmove+0x1c>
    80008bfc:	02069613          	slli	a2,a3,0x20
    80008c00:	02065613          	srli	a2,a2,0x20
    80008c04:	fff64613          	not	a2,a2
    80008c08:	00e50733          	add	a4,a0,a4
    80008c0c:	00c78633          	add	a2,a5,a2
    80008c10:	fff7c683          	lbu	a3,-1(a5)
    80008c14:	fff78793          	addi	a5,a5,-1
    80008c18:	fff70713          	addi	a4,a4,-1
    80008c1c:	00d70023          	sb	a3,0(a4)
    80008c20:	fec798e3          	bne	a5,a2,80008c10 <__memmove+0x12c>
    80008c24:	00813403          	ld	s0,8(sp)
    80008c28:	01010113          	addi	sp,sp,16
    80008c2c:	00008067          	ret
    80008c30:	02069713          	slli	a4,a3,0x20
    80008c34:	02075713          	srli	a4,a4,0x20
    80008c38:	00170713          	addi	a4,a4,1
    80008c3c:	00e50733          	add	a4,a0,a4
    80008c40:	00050793          	mv	a5,a0
    80008c44:	0005c683          	lbu	a3,0(a1)
    80008c48:	00178793          	addi	a5,a5,1
    80008c4c:	00158593          	addi	a1,a1,1
    80008c50:	fed78fa3          	sb	a3,-1(a5)
    80008c54:	fee798e3          	bne	a5,a4,80008c44 <__memmove+0x160>
    80008c58:	f89ff06f          	j	80008be0 <__memmove+0xfc>

0000000080008c5c <__putc>:
    80008c5c:	fe010113          	addi	sp,sp,-32
    80008c60:	00813823          	sd	s0,16(sp)
    80008c64:	00113c23          	sd	ra,24(sp)
    80008c68:	02010413          	addi	s0,sp,32
    80008c6c:	00050793          	mv	a5,a0
    80008c70:	fef40593          	addi	a1,s0,-17
    80008c74:	00100613          	li	a2,1
    80008c78:	00000513          	li	a0,0
    80008c7c:	fef407a3          	sb	a5,-17(s0)
    80008c80:	fffff097          	auipc	ra,0xfffff
    80008c84:	b3c080e7          	jalr	-1220(ra) # 800077bc <console_write>
    80008c88:	01813083          	ld	ra,24(sp)
    80008c8c:	01013403          	ld	s0,16(sp)
    80008c90:	02010113          	addi	sp,sp,32
    80008c94:	00008067          	ret

0000000080008c98 <__getc>:
    80008c98:	fe010113          	addi	sp,sp,-32
    80008c9c:	00813823          	sd	s0,16(sp)
    80008ca0:	00113c23          	sd	ra,24(sp)
    80008ca4:	02010413          	addi	s0,sp,32
    80008ca8:	fe840593          	addi	a1,s0,-24
    80008cac:	00100613          	li	a2,1
    80008cb0:	00000513          	li	a0,0
    80008cb4:	fffff097          	auipc	ra,0xfffff
    80008cb8:	ae8080e7          	jalr	-1304(ra) # 8000779c <console_read>
    80008cbc:	fe844503          	lbu	a0,-24(s0)
    80008cc0:	01813083          	ld	ra,24(sp)
    80008cc4:	01013403          	ld	s0,16(sp)
    80008cc8:	02010113          	addi	sp,sp,32
    80008ccc:	00008067          	ret

0000000080008cd0 <console_handler>:
    80008cd0:	fe010113          	addi	sp,sp,-32
    80008cd4:	00813823          	sd	s0,16(sp)
    80008cd8:	00113c23          	sd	ra,24(sp)
    80008cdc:	00913423          	sd	s1,8(sp)
    80008ce0:	02010413          	addi	s0,sp,32
    80008ce4:	14202773          	csrr	a4,scause
    80008ce8:	100027f3          	csrr	a5,sstatus
    80008cec:	0027f793          	andi	a5,a5,2
    80008cf0:	06079e63          	bnez	a5,80008d6c <console_handler+0x9c>
    80008cf4:	00074c63          	bltz	a4,80008d0c <console_handler+0x3c>
    80008cf8:	01813083          	ld	ra,24(sp)
    80008cfc:	01013403          	ld	s0,16(sp)
    80008d00:	00813483          	ld	s1,8(sp)
    80008d04:	02010113          	addi	sp,sp,32
    80008d08:	00008067          	ret
    80008d0c:	0ff77713          	andi	a4,a4,255
    80008d10:	00900793          	li	a5,9
    80008d14:	fef712e3          	bne	a4,a5,80008cf8 <console_handler+0x28>
    80008d18:	ffffe097          	auipc	ra,0xffffe
    80008d1c:	6dc080e7          	jalr	1756(ra) # 800073f4 <plic_claim>
    80008d20:	00a00793          	li	a5,10
    80008d24:	00050493          	mv	s1,a0
    80008d28:	02f50c63          	beq	a0,a5,80008d60 <console_handler+0x90>
    80008d2c:	fc0506e3          	beqz	a0,80008cf8 <console_handler+0x28>
    80008d30:	00050593          	mv	a1,a0
    80008d34:	00001517          	auipc	a0,0x1
    80008d38:	9c450513          	addi	a0,a0,-1596 # 800096f8 <CONSOLE_STATUS+0x6e8>
    80008d3c:	fffff097          	auipc	ra,0xfffff
    80008d40:	afc080e7          	jalr	-1284(ra) # 80007838 <__printf>
    80008d44:	01013403          	ld	s0,16(sp)
    80008d48:	01813083          	ld	ra,24(sp)
    80008d4c:	00048513          	mv	a0,s1
    80008d50:	00813483          	ld	s1,8(sp)
    80008d54:	02010113          	addi	sp,sp,32
    80008d58:	ffffe317          	auipc	t1,0xffffe
    80008d5c:	6d430067          	jr	1748(t1) # 8000742c <plic_complete>
    80008d60:	fffff097          	auipc	ra,0xfffff
    80008d64:	3e0080e7          	jalr	992(ra) # 80008140 <uartintr>
    80008d68:	fddff06f          	j	80008d44 <console_handler+0x74>
    80008d6c:	00001517          	auipc	a0,0x1
    80008d70:	a8c50513          	addi	a0,a0,-1396 # 800097f8 <digits+0x78>
    80008d74:	fffff097          	auipc	ra,0xfffff
    80008d78:	a68080e7          	jalr	-1432(ra) # 800077dc <panic>
	...
