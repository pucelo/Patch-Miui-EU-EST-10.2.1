.class public final Lcom/android/internal/view/InputBindResult;
.super Ljava/lang/Object;
.source "InputBindResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputBindResult$1;,
        Lcom/android/internal/view/InputBindResult$ResultCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/view/InputBindResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

.field public static final INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

.field public static final INVALID_USER:Lcom/android/internal/view/InputBindResult;

.field public static final NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

.field public static final NO_IME:Lcom/android/internal/view/InputBindResult;

.field public static final NULL:Lcom/android/internal/view/InputBindResult;

.field public static final NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;


# instance fields
.field public final channel:Landroid/view/InputChannel;

.field public final id:Ljava/lang/String;

.field public final method:Lcom/android/internal/view/IInputMethodSession;

.field public final result:I

.field public final sequence:I

.field public final userActionNotificationSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/view/InputBindResult$1;

    invoke-direct {v0}, Lcom/android/internal/view/InputBindResult$1;-><init>()V

    sput-object v0, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/view/InputBindResult;->error(I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/view/InputBindResult;->result:I

    iput-object p2, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object p3, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iput-object p4, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput p6, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/InputBindResult;->result:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    :goto_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    return-void

    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    goto :goto_23
.end method

.method private static error(I)Lcom/android/internal/view/InputBindResult;
    .registers 8

    const/4 v5, -0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/view/InputBindResult;

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->describeContents()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getResultString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/internal/view/InputBindResult;->result:I

    packed-switch v0, :pswitch_data_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/InputBindResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "SUCCESS_WITH_IME_SESSION"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "SUCCESS_WAITING_IME_SESSION"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "SUCCESS_WAITING_IME_BINDING"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "SUCCESS_REPORT_WINDOW_FOCUS_ONLY"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "ERROR_NULL"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "ERROR_NO_IME"

    return-object v0

    :pswitch_3b
    const-string/jumbo v0, "ERROR_INVALID_PACKAGE_NAME"

    return-object v0

    :pswitch_3f
    const-string/jumbo v0, "ERROR_SYSTEM_NOT_READY"

    return-object v0

    :pswitch_43
    const-string/jumbo v0, "ERROR_IME_NOT_CONNECTED"

    return-object v0

    :pswitch_47
    const-string/jumbo v0, "ERROR_INVALID_USER"

    return-object v0

    :pswitch_4b
    const-string/jumbo v0, "ERROR_NULL_EDITOR_INFO"

    return-object v0

    :pswitch_4f
    const-string/jumbo v0, "ERROR_NOT_IME_TARGET_WINDOW"

    return-object v0

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
        :pswitch_4f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InputBindResult{result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/InputBindResult;->getResultString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " userActionNotificationSequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Lcom/android/internal/view/InputBindResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0, p1, p2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17
.end method
