.class final synthetic Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupManagerService$3;

    iget-object v1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$3;->lambda$-com_android_server_backup_BackupManagerService$3_87593(Ljava/lang/String;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupManagerService$3;

    iget-object v1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$3;->lambda$-com_android_server_backup_BackupManagerService$3_88806(Ljava/lang/String;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;

    iget-object v1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService$3;->lambda$-com_android_server_backup_RefactoredBackupManagerService$3_52086(Ljava/lang/String;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;

    iget-object v1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService$3;->lambda$-com_android_server_backup_RefactoredBackupManagerService$3_53299(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->$id:B

    iput-object p2, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->$id:B

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;->$m$3()V

    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
