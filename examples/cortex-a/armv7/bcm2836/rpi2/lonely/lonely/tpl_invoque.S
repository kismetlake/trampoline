/**
 * @file tpl_invoque.S
 *
 * @section descr File description
 *
 * System call user level invoque API.
 *
 * @warning this file is generated by gen_invoque.sh based on the 
 * tpl_os_service_ids.h header file.
 *
 * @section copyright Copyright
 *
 * Trampoline OS
 *
 * Trampoline is copyright (c) IRCCyN 2005+
 * Copyright ESEO for function and data structures documentation and ARM port
 * Trampoline is protected by the French intellectual property law.
 *
 * This software is distributed under the Lesser GNU Public Licence
 *
 * @section infos File informations
 *
 * $$Date$$
 * $$Rev$$
 * $$Author$$
 * $$URL$$
 */
#include "tpl_os_application_def.h"
#include "tpl_service_ids.h"

#if WITH_SYSTEM_CALL == NO
#error "This file should not be part of your project since WITH_SYSTEM_CALL is not defined"
#endif


#if WITH_MEMMAP == NO
.text
.code 32
.align 2

#endif /* WITH_MEMMAP == NO */

#define API_START_SEC_CODE
#include "tpl_as_memmap.h"

  .global GetActiveApplicationMode
GetActiveApplicationMode:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_GetActiveApplicationMode
  swi #OSServiceId_GetActiveApplicationMode
  ldmfd sp!,{lr}
  mov pc,lr
  .global tpl_start_os
tpl_start_os:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_StartOS
  swi #OSServiceId_StartOS
  ldmfd sp!,{lr}
  mov pc,lr
  .global ShutdownOS
ShutdownOS:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_ShutdownOS
  swi #OSServiceId_ShutdownOS
  ldmfd sp!,{lr}
  mov pc,lr
  .global EnableAllInterrupts
EnableAllInterrupts:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_EnableAllInterrupts
  swi #OSServiceId_EnableAllInterrupts
  ldmfd sp!,{lr}
  mov pc,lr
  .global DisableAllInterrupts
DisableAllInterrupts:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_DisableAllInterrupts
  swi #OSServiceId_DisableAllInterrupts
  ldmfd sp!,{lr}
  mov pc,lr
  .global ResumeAllInterrupts
ResumeAllInterrupts:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_ResumeAllInterrupts
  swi #OSServiceId_ResumeAllInterrupts
  ldmfd sp!,{lr}
  mov pc,lr
  .global SuspendAllInterrupts
SuspendAllInterrupts:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_SuspendAllInterrupts
  swi #OSServiceId_SuspendAllInterrupts
  ldmfd sp!,{lr}
  mov pc,lr
  .global ResumeOSInterrupts
ResumeOSInterrupts:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_ResumeOSInterrupts
  swi #OSServiceId_ResumeOSInterrupts
  ldmfd sp!,{lr}
  mov pc,lr
  .global SuspendOSInterrupts
SuspendOSInterrupts:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_SuspendOSInterrupts
  swi #OSServiceId_SuspendOSInterrupts
  ldmfd sp!,{lr}
  mov pc,lr
  .global CallTerminateISR2
CallTerminateISR2:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_CallTerminateISR2
  swi #OSServiceId_CallTerminateISR2
  ldmfd sp!,{lr}
  mov pc,lr
  .global ActivateTask
ActivateTask:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_ActivateTask
  swi #OSServiceId_ActivateTask
  ldmfd sp!,{lr}
  mov pc,lr
  .global TerminateTask
TerminateTask:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_TerminateTask
  swi #OSServiceId_TerminateTask
  ldmfd sp!,{lr}
  mov pc,lr
  .global ChainTask
ChainTask:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_ChainTask
  swi #OSServiceId_ChainTask
  ldmfd sp!,{lr}
  mov pc,lr
  .global Schedule
Schedule:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_Schedule
  swi #OSServiceId_Schedule
  ldmfd sp!,{lr}
  mov pc,lr
  .global GetTaskID
GetTaskID:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_GetTaskID
  swi #OSServiceId_GetTaskID
  ldmfd sp!,{lr}
  mov pc,lr
  .global GetTaskState
GetTaskState:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_GetTaskState
  swi #OSServiceId_GetTaskState
  ldmfd sp!,{lr}
  mov pc,lr
  .global CallTerminateTask
CallTerminateTask:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_CallTerminateTask
  swi #OSServiceId_CallTerminateTask
  ldmfd sp!,{lr}
  mov pc,lr
  .global GetResource
GetResource:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_GetResource
  swi #OSServiceId_GetResource
  ldmfd sp!,{lr}
  mov pc,lr
  .global ReleaseResource
ReleaseResource:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_ReleaseResource
  swi #OSServiceId_ReleaseResource
  ldmfd sp!,{lr}
  mov pc,lr
  .global GetAlarmBase
GetAlarmBase:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_GetAlarmBase
  swi #OSServiceId_GetAlarmBase
  ldmfd sp!,{lr}
  mov pc,lr
  .global GetAlarm
GetAlarm:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_GetAlarm
  swi #OSServiceId_GetAlarm
  ldmfd sp!,{lr}
  mov pc,lr
  .global SetRelAlarm
SetRelAlarm:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_SetRelAlarm
  swi #OSServiceId_SetRelAlarm
  ldmfd sp!,{lr}
  mov pc,lr
  .global SetAbsAlarm
SetAbsAlarm:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_SetAbsAlarm
  swi #OSServiceId_SetAbsAlarm
  ldmfd sp!,{lr}
  mov pc,lr
  .global CancelAlarm
CancelAlarm:
  stmfd sp!,{lr}
  mov r3,#OSServiceId_CancelAlarm
  swi #OSServiceId_CancelAlarm
  ldmfd sp!,{lr}
  mov pc,lr


#define API_STOP_SEC_CODE
#include "tpl_as_memmap.h"


/* End of file tpl_invoque.S */

