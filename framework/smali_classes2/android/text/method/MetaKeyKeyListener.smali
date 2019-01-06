.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final ALT:Ljava/lang/Object;

.field private static final CAP:Ljava/lang/Object;

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_RETURN_VALUE:I = 0x2

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_RETURN_VALUE:I = 0x1

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object;

.field private static final SYM:Ljava/lang/Object;

.field private static final USED:I = 0x3000011


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1000011

    if-ne v0, v1, :cond_11

    const v1, 0x3000011

    invoke-interface {p0, p1, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const v1, 0x2000011

    if-ne v0, v1, :cond_10

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public static adjustMetaAfterKeypress(J)J
    .registers 12

    const-wide v2, -0x1010100000102L

    const-wide v8, -0x2020200000203L

    const-wide v6, -0x4040400000405L

    const-wide/16 v4, 0x0

    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_54

    and-long v0, p0, v2

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    const-wide v2, 0x100000000L

    or-long p0, v0, v2

    :cond_27
    :goto_27
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5d

    and-long v0, p0, v8

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    const-wide v2, 0x200000000L

    or-long p0, v0, v2

    :cond_3d
    :goto_3d
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_66

    and-long v0, p0, v6

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    const-wide v2, 0x400000000L

    or-long p0, v0, v2

    :cond_53
    :goto_53
    return-wide p0

    :cond_54
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_27

    and-long/2addr p0, v2

    goto :goto_27

    :cond_5d
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3d

    and-long/2addr p0, v8

    goto :goto_3d

    :cond_66
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_53

    and-long/2addr p0, v6

    goto :goto_53
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .registers 2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .registers 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_9
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_12

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_1b
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_24

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .registers 8

    const/4 v3, 0x0

    instance-of v2, p0, Landroid/text/Spanned;

    if-nez v2, :cond_6

    return v3

    :cond_6
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v2, 0x4000011

    if-ne v0, v2, :cond_13

    return p3

    :cond_13
    if-eqz v0, :cond_16

    return p2

    :cond_16
    return v3
.end method

.method public static final getMetaState(J)I
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1f

    const/16 v0, 0x100

    :cond_c
    :goto_c
    const-wide/16 v2, 0x200

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_28

    or-int/lit16 v0, v0, 0x200

    :cond_15
    :goto_15
    const-wide/16 v2, 0x400

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_32

    or-int/lit16 v0, v0, 0x400

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_28
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    or-int/lit8 v0, v0, 0x2

    goto :goto_15

    :cond_32
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1e

    or-int/lit8 v0, v0, 0x4

    goto :goto_1e
.end method

.method public static final getMetaState(JI)I
    .registers 11

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_3c

    :pswitch_8
    return v4

    :pswitch_9
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    return v6

    :cond_11
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    return v5

    :cond_19
    return v4

    :pswitch_1a
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    return v6

    :cond_22
    const-wide/16 v0, 0x2

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    return v5

    :cond_2a
    return v4

    :pswitch_2b
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    return v6

    :cond_33
    const-wide/16 v0, 0x4

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3b

    return v5

    :cond_3b
    return v4

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_1a
        :pswitch_8
        :pswitch_2b
    .end packed-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .registers 6

    const/16 v4, 0x800

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v1, v4, v4}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .registers 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_24

    const/4 v0, 0x0

    return v0

    :sswitch_7
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    :sswitch_e
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    :sswitch_15
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    :sswitch_1c
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    return v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_e
        0x4 -> :sswitch_15
        0x800 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    if-ne v1, v3, :cond_15

    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_15
    const/16 v1, 0x800

    if-ne v1, p1, :cond_1f

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1e

    return v3

    :cond_1e
    return v2

    :cond_1f
    int-to-long v2, v0

    invoke-static {v2, v3, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result v1

    return v1
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_14
    return v0
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .registers 20

    const/16 v2, 0x3b

    move/from16 v0, p2

    if-eq v0, v2, :cond_c

    const/16 v2, 0x3c

    move/from16 v0, p2

    if-ne v0, v2, :cond_27

    :cond_c
    const-wide/16 v8, 0x100

    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide v10, 0x10000000000L

    const-wide/high16 v12, 0x1000000000000L

    const-wide v14, 0x100000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v2

    return-wide v2

    :cond_27
    const/16 v2, 0x39

    move/from16 v0, p2

    if-eq v0, v2, :cond_33

    const/16 v2, 0x3a

    move/from16 v0, p2

    if-ne v0, v2, :cond_4e

    :cond_33
    const-wide/16 v8, 0x200

    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide v10, 0x20000000000L

    const-wide/high16 v12, 0x2000000000000L

    const-wide v14, 0x200000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v2

    return-wide v2

    :cond_4e
    const/16 v2, 0x4e

    move/from16 v0, p2

    if-eq v0, v2, :cond_33

    const/16 v2, 0x3f

    move/from16 v0, p2

    if-ne v0, v2, :cond_75

    const-wide/16 v8, 0x400

    const/4 v5, 0x4

    const-wide v6, 0x4040400000404L

    const-wide v10, 0x40000000000L

    const-wide/high16 v12, 0x4000000000000L

    const-wide v14, 0x400000000L

    move-wide/from16 v3, p0

    invoke-static/range {v3 .. v15}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v2

    return-wide v2

    :cond_75
    return-wide p0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .registers 20

    const/16 v2, 0x3b

    move/from16 v0, p2

    if-eq v0, v2, :cond_c

    const/16 v2, 0x3c

    move/from16 v0, p2

    if-ne v0, v2, :cond_27

    :cond_c
    const/4 v5, 0x1

    const-wide v6, 0x1010100000101L

    const-wide v8, 0x10000000000L

    const-wide/high16 v10, 0x1000000000000L

    const-wide v12, 0x100000000L

    move-wide/from16 v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v2

    return-wide v2

    :cond_27
    const/16 v2, 0x39

    move/from16 v0, p2

    if-eq v0, v2, :cond_33

    const/16 v2, 0x3a

    move/from16 v0, p2

    if-ne v0, v2, :cond_4e

    :cond_33
    const/4 v5, 0x2

    const-wide v6, 0x2020200000202L

    const-wide v8, 0x20000000000L

    const-wide/high16 v10, 0x2000000000000L

    const-wide v12, 0x200000000L

    move-wide/from16 v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v2

    return-wide v2

    :cond_4e
    const/16 v2, 0x4e

    move/from16 v0, p2

    if-eq v0, v2, :cond_33

    const/16 v2, 0x3f

    move/from16 v0, p2

    if-ne v0, v2, :cond_75

    const/4 v5, 0x4

    const-wide v6, 0x4040400000404L

    const-wide v8, 0x40000000000L

    const-wide/high16 v10, 0x4000000000000L

    const-wide v12, 0x400000000L

    move-wide/from16 v3, p0

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v14}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide v2

    return-wide v2

    :cond_75
    return-wide p0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, v1, :cond_9

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, v1, :cond_9

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .registers 3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static press(JIJJJJJ)J
    .registers 17

    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-wide p0

    :cond_9
    and-long v0, p0, p9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    not-long v0, p3

    and-long/2addr v0, p0

    int-to-long v2, p2

    or-long/2addr v0, v2

    or-long p0, v0, p5

    goto :goto_8

    :cond_18
    and-long v0, p0, p11

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    and-long v0, p0, p5

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_8

    :cond_2b
    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_8
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .registers 8

    const v4, 0x4000011

    const v3, 0x1000011

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v3, :cond_15

    const v1, 0x2000011

    if-ne v0, v1, :cond_16

    invoke-interface {p1, p2, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const v1, 0x3000011

    if-eq v0, v1, :cond_15

    if-ne v0, v4, :cond_21

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_15

    :cond_21
    invoke-interface {p1, p2, v2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_15
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .registers 16

    const-wide/16 v2, 0x0

    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    not-long v0, p3

    and-long/2addr p0, v0

    :cond_f
    :goto_f
    return-wide p0

    :pswitch_10
    and-long v0, p0, p9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    not-long v0, p3

    and-long/2addr p0, v0

    goto :goto_f

    :cond_19
    and-long v0, p0, p5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    int-to-long v0, p2

    or-long/2addr v0, p7

    or-long/2addr p0, v0

    goto :goto_f

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .registers 7

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_2a

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    const v1, 0x3000011

    if-ne v0, v1, :cond_1d

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_13

    :cond_1d
    const v1, 0x1000011

    if-ne v0, v1, :cond_13

    const v1, 0x2000011

    invoke-interface {p1, p2, v2, v2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_13

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_14
    .end packed-switch
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 4

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x4000011

    if-ne v0, v1, :cond_c

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public static resetLockedMeta(J)J
    .registers 6

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    :cond_f
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    :cond_1c
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    :cond_29
    return-wide p0
.end method

.method protected static resetLockedMeta(Landroid/text/Spannable;)V
    .registers 2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .registers 2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .registers 3

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .registers 9

    const-wide/16 v2, 0x0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    const-wide v0, -0x1010100000102L

    and-long/2addr p1, v0

    :cond_13
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_24

    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_24

    const-wide v0, -0x2020200000203L

    and-long/2addr p1, v0

    :cond_24
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_35

    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_35

    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    :cond_35
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .registers 4

    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/16 v0, 0x3b

    if-eq p3, v0, :cond_9

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_f

    :cond_9
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return v1

    :cond_f
    const/16 v0, 0x39

    if-eq p3, v0, :cond_17

    const/16 v0, 0x3a

    if-ne p3, v0, :cond_1d

    :cond_17
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return v1

    :cond_1d
    const/16 v0, 0x4e

    if-eq p3, v0, :cond_17

    const/16 v0, 0x3f

    if-ne p3, v0, :cond_2b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return v1

    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/16 v0, 0x3b

    if-eq p3, v0, :cond_9

    const/16 v0, 0x3c

    if-ne p3, v0, :cond_f

    :cond_9
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return v1

    :cond_f
    const/16 v0, 0x39

    if-eq p3, v0, :cond_17

    const/16 v0, 0x3a

    if-ne p3, v0, :cond_1d

    :cond_17
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return v1

    :cond_1d
    const/16 v0, 0x4e

    if-eq p3, v0, :cond_17

    const/16 v0, 0x3f

    if-ne p3, v0, :cond_2b

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return v1

    :cond_2b
    const/4 v0, 0x0

    return v0
.end method
