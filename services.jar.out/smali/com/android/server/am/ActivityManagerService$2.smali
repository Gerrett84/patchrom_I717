.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 55
    .parameter "msg"

    .prologue
    .line 964
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 966
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 967
    .local v26, data:Ljava/util/HashMap;
    const/16 v24, 0x0

    .line 968
    .local v24, d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 969
    :try_start_0
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 970
    .local v44, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_1

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1

    .line 971
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    monitor-exit v5

    goto :goto_0

    .line 984
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v4

    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 974
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_1
    const-string v4, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 975
    .local v48, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_3

    .line 976
    new-instance v25, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v24           #d:Landroid/app/Dialog;
    .local v25, d:Landroid/app/Dialog;
    :try_start_2
    move-object/from16 v0, v25

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    move-object/from16 v24, v25

    .line 984
    .end local v25           #d:Landroid/app/Dialog;
    .restart local v24       #d:Landroid/app/Dialog;
    :goto_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 985
    if-eqz v24, :cond_2

    .line 986
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 988
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 982
    :cond_3
    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 991
    .end local v24           #d:Landroid/app/Dialog;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 992
    .restart local v26       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 993
    :try_start_5
    const-string v4, "errorpermission"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    .line 994
    .local v41, permission:Ljava/lang/String;
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 995
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_4

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_4

    .line 996
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    monitor-exit v5

    goto/16 :goto_0

    .line 1009
    .end local v41           #permission:Ljava/lang/String;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 999
    .restart local v41       #permission:Ljava/lang/String;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_4
    :try_start_6
    const-string v4, "result"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 1000
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_5

    .line 1001
    new-instance v24, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    move-object/from16 v3, v41

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1002
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1003
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1009
    .end local v24           #d:Landroid/app/Dialog;
    :goto_3
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1007
    :cond_5
    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 1014
    .end local v26           #data:Ljava/util/HashMap;
    .end local v41           #permission:Ljava/lang/String;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1015
    .restart local v26       #data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1016
    :try_start_8
    const-string v4, "newIntent_intent"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Intent;

    .line 1017
    .local v35, newIntent:Landroid/content/Intent;
    const-string v4, "newIntent_packagename"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1020
    .local v21, cmPackagename:Ljava/lang/String;
    :try_start_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getManagedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v22

    .line 1024
    .local v22, cmPermissions:[Ljava/lang/String;
    :goto_4
    :try_start_a
    new-instance v24, Lcom/android/server/am/AppPermissionManagedDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v35

    move-object/from16 v3, v22

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;[Ljava/lang/String;)V

    .line 1025
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1027
    monitor-exit v5

    goto/16 :goto_0

    .end local v21           #cmPackagename:Ljava/lang/String;
    .end local v22           #cmPermissions:[Ljava/lang/String;
    .end local v24           #d:Landroid/app/Dialog;
    .end local v35           #newIntent:Landroid/content/Intent;
    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v4

    .line 1021
    .restart local v21       #cmPackagename:Ljava/lang/String;
    .restart local v35       #newIntent:Landroid/content/Intent;
    :catch_0
    move-exception v28

    .line 1022
    .local v28, e:Landroid/os/RemoteException;
    const/16 v22, 0x0

    .restart local v22       #cmPermissions:[Ljava/lang/String;
    goto :goto_4

    .line 1030
    .end local v21           #cmPackagename:Ljava/lang/String;
    .end local v22           #cmPermissions:[Ljava/lang/String;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v28           #e:Landroid/os/RemoteException;
    .end local v35           #newIntent:Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v54, v0

    monitor-enter v54

    .line 1031
    :try_start_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/util/HashMap;

    .line 1032
    .restart local v26       #data:Ljava/util/HashMap;
    const-string v4, "app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1033
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v44, :cond_6

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_6

    .line 1034
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    monitor-exit v54

    goto/16 :goto_0

    .line 1056
    .end local v26           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v4

    monitor-exit v54
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .line 1038
    .restart local v26       #data:Ljava/util/HashMap;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_6
    :try_start_c
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_7

    .line 1040
    const/high16 v4, 0x5000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1043
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    const/16 v18, 0x0

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZIII)I
    invoke-static/range {v4 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZIII)I

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1048
    new-instance v24, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1050
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1051
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1056
    .end local v24           #d:Landroid/app/Dialog;
    :goto_5
    monitor-exit v54
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1054
    :cond_8
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_5

    .line 1061
    .end local v7           #intent:Landroid/content/Intent;
    .end local v26           #data:Ljava/util/HashMap;
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/HashMap;

    .line 1062
    .local v27, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1063
    :try_start_e
    const-string v4, "app"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1064
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v44, :cond_9

    .line 1065
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    monitor-exit v5

    goto/16 :goto_0

    .line 1082
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v4

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v4

    .line 1068
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_9
    :try_start_f
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_a

    .line 1069
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    monitor-exit v5

    goto/16 :goto_0

    .line 1072
    :cond_a
    const-string v4, "result"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/am/AppErrorResult;

    .line 1073
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_b

    .line 1074
    new-instance v24, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v44

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1075
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1076
    move-object/from16 v0, v24

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1082
    .end local v24           #d:Landroid/app/Dialog;
    :goto_6
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1080
    :cond_b
    const/4 v4, 0x0

    :try_start_10
    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_6

    .line 1086
    .end local v27           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v44           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v48           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_5
    new-instance v24, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1088
    .restart local v24       #d:Landroid/app/Dialog;
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1092
    .end local v24           #d:Landroid/app/Dialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    .line 1093
    .local v49, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v49

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    .line 1096
    .end local v49           #resolver:Landroid/content/ContentResolver;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1097
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1098
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v4

    .line 1101
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1102
    :try_start_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1103
    .local v19, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_d

    .line 1104
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_c

    .line 1105
    new-instance v24, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-direct {v0, v4, v6, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1108
    .restart local v24       #d:Landroid/app/Dialog;
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1109
    const/4 v4, 0x1

    move-object/from16 v0, v19

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1110
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    .line 1118
    .end local v24           #d:Landroid/app/Dialog;
    :cond_c
    :goto_7
    monitor-exit v5

    goto/16 :goto_0

    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_6
    move-exception v4

    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v4

    .line 1113
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    :cond_d
    :try_start_13
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_c

    .line 1114
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1115
    const/4 v4, 0x0

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_7

    .line 1121
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_e

    .line 1122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1124
    .local v36, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1128
    .end local v36           #nmsg:Landroid/os/Message;
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1131
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1132
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .local v32, i:I
    :goto_8
    if-ltz v32, :cond_10

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1134
    .local v47, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v4, :cond_f

    .line 1136
    :try_start_15
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_1

    .line 1132
    :cond_f
    :goto_9
    add-int/lit8 v32, v32, -0x1

    goto :goto_8

    .line 1137
    :catch_1
    move-exception v29

    .line 1138
    .local v29, ex:Landroid/os/RemoteException;
    :try_start_16
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1142
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_7
    move-exception v4

    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v4

    .restart local v32       #i:I
    :cond_10
    :try_start_17
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto/16 :goto_0

    .line 1145
    .end local v32           #i:I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1146
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .restart local v32       #i:I
    :goto_a
    if-ltz v32, :cond_12

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1148
    .restart local v47       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    if-eqz v4, :cond_11

    .line 1150
    :try_start_19
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_2

    .line 1146
    :cond_11
    :goto_b
    add-int/lit8 v32, v32, -0x1

    goto :goto_a

    .line 1151
    :catch_2
    move-exception v29

    .line 1152
    .restart local v29       #ex:Landroid/os/RemoteException;
    :try_start_1a
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1156
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_8
    move-exception v4

    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    throw v4

    .restart local v32       #i:I
    :cond_12
    :try_start_1b
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto/16 :goto_0

    .line 1159
    .end local v32           #i:I
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Landroid/net/ProxyProperties;

    .line 1160
    .local v46, proxy:Landroid/net/ProxyProperties;
    const-string v31, ""

    .line 1161
    .local v31, host:Ljava/lang/String;
    const-string v43, ""

    .line 1162
    .local v43, port:Ljava/lang/String;
    const-string v30, ""

    .line 1163
    .local v30, exclList:Ljava/lang/String;
    if-eqz v46, :cond_13

    .line 1164
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v31

    .line 1165
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    .line 1166
    invoke-virtual/range {v46 .. v46}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v30

    .line 1168
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1169
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    .restart local v32       #i:I
    :goto_c
    if-ltz v32, :cond_15

    .line 1170
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/am/ProcessRecord;

    .line 1171
    .restart local v47       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v4, :cond_14

    .line 1173
    :try_start_1d
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-interface {v4, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_3

    .line 1169
    :cond_14
    :goto_d
    add-int/lit8 v32, v32, -0x1

    goto :goto_c

    .line 1174
    :catch_3
    move-exception v29

    .line 1175
    .restart local v29       #ex:Landroid/os/RemoteException;
    :try_start_1e
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update http proxy for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1180
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v32           #i:I
    .end local v47           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_9
    move-exception v4

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    throw v4

    .restart local v32       #i:I
    :cond_15
    :try_start_1f
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto/16 :goto_0

    .line 1183
    .end local v30           #exclList:Ljava/lang/String;
    .end local v31           #host:Ljava/lang/String;
    .end local v32           #i:I
    .end local v43           #port:Ljava/lang/String;
    .end local v46           #proxy:Landroid/net/ProxyProperties;
    :sswitch_d
    const-string v53, "System UIDs Inconsistent"

    .line 1184
    .local v53, title:Ljava/lang/String;
    const-string v51, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 1186
    .local v51, text:Ljava/lang/String;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1189
    new-instance v24, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1190
    .local v24, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1191
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1192
    move-object/from16 v0, v24

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1193
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1194
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1197
    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1201
    .end local v24           #d:Landroid/app/AlertDialog;
    .end local v51           #text:Ljava/lang/String;
    .end local v53           #title:Ljava/lang/String;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1207
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_16

    .line 1208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1210
    .restart local v36       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v36

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v36

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1214
    .end local v36           #nmsg:Landroid/os/Message;
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1215
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1216
    :try_start_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v19

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1217
    monitor-exit v5

    goto/16 :goto_0

    :catchall_a
    move-exception v4

    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    throw v4

    .line 1220
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1221
    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1222
    monitor-exit v5

    goto/16 :goto_0

    :catchall_b
    move-exception v4

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    throw v4

    .line 1225
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1226
    :try_start_22
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1227
    .local v10, uid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_17

    const/4 v11, 0x1

    .line 1228
    .local v11, restart:Z
    :goto_e
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1229
    .local v9, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v10}, Landroid/os/UserId;->getUserId(I)I

    move-result v15

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZI)Z
    invoke-static/range {v8 .. v15}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZI)Z

    .line 1231
    monitor-exit v5

    goto/16 :goto_0

    .end local v9           #pkg:Ljava/lang/String;
    .end local v10           #uid:I
    .end local v11           #restart:Z
    :catchall_c
    move-exception v4

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    throw v4

    .line 1227
    .restart local v10       #uid:I
    :cond_17
    const/4 v11, 0x0

    goto :goto_e

    .line 1234
    .end local v10           #uid:I
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1237
    :sswitch_13
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    .line 1238
    .local v33, inm:Landroid/app/INotificationManager;
    if-eqz v33, :cond_0

    .line 1242
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/server/am/ActivityRecord;

    .line 1243
    .local v50, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v45, v0

    .line 1244
    .local v45, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v45, :cond_0

    .line 1249
    :try_start_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v23

    .line 1250
    .local v23, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404ec

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v51

    .line 1252
    .restart local v51       #text:Ljava/lang/String;
    new-instance v37, Landroid/app/Notification;

    invoke-direct/range {v37 .. v37}, Landroid/app/Notification;-><init>()V

    .line 1253
    .local v37, notification:Landroid/app/Notification;
    const v4, 0x10806d4

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1254
    const-wide/16 v4, 0x0

    move-object/from16 v0, v37

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1255
    const/4 v4, 0x2

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1256
    move-object/from16 v0, v51

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1257
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1258
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1259
    const/4 v4, 0x0

    move-object/from16 v0, v37

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404ed

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, v50

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v12, 0x1000

    invoke-static {v5, v6, v8, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_23} :catch_5

    .line 1266
    const/4 v4, 0x1

    :try_start_24
    new-array v0, v4, [I

    move-object/from16 v40, v0

    .line 1267
    .local v40, outId:[I
    const-string v4, "android"

    const v5, 0x10404ec

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    move-object/from16 v2, v40

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_24} :catch_5

    goto/16 :goto_0

    .line 1269
    .end local v40           #outId:[I
    :catch_4
    move-exception v28

    .line 1270
    .local v28, e:Ljava/lang/RuntimeException;
    :try_start_25
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_25} :catch_5

    goto/16 :goto_0

    .line 1274
    .end local v23           #context:Landroid/content/Context;
    .end local v28           #e:Ljava/lang/RuntimeException;
    .end local v37           #notification:Landroid/app/Notification;
    .end local v51           #text:Ljava/lang/String;
    :catch_5
    move-exception v28

    .line 1275
    .local v28, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1279
    .end local v28           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v33           #inm:Landroid/app/INotificationManager;
    .end local v45           #process:Lcom/android/server/am/ProcessRecord;
    .end local v50           #root:Lcom/android/server/am/ActivityRecord;
    :sswitch_14
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v33

    .line 1280
    .restart local v33       #inm:Landroid/app/INotificationManager;
    if-eqz v33, :cond_0

    .line 1284
    :try_start_26
    const-string v4, "android"

    const v5, 0x10404ec

    move-object/from16 v0, v33

    invoke-interface {v0, v4, v5}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_7

    goto/16 :goto_0

    .line 1286
    :catch_6
    move-exception v28

    .line 1287
    .local v28, e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1293
    .end local v28           #e:Ljava/lang/RuntimeException;
    .end local v33           #inm:Landroid/app/INotificationManager;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1294
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1295
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1296
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v36

    .line 1297
    .restart local v36       #nmsg:Landroid/os/Message;
    const-wide/32 v12, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1298
    monitor-exit v5

    goto/16 :goto_0

    .end local v36           #nmsg:Landroid/os/Message;
    :catchall_d
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    throw v4

    .line 1302
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V

    goto/16 :goto_0

    .line 1306
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1307
    :try_start_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/am/ActivityRecord;

    .line 1308
    .local v20, ar:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_19

    .line 1309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1311
    monitor-exit v5

    goto/16 :goto_0

    .line 1330
    .end local v20           #ar:Lcom/android/server/am/ActivityRecord;
    :catchall_e
    move-exception v4

    monitor-exit v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    throw v4

    .line 1313
    .restart local v20       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_18
    :try_start_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1316
    :cond_19
    if-eqz v20, :cond_1a

    .line 1330
    :cond_1a
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    goto/16 :goto_0

    .line 1334
    .end local v20           #ar:Lcom/android/server/am/ActivityRecord;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1338
    :sswitch_19
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v42, v0

    .line 1339
    .local v42, pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1340
    .restart local v10       #uid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v42

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 1344
    .end local v10           #uid:I
    .end local v42           #pid:I
    :sswitch_1a
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 1345
    .local v34, isDebuggable:Z
    if-eqz v34, :cond_0

    .line 1348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1349
    :try_start_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    .line 1350
    .local v38, now:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    const-wide/32 v14, 0x493e0

    add-long/2addr v12, v14

    cmp-long v4, v38, v12

    if-gez v4, :cond_1b

    .line 1353
    monitor-exit v5

    goto/16 :goto_0

    .line 1356
    .end local v38           #now:J
    :catchall_f
    move-exception v4

    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_f

    throw v4

    .line 1355
    .restart local v38       #now:J
    :cond_1b
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v38

    iput-wide v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1356
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    .line 1357
    new-instance v52, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    .line 1420
    .local v52, thread:Ljava/lang/Thread;
    invoke-virtual/range {v52 .. v52}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1289
    .end local v34           #isDebuggable:Z
    .end local v38           #now:J
    .end local v52           #thread:Ljava/lang/Thread;
    .restart local v33       #inm:Landroid/app/INotificationManager;
    :catch_7
    move-exception v4

    goto/16 :goto_0

    .line 1272
    .restart local v23       #context:Landroid/content/Context;
    .restart local v37       #notification:Landroid/app/Notification;
    .restart local v45       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v50       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v51       #text:Ljava/lang/String;
    :catch_8
    move-exception v4

    goto/16 :goto_0

    .line 984
    .end local v23           #context:Landroid/content/Context;
    .end local v33           #inm:Landroid/app/INotificationManager;
    .end local v37           #notification:Landroid/app/Notification;
    .end local v45           #process:Lcom/android/server/am/ProcessRecord;
    .end local v50           #root:Lcom/android/server/am/ActivityRecord;
    .end local v51           #text:Ljava/lang/String;
    .restart local v25       #d:Landroid/app/Dialog;
    .restart local v26       #data:Ljava/util/HashMap;
    .restart local v44       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local v48       #res:Lcom/android/server/am/AppErrorResult;
    :catchall_10
    move-exception v4

    move-object/from16 v24, v25

    .end local v25           #d:Landroid/app/Dialog;
    .local v24, d:Landroid/app/Dialog;
    goto/16 :goto_1

    .line 964
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x18 -> :sswitch_13
        0x19 -> :sswitch_14
        0x1a -> :sswitch_4
        0x1b -> :sswitch_15
        0x1c -> :sswitch_b
        0x1d -> :sswitch_c
        0x1e -> :sswitch_17
        0x1f -> :sswitch_18
        0x20 -> :sswitch_19
        0x21 -> :sswitch_1a
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x3e7 -> :sswitch_16
    .end sparse-switch
.end method
