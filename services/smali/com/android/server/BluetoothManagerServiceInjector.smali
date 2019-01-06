.class Lcom/android/server/BluetoothManagerServiceInjector;
.super Ljava/lang/Object;
.source "BluetoothManagerServiceInjector.java"


# static fields
.field static final BD_ADDR_NO_COLON_LEN:I = 0xc

.field static final BD_ADDR_WITH_COLON_LEN:I = 0x11

.field private static final DBG:Z = true

.field static final MASK_BD_ADDR_NO_COLON_PREFIX:Ljava/lang/String; = "00000000"

.field static final MASK_BD_ADDR_WITH_COLON_DEFAULT:Ljava/lang/String; = "00:00:00:00:00:00"

.field static final MASK_BD_ADDR_WITH_COLON_PREFIX:Ljava/lang/String; = "00:00:00:00:"

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerServiceInjector"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaskDeviceAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "00:00:00:00:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "00:00:00:00:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "00000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "00000000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_52
    const-string/jumbo v0, "00:00:00:00:00:00"

    return-object v0
.end method
