.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .registers 7

    const/16 v3, 0x8

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p2, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_16

    check-cast p2, Landroid/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    :cond_15
    :goto_15
    return-void

    :cond_16
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_23
    int-to-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_15

    :cond_29
    const/4 v0, 0x0

    goto :goto_23

    :cond_2b
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_15

    :cond_3a
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_49

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_15

    :cond_49
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_5d

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_15

    :cond_5d
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_15

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_15
.end method
