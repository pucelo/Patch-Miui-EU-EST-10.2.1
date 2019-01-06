.class public final Lcom/android/internal/view/InputMethodClient;
.super Ljava/lang/Object;
.source "InputMethodClient.java"


# static fields
.field public static final START_INPUT_REASON_ACTIVATED_BY_IMMS:I = 0x7

.field public static final START_INPUT_REASON_APP_CALLED_RESTART_INPUT_API:I = 0x3

.field public static final START_INPUT_REASON_BOUND_TO_IMMS:I = 0x5

.field public static final START_INPUT_REASON_CHECK_FOCUS:I = 0x4

.field public static final START_INPUT_REASON_DEACTIVATED_BY_IMMS:I = 0x8

.field public static final START_INPUT_REASON_SESSION_CREATED_BY_IME:I = 0x9

.field public static final START_INPUT_REASON_UNBOUND_FROM_IMMS:I = 0x6

.field public static final START_INPUT_REASON_UNSPECIFIED:I = 0x0

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN:I = 0x1

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN_REPORT_ONLY:I = 0x2

.field public static final UNBIND_REASON_DISCONNECT_IME:I = 0x3

.field public static final UNBIND_REASON_NO_IME:I = 0x4

.field public static final UNBIND_REASON_SWITCH_CLIENT:I = 0x1

.field public static final UNBIND_REASON_SWITCH_IME:I = 0x2

.field public static final UNBIND_REASON_SWITCH_IME_FAILED:I = 0x5

.field public static final UNBIND_REASON_SWITCH_USER:I = 0x6

.field public static final UNBIND_REASON_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStartInputReason(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "WINDOW_FOCUS_GAIN"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "WINDOW_FOCUS_GAIN_REPORT_ONLY"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "APP_CALLED_RESTART_INPUT_API"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "CHECK_FOCUS"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "BOUND_TO_IMMS"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "UNBOUND_FROM_IMMS"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "ACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "DEACTIVATED_BY_IMMS"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "SESSION_CREATED_BY_IME"

    return-object v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_3c
    .end packed-switch
.end method

.method public static getUnbindReason(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "SWITCH_CLIENT"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "SWITCH_IME"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "DISCONNECT_IME"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "NO_IME"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "SWITCH_IME_FAILED"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "SWITCH_USER"

    return-object v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
    .end packed-switch
.end method

.method public static softInputModeToString(I)Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v3, p0, 0xf

    and-int/lit16 v0, p0, 0xf0

    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_3f

    const/4 v1, 0x1

    :goto_e
    packed-switch v3, :pswitch_data_88

    const-string/jumbo v4, "STATE_UNKNOWN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    sparse-switch v0, :sswitch_data_98

    const-string/jumbo v4, "|ADJUST_UNKNOWN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    if-eqz v1, :cond_3a

    const-string/jumbo v4, "|IS_FORWARD_NAVIGATION"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_3f
    const/4 v1, 0x0

    goto :goto_e

    :pswitch_41
    const-string/jumbo v4, "STATE_UNSPECIFIED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_48
    const-string/jumbo v4, "STATE_UNCHANGED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_4f
    const-string/jumbo v4, "STATE_HIDDEN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_56
    const-string/jumbo v4, "STATE_ALWAYS_HIDDEN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_5d
    const-string/jumbo v4, "STATE_VISIBLE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :pswitch_64
    const-string/jumbo v4, "STATE_ALWAYS_VISIBLE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :sswitch_6b
    const-string/jumbo v4, "|ADJUST_UNSPECIFIED"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :sswitch_72
    const-string/jumbo v4, "|ADJUST_RESIZE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :sswitch_79
    const-string/jumbo v4, "|ADJUST_PAN"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :sswitch_80
    const-string/jumbo v4, "|ADJUST_NOTHING"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_41
        :pswitch_48
        :pswitch_4f
        :pswitch_56
        :pswitch_5d
        :pswitch_64
    .end packed-switch

    :sswitch_data_98
    .sparse-switch
        0x0 -> :sswitch_6b
        0x10 -> :sswitch_72
        0x20 -> :sswitch_79
        0x30 -> :sswitch_80
    .end sparse-switch
.end method
