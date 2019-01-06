.class Lcom/android/internal/util/ReadWriteNV$StreamGobbler;
.super Ljava/lang/Thread;
.source "ReadWriteNV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ReadWriteNV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamGobbler"
.end annotation


# instance fields
.field final NV_CALL_TIME_STRING_I:I

.field final NV_DISK_I:I

.field final NV_EFS_VERSION_I:I

.field final NV_HYBRID_PREF_I:I

.field final NV_LCTSN_IMEI_I:I

.field final NV_LCTSN_SN_I:I

.field final NV_PLMN_LOCK_I:I

.field final NV_SMS_REG_FLAG_I:I

.field final NV_TEST_INF2_I:I

.field final NV_UIT87_TEST_I:I

.field final NV_UIT88_TEST_I:I

.field final NV_UIT89_TEST_I:I

.field bString:Z

.field hasError:Z

.field is:Ljava/io/InputStream;

.field mMsg:Landroid/os/Message;

.field nv_item:I

.field read_nv_item:I

.field read_nv_value:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/util/ReadWriteNV;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ReadWriteNV;Ljava/io/InputStream;Ljava/lang/String;I)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->this$0:Lcom/android/internal/util/ReadWriteNV;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->nv_item:I

    iput-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->bString:Z

    iput-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->hasError:Z

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_item:I

    iput-object v1, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_value:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->mMsg:Landroid/os/Message;

    const/16 v0, 0x232

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_HYBRID_PREF_I:I

    const/16 v0, 0x1ac5

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_LCTSN_SN_I:I

    const/16 v0, 0x1ac6

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_LCTSN_IMEI_I:I

    const/16 v0, 0x1ac7

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_TEST_INF2_I:I

    const/16 v0, 0x1ac8

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_PLMN_LOCK_I:I

    const/16 v0, 0x1ac9

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_EFS_VERSION_I:I

    const/16 v0, 0x1aca

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_DISK_I:I

    const/16 v0, 0x1acb

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_SMS_REG_FLAG_I:I

    const/16 v0, 0x1acc

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_CALL_TIME_STRING_I:I

    const/16 v0, 0x1c41

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_UIT87_TEST_I:I

    const/16 v0, 0x1c42

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_UIT88_TEST_I:I

    const/16 v0, 0x1c43

    iput v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->NV_UIT89_TEST_I:I

    iput-object p2, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->is:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->type:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->nv_item:I

    invoke-direct {p0, p4}, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->isString(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->bString:Z

    return-void
.end method

.method private isString(I)Z
    .registers 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_8

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :sswitch_data_8
    .sparse-switch
        0x1ac5 -> :sswitch_5
        0x1ac6 -> :sswitch_5
        0x1ac7 -> :sswitch_5
        0x1ac8 -> :sswitch_5
        0x1ac9 -> :sswitch_5
        0x1aca -> :sswitch_5
        0x1acb -> :sswitch_5
        0x1acc -> :sswitch_5
        0x1c41 -> :sswitch_5
        0x1c42 -> :sswitch_5
        0x1c43 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getNVValue()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_item:I

    iget v1, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->nv_item:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const-string/jumbo v0, "ReadWriteNV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getNVValue nv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_item:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_value:Ljava/lang/String;

    return-object v0
.end method

.method public isString()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->bString:Z

    return v0
.end method

.method public run()V
    .registers 10

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->is:Ljava/io/InputStream;

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    :cond_d
    :goto_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_29

    iget-object v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->type:Ljava/lang/String;

    const-string/jumbo v7, "Error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const-string/jumbo v6, "ReadWriteNV"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_d

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    return-void

    :cond_2a
    :try_start_2a
    const-string/jumbo v6, "ReadWriteNV"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "NV#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string/jumbo v6, "ReadWriteNV"

    const-string/jumbo v7, "Can\'t read the nv item"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_item:I

    iget v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_item:I

    iget v7, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->nv_item:I

    if-eq v6, v7, :cond_d

    const-string/jumbo v6, "ReadWriteNV"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Read the wrong nv "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_item:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->nv_item:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8b
    const-string/jumbo v6, "Value:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_db

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_value:Ljava/lang/String;

    const-string/jumbo v6, "ReadWriteNV"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Readed nv "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_item:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_value:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->this$0:Lcom/android/internal/util/ReadWriteNV;

    iget-object v7, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->read_nv_value:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/util/ReadWriteNV;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->this$0:Lcom/android/internal/util/ReadWriteNV;

    invoke-virtual {v6, v4}, Lcom/android/internal/util/ReadWriteNV;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_d

    :cond_db
    const-string/jumbo v6, "nWriteNVComplete"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->this$0:Lcom/android/internal/util/ReadWriteNV;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/internal/util/ReadWriteNV;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/util/ReadWriteNV$StreamGobbler;->this$0:Lcom/android/internal/util/ReadWriteNV;

    invoke-virtual {v6, v4}, Lcom/android/internal/util/ReadWriteNV;->sendMessage(Landroid/os/Message;)Z
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_f0} :catch_25

    goto/16 :goto_d
.end method
